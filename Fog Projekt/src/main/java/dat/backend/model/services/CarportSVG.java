package dat.backend.model.services;

public class CarportSVG
{
    public static SVG createNewSVG(int x, int y, int height, int width, String viewbox)
    {
        return new SVG(x, y, height, width, viewbox);
    }

    public static SVG addBeams(SVG svg)
    {
        for (int i = 0; i < 800; i +=50 )
        {
            svg.addRect(i, 0, 600.0, 4.5);
        }
        return svg;
    }
}
