package dat.backend.model.services;

public class SVG {
    private int x;
    private int y;
    private int height;
    private int width;
    private String viewbox;
    private StringBuilder svgString = new StringBuilder();

    private final static String HEADERTEMPLATE =
            "<svg x=\"%d\" y=\"%d\" height=\"%d%%\" width=\"%d%%\" viewBox=\"%s\" preserveAspectRatio=\"xMinYMin\">";
    private final static String RECTTEMPLATE =
            "<rect x=\"%d\" y=\"%d\" height=\"%f\" width=\"%f\" style=\"stroke:#000000; fill: #ffffff\" />";
    private final static String ARROWHEADSTEMPLATE = "<defs>\n" +
            "        <marker id=\"beginArrow\" markerWidth=\"12\" markerHeight=\"12\" refX=\"0\" refY=\"6\" orient=\"auto\">\n" +
            "            <path d=\"M0,6 L12,0 L12,12 L0,6\" style=\"fill: #000000;\" />\n" +
            "        </marker>\n" +
            "        <marker id=\"endArrow\" markerWidth=\"12\" markerHeight=\"12\" refX=\"12\" refY=\"6\" orient=\"auto\">\n" +
            "            <path d=\"M0,0 L12,6 L0,12 L0,0 \" style=\"fill: #000000;\" />\n" +
            "        </marker>\n" +
            "    </defs>";

    private final static String DASHEDLINETEMPLATE = "<line x1=\"%f\" y1=\"%f\" x2=\"%f\" y2=\"%f\" style=\"stroke:#000000; stroke-dasharray: 5 5;\"/>";
    private final static String LINETEMPLATE = "<line x1=\"%f\" y1=\"%f\" x2=\"%f\" y2=\"%f\" style=\"stroke:#000000;\"/>";


    public SVG(int x, int y, int height, int width, String viewbox) {

        svgString.append(String.format(HEADERTEMPLATE, x, y, height, width, viewbox));
        svgString.append(ARROWHEADSTEMPLATE);
        svgString.append(DASHEDLINETEMPLATE);
        this.x = x;
        this.y = y;
        this.height = height;
        this.width = width;
        this.viewbox = viewbox;
    }


    public void addRect(int x, int y, double height, double width)
    {
        svgString.append(String.format(RECTTEMPLATE, x, y, height, width));
    }

    public void addLine(int x1, int y1, int x2, int y2){
        svgString.append(String.format(LINETEMPLATE, (float)x1, (float)y1, (float)x2, (float)y2));
    }

    public void addDashedLine(int x1, int y1, int x2, int y2){
        svgString.append(String.format(DASHEDLINETEMPLATE, (float)x1, (float)y1, (float)x2, (float)y2));
    }

    public void addInnerSvg(SVG innerSVGDrawing){
        svgString.append(innerSVGDrawing);
    }

    public static String addViewBox(int x, int y, int length, int width){
        String viewBox = "";
        viewBox += (x);
        viewBox += (" ");
        viewBox += (y);
        viewBox += (" ");
        viewBox += (length);
        viewBox += (" ");
        viewBox += (width);
        return viewBox;
    }


    @Override
    public String toString() {
        return svgString + "</svg>";
    }
}
