using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Json;
using System.Text;

[ApiController]
[Authorize]
[Route("api/[controller]")]
public class CepController : ControllerBase
{
  private readonly IHttpClientFactory _httpClientFactory;

  public CepController(IHttpClientFactory httpClientFactory)
  {
    _httpClientFactory = httpClientFactory;
  }

  [HttpGet("{cep}")]
  public async Task<IActionResult> GetCep(string cep)
  {
    cep = cep.Replace("-", "").Trim();

    if (cep.Length != 8 || !int.TryParse(cep, out _))
    {
      return BadRequest("CEP inválido. Deve conter 8 dígitos numéricos.");
    }
    //teste
    var client = _httpClientFactory.CreateClient();
    var response = await client.GetAsync($@"https://viacep.com.br/ws/{cep}/json/");

    if (!response.IsSuccessStatusCode)
    {
      return NotFound("CEP não encontrado.");
    }

    var result = await response.Content.ReadFromJsonAsync<ViaCepResponse>();
    return Ok(result);
  }
}

public record ViaCepResponse(string Cep, string Logradouro, string Complemento, string Bairro, string Localidade, string Uf, string Ibge);
