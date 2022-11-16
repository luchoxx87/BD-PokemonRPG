using MySql.Data.MySqlClient;
using Poke.Core;
using Dapper;
using Microsoft.Extensions.Configuration;

namespace Poke.Dapper;
public class Ado : IAdo
{
    private readonly MySqlConnection _conexion;
    public Ado(IConfiguration configuracion)
        => _conexion = new (configuracion.GetConnectionString("MySql"));

    public List<Tipo> ObtenerTipos()
    {
        var query = "SELECT idTipo AS id, tipo AS nombre FROM Tipo";
        var tipos = _conexion.Query<Tipo>(query).ToList();
        return tipos;
    }
}
