package dat.backend.model.services;

public class CarportSVG
{
    public static SVG createNewSVG(int x, int y, int height, int width, String viewbox)
    {
        return new SVG(x, y, height, width, viewbox);
    }

    public static SVG addPerforatedTapeShed(SVG svg, int length, int width) {
        int x = 100;
        int y = 35;
        int exactLength = length - length%50;

        svg.addDashedLine(x, y, exactLength-200, width-y);
        svg.addDashedLine(x, width-y, exactLength-200, y);

        return svg;
    }

    public static SVG addSquares(SVG svg, int length, int width) {
        int x = 100;
        int y = 35;
        int exactLength = length - length%50;

        svg.addRect(x, y, 8, 8);
        svg.addRect((exactLength-200)/2 + 50, y, 8, 8);
        svg.addRect(exactLength-200, y, 8, 8);
        svg.addRect(x, width/2, 8, 8);
        svg.addRect((exactLength-200)/2 + 50, width/2, 8, 8);
        svg.addRect(exactLength-200, width/2, 8, 8);
        svg.addRect(x, width-y, 8, 8);
        svg.addRect((exactLength-200)/2 + 50, width-y, 8, 8);
        svg.addRect(exactLength-200, width-y, 8, 8);
        return svg;
    }

    public static SVG addOutlinedEdges(SVG svg, int length, int width) {
        int exactLength = length - length%50;

        svg.addLine(0, 0, exactLength, 0);
        svg.addLine(0, 0, 0, width);
        svg.addLine(0, width, exactLength, width);
        svg.addLine(exactLength, 0, exactLength, width);

        return svg;
    }

    public static SVG addVerticalBeams(SVG svg, int length, int width) {
        for (int i = 0; i < length; i +=50 )
        {
            svg.addRect(i, 0, width, 4.5);
        }
        return svg;
    }

    public static SVG addHorizontalBeams(SVG svg, int length, int width) {
        int y = 35;
        int exactLength = length - length%50;
        svg.addRect(0, y, 4.5, exactLength);
        svg.addRect(0, width/2, 4.5, exactLength);
        svg.addRect(0, width-y, 4.5, exactLength);
        return svg;
    }

    public static SVG addShed(SVG svg, int length, int width) {
        int y = 35;
        int exactLength = length - length%50;

        //Adding the beams for the Shed
        svg.addRect(exactLength-202, y, 8, 200);
        svg.addRect(exactLength-202, width-y, 8, 200);
        svg.addRect(exactLength-202, y, width-y*2, 8);
        svg.addRect(exactLength-2, y, width-y*2, 8);

        //Adding the squares for the Shed
        svg.addRect(exactLength-202, y, 8, 8);
        svg.addRect(exactLength-202, width-y, 8, 8);
        svg.addRect(exactLength-202, width/2, 8, 8);
        svg.addRect(exactLength-2, y, 8, 8);
        svg.addRect(exactLength-2, width-y, 8, 8);
        svg.addRect(exactLength-2, width/2, 8, 8);

        return svg;
    }

    public static SVG addArrowHead(SVG svg, int length, int width) {
        int exactLength = length - length%50;
        //Horizontal Line
        svg.addText(exactLength/2, width+25, 0, length + "cm");
        svg.addArrowHead(0, width+30, exactLength, width+30);
        //Long Vertical Line
        svg.addText(-45, width/2, -90, width + "cm");
        svg.addArrowHead(-40, 0, -40, width);
        //Short Vertical Line
        svg.addText(-15, width/2, -90, width-70 + "cm");
        svg.addArrowHead(-10, 35, -10, width-35);

        return svg;
    }
}
