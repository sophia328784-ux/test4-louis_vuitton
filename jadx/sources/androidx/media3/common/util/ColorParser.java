package androidx.media3.common.util;

import android.graphics.Color;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import defpackage.cj;
import defpackage.ct0;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ColorParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f14147a = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f14148b = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f14149c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");
    public static final HashMap d;

    static {
        HashMap map = new HashMap();
        d = map;
        cj.u(-984833, map, "aliceblue", -332841, "antiquewhite");
        cj.D(map, "aqua", -16711681, -8388652, "aquamarine");
        cj.u(-983041, map, "azure", -657956, "beige");
        cj.u(-6972, map, "bisque", com.batch.android.q0.b.v, "black");
        cj.u(-5171, map, "blanchedalmond", -16776961, "blue");
        cj.u(-7722014, map, "blueviolet", -5952982, "brown");
        cj.u(-2180985, map, "burlywood", -10510688, "cadetblue");
        cj.u(-8388864, map, "chartreuse", -2987746, "chocolate");
        cj.u(-32944, map, "coral", -10185235, "cornflowerblue");
        cj.u(-1828, map, "cornsilk", -2354116, "crimson");
        cj.D(map, "cyan", -16711681, -16777077, "darkblue");
        cj.u(-16741493, map, "darkcyan", -4684277, "darkgoldenrod");
        cj.D(map, "darkgray", -5658199, -16751616, "darkgreen");
        cj.D(map, "darkgrey", -5658199, -4343957, "darkkhaki");
        cj.u(-7667573, map, "darkmagenta", -11179217, "darkolivegreen");
        cj.u(-29696, map, "darkorange", -6737204, "darkorchid");
        cj.u(-7667712, map, "darkred", -1468806, "darksalmon");
        cj.u(-7357297, map, "darkseagreen", -12042869, "darkslateblue");
        map.put("darkslategray", -13676721);
        map.put("darkslategrey", -13676721);
        cj.D(map, "darkturquoise", -16724271, -7077677, "darkviolet");
        cj.u(-60269, map, "deeppink", -16728065, "deepskyblue");
        map.put("dimgray", -9868951);
        map.put("dimgrey", -9868951);
        cj.D(map, "dodgerblue", -14774017, -5103070, "firebrick");
        cj.u(-1296, map, "floralwhite", -14513374, "forestgreen");
        cj.D(map, "fuchsia", -65281, -2302756, "gainsboro");
        cj.u(-460545, map, "ghostwhite", -10496, "gold");
        map.put("goldenrod", -2448096);
        map.put("gray", -8355712);
        cj.u(-16744448, map, "green", -5374161, "greenyellow");
        cj.D(map, "grey", -8355712, -983056, "honeydew");
        cj.u(-38476, map, "hotpink", -3318692, "indianred");
        cj.u(-11861886, map, "indigo", -16, "ivory");
        cj.u(-989556, map, "khaki", -1644806, "lavender");
        cj.u(-3851, map, "lavenderblush", -8586240, "lawngreen");
        cj.u(-1331, map, "lemonchiffon", -5383962, "lightblue");
        cj.u(-1015680, map, "lightcoral", -2031617, "lightcyan");
        map.put("lightgoldenrodyellow", -329006);
        map.put("lightgray", -2894893);
        map.put("lightgreen", -7278960);
        map.put("lightgrey", -2894893);
        cj.u(-18751, map, "lightpink", -24454, "lightsalmon");
        cj.u(-14634326, map, "lightseagreen", -7876870, "lightskyblue");
        map.put("lightslategray", -8943463);
        map.put("lightslategrey", -8943463);
        cj.D(map, "lightsteelblue", -5192482, -32, "lightyellow");
        cj.u(-16711936, map, "lime", -13447886, "limegreen");
        map.put("linen", -331546);
        map.put("magenta", -65281);
        cj.u(-8388608, map, "maroon", -10039894, "mediumaquamarine");
        cj.u(-16777011, map, "mediumblue", -4565549, "mediumorchid");
        cj.u(-7114533, map, "mediumpurple", -12799119, "mediumseagreen");
        cj.u(-8689426, map, "mediumslateblue", -16713062, "mediumspringgreen");
        cj.u(-12004916, map, "mediumturquoise", -3730043, "mediumvioletred");
        cj.u(-15132304, map, "midnightblue", -655366, "mintcream");
        cj.u(-6943, map, "mistyrose", -6987, "moccasin");
        cj.u(-8531, map, "navajowhite", -16777088, "navy");
        cj.u(-133658, map, "oldlace", -8355840, "olive");
        cj.u(-9728477, map, "olivedrab", -23296, "orange");
        cj.u(-47872, map, "orangered", -2461482, "orchid");
        cj.u(-1120086, map, "palegoldenrod", -6751336, "palegreen");
        cj.u(-5247250, map, "paleturquoise", -2396013, "palevioletred");
        cj.u(-4139, map, "papayawhip", -9543, "peachpuff");
        cj.u(-3308225, map, "peru", -16181, "pink");
        cj.u(-2252579, map, "plum", -5185306, "powderblue");
        cj.u(-8388480, map, "purple", -10079335, "rebeccapurple");
        cj.u(-65536, map, "red", -4419697, "rosybrown");
        cj.u(-12490271, map, "royalblue", -7650029, "saddlebrown");
        cj.u(-360334, map, "salmon", -744352, "sandybrown");
        cj.u(-13726889, map, "seagreen", -2578, "seashell");
        cj.u(-6270419, map, "sienna", -4144960, "silver");
        cj.u(-7876885, map, "skyblue", -9807155, "slateblue");
        map.put("slategray", -9404272);
        map.put("slategrey", -9404272);
        cj.D(map, "snow", -1286, -16711809, "springgreen");
        cj.u(-12156236, map, "steelblue", -2968436, "tan");
        cj.u(-16744320, map, "teal", -2572328, "thistle");
        cj.u(-40121, map, "tomato", 0, "transparent");
        cj.u(-12525360, map, "turquoise", -1146130, "violet");
        cj.u(-663885, map, "wheat", -1, "white");
        cj.u(-657931, map, "whitesmoke", -256, "yellow");
        map.put("yellowgreen", -6632142);
    }

    public static int a(String str, boolean z) {
        int i2;
        Preconditions.g(!TextUtils.isEmpty(str));
        String strReplace = str.replace(" ", "");
        if (strReplace.charAt(0) == '#') {
            int i3 = (int) Long.parseLong(strReplace.substring(1), 16);
            if (strReplace.length() == 7) {
                return (-16777216) | i3;
            }
            if (strReplace.length() == 9) {
                return ((i3 & 255) << 24) | (i3 >>> 8);
            }
            ct0.c();
            return 0;
        }
        if (strReplace.startsWith("rgba")) {
            Matcher matcher = (z ? f14149c : f14148b).matcher(strReplace);
            if (matcher.matches()) {
                if (z) {
                    String strGroup = matcher.group(4);
                    strGroup.getClass();
                    i2 = (int) (Float.parseFloat(strGroup) * 255.0f);
                } else {
                    String strGroup2 = matcher.group(4);
                    strGroup2.getClass();
                    i2 = Integer.parseInt(strGroup2, 10);
                }
                String strGroup3 = matcher.group(1);
                strGroup3.getClass();
                int i4 = Integer.parseInt(strGroup3, 10);
                String strGroup4 = matcher.group(2);
                strGroup4.getClass();
                int i5 = Integer.parseInt(strGroup4, 10);
                String strGroup5 = matcher.group(3);
                strGroup5.getClass();
                return Color.argb(i2, i4, i5, Integer.parseInt(strGroup5, 10));
            }
        } else if (strReplace.startsWith("rgb")) {
            Matcher matcher2 = f14147a.matcher(strReplace);
            if (matcher2.matches()) {
                String strGroup6 = matcher2.group(1);
                strGroup6.getClass();
                int i6 = Integer.parseInt(strGroup6, 10);
                String strGroup7 = matcher2.group(2);
                strGroup7.getClass();
                int i7 = Integer.parseInt(strGroup7, 10);
                String strGroup8 = matcher2.group(3);
                strGroup8.getClass();
                return Color.rgb(i6, i7, Integer.parseInt(strGroup8, 10));
            }
        } else {
            Integer num = (Integer) d.get(Ascii.c(strReplace));
            if (num != null) {
                return num.intValue();
            }
        }
        ct0.c();
        return 0;
    }
}
