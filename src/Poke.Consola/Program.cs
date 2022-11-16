using Poke.Dapper;
using Microsoft.Extensions.Configuration;
using static System.Console;

IConfiguration config = new ConfigurationBuilder()
    .AddJsonFile("appsettings.json")
    .Build();

var Ado = new Ado(config);
var tipos = Ado.ObtenerTipos();
tipos.ForEach(t => WriteLine($"{t.Id}\t{t.Nombre}"));
ReadKey();
