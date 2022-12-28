package dat.backend.model.services;

public class SVG {
    private int x;
    private int y;
    private int height;
    private int width;
    private String viewbox;
    private String svgString = "<svg></svg>";

    private final static String HEADERTEMPLATE =
            "<svg height=\"%d%%\" width=\"%d%%\" viewBox=\"%s\" preserveAspectRatio=\"xMinYMin\">";
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
    public SVG(int height, int width, String viewbox) {

        svgString += String.format(HEADERTEMPLATE, height, width, viewbox);
        //svgString.append(ARROWHEADSTEMPLATE);
        this.height = height;
        this.width = width;
        this.viewbox = viewbox;
    }


    @Override
    public String toString() {
        return svgString + "</svg>";
    }
}
