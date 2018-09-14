using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Descripción breve de Publicaciones
/// </summary>
public class Publicaciones
{
    public Publicaciones()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    public static long InsertPublicacion(PublicacionesInfo info)
    {

        Publicaciones Publicacion = new Publicaciones();
        Publicacion.FechaCreacion = DateTime.Now;
        Publicacion.Texto = Publicacion.Texto;
        Publicacion.Titulo = Publicacion.Titulo;
        Publicacion.Etiqueta = Publicacion.Etiqueta;
        Publicacion.UsuarioID = Publicacion.UsuarioID;
        Publicacion.IDCategoria = Publicacion.IDCategoria;

    }
    public class PublicacionInfo
    {
        public long IDPublicacion { get; set; }
        public DateTime FechaCreacion { get; set; }
        public string Texto { get; set; }
        public string Titulo { get; set; }
        public long IDCategoria { get; set; }
        public string UsuarioID { get; set; }
        public string Etiqueta { get; set; }
    }
}