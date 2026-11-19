package com.caverock.androidsvg;

import android.graphics.Matrix;
import android.util.Xml;
import com.android.wiimu.model.WiimuPendingMask;
import com.batch.android.q0.b;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.cj;
import defpackage.ct0;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParserFactory;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;
import okhttp3.internal.ws.RealWebSocket;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.eac.EACTags;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DefaultHandler2;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
class SVGParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SVG f25239a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SVG.SvgContainer f25240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25241c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f25242e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SVGElem f25243f;
    public StringBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f25244h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public StringBuilder f25245i;

    /* JADX INFO: renamed from: com.caverock.androidsvg.SVGParser$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f25247b;

        static {
            int[] iArr = new int[SVGAttr.values().length];
            f25247b = iArr;
            try {
                iArr[SVGAttr.x.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f25247b[SVGAttr.y.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f25247b[SVGAttr.width.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f25247b[SVGAttr.height.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f25247b[SVGAttr.version.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f25247b[SVGAttr.href.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f25247b[SVGAttr.preserveAspectRatio.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f25247b[SVGAttr.d.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f25247b[SVGAttr.pathLength.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f25247b[SVGAttr.rx.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f25247b[SVGAttr.ry.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f25247b[SVGAttr.cx.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f25247b[SVGAttr.cy.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f25247b[SVGAttr.r.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f25247b[SVGAttr.x1.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f25247b[SVGAttr.y1.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f25247b[SVGAttr.x2.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f25247b[SVGAttr.y2.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f25247b[SVGAttr.dx.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f25247b[SVGAttr.dy.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f25247b[SVGAttr.requiredFeatures.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f25247b[SVGAttr.requiredExtensions.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f25247b[SVGAttr.systemLanguage.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f25247b[SVGAttr.requiredFormats.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f25247b[SVGAttr.requiredFonts.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f25247b[SVGAttr.refX.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f25247b[SVGAttr.refY.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f25247b[SVGAttr.markerWidth.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f25247b[SVGAttr.markerHeight.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f25247b[SVGAttr.markerUnits.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f25247b[SVGAttr.orient.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f25247b[SVGAttr.gradientUnits.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f25247b[SVGAttr.gradientTransform.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f25247b[SVGAttr.spreadMethod.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f25247b[SVGAttr.fx.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f25247b[SVGAttr.fy.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f25247b[SVGAttr.offset.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f25247b[SVGAttr.clipPathUnits.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f25247b[SVGAttr.startOffset.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f25247b[SVGAttr.patternUnits.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f25247b[SVGAttr.patternContentUnits.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f25247b[SVGAttr.patternTransform.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f25247b[SVGAttr.maskUnits.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f25247b[SVGAttr.maskContentUnits.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f25247b[SVGAttr.style.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f25247b[SVGAttr.CLASS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f25247b[SVGAttr.fill.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f25247b[SVGAttr.fill_rule.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f25247b[SVGAttr.fill_opacity.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f25247b[SVGAttr.stroke.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f25247b[SVGAttr.stroke_opacity.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f25247b[SVGAttr.stroke_width.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f25247b[SVGAttr.stroke_linecap.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f25247b[SVGAttr.stroke_linejoin.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f25247b[SVGAttr.stroke_miterlimit.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f25247b[SVGAttr.stroke_dasharray.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f25247b[SVGAttr.stroke_dashoffset.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f25247b[SVGAttr.opacity.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f25247b[SVGAttr.color.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f25247b[SVGAttr.font.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f25247b[SVGAttr.font_family.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f25247b[SVGAttr.font_size.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f25247b[SVGAttr.font_weight.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f25247b[SVGAttr.font_style.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f25247b[SVGAttr.text_decoration.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                f25247b[SVGAttr.direction.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                f25247b[SVGAttr.text_anchor.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                f25247b[SVGAttr.overflow.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                f25247b[SVGAttr.marker.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                f25247b[SVGAttr.marker_start.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                f25247b[SVGAttr.marker_mid.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                f25247b[SVGAttr.marker_end.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                f25247b[SVGAttr.display.ordinal()] = 73;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                f25247b[SVGAttr.visibility.ordinal()] = 74;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                f25247b[SVGAttr.stop_color.ordinal()] = 75;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                f25247b[SVGAttr.stop_opacity.ordinal()] = 76;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                f25247b[SVGAttr.clip.ordinal()] = 77;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                f25247b[SVGAttr.clip_path.ordinal()] = 78;
            } catch (NoSuchFieldError unused78) {
            }
            try {
                f25247b[SVGAttr.clip_rule.ordinal()] = 79;
            } catch (NoSuchFieldError unused79) {
            }
            try {
                f25247b[SVGAttr.mask.ordinal()] = 80;
            } catch (NoSuchFieldError unused80) {
            }
            try {
                f25247b[SVGAttr.solid_color.ordinal()] = 81;
            } catch (NoSuchFieldError unused81) {
            }
            try {
                f25247b[SVGAttr.solid_opacity.ordinal()] = 82;
            } catch (NoSuchFieldError unused82) {
            }
            try {
                f25247b[SVGAttr.viewport_fill.ordinal()] = 83;
            } catch (NoSuchFieldError unused83) {
            }
            try {
                f25247b[SVGAttr.viewport_fill_opacity.ordinal()] = 84;
            } catch (NoSuchFieldError unused84) {
            }
            try {
                f25247b[SVGAttr.vector_effect.ordinal()] = 85;
            } catch (NoSuchFieldError unused85) {
            }
            try {
                f25247b[SVGAttr.image_rendering.ordinal()] = 86;
            } catch (NoSuchFieldError unused86) {
            }
            try {
                f25247b[SVGAttr.viewBox.ordinal()] = 87;
            } catch (NoSuchFieldError unused87) {
            }
            try {
                f25247b[SVGAttr.type.ordinal()] = 88;
            } catch (NoSuchFieldError unused88) {
            }
            try {
                f25247b[SVGAttr.media.ordinal()] = 89;
            } catch (NoSuchFieldError unused89) {
            }
            int[] iArr2 = new int[SVGElem.values().length];
            f25246a = iArr2;
            try {
                iArr2[SVGElem.svg.ordinal()] = 1;
            } catch (NoSuchFieldError unused90) {
            }
            try {
                f25246a[SVGElem.g.ordinal()] = 2;
            } catch (NoSuchFieldError unused91) {
            }
            try {
                f25246a[SVGElem.f25253a.ordinal()] = 3;
            } catch (NoSuchFieldError unused92) {
            }
            try {
                f25246a[SVGElem.defs.ordinal()] = 4;
            } catch (NoSuchFieldError unused93) {
            }
            try {
                f25246a[SVGElem.use.ordinal()] = 5;
            } catch (NoSuchFieldError unused94) {
            }
            try {
                f25246a[SVGElem.path.ordinal()] = 6;
            } catch (NoSuchFieldError unused95) {
            }
            try {
                f25246a[SVGElem.rect.ordinal()] = 7;
            } catch (NoSuchFieldError unused96) {
            }
            try {
                f25246a[SVGElem.circle.ordinal()] = 8;
            } catch (NoSuchFieldError unused97) {
            }
            try {
                f25246a[SVGElem.ellipse.ordinal()] = 9;
            } catch (NoSuchFieldError unused98) {
            }
            try {
                f25246a[SVGElem.line.ordinal()] = 10;
            } catch (NoSuchFieldError unused99) {
            }
            try {
                f25246a[SVGElem.polyline.ordinal()] = 11;
            } catch (NoSuchFieldError unused100) {
            }
            try {
                f25246a[SVGElem.polygon.ordinal()] = 12;
            } catch (NoSuchFieldError unused101) {
            }
            try {
                f25246a[SVGElem.text.ordinal()] = 13;
            } catch (NoSuchFieldError unused102) {
            }
            try {
                f25246a[SVGElem.tspan.ordinal()] = 14;
            } catch (NoSuchFieldError unused103) {
            }
            try {
                f25246a[SVGElem.tref.ordinal()] = 15;
            } catch (NoSuchFieldError unused104) {
            }
            try {
                f25246a[SVGElem.SWITCH.ordinal()] = 16;
            } catch (NoSuchFieldError unused105) {
            }
            try {
                f25246a[SVGElem.symbol.ordinal()] = 17;
            } catch (NoSuchFieldError unused106) {
            }
            try {
                f25246a[SVGElem.marker.ordinal()] = 18;
            } catch (NoSuchFieldError unused107) {
            }
            try {
                f25246a[SVGElem.linearGradient.ordinal()] = 19;
            } catch (NoSuchFieldError unused108) {
            }
            try {
                f25246a[SVGElem.radialGradient.ordinal()] = 20;
            } catch (NoSuchFieldError unused109) {
            }
            try {
                f25246a[SVGElem.stop.ordinal()] = 21;
            } catch (NoSuchFieldError unused110) {
            }
            try {
                f25246a[SVGElem.title.ordinal()] = 22;
            } catch (NoSuchFieldError unused111) {
            }
            try {
                f25246a[SVGElem.desc.ordinal()] = 23;
            } catch (NoSuchFieldError unused112) {
            }
            try {
                f25246a[SVGElem.clipPath.ordinal()] = 24;
            } catch (NoSuchFieldError unused113) {
            }
            try {
                f25246a[SVGElem.textPath.ordinal()] = 25;
            } catch (NoSuchFieldError unused114) {
            }
            try {
                f25246a[SVGElem.pattern.ordinal()] = 26;
            } catch (NoSuchFieldError unused115) {
            }
            try {
                f25246a[SVGElem.image.ordinal()] = 27;
            } catch (NoSuchFieldError unused116) {
            }
            try {
                f25246a[SVGElem.view.ordinal()] = 28;
            } catch (NoSuchFieldError unused117) {
            }
            try {
                f25246a[SVGElem.mask.ordinal()] = 29;
            } catch (NoSuchFieldError unused118) {
            }
            try {
                f25246a[SVGElem.style.ordinal()] = 30;
            } catch (NoSuchFieldError unused119) {
            }
            try {
                f25246a[SVGElem.solidColor.ordinal()] = 31;
            } catch (NoSuchFieldError unused120) {
            }
        }
    }

    public static class AspectRatioKeywords {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HashMap f25248a;

        static {
            HashMap map = new HashMap(10);
            f25248a = map;
            map.put("none", PreserveAspectRatio.Alignment.none);
            map.put("xMinYMin", PreserveAspectRatio.Alignment.xMinYMin);
            map.put("xMidYMin", PreserveAspectRatio.Alignment.xMidYMin);
            map.put("xMaxYMin", PreserveAspectRatio.Alignment.xMaxYMin);
            map.put("xMinYMid", PreserveAspectRatio.Alignment.xMinYMid);
            map.put("xMidYMid", PreserveAspectRatio.Alignment.xMidYMid);
            map.put("xMaxYMid", PreserveAspectRatio.Alignment.xMaxYMid);
            map.put("xMinYMax", PreserveAspectRatio.Alignment.xMinYMax);
            map.put("xMidYMax", PreserveAspectRatio.Alignment.xMidYMax);
            map.put("xMaxYMax", PreserveAspectRatio.Alignment.xMaxYMax);
        }
    }

    public static class ColourKeywords {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HashMap f25249a;

        static {
            HashMap map = new HashMap(47);
            f25249a = map;
            cj.u(-984833, map, "aliceblue", -332841, "antiquewhite");
            cj.D(map, "aqua", -16711681, -8388652, "aquamarine");
            cj.u(-983041, map, "azure", -657956, "beige");
            cj.u(-6972, map, "bisque", b.v, "black");
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
            cj.u(-40121, map, "tomato", -12525360, "turquoise");
            cj.u(-1146130, map, "violet", -663885, "wheat");
            cj.u(-1, map, "white", -657931, "whitesmoke");
            cj.u(-256, map, "yellow", -6632142, "yellowgreen");
            map.put("transparent", 0);
        }
    }

    public static class FontSizeKeywords {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HashMap f25250a;

        static {
            HashMap map = new HashMap(9);
            f25250a = map;
            SVG.Unit unit = SVG.Unit.pt;
            map.put("xx-small", new SVG.Length(0.694f, unit));
            map.put("x-small", new SVG.Length(0.833f, unit));
            map.put("small", new SVG.Length(10.0f, unit));
            map.put("medium", new SVG.Length(12.0f, unit));
            map.put("large", new SVG.Length(14.4f, unit));
            map.put("x-large", new SVG.Length(17.3f, unit));
            map.put("xx-large", new SVG.Length(20.7f, unit));
            SVG.Unit unit2 = SVG.Unit.percent;
            map.put("smaller", new SVG.Length(83.33f, unit2));
            map.put("larger", new SVG.Length(120.0f, unit2));
        }
    }

    public static class FontWeightKeywords {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final HashMap f25251a;

        static {
            HashMap map = new HashMap(13);
            f25251a = map;
            map.put("normal", 400);
            map.put("bold", 700);
            cj.u(1, map, "bolder", -1, "lighter");
            cj.u(100, map, "100", 200, "200");
            map.put("300", 300);
            map.put("400", 400);
            cj.u(500, map, "500", 600, "600");
            cj.D(map, "700", 700, ConfigurationName.BASE_X_POS, "800");
            map.put("900", 900);
        }
    }

    public class SAXHandler extends DefaultHandler2 {
        public SAXHandler() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void characters(char[] cArr, int i2, int i3) {
            SVGParser.this.F(new String(cArr, i2, i3));
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endDocument() {
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void endElement(String str, String str2, String str3) {
            SVGParser.this.c(str, str2, str3);
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void processingInstruction(String str, String str2) {
            SVGParser.y(new TextScanner(str2));
            str.equals("xml-stylesheet");
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startDocument() {
            SVGParser.this.D();
        }

        @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
        public final void startElement(String str, String str2, String str3, Attributes attributes) throws SVGParseException {
            SVGParser.this.E(str, str2, str3, attributes);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SVGAttr {
        private static final /* synthetic */ SVGAttr[] $VALUES;
        public static final SVGAttr CLASS;
        public static final SVGAttr UNSUPPORTED;
        private static final Map<String, SVGAttr> cache;
        public static final SVGAttr clip;
        public static final SVGAttr clipPathUnits;
        public static final SVGAttr clip_path;
        public static final SVGAttr clip_rule;
        public static final SVGAttr color;
        public static final SVGAttr cx;
        public static final SVGAttr cy;
        public static final SVGAttr d;
        public static final SVGAttr direction;
        public static final SVGAttr display;
        public static final SVGAttr dx;
        public static final SVGAttr dy;
        public static final SVGAttr fill;
        public static final SVGAttr fill_opacity;
        public static final SVGAttr fill_rule;
        public static final SVGAttr font;
        public static final SVGAttr font_family;
        public static final SVGAttr font_size;
        public static final SVGAttr font_style;
        public static final SVGAttr font_weight;
        public static final SVGAttr fx;
        public static final SVGAttr fy;
        public static final SVGAttr gradientTransform;
        public static final SVGAttr gradientUnits;
        public static final SVGAttr height;
        public static final SVGAttr href;
        public static final SVGAttr image_rendering;
        public static final SVGAttr marker;
        public static final SVGAttr markerHeight;
        public static final SVGAttr markerUnits;
        public static final SVGAttr markerWidth;
        public static final SVGAttr marker_end;
        public static final SVGAttr marker_mid;
        public static final SVGAttr marker_start;
        public static final SVGAttr mask;
        public static final SVGAttr maskContentUnits;
        public static final SVGAttr maskUnits;
        public static final SVGAttr media;
        public static final SVGAttr offset;
        public static final SVGAttr opacity;
        public static final SVGAttr orient;
        public static final SVGAttr overflow;
        public static final SVGAttr pathLength;
        public static final SVGAttr patternContentUnits;
        public static final SVGAttr patternTransform;
        public static final SVGAttr patternUnits;
        public static final SVGAttr points;
        public static final SVGAttr preserveAspectRatio;
        public static final SVGAttr r;
        public static final SVGAttr refX;
        public static final SVGAttr refY;
        public static final SVGAttr requiredExtensions;
        public static final SVGAttr requiredFeatures;
        public static final SVGAttr requiredFonts;
        public static final SVGAttr requiredFormats;
        public static final SVGAttr rx;
        public static final SVGAttr ry;
        public static final SVGAttr solid_color;
        public static final SVGAttr solid_opacity;
        public static final SVGAttr spreadMethod;
        public static final SVGAttr startOffset;
        public static final SVGAttr stop_color;
        public static final SVGAttr stop_opacity;
        public static final SVGAttr stroke;
        public static final SVGAttr stroke_dasharray;
        public static final SVGAttr stroke_dashoffset;
        public static final SVGAttr stroke_linecap;
        public static final SVGAttr stroke_linejoin;
        public static final SVGAttr stroke_miterlimit;
        public static final SVGAttr stroke_opacity;
        public static final SVGAttr stroke_width;
        public static final SVGAttr style;
        public static final SVGAttr systemLanguage;
        public static final SVGAttr text_anchor;
        public static final SVGAttr text_decoration;
        public static final SVGAttr transform;
        public static final SVGAttr type;
        public static final SVGAttr vector_effect;
        public static final SVGAttr version;
        public static final SVGAttr viewBox;
        public static final SVGAttr viewport_fill;
        public static final SVGAttr viewport_fill_opacity;
        public static final SVGAttr visibility;
        public static final SVGAttr width;
        public static final SVGAttr x;
        public static final SVGAttr x1;
        public static final SVGAttr x2;
        public static final SVGAttr y;
        public static final SVGAttr y1;
        public static final SVGAttr y2;

        static {
            SVGAttr sVGAttr = new SVGAttr("CLASS", 0);
            CLASS = sVGAttr;
            SVGAttr sVGAttr2 = new SVGAttr("clip", 1);
            clip = sVGAttr2;
            SVGAttr sVGAttr3 = new SVGAttr("clip_path", 2);
            clip_path = sVGAttr3;
            SVGAttr sVGAttr4 = new SVGAttr("clipPathUnits", 3);
            clipPathUnits = sVGAttr4;
            SVGAttr sVGAttr5 = new SVGAttr("clip_rule", 4);
            clip_rule = sVGAttr5;
            SVGAttr sVGAttr6 = new SVGAttr("color", 5);
            color = sVGAttr6;
            SVGAttr sVGAttr7 = new SVGAttr("cx", 6);
            cx = sVGAttr7;
            SVGAttr sVGAttr8 = new SVGAttr("cy", 7);
            cy = sVGAttr8;
            SVGAttr sVGAttr9 = new SVGAttr("direction", 8);
            direction = sVGAttr9;
            SVGAttr sVGAttr10 = new SVGAttr("dx", 9);
            dx = sVGAttr10;
            SVGAttr sVGAttr11 = new SVGAttr("dy", 10);
            dy = sVGAttr11;
            SVGAttr sVGAttr12 = new SVGAttr("fx", 11);
            fx = sVGAttr12;
            SVGAttr sVGAttr13 = new SVGAttr("fy", 12);
            fy = sVGAttr13;
            SVGAttr sVGAttr14 = new SVGAttr(NBSSpanMetricUnit.Day, 13);
            d = sVGAttr14;
            SVGAttr sVGAttr15 = new SVGAttr("display", 14);
            display = sVGAttr15;
            SVGAttr sVGAttr16 = new SVGAttr("fill", 15);
            fill = sVGAttr16;
            SVGAttr sVGAttr17 = new SVGAttr("fill_rule", 16);
            fill_rule = sVGAttr17;
            SVGAttr sVGAttr18 = new SVGAttr("fill_opacity", 17);
            fill_opacity = sVGAttr18;
            SVGAttr sVGAttr19 = new SVGAttr("font", 18);
            font = sVGAttr19;
            SVGAttr sVGAttr20 = new SVGAttr("font_family", 19);
            font_family = sVGAttr20;
            SVGAttr sVGAttr21 = new SVGAttr("font_size", 20);
            font_size = sVGAttr21;
            SVGAttr sVGAttr22 = new SVGAttr("font_weight", 21);
            font_weight = sVGAttr22;
            SVGAttr sVGAttr23 = new SVGAttr("font_style", 22);
            font_style = sVGAttr23;
            SVGAttr sVGAttr24 = new SVGAttr("gradientTransform", 23);
            gradientTransform = sVGAttr24;
            SVGAttr sVGAttr25 = new SVGAttr("gradientUnits", 24);
            gradientUnits = sVGAttr25;
            SVGAttr sVGAttr26 = new SVGAttr("height", 25);
            height = sVGAttr26;
            SVGAttr sVGAttr27 = new SVGAttr("href", 26);
            href = sVGAttr27;
            SVGAttr sVGAttr28 = new SVGAttr("image_rendering", 27);
            image_rendering = sVGAttr28;
            SVGAttr sVGAttr29 = new SVGAttr("marker", 28);
            marker = sVGAttr29;
            SVGAttr sVGAttr30 = new SVGAttr("marker_start", 29);
            marker_start = sVGAttr30;
            SVGAttr sVGAttr31 = new SVGAttr("marker_mid", 30);
            marker_mid = sVGAttr31;
            SVGAttr sVGAttr32 = new SVGAttr("marker_end", 31);
            marker_end = sVGAttr32;
            SVGAttr sVGAttr33 = new SVGAttr("markerHeight", 32);
            markerHeight = sVGAttr33;
            SVGAttr sVGAttr34 = new SVGAttr("markerUnits", 33);
            markerUnits = sVGAttr34;
            SVGAttr sVGAttr35 = new SVGAttr("markerWidth", 34);
            markerWidth = sVGAttr35;
            SVGAttr sVGAttr36 = new SVGAttr(WiimuPendingMask.Mask, 35);
            mask = sVGAttr36;
            SVGAttr sVGAttr37 = new SVGAttr("maskContentUnits", 36);
            maskContentUnits = sVGAttr37;
            SVGAttr sVGAttr38 = new SVGAttr("maskUnits", 37);
            maskUnits = sVGAttr38;
            SVGAttr sVGAttr39 = new SVGAttr("media", 38);
            media = sVGAttr39;
            SVGAttr sVGAttr40 = new SVGAttr("offset", 39);
            offset = sVGAttr40;
            SVGAttr sVGAttr41 = new SVGAttr("opacity", 40);
            opacity = sVGAttr41;
            SVGAttr sVGAttr42 = new SVGAttr("orient", 41);
            orient = sVGAttr42;
            SVGAttr sVGAttr43 = new SVGAttr("overflow", 42);
            overflow = sVGAttr43;
            SVGAttr sVGAttr44 = new SVGAttr("pathLength", 43);
            pathLength = sVGAttr44;
            SVGAttr sVGAttr45 = new SVGAttr("patternContentUnits", 44);
            patternContentUnits = sVGAttr45;
            SVGAttr sVGAttr46 = new SVGAttr("patternTransform", 45);
            patternTransform = sVGAttr46;
            SVGAttr sVGAttr47 = new SVGAttr("patternUnits", 46);
            patternUnits = sVGAttr47;
            SVGAttr sVGAttr48 = new SVGAttr("points", 47);
            points = sVGAttr48;
            SVGAttr sVGAttr49 = new SVGAttr("preserveAspectRatio", 48);
            preserveAspectRatio = sVGAttr49;
            SVGAttr sVGAttr50 = new SVGAttr("r", 49);
            r = sVGAttr50;
            SVGAttr sVGAttr51 = new SVGAttr("refX", 50);
            refX = sVGAttr51;
            SVGAttr sVGAttr52 = new SVGAttr("refY", 51);
            refY = sVGAttr52;
            SVGAttr sVGAttr53 = new SVGAttr("requiredFeatures", 52);
            requiredFeatures = sVGAttr53;
            SVGAttr sVGAttr54 = new SVGAttr("requiredExtensions", 53);
            requiredExtensions = sVGAttr54;
            SVGAttr sVGAttr55 = new SVGAttr("requiredFormats", 54);
            requiredFormats = sVGAttr55;
            SVGAttr sVGAttr56 = new SVGAttr("requiredFonts", 55);
            requiredFonts = sVGAttr56;
            SVGAttr sVGAttr57 = new SVGAttr("rx", 56);
            rx = sVGAttr57;
            SVGAttr sVGAttr58 = new SVGAttr("ry", 57);
            ry = sVGAttr58;
            SVGAttr sVGAttr59 = new SVGAttr("solid_color", 58);
            solid_color = sVGAttr59;
            SVGAttr sVGAttr60 = new SVGAttr("solid_opacity", 59);
            solid_opacity = sVGAttr60;
            SVGAttr sVGAttr61 = new SVGAttr("spreadMethod", 60);
            spreadMethod = sVGAttr61;
            SVGAttr sVGAttr62 = new SVGAttr("startOffset", 61);
            startOffset = sVGAttr62;
            SVGAttr sVGAttr63 = new SVGAttr("stop_color", 62);
            stop_color = sVGAttr63;
            SVGAttr sVGAttr64 = new SVGAttr("stop_opacity", 63);
            stop_opacity = sVGAttr64;
            SVGAttr sVGAttr65 = new SVGAttr("stroke", 64);
            stroke = sVGAttr65;
            SVGAttr sVGAttr66 = new SVGAttr("stroke_dasharray", 65);
            stroke_dasharray = sVGAttr66;
            SVGAttr sVGAttr67 = new SVGAttr("stroke_dashoffset", 66);
            stroke_dashoffset = sVGAttr67;
            SVGAttr sVGAttr68 = new SVGAttr("stroke_linecap", 67);
            stroke_linecap = sVGAttr68;
            SVGAttr sVGAttr69 = new SVGAttr("stroke_linejoin", 68);
            stroke_linejoin = sVGAttr69;
            SVGAttr sVGAttr70 = new SVGAttr("stroke_miterlimit", 69);
            stroke_miterlimit = sVGAttr70;
            SVGAttr sVGAttr71 = new SVGAttr("stroke_opacity", 70);
            stroke_opacity = sVGAttr71;
            SVGAttr sVGAttr72 = new SVGAttr("stroke_width", 71);
            stroke_width = sVGAttr72;
            SVGAttr sVGAttr73 = new SVGAttr("style", 72);
            style = sVGAttr73;
            SVGAttr sVGAttr74 = new SVGAttr("systemLanguage", 73);
            systemLanguage = sVGAttr74;
            SVGAttr sVGAttr75 = new SVGAttr("text_anchor", 74);
            text_anchor = sVGAttr75;
            SVGAttr sVGAttr76 = new SVGAttr("text_decoration", 75);
            text_decoration = sVGAttr76;
            SVGAttr sVGAttr77 = new SVGAttr("transform", 76);
            transform = sVGAttr77;
            SVGAttr sVGAttr78 = new SVGAttr("type", 77);
            type = sVGAttr78;
            SVGAttr sVGAttr79 = new SVGAttr("vector_effect", 78);
            vector_effect = sVGAttr79;
            SVGAttr sVGAttr80 = new SVGAttr("version", 79);
            version = sVGAttr80;
            SVGAttr sVGAttr81 = new SVGAttr("viewBox", 80);
            viewBox = sVGAttr81;
            SVGAttr sVGAttr82 = new SVGAttr("width", 81);
            width = sVGAttr82;
            SVGAttr sVGAttr83 = new SVGAttr("x", 82);
            x = sVGAttr83;
            SVGAttr sVGAttr84 = new SVGAttr("y", 83);
            y = sVGAttr84;
            SVGAttr sVGAttr85 = new SVGAttr("x1", 84);
            x1 = sVGAttr85;
            SVGAttr sVGAttr86 = new SVGAttr("y1", 85);
            y1 = sVGAttr86;
            SVGAttr sVGAttr87 = new SVGAttr("x2", 86);
            x2 = sVGAttr87;
            SVGAttr sVGAttr88 = new SVGAttr("y2", 87);
            y2 = sVGAttr88;
            SVGAttr sVGAttr89 = new SVGAttr("viewport_fill", 88);
            viewport_fill = sVGAttr89;
            SVGAttr sVGAttr90 = new SVGAttr("viewport_fill_opacity", 89);
            viewport_fill_opacity = sVGAttr90;
            SVGAttr sVGAttr91 = new SVGAttr("visibility", 90);
            visibility = sVGAttr91;
            SVGAttr sVGAttr92 = new SVGAttr("UNSUPPORTED", 91);
            UNSUPPORTED = sVGAttr92;
            $VALUES = new SVGAttr[]{sVGAttr, sVGAttr2, sVGAttr3, sVGAttr4, sVGAttr5, sVGAttr6, sVGAttr7, sVGAttr8, sVGAttr9, sVGAttr10, sVGAttr11, sVGAttr12, sVGAttr13, sVGAttr14, sVGAttr15, sVGAttr16, sVGAttr17, sVGAttr18, sVGAttr19, sVGAttr20, sVGAttr21, sVGAttr22, sVGAttr23, sVGAttr24, sVGAttr25, sVGAttr26, sVGAttr27, sVGAttr28, sVGAttr29, sVGAttr30, sVGAttr31, sVGAttr32, sVGAttr33, sVGAttr34, sVGAttr35, sVGAttr36, sVGAttr37, sVGAttr38, sVGAttr39, sVGAttr40, sVGAttr41, sVGAttr42, sVGAttr43, sVGAttr44, sVGAttr45, sVGAttr46, sVGAttr47, sVGAttr48, sVGAttr49, sVGAttr50, sVGAttr51, sVGAttr52, sVGAttr53, sVGAttr54, sVGAttr55, sVGAttr56, sVGAttr57, sVGAttr58, sVGAttr59, sVGAttr60, sVGAttr61, sVGAttr62, sVGAttr63, sVGAttr64, sVGAttr65, sVGAttr66, sVGAttr67, sVGAttr68, sVGAttr69, sVGAttr70, sVGAttr71, sVGAttr72, sVGAttr73, sVGAttr74, sVGAttr75, sVGAttr76, sVGAttr77, sVGAttr78, sVGAttr79, sVGAttr80, sVGAttr81, sVGAttr82, sVGAttr83, sVGAttr84, sVGAttr85, sVGAttr86, sVGAttr87, sVGAttr88, sVGAttr89, sVGAttr90, sVGAttr91, sVGAttr92};
            cache = new HashMap();
            for (SVGAttr sVGAttr93 : values()) {
                if (sVGAttr93 == CLASS) {
                    cache.put("class", sVGAttr93);
                } else if (sVGAttr93 != UNSUPPORTED) {
                    cache.put(sVGAttr93.name().replace('_', '-'), sVGAttr93);
                }
            }
        }

        public static SVGAttr a(String str) {
            SVGAttr sVGAttr = cache.get(str);
            return sVGAttr != null ? sVGAttr : UNSUPPORTED;
        }

        public static SVGAttr valueOf(String str) {
            return (SVGAttr) Enum.valueOf(SVGAttr.class, str);
        }

        public static SVGAttr[] values() {
            return (SVGAttr[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class SVGElem {
        private static final /* synthetic */ SVGElem[] $VALUES;
        public static final SVGElem SWITCH;
        public static final SVGElem UNSUPPORTED;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final SVGElem f25253a;
        private static final Map<String, SVGElem> cache;
        public static final SVGElem circle;
        public static final SVGElem clipPath;
        public static final SVGElem defs;
        public static final SVGElem desc;
        public static final SVGElem ellipse;
        public static final SVGElem g;
        public static final SVGElem image;
        public static final SVGElem line;
        public static final SVGElem linearGradient;
        public static final SVGElem marker;
        public static final SVGElem mask;
        public static final SVGElem path;
        public static final SVGElem pattern;
        public static final SVGElem polygon;
        public static final SVGElem polyline;
        public static final SVGElem radialGradient;
        public static final SVGElem rect;
        public static final SVGElem solidColor;
        public static final SVGElem stop;
        public static final SVGElem style;
        public static final SVGElem svg;
        public static final SVGElem symbol;
        public static final SVGElem text;
        public static final SVGElem textPath;
        public static final SVGElem title;
        public static final SVGElem tref;
        public static final SVGElem tspan;
        public static final SVGElem use;
        public static final SVGElem view;

        static {
            SVGElem sVGElem = new SVGElem("svg", 0);
            svg = sVGElem;
            SVGElem sVGElem2 = new SVGElem("a", 1);
            f25253a = sVGElem2;
            SVGElem sVGElem3 = new SVGElem("circle", 2);
            circle = sVGElem3;
            SVGElem sVGElem4 = new SVGElem("clipPath", 3);
            clipPath = sVGElem4;
            SVGElem sVGElem5 = new SVGElem("defs", 4);
            defs = sVGElem5;
            SVGElem sVGElem6 = new SVGElem("desc", 5);
            desc = sVGElem6;
            SVGElem sVGElem7 = new SVGElem("ellipse", 6);
            ellipse = sVGElem7;
            SVGElem sVGElem8 = new SVGElem("g", 7);
            g = sVGElem8;
            SVGElem sVGElem9 = new SVGElem("image", 8);
            image = sVGElem9;
            SVGElem sVGElem10 = new SVGElem("line", 9);
            line = sVGElem10;
            SVGElem sVGElem11 = new SVGElem("linearGradient", 10);
            linearGradient = sVGElem11;
            SVGElem sVGElem12 = new SVGElem("marker", 11);
            marker = sVGElem12;
            SVGElem sVGElem13 = new SVGElem(WiimuPendingMask.Mask, 12);
            mask = sVGElem13;
            SVGElem sVGElem14 = new SVGElem("path", 13);
            path = sVGElem14;
            SVGElem sVGElem15 = new SVGElem("pattern", 14);
            pattern = sVGElem15;
            SVGElem sVGElem16 = new SVGElem("polygon", 15);
            polygon = sVGElem16;
            SVGElem sVGElem17 = new SVGElem("polyline", 16);
            polyline = sVGElem17;
            SVGElem sVGElem18 = new SVGElem("radialGradient", 17);
            radialGradient = sVGElem18;
            SVGElem sVGElem19 = new SVGElem("rect", 18);
            rect = sVGElem19;
            SVGElem sVGElem20 = new SVGElem("solidColor", 19);
            solidColor = sVGElem20;
            SVGElem sVGElem21 = new SVGElem("stop", 20);
            stop = sVGElem21;
            SVGElem sVGElem22 = new SVGElem("style", 21);
            style = sVGElem22;
            SVGElem sVGElem23 = new SVGElem("SWITCH", 22);
            SWITCH = sVGElem23;
            SVGElem sVGElem24 = new SVGElem("symbol", 23);
            symbol = sVGElem24;
            SVGElem sVGElem25 = new SVGElem("text", 24);
            text = sVGElem25;
            SVGElem sVGElem26 = new SVGElem("textPath", 25);
            textPath = sVGElem26;
            SVGElem sVGElem27 = new SVGElem("title", 26);
            title = sVGElem27;
            SVGElem sVGElem28 = new SVGElem("tref", 27);
            tref = sVGElem28;
            SVGElem sVGElem29 = new SVGElem("tspan", 28);
            tspan = sVGElem29;
            SVGElem sVGElem30 = new SVGElem("use", 29);
            use = sVGElem30;
            SVGElem sVGElem31 = new SVGElem("view", 30);
            view = sVGElem31;
            SVGElem sVGElem32 = new SVGElem("UNSUPPORTED", 31);
            UNSUPPORTED = sVGElem32;
            $VALUES = new SVGElem[]{sVGElem, sVGElem2, sVGElem3, sVGElem4, sVGElem5, sVGElem6, sVGElem7, sVGElem8, sVGElem9, sVGElem10, sVGElem11, sVGElem12, sVGElem13, sVGElem14, sVGElem15, sVGElem16, sVGElem17, sVGElem18, sVGElem19, sVGElem20, sVGElem21, sVGElem22, sVGElem23, sVGElem24, sVGElem25, sVGElem26, sVGElem27, sVGElem28, sVGElem29, sVGElem30, sVGElem31, sVGElem32};
            cache = new HashMap();
            for (SVGElem sVGElem33 : values()) {
                if (sVGElem33 == SWITCH) {
                    cache.put("switch", sVGElem33);
                } else if (sVGElem33 != UNSUPPORTED) {
                    cache.put(sVGElem33.name(), sVGElem33);
                }
            }
        }

        public static SVGElem a(String str) {
            SVGElem sVGElem = cache.get(str);
            return sVGElem != null ? sVGElem : UNSUPPORTED;
        }

        public static SVGElem valueOf(String str) {
            return (SVGElem) Enum.valueOf(SVGElem.class, str);
        }

        public static SVGElem[] values() {
            return (SVGElem[]) $VALUES.clone();
        }
    }

    public static class TextScanner {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f25254a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f25256c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25255b = 0;
        public final NumberParser d = new NumberParser();

        public TextScanner(String str) {
            this.f25256c = 0;
            String strTrim = str.trim();
            this.f25254a = strTrim;
            this.f25256c = strTrim.length();
        }

        public static boolean g(int i2) {
            return i2 == 32 || i2 == 10 || i2 == 13 || i2 == 9;
        }

        public final int a() {
            int i2 = this.f25255b;
            int i3 = this.f25256c;
            if (i2 == i3) {
                return -1;
            }
            int i4 = i2 + 1;
            this.f25255b = i4;
            if (i4 < i3) {
                return this.f25254a.charAt(i4);
            }
            return -1;
        }

        public final Boolean b(Object obj) {
            if (obj == null) {
                return null;
            }
            p();
            int i2 = this.f25255b;
            if (i2 == this.f25256c) {
                return null;
            }
            char cCharAt = this.f25254a.charAt(i2);
            if (cCharAt != '0' && cCharAt != '1') {
                return null;
            }
            this.f25255b++;
            return Boolean.valueOf(cCharAt == '1');
        }

        public final float c(float f2) {
            if (Float.isNaN(f2)) {
                return Float.NaN;
            }
            p();
            return i();
        }

        public final boolean d(char c2) {
            int i2 = this.f25255b;
            boolean z = i2 < this.f25256c && this.f25254a.charAt(i2) == c2;
            if (z) {
                this.f25255b++;
            }
            return z;
        }

        public final boolean e(String str) {
            int length = str.length();
            int i2 = this.f25255b;
            boolean z = i2 <= this.f25256c - length && this.f25254a.substring(i2, i2 + length).equals(str);
            if (z) {
                this.f25255b += length;
            }
            return z;
        }

        public final boolean f() {
            return this.f25255b == this.f25256c;
        }

        public final Integer h() {
            int i2 = this.f25255b;
            if (i2 == this.f25256c) {
                return null;
            }
            this.f25255b = i2 + 1;
            return Integer.valueOf(this.f25254a.charAt(i2));
        }

        public final float i() {
            int i2 = this.f25255b;
            int i3 = this.f25256c;
            NumberParser numberParser = this.d;
            float fA = numberParser.a(i2, i3, this.f25254a);
            if (!Float.isNaN(fA)) {
                this.f25255b = numberParser.f25148a;
            }
            return fA;
        }

        public final SVG.Length j() {
            float fI = i();
            if (Float.isNaN(fI)) {
                return null;
            }
            SVG.Unit unitN = n();
            return unitN == null ? new SVG.Length(fI, SVG.Unit.px) : new SVG.Length(fI, unitN);
        }

        public final String k() {
            if (f()) {
                return null;
            }
            int i2 = this.f25255b;
            String str = this.f25254a;
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\'' && cCharAt != '\"') {
                return null;
            }
            int iA = a();
            while (iA != -1 && iA != cCharAt) {
                iA = a();
            }
            if (iA == -1) {
                this.f25255b = i2;
                return null;
            }
            int i3 = this.f25255b;
            this.f25255b = i3 + 1;
            return str.substring(i2 + 1, i3);
        }

        public final String l() {
            return m(' ', false);
        }

        public final String m(char c2, boolean z) {
            if (f()) {
                return null;
            }
            int i2 = this.f25255b;
            String str = this.f25254a;
            char cCharAt = str.charAt(i2);
            if ((!z && g(cCharAt)) || cCharAt == c2) {
                return null;
            }
            int i3 = this.f25255b;
            int iA = a();
            while (iA != -1 && iA != c2 && (z || !g(iA))) {
                iA = a();
            }
            return str.substring(i3, this.f25255b);
        }

        public final SVG.Unit n() {
            if (f()) {
                return null;
            }
            int i2 = this.f25255b;
            String str = this.f25254a;
            char cCharAt = str.charAt(i2);
            int i3 = this.f25255b;
            if (cCharAt == '%') {
                this.f25255b = i3 + 1;
                return SVG.Unit.percent;
            }
            if (i3 > this.f25256c - 2) {
                return null;
            }
            try {
                SVG.Unit unitValueOf = SVG.Unit.valueOf(str.substring(i3, i3 + 2).toLowerCase(Locale.US));
                this.f25255b += 2;
                return unitValueOf;
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public final float o() {
            p();
            int i2 = this.f25255b;
            int i3 = this.f25256c;
            NumberParser numberParser = this.d;
            float fA = numberParser.a(i2, i3, this.f25254a);
            if (!Float.isNaN(fA)) {
                this.f25255b = numberParser.f25148a;
            }
            return fA;
        }

        public final boolean p() {
            q();
            int i2 = this.f25255b;
            if (i2 == this.f25256c || this.f25254a.charAt(i2) != ',') {
                return false;
            }
            this.f25255b++;
            q();
            return true;
        }

        public final void q() {
            while (true) {
                int i2 = this.f25255b;
                if (i2 >= this.f25256c || !g(this.f25254a.charAt(i2))) {
                    return;
                } else {
                    this.f25255b++;
                }
            }
        }
    }

    public class XPPAttributesWrapper implements Attributes {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final XmlPullParser f25257a;

        public XPPAttributesWrapper(SVGParser sVGParser, XmlPullParser xmlPullParser) {
            this.f25257a = xmlPullParser;
        }

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final int getLength() {
            return this.f25257a.getAttributeCount();
        }

        @Override // org.xml.sax.Attributes
        public final String getLocalName(int i2) {
            return this.f25257a.getAttributeName(i2);
        }

        @Override // org.xml.sax.Attributes
        public final String getQName(int i2) {
            XmlPullParser xmlPullParser = this.f25257a;
            String attributeName = xmlPullParser.getAttributeName(i2);
            if (xmlPullParser.getAttributePrefix(i2) == null) {
                return attributeName;
            }
            return xmlPullParser.getAttributePrefix(i2) + ':' + attributeName;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(int i2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getURI(int i2) {
            return this.f25257a.getAttributeNamespace(i2);
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(int i2) {
            return this.f25257a.getAttributeValue(i2);
        }

        @Override // org.xml.sax.Attributes
        public final int getIndex(String str, String str2) {
            return -1;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getType(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str, String str2) {
            return null;
        }

        @Override // org.xml.sax.Attributes
        public final String getValue(String str) {
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:128:0x0284  */
    /* JADX WARN: Code duplicated, block: B:13:0x0049  */
    /* JADX WARN: Code duplicated, block: B:155:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:190:0x0333  */
    /* JADX WARN: Code duplicated, block: B:224:0x0390  */
    /* JADX WARN: Code duplicated, block: B:283:0x045b  */
    public static void C(SVG.Style style, String str, String str2) {
        SVG.Length lengthJ;
        String strM;
        SVG.Length lengthS;
        if (str2.length() == 0 || str2.equals("inherit")) {
            return;
        }
        int i2 = AnonymousClass1.f25247b[SVGAttr.a(str).ordinal()];
        SVG.CurrentColor currentColor = SVG.CurrentColor.f25165b;
        SVG.Style.FillRule fillRule = null;
        SVG.Length lengthS2 = null;
        SVG.Style.RenderQuality renderQuality = null;
        SVG.Style.VectorEffect vectorEffect = null;
        SVG.Style.FillRule fillRule2 = null;
        cSSClipRect = null;
        cSSClipRect = null;
        SVG.CSSClipRect cSSClipRect = null;
        Boolean bool = null;
        SVG.Style.TextAnchor textAnchor = null;
        SVG.Style.TextDirection textDirection = null;
        SVG.Style.TextDecoration textDecoration = null;
        SVG.Style.FontStyle fontStyle = null;
        String strSubstring = null;
        lengthArr = null;
        lengthArr = null;
        lengthArr = null;
        lengthArr = null;
        lengthArr = null;
        SVG.Length[] lengthArr = null;
        SVG.Style.LineJoin lineJoin = null;
        SVG.Style.LineCap lineCap = null;
        try {
            switch (i2) {
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    SVG.SvgPaint svgPaintW = w(str2);
                    style.f25179c = svgPaintW;
                    if (svgPaintW != null) {
                        style.f25178b |= 1;
                    }
                    break;
                case 48:
                    if ("nonzero".equals(str2)) {
                        fillRule = SVG.Style.FillRule.NonZero;
                    } else if ("evenodd".equals(str2)) {
                        fillRule = SVG.Style.FillRule.EvenOdd;
                    }
                    style.d = fillRule;
                    if (fillRule != null) {
                        style.f25178b |= 2;
                    }
                    break;
                case 49:
                    Float fV = v(str2);
                    style.f25180e = fV;
                    if (fV != null) {
                        style.f25178b |= 4;
                    }
                    break;
                case 50:
                    SVG.SvgPaint svgPaintW2 = w(str2);
                    style.f25181f = svgPaintW2;
                    if (svgPaintW2 != null) {
                        style.f25178b |= 8;
                    }
                    break;
                case EACTags.TRANSACTION_DATE /* 51 */:
                    Float fV2 = v(str2);
                    style.g = fV2;
                    if (fV2 != null) {
                        style.f25178b |= 16;
                    }
                    break;
                case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                    style.f25182h = s(str2);
                    style.f25178b |= 32;
                    break;
                case EACTags.SEX /* 53 */:
                    if ("butt".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Butt;
                    } else if ("round".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Round;
                    } else if ("square".equals(str2)) {
                        lineCap = SVG.Style.LineCap.Square;
                    }
                    style.f25183i = lineCap;
                    if (lineCap != null) {
                        style.f25178b |= 64;
                    }
                    break;
                case EACTags.CURRENCY_EXPONENT /* 54 */:
                    if ("miter".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Miter;
                    } else if ("round".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Round;
                    } else if ("bevel".equals(str2)) {
                        lineJoin = SVG.Style.LineJoin.Bevel;
                    }
                    style.f25184j = lineJoin;
                    if (lineJoin != null) {
                        style.f25178b |= 128;
                    }
                    break;
                case 55:
                    style.f25185k = Float.valueOf(p(str2));
                    style.f25178b |= 256;
                    break;
                case 56:
                    if (!"none".equals(str2)) {
                        TextScanner textScanner = new TextScanner(str2);
                        textScanner.q();
                        if (!textScanner.f() && (lengthJ = textScanner.j()) != null && !lengthJ.f()) {
                            float f2 = lengthJ.f25170b;
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(lengthJ);
                            while (true) {
                                if (!textScanner.f()) {
                                    textScanner.p();
                                    SVG.Length lengthJ2 = textScanner.j();
                                    if (lengthJ2 != null && !lengthJ2.f()) {
                                        arrayList.add(lengthJ2);
                                        f2 += lengthJ2.f25170b;
                                    }
                                } else if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    lengthArr = (SVG.Length[]) arrayList.toArray(new SVG.Length[arrayList.size()]);
                                }
                            }
                        }
                        style.l = lengthArr;
                        if (lengthArr != null) {
                            style.f25178b |= 512;
                        }
                    } else {
                        style.l = null;
                        style.f25178b |= 512;
                    }
                    break;
                case 57:
                    style.m = s(str2);
                    style.f25178b |= RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                    break;
                case EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION /* 58 */:
                    style.n = v(str2);
                    style.f25178b |= 2048;
                    break;
                case EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION /* 59 */:
                    style.o = n(str2);
                    style.f25178b |= 4096;
                    break;
                case 60:
                    if ("|caption|icon|menu|message-box|small-caption|status-bar|".contains("|" + str2 + '|')) {
                        TextScanner textScanner2 = new TextScanner(str2);
                        Integer num = null;
                        SVG.Style.FontStyle fontStyle2 = null;
                        String str3 = null;
                        while (true) {
                            strM = textScanner2.m('/', false);
                            textScanner2.q();
                            if (strM == null) {
                                break;
                            } else if (num == null || fontStyle2 == null) {
                                if (!strM.equals("normal") && (num != null || (num = (Integer) FontWeightKeywords.f25251a.get(strM)) == null)) {
                                    if (fontStyle2 == null) {
                                        switch (strM) {
                                            case "oblique":
                                                fontStyle2 = SVG.Style.FontStyle.Oblique;
                                                break;
                                            case "italic":
                                                fontStyle2 = SVG.Style.FontStyle.Italic;
                                                break;
                                            case "normal":
                                                fontStyle2 = SVG.Style.FontStyle.Normal;
                                                break;
                                            default:
                                                fontStyle2 = null;
                                                break;
                                        }
                                        if (fontStyle2 != null) {
                                            continue;
                                        }
                                    }
                                    if (str3 == null && strM.equals("small-caps")) {
                                        str3 = strM;
                                    }
                                }
                            }
                        }
                        try {
                            lengthS = (SVG.Length) FontSizeKeywords.f25250a.get(strM);
                            if (lengthS == null) {
                                lengthS = s(strM);
                            }
                        } catch (SVGParseException unused) {
                            lengthS = null;
                        }
                        if (textScanner2.d('/')) {
                            textScanner2.q();
                            String strL = textScanner2.l();
                            if (strL != null) {
                                s(strL);
                            }
                            textScanner2.q();
                        }
                        if (!textScanner2.f()) {
                            int i3 = textScanner2.f25255b;
                            textScanner2.f25255b = textScanner2.f25256c;
                            strSubstring = textScanner2.f25254a.substring(i3);
                        }
                        style.p = q(strSubstring);
                        style.q = lengthS;
                        style.r = Integer.valueOf(num == null ? 400 : num.intValue());
                        if (fontStyle2 == null) {
                            fontStyle2 = SVG.Style.FontStyle.Normal;
                        }
                        style.s = fontStyle2;
                        style.f25178b |= 122880;
                        break;
                    }
                    break;
                case 61:
                    ArrayList arrayListQ = q(str2);
                    style.p = arrayListQ;
                    if (arrayListQ != null) {
                        style.f25178b |= 8192;
                    }
                    break;
                case 62:
                    try {
                        SVG.Length length = (SVG.Length) FontSizeKeywords.f25250a.get(str2);
                        lengthS2 = length == null ? s(str2) : length;
                        break;
                    } catch (SVGParseException unused2) {
                    }
                    style.q = lengthS2;
                    if (lengthS2 != null) {
                        style.f25178b |= 16384;
                    }
                    break;
                case 63:
                    Integer num2 = (Integer) FontWeightKeywords.f25251a.get(str2);
                    style.r = num2;
                    if (num2 != null) {
                        style.f25178b |= 32768;
                    }
                    break;
                case 64:
                    switch (str2) {
                        case "oblique":
                            fontStyle = SVG.Style.FontStyle.Oblique;
                            break;
                        case "italic":
                            fontStyle = SVG.Style.FontStyle.Italic;
                            break;
                        case "normal":
                            fontStyle = SVG.Style.FontStyle.Normal;
                            break;
                    }
                    style.s = fontStyle;
                    if (fontStyle != null) {
                        style.f25178b |= 65536;
                    }
                    break;
                case EACTags.ELEMENT_LIST /* 65 */:
                    switch (str2) {
                        case "line-through":
                            textDecoration = SVG.Style.TextDecoration.LineThrough;
                            break;
                        case "underline":
                            textDecoration = SVG.Style.TextDecoration.Underline;
                            break;
                        case "none":
                            textDecoration = SVG.Style.TextDecoration.None;
                            break;
                        case "blink":
                            textDecoration = SVG.Style.TextDecoration.Blink;
                            break;
                        case "overline":
                            textDecoration = SVG.Style.TextDecoration.Overline;
                            break;
                    }
                    style.t = textDecoration;
                    if (textDecoration != null) {
                        style.f25178b |= 131072;
                    }
                    break;
                case EACTags.ADDRESS /* 66 */:
                    if (str2.equals("ltr")) {
                        textDirection = SVG.Style.TextDirection.LTR;
                    } else if (str2.equals("rtl")) {
                        textDirection = SVG.Style.TextDirection.RTL;
                    }
                    style.u = textDirection;
                    if (textDirection != null) {
                        style.f25178b |= 68719476736L;
                    }
                    break;
                case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                    switch (str2) {
                        case "middle":
                            textAnchor = SVG.Style.TextAnchor.Middle;
                            break;
                        case "end":
                            textAnchor = SVG.Style.TextAnchor.End;
                            break;
                        case "start":
                            textAnchor = SVG.Style.TextAnchor.Start;
                            break;
                    }
                    style.v = textAnchor;
                    if (textAnchor != null) {
                        style.f25178b |= 262144;
                    }
                    break;
                case EACTags.APPLICATION_IMAGE /* 68 */:
                    switch (str2) {
                        case "hidden":
                        case "scroll":
                            bool = Boolean.FALSE;
                            break;
                        case "auto":
                        case "visible":
                            bool = Boolean.TRUE;
                            break;
                    }
                    style.w = bool;
                    if (bool != null) {
                        style.f25178b |= 524288;
                    }
                    break;
                case EACTags.DISPLAY_IMAGE /* 69 */:
                    String strR = r(str2);
                    style.y = strR;
                    style.z = strR;
                    style.A = strR;
                    style.f25178b |= 14680064;
                    break;
                case 70:
                    style.y = r(str2);
                    style.f25178b |= 2097152;
                    break;
                case EACTags.MESSAGE_REFERENCE /* 71 */:
                    style.z = r(str2);
                    style.f25178b |= 4194304;
                    break;
                case 72:
                    style.A = r(str2);
                    style.f25178b |= 8388608;
                    break;
                case 73:
                    if (str2.indexOf(124) < 0) {
                        if ("|inline|block|list-item|run-in|compact|marker|table|inline-table|table-row-group|table-header-group|table-footer-group|table-row|table-column-group|table-column|table-cell|table-caption|none|".contains("|" + str2 + '|')) {
                            style.B = Boolean.valueOf(!str2.equals("none"));
                            style.f25178b |= 16777216;
                            break;
                        }
                    }
                    break;
                case EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY /* 74 */:
                    if (str2.indexOf(124) < 0) {
                        if ("|visible|hidden|collapse|".contains("|" + str2 + '|')) {
                            style.C = Boolean.valueOf(str2.equals("visible"));
                            style.f25178b |= 33554432;
                            break;
                        }
                    }
                    break;
                case EACTags.DEPRECATED /* 75 */:
                    if (str2.equals("currentColor")) {
                        style.D = currentColor;
                    } else {
                        try {
                            style.D = n(str2);
                        } catch (SVGParseException e2) {
                            e2.getMessage();
                            return;
                        }
                    }
                    style.f25178b |= 67108864;
                    break;
                case 76:
                    style.E = v(str2);
                    style.f25178b |= 134217728;
                    break;
                case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                    if (!"auto".equals(str2) && str2.startsWith("rect(")) {
                        TextScanner textScanner3 = new TextScanner(str2.substring(5));
                        textScanner3.q();
                        SVG.Length lengthU = u(textScanner3);
                        textScanner3.p();
                        SVG.Length lengthU2 = u(textScanner3);
                        textScanner3.p();
                        SVG.Length lengthU3 = u(textScanner3);
                        textScanner3.p();
                        SVG.Length lengthU4 = u(textScanner3);
                        textScanner3.q();
                        if (textScanner3.d(')') || textScanner3.f()) {
                            cSSClipRect = new SVG.CSSClipRect();
                            cSSClipRect.f25160a = lengthU;
                            cSSClipRect.f25161b = lengthU2;
                            cSSClipRect.f25162c = lengthU3;
                            cSSClipRect.d = lengthU4;
                        }
                    }
                    style.x = cSSClipRect;
                    if (cSSClipRect != null) {
                        style.f25178b |= 1048576;
                    }
                    break;
                case 78:
                    style.F = r(str2);
                    style.f25178b |= 268435456;
                    break;
                case 79:
                    if ("nonzero".equals(str2)) {
                        fillRule2 = SVG.Style.FillRule.NonZero;
                    } else if ("evenodd".equals(str2)) {
                        fillRule2 = SVG.Style.FillRule.EvenOdd;
                    }
                    style.G = fillRule2;
                    style.f25178b |= 536870912;
                    break;
                case EACTags.UNIFORM_RESOURCE_LOCATOR /* 80 */:
                    style.H = r(str2);
                    style.f25178b |= 1073741824;
                    break;
                case EACTags.ANSWER_TO_RESET /* 81 */:
                    if (str2.equals("currentColor")) {
                        style.I = currentColor;
                    } else {
                        try {
                            style.I = n(str2);
                        } catch (SVGParseException e3) {
                            e3.getMessage();
                            return;
                        }
                    }
                    style.f25178b |= 2147483648L;
                    break;
                case EACTags.HISTORICAL_BYTES /* 82 */:
                    style.J = v(str2);
                    style.f25178b |= 4294967296L;
                    break;
                case 83:
                    if (str2.equals("currentColor")) {
                        style.K = currentColor;
                    } else {
                        try {
                            style.K = n(str2);
                        } catch (SVGParseException e4) {
                            e4.getMessage();
                            return;
                        }
                    }
                    style.f25178b |= 8589934592L;
                    break;
                case 84:
                    style.L = v(str2);
                    style.f25178b |= 17179869184L;
                    break;
                case 85:
                    if (str2.equals("none")) {
                        vectorEffect = SVG.Style.VectorEffect.None;
                    } else if (str2.equals("non-scaling-stroke")) {
                        vectorEffect = SVG.Style.VectorEffect.NonScalingStroke;
                    }
                    style.M = vectorEffect;
                    if (vectorEffect != null) {
                        style.f25178b |= 34359738368L;
                    }
                    break;
                case 86:
                    switch (str2) {
                        case "optimizeQuality":
                            renderQuality = SVG.Style.RenderQuality.optimizeQuality;
                            break;
                        case "auto":
                            renderQuality = SVG.Style.RenderQuality.auto;
                            break;
                        case "optimizeSpeed":
                            renderQuality = SVG.Style.RenderQuality.optimizeSpeed;
                            break;
                    }
                    style.N = renderQuality;
                    if (renderQuality != null) {
                        style.f25178b |= 137438953472L;
                    }
                    break;
            }
        } catch (SVGParseException unused3) {
        }
    }

    public static int b(float f2) {
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 0;
        }
        if (f2 > 255.0f) {
            return 255;
        }
        return Math.round(f2);
    }

    public static int d(float f2, float f3, float f4) {
        float f5 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f6 = f2 % 360.0f;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f6 += 360.0f;
        }
        float f7 = f6 / 60.0f;
        float f8 = f3 / 100.0f;
        float f9 = f4 / 100.0f;
        if (f8 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f8 = 0.0f;
        } else if (f8 > 1.0f) {
            f8 = 1.0f;
        }
        if (f9 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f5 = f9 > 1.0f ? 1.0f : f9;
        }
        float f10 = f5 <= 0.5f ? (f8 + 1.0f) * f5 : (f5 + f8) - (f8 * f5);
        float f11 = (f5 * 2.0f) - f10;
        return b(e(f11, f10, f7 - 2.0f) * 256.0f) | (b(e(f11, f10, f7 + 2.0f) * 256.0f) << 16) | (b(e(f11, f10, f7) * 256.0f) << 8);
    }

    public static float e(float f2, float f3, float f4) {
        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f4 += 6.0f;
        }
        if (f4 >= 6.0f) {
            f4 -= 6.0f;
        }
        if (f4 < 1.0f) {
            return tr.a(f3, f2, f4, f2);
        }
        if (f4 < 3.0f) {
            return f3;
        }
        return f4 < 4.0f ? tr.a(4.0f, f4, f3 - f2, f2) : f2;
    }

    public static void f(SVG.SvgConditional svgConditional, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String strTrim = attributes.getValue(i2).trim();
            switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i2)).ordinal()]) {
                case 21:
                    TextScanner textScanner = new TextScanner(strTrim);
                    HashSet hashSet = new HashSet();
                    while (!textScanner.f()) {
                        String strL = textScanner.l();
                        if (strL.startsWith("http://www.w3.org/TR/SVG11/feature#")) {
                            hashSet.add(strL.substring(35));
                        } else {
                            hashSet.add("UNSUPPORTED");
                        }
                        textScanner.q();
                    }
                    svgConditional.d(hashSet);
                    break;
                case 22:
                    svgConditional.i(strTrim);
                    break;
                case 23:
                    TextScanner textScanner2 = new TextScanner(strTrim);
                    HashSet hashSet2 = new HashSet();
                    while (!textScanner2.f()) {
                        String strL2 = textScanner2.l();
                        int iIndexOf = strL2.indexOf(45);
                        if (iIndexOf != -1) {
                            strL2 = strL2.substring(0, iIndexOf);
                        }
                        hashSet2.add(new Locale(strL2, "", "").getLanguage());
                        textScanner2.q();
                    }
                    svgConditional.f(hashSet2);
                    break;
                case 24:
                    TextScanner textScanner3 = new TextScanner(strTrim);
                    HashSet hashSet3 = new HashSet();
                    while (!textScanner3.f()) {
                        hashSet3.add(textScanner3.l());
                        textScanner3.q();
                    }
                    svgConditional.j(hashSet3);
                    break;
                case 25:
                    ArrayList arrayListQ = q(strTrim);
                    svgConditional.h(arrayListQ != null ? new HashSet(arrayListQ) : new HashSet(0));
                    break;
            }
        }
    }

    public static void g(SVG.SvgElementBase svgElementBase, Attributes attributes) throws SVGParseException {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String qName = attributes.getQName(i2);
            if (qName.equals(com.batch.android.s.b.a.f24015b) || qName.equals("xml:id")) {
                svgElementBase.f25193c = attributes.getValue(i2).trim();
                return;
            }
            if (qName.equals("xml:space")) {
                String strTrim = attributes.getValue(i2).trim();
                if ("default".equals(strTrim)) {
                    svgElementBase.d = Boolean.FALSE;
                    return;
                } else {
                    if (!"preserve".equals(strTrim)) {
                        throw new SVGParseException(tr.g("Invalid value for \"xml:space\" attribute: ", strTrim));
                    }
                    svgElementBase.d = Boolean.TRUE;
                    return;
                }
            }
        }
    }

    public static void h(SVG.GradientElement gradientElement, Attributes attributes) throws SVGParseException {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String strTrim = attributes.getValue(i2).trim();
            int i3 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 != 6) {
                switch (i3) {
                    case 32:
                        if ("objectBoundingBox".equals(strTrim)) {
                            gradientElement.f25167i = Boolean.FALSE;
                        } else {
                            if (!"userSpaceOnUse".equals(strTrim)) {
                                ct0.j("Invalid value for attribute gradientUnits");
                                return;
                            }
                            gradientElement.f25167i = Boolean.TRUE;
                        }
                        break;
                    case 33:
                        gradientElement.f25168j = z(strTrim);
                        break;
                    case 34:
                        try {
                            gradientElement.f25169k = SVG.GradientSpread.valueOf(strTrim);
                        } catch (IllegalArgumentException unused) {
                            throw new SVGParseException(fc.h("Invalid spreadMethod attribute. \"", strTrim, "\" is not a valid value."));
                        }
                        break;
                }
            } else if ("".equals(attributes.getURI(i2)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i2))) {
                gradientElement.l = strTrim;
            }
        }
    }

    public static void i(SVG.PolyLine polyLine, Attributes attributes, String str) throws SVGParseException {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            if (SVGAttr.a(attributes.getLocalName(i2)) == SVGAttr.points) {
                TextScanner textScanner = new TextScanner(attributes.getValue(i2));
                ArrayList arrayList = new ArrayList();
                textScanner.q();
                while (!textScanner.f()) {
                    float fI = textScanner.i();
                    if (Float.isNaN(fI)) {
                        throw new SVGParseException(fc.h("Invalid <", str, "> points attribute. Non-coordinate content found in list."));
                    }
                    textScanner.p();
                    float fI2 = textScanner.i();
                    if (Float.isNaN(fI2)) {
                        throw new SVGParseException(fc.h("Invalid <", str, "> points attribute. There should be an even number of coordinates."));
                    }
                    textScanner.p();
                    arrayList.add(Float.valueOf(fI));
                    arrayList.add(Float.valueOf(fI2));
                }
                polyLine.o = new float[arrayList.size()];
                Iterator it = arrayList.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    polyLine.o[i3] = ((Float) it.next()).floatValue();
                    i3++;
                }
            }
        }
    }

    public static void j(SVG.SvgElementBase svgElementBase, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String strTrim = attributes.getValue(i2).trim();
            if (strTrim.length() != 0) {
                int i3 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i2)).ordinal()];
                if (i3 == 45) {
                    TextScanner textScanner = new TextScanner(strTrim.replaceAll("/\\*.*?\\*/", ""));
                    while (true) {
                        String strM = textScanner.m(':', false);
                        textScanner.q();
                        if (!textScanner.d(':')) {
                            break;
                        }
                        textScanner.q();
                        String strM2 = textScanner.m(';', true);
                        if (strM2 == null) {
                            break;
                        }
                        textScanner.q();
                        if (textScanner.f() || textScanner.d(';')) {
                            if (svgElementBase.f25195f == null) {
                                svgElementBase.f25195f = new SVG.Style();
                            }
                            C(svgElementBase.f25195f, strM, strM2);
                            textScanner.q();
                        }
                    }
                } else if (i3 != 46) {
                    if (svgElementBase.f25194e == null) {
                        svgElementBase.f25194e = new SVG.Style();
                    }
                    C(svgElementBase.f25194e, attributes.getLocalName(i2), attributes.getValue(i2).trim());
                } else {
                    CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(strTrim);
                    ArrayList arrayList = null;
                    while (!cSSTextScanner.f()) {
                        String strL = cSSTextScanner.l();
                        if (strL != null) {
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            arrayList.add(strL);
                            cSSTextScanner.q();
                        }
                    }
                    svgElementBase.g = arrayList;
                }
            }
        }
    }

    public static void k(SVG.TextPositionedContainer textPositionedContainer, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String strTrim = attributes.getValue(i2).trim();
            int i3 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 == 1) {
                textPositionedContainer.n = t(strTrim);
            } else if (i3 == 2) {
                textPositionedContainer.o = t(strTrim);
            } else if (i3 == 19) {
                textPositionedContainer.p = t(strTrim);
            } else if (i3 == 20) {
                textPositionedContainer.q = t(strTrim);
            }
        }
    }

    public static void l(SVG.HasTransform hasTransform, Attributes attributes) {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            if (SVGAttr.a(attributes.getLocalName(i2)) == SVGAttr.transform) {
                hasTransform.k(z(attributes.getValue(i2)));
            }
        }
    }

    public static void m(SVG.SvgViewBoxContainer svgViewBoxContainer, Attributes attributes) throws SVGParseException {
        for (int i2 = 0; i2 < attributes.getLength(); i2++) {
            String strTrim = attributes.getValue(i2).trim();
            int i3 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i2)).ordinal()];
            if (i3 == 7) {
                x(svgViewBoxContainer, strTrim);
            } else if (i3 != 87) {
                continue;
            } else {
                TextScanner textScanner = new TextScanner(strTrim);
                textScanner.q();
                float fI = textScanner.i();
                textScanner.p();
                float fI2 = textScanner.i();
                textScanner.p();
                float fI3 = textScanner.i();
                textScanner.p();
                float fI4 = textScanner.i();
                if (Float.isNaN(fI) || Float.isNaN(fI2) || Float.isNaN(fI3) || Float.isNaN(fI4)) {
                    ct0.j("Invalid viewBox definition - should have four numbers");
                    return;
                } else if (fI3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    ct0.j("Invalid viewBox. width cannot be negative");
                    return;
                } else {
                    if (fI4 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        ct0.j("Invalid viewBox. height cannot be negative");
                        return;
                    }
                    svgViewBoxContainer.o = new SVG.Box(fI, fI2, fI3, fI4);
                }
            }
        }
    }

    public static SVG.Colour n(String str) throws SVGParseException {
        long j2;
        int i2;
        if (str.charAt(0) == '#') {
            int length = str.length();
            IntegerParser integerParser = null;
            if (1 < length) {
                long j3 = 0;
                int i3 = 1;
                while (true) {
                    if (i3 < length) {
                        char cCharAt = str.charAt(i3);
                        if (cCharAt < '0' || cCharAt > '9') {
                            if (cCharAt >= 'A' && cCharAt <= 'F') {
                                j2 = j3 * 16;
                                i2 = cCharAt - 'A';
                            } else if (cCharAt >= 'a' && cCharAt <= 'f') {
                                j2 = j3 * 16;
                                i2 = cCharAt - 'a';
                            }
                            j3 = j2 + ((long) i2) + 10;
                        } else {
                            j3 = (j3 * 16) + ((long) (cCharAt - '0'));
                        }
                        if (j3 <= BodyPartID.bodyIdMax) {
                            i3++;
                        }
                    }
                    if (i3 != 1) {
                        integerParser = new IntegerParser(j3, i3);
                    }
                }
            }
            if (integerParser == null) {
                throw new SVGParseException("Bad hex colour value: ".concat(str));
            }
            long j4 = integerParser.f25145b;
            int i4 = integerParser.f25144a;
            if (i4 == 4) {
                int i5 = (int) j4;
                int i6 = i5 & 3840;
                int i7 = i5 & 240;
                int i8 = i5 & 15;
                return new SVG.Colour(i8 | (i6 << 8) | (-16777216) | (i6 << 12) | (i7 << 8) | (i7 << 4) | (i8 << 4));
            }
            if (i4 != 5) {
                if (i4 == 7) {
                    return new SVG.Colour(((int) j4) | b.v);
                }
                if (i4 != 9) {
                    throw new SVGParseException("Bad hex colour value: ".concat(str));
                }
                int i9 = (int) j4;
                return new SVG.Colour((i9 >>> 8) | (i9 << 24));
            }
            int i10 = (int) j4;
            int i11 = 61440 & i10;
            int i12 = i10 & 3840;
            int i13 = i10 & 240;
            int i14 = i10 & 15;
            return new SVG.Colour((i14 << 24) | (i14 << 28) | (i11 << 8) | (i11 << 4) | (i12 << 4) | i12 | i13 | (i13 >> 4));
        }
        String lowerCase = str.toLowerCase(Locale.US);
        boolean zStartsWith = lowerCase.startsWith("rgba(");
        if (zStartsWith || lowerCase.startsWith("rgb(")) {
            TextScanner textScanner = new TextScanner(str.substring(zStartsWith ? 5 : 4));
            textScanner.q();
            float fI = textScanner.i();
            if (!Float.isNaN(fI) && textScanner.d('%')) {
                fI = (fI * 256.0f) / 100.0f;
            }
            float fC = textScanner.c(fI);
            if (!Float.isNaN(fC) && textScanner.d('%')) {
                fC = (fC * 256.0f) / 100.0f;
            }
            float fC2 = textScanner.c(fC);
            if (!Float.isNaN(fC2) && textScanner.d('%')) {
                fC2 = (fC2 * 256.0f) / 100.0f;
            }
            if (!zStartsWith) {
                textScanner.q();
                if (Float.isNaN(fC2) || !textScanner.d(')')) {
                    throw new SVGParseException("Bad rgb() colour value: ".concat(str));
                }
                return new SVG.Colour((b(fI) << 16) | b.v | (b(fC) << 8) | b(fC2));
            }
            float fC3 = textScanner.c(fC2);
            textScanner.q();
            if (Float.isNaN(fC3) || !textScanner.d(')')) {
                throw new SVGParseException("Bad rgba() colour value: ".concat(str));
            }
            return new SVG.Colour((b(fC3 * 256.0f) << 24) | (b(fI) << 16) | (b(fC) << 8) | b(fC2));
        }
        boolean zStartsWith2 = lowerCase.startsWith("hsla(");
        if (!zStartsWith2 && !lowerCase.startsWith("hsl(")) {
            Integer num = (Integer) ColourKeywords.f25249a.get(lowerCase);
            if (num != null) {
                return new SVG.Colour(num.intValue());
            }
            throw new SVGParseException("Invalid colour keyword: ".concat(lowerCase));
        }
        TextScanner textScanner2 = new TextScanner(str.substring(zStartsWith2 ? 5 : 4));
        textScanner2.q();
        float fI2 = textScanner2.i();
        float fC4 = textScanner2.c(fI2);
        if (!Float.isNaN(fC4)) {
            textScanner2.d('%');
        }
        float fC5 = textScanner2.c(fC4);
        if (!Float.isNaN(fC5)) {
            textScanner2.d('%');
        }
        if (!zStartsWith2) {
            textScanner2.q();
            if (Float.isNaN(fC5) || !textScanner2.d(')')) {
                throw new SVGParseException("Bad hsl() colour value: ".concat(str));
            }
            return new SVG.Colour(d(fI2, fC4, fC5) | b.v);
        }
        float fC6 = textScanner2.c(fC5);
        textScanner2.q();
        if (Float.isNaN(fC6) || !textScanner2.d(')')) {
            throw new SVGParseException("Bad hsla() colour value: ".concat(str));
        }
        return new SVG.Colour((b(fC6 * 256.0f) << 24) | d(fI2, fC4, fC5));
    }

    public static float o(int i2, String str) throws SVGParseException {
        float fA = new NumberParser().a(0, i2, str);
        if (Float.isNaN(fA)) {
            throw new SVGParseException(tr.g("Invalid float value: ", str));
        }
        return fA;
    }

    public static float p(String str) throws SVGParseException {
        int length = str.length();
        if (length != 0) {
            return o(length, str);
        }
        ct0.j("Invalid float value (empty string)");
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static ArrayList q(String str) {
        TextScanner textScanner = new TextScanner(str);
        ArrayList arrayList = null;
        do {
            String strK = textScanner.k();
            if (strK == null) {
                strK = textScanner.m(',', true);
            }
            if (strK == null) {
                return arrayList;
            }
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            arrayList.add(strK);
            textScanner.p();
        } while (!textScanner.f());
        return arrayList;
    }

    public static String r(String str) {
        if (!str.equals("none") && str.startsWith("url(")) {
            return str.endsWith(")") ? str.substring(4, str.length() - 1).trim() : str.substring(4).trim();
        }
        return null;
    }

    public static SVG.Length s(String str) throws SVGParseException {
        if (str.length() == 0) {
            ct0.j("Invalid length value (empty string)");
            return null;
        }
        int length = str.length();
        SVG.Unit unitValueOf = SVG.Unit.px;
        char cCharAt = str.charAt(length - 1);
        if (cCharAt == '%') {
            length--;
            unitValueOf = SVG.Unit.percent;
        } else if (length > 2 && Character.isLetter(cCharAt) && Character.isLetter(str.charAt(length - 2))) {
            length -= 2;
            try {
                unitValueOf = SVG.Unit.valueOf(str.substring(length).toLowerCase(Locale.US));
            } catch (IllegalArgumentException unused) {
                throw new SVGParseException("Invalid length unit specifier: ".concat(str));
            }
        }
        try {
            return new SVG.Length(o(length, str), unitValueOf);
        } catch (NumberFormatException e2) {
            throw new SVGParseException("Invalid length value: ".concat(str), e2);
        }
    }

    public static ArrayList t(String str) throws SVGParseException {
        String str2;
        if (str.length() == 0) {
            ct0.j("Invalid length list (empty string)");
            return null;
        }
        ArrayList arrayList = new ArrayList(1);
        TextScanner textScanner = new TextScanner(str);
        textScanner.q();
        while (!textScanner.f()) {
            float fI = textScanner.i();
            if (Float.isNaN(fI)) {
                StringBuilder sb = new StringBuilder("Invalid length list value: ");
                int i2 = textScanner.f25255b;
                while (true) {
                    boolean zF = textScanner.f();
                    str2 = textScanner.f25254a;
                    if (zF || TextScanner.g(str2.charAt(textScanner.f25255b))) {
                        break;
                    }
                    textScanner.f25255b++;
                }
                String strSubstring = str2.substring(i2, textScanner.f25255b);
                textScanner.f25255b = i2;
                sb.append(strSubstring);
                throw new SVGParseException(sb.toString());
            }
            SVG.Unit unitN = textScanner.n();
            if (unitN == null) {
                unitN = SVG.Unit.px;
            }
            arrayList.add(new SVG.Length(fI, unitN));
            textScanner.p();
        }
        return arrayList;
    }

    public static SVG.Length u(TextScanner textScanner) {
        return textScanner.e("auto") ? new SVG.Length(Call.Parameters.DEFAULT_CAMERA_ZOOM) : textScanner.j();
    }

    public static Float v(String str) {
        try {
            float fP = p(str);
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (fP < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                fP = f2;
            } else {
                f2 = 1.0f;
                if (fP > 1.0f) {
                    fP = f2;
                }
            }
            return Float.valueOf(fP);
        } catch (SVGParseException unused) {
            return null;
        }
    }

    public static SVG.SvgPaint w(String str) {
        boolean zStartsWith = str.startsWith("url(");
        SVG.SvgPaint svgPaintN = SVG.Colour.d;
        SVG.CurrentColor currentColor = SVG.CurrentColor.f25165b;
        SVG.SvgPaint svgPaint = null;
        if (!zStartsWith) {
            if (str.equals("none")) {
                return svgPaintN;
            }
            if (str.equals("currentColor")) {
                return currentColor;
            }
            try {
                return n(str);
            } catch (SVGParseException unused) {
                return null;
            }
        }
        int iIndexOf = str.indexOf(")");
        if (iIndexOf == -1) {
            return new SVG.PaintReference(str.substring(4).trim(), null);
        }
        String strTrim = str.substring(4, iIndexOf).trim();
        String strTrim2 = str.substring(iIndexOf + 1).trim();
        if (strTrim2.length() > 0) {
            if (!strTrim2.equals("none")) {
                if (strTrim2.equals("currentColor")) {
                    svgPaintN = currentColor;
                } else {
                    try {
                        svgPaintN = n(strTrim2);
                    } catch (SVGParseException unused2) {
                        svgPaintN = null;
                    }
                }
            }
            svgPaint = svgPaintN;
        }
        return new SVG.PaintReference(strTrim, svgPaint);
    }

    public static void x(SVG.SvgPreserveAspectRatioContainer svgPreserveAspectRatioContainer, String str) throws SVGParseException {
        PreserveAspectRatio.Scale scale;
        TextScanner textScanner = new TextScanner(str);
        textScanner.q();
        String strL = textScanner.l();
        if ("defer".equals(strL)) {
            textScanner.q();
            strL = textScanner.l();
        }
        PreserveAspectRatio.Alignment alignment = (PreserveAspectRatio.Alignment) AspectRatioKeywords.f25248a.get(strL);
        textScanner.q();
        if (textScanner.f()) {
            scale = null;
        } else {
            String strL2 = textScanner.l();
            strL2.getClass();
            if (strL2.equals("meet")) {
                scale = PreserveAspectRatio.Scale.meet;
            } else {
                if (!strL2.equals("slice")) {
                    throw new SVGParseException("Invalid preserveAspectRatio definition: ".concat(str));
                }
                scale = PreserveAspectRatio.Scale.slice;
            }
        }
        svgPreserveAspectRatioContainer.n = new PreserveAspectRatio(alignment, scale);
    }

    public static HashMap y(TextScanner textScanner) {
        HashMap map = new HashMap();
        textScanner.q();
        String strM = textScanner.m('=', false);
        while (strM != null) {
            textScanner.d('=');
            map.put(strM, textScanner.k());
            textScanner.q();
            strM = textScanner.m('=', false);
        }
        return map;
    }

    public static Matrix z(String str) throws SVGParseException {
        Matrix matrix = new Matrix();
        TextScanner textScanner = new TextScanner(str);
        textScanner.q();
        while (!textScanner.f()) {
            String strSubstring = null;
            if (!textScanner.f()) {
                int i2 = textScanner.f25255b;
                String str2 = textScanner.f25254a;
                int iCharAt = str2.charAt(i2);
                while (true) {
                    if ((iCharAt >= 97 && iCharAt <= 122) || (iCharAt >= 65 && iCharAt <= 90)) {
                        iCharAt = textScanner.a();
                    }
                }
                int i3 = textScanner.f25255b;
                while (TextScanner.g(iCharAt)) {
                    iCharAt = textScanner.a();
                }
                if (iCharAt == 40) {
                    textScanner.f25255b++;
                    strSubstring = str2.substring(i2, i3);
                } else {
                    textScanner.f25255b = i2;
                }
            }
            if (strSubstring == null) {
                throw new SVGParseException("Bad transform function encountered in transform list: ".concat(str));
            }
            switch (strSubstring) {
                case "matrix":
                    textScanner.q();
                    float fI = textScanner.i();
                    textScanner.p();
                    float fI2 = textScanner.i();
                    textScanner.p();
                    float fI3 = textScanner.i();
                    textScanner.p();
                    float fI4 = textScanner.i();
                    textScanner.p();
                    float fI5 = textScanner.i();
                    textScanner.p();
                    float fI6 = textScanner.i();
                    textScanner.q();
                    if (Float.isNaN(fI6) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    Matrix matrix2 = new Matrix();
                    matrix2.setValues(new float[]{fI, fI3, fI5, fI2, fI4, fI6, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f});
                    matrix.preConcat(matrix2);
                    break;
                    break;
                case "rotate":
                    textScanner.q();
                    float fI7 = textScanner.i();
                    float fO = textScanner.o();
                    float fO2 = textScanner.o();
                    textScanner.q();
                    if (Float.isNaN(fI7) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    if (Float.isNaN(fO)) {
                        matrix.preRotate(fI7);
                    } else {
                        if (Float.isNaN(fO2)) {
                            throw new SVGParseException("Invalid transform list: ".concat(str));
                        }
                        matrix.preRotate(fI7, fO, fO2);
                    }
                    break;
                    break;
                case "scale":
                    textScanner.q();
                    float fI8 = textScanner.i();
                    float fO3 = textScanner.o();
                    textScanner.q();
                    if (Float.isNaN(fI8) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    if (!Float.isNaN(fO3)) {
                        matrix.preScale(fI8, fO3);
                    } else {
                        matrix.preScale(fI8, fI8);
                    }
                    break;
                    break;
                case "skewX":
                    textScanner.q();
                    float fI9 = textScanner.i();
                    textScanner.q();
                    if (Float.isNaN(fI9) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    matrix.preSkew((float) Math.tan(Math.toRadians(fI9)), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    break;
                    break;
                case "skewY":
                    textScanner.q();
                    float fI10 = textScanner.i();
                    textScanner.q();
                    if (Float.isNaN(fI10) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    matrix.preSkew(Call.Parameters.DEFAULT_CAMERA_ZOOM, (float) Math.tan(Math.toRadians(fI10)));
                    break;
                    break;
                case "translate":
                    textScanner.q();
                    float fI11 = textScanner.i();
                    float fO4 = textScanner.o();
                    textScanner.q();
                    if (Float.isNaN(fI11) || !textScanner.d(')')) {
                        throw new SVGParseException("Invalid transform list: ".concat(str));
                    }
                    if (!Float.isNaN(fO4)) {
                        matrix.preTranslate(fI11, fO4);
                    } else {
                        matrix.preTranslate(fI11, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                    break;
                    break;
                default:
                    throw new SVGParseException(fc.h("Invalid transform list fn: ", strSubstring, ")"));
            }
            if (textScanner.f()) {
                return matrix;
            }
            textScanner.p();
        }
        return matrix;
    }

    public final void A(InputStream inputStream) throws SVGParseException {
        try {
            SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-general-entities", false);
            sAXParserFactoryNewInstance.setFeature("http://xml.org/sax/features/external-parameter-entities", false);
            XMLReader xMLReader = sAXParserFactoryNewInstance.newSAXParser().getXMLReader();
            SAXHandler sAXHandler = new SAXHandler();
            xMLReader.setContentHandler(sAXHandler);
            xMLReader.setProperty("http://xml.org/sax/properties/lexical-handler", sAXHandler);
            xMLReader.parse(new InputSource(inputStream));
        } catch (IOException e2) {
            throw new SVGParseException("Stream error", e2);
        } catch (ParserConfigurationException e3) {
            throw new SVGParseException("XML parser problem", e3);
        } catch (SAXException e4) {
            throw new SVGParseException("SVG parse error", e4);
        }
    }

    public final void B(InputStream inputStream) throws SVGParseException {
        try {
            try {
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                XPPAttributesWrapper xPPAttributesWrapper = new XPPAttributesWrapper(this, xmlPullParserNewPullParser);
                xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-docdecl", false);
                xmlPullParserNewPullParser.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
                xmlPullParserNewPullParser.setInput(inputStream, null);
                for (int eventType = xmlPullParserNewPullParser.getEventType(); eventType != 1; eventType = xmlPullParserNewPullParser.nextToken()) {
                    if (eventType == 0) {
                        D();
                    } else if (eventType == 8) {
                        xmlPullParserNewPullParser.getText();
                        TextScanner textScanner = new TextScanner(xmlPullParserNewPullParser.getText());
                        String strL = textScanner.l();
                        y(textScanner);
                        strL.equals("xml-stylesheet");
                    } else if (eventType == 10) {
                        if (this.f25239a.f25153a == null && xmlPullParserNewPullParser.getText().contains("<!ENTITY ")) {
                            try {
                                inputStream.reset();
                                A(inputStream);
                                return;
                            } catch (IOException unused) {
                                return;
                            }
                        }
                    } else if (eventType == 2) {
                        String name = xmlPullParserNewPullParser.getName();
                        if (xmlPullParserNewPullParser.getPrefix() != null) {
                            name = xmlPullParserNewPullParser.getPrefix() + ':' + name;
                        }
                        E(xmlPullParserNewPullParser.getNamespace(), xmlPullParserNewPullParser.getName(), name, xPPAttributesWrapper);
                    } else if (eventType == 3) {
                        String name2 = xmlPullParserNewPullParser.getName();
                        if (xmlPullParserNewPullParser.getPrefix() != null) {
                            name2 = xmlPullParserNewPullParser.getPrefix() + ':' + name2;
                        }
                        c(xmlPullParserNewPullParser.getNamespace(), xmlPullParserNewPullParser.getName(), name2);
                    } else if (eventType == 4) {
                        int[] iArr = new int[2];
                        G(xmlPullParserNewPullParser.getTextCharacters(iArr), iArr[0], iArr[1]);
                    } else if (eventType == 5) {
                        F(xmlPullParserNewPullParser.getText());
                    }
                }
            } catch (XmlPullParserException e2) {
                throw new SVGParseException("XML parser problem", e2);
            }
        } catch (IOException e3) {
            throw new SVGParseException("Stream error", e3);
        }
    }

    public final void D() {
        SVG svg = new SVG();
        svg.f25153a = null;
        svg.f25154b = new CSSParser.Ruleset();
        svg.f25155c = new HashMap();
        this.f25239a = svg;
    }

    /* JADX WARN: Code duplicated, block: B:641:0x0c4c  */
    /* JADX WARN: Code duplicated, block: B:644:0x0c53  */
    /* JADX WARN: Code duplicated, block: B:879:0x0c74 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:883:0x0c6f A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    public final void E(String str, String str2, String str3, Attributes attributes) throws SVGParseException {
        char c2;
        float fI;
        int i2;
        char cCharAt;
        boolean z;
        if (this.f25241c) {
            this.d++;
            return;
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            SVGElem sVGElemA = SVGElem.a(str2.length() > 0 ? str2 : str3);
            int i3 = 0;
            switch (AnonymousClass1.f25246a[sVGElemA.ordinal()]) {
                case 1:
                    SVG.Svg svg = new SVG.Svg();
                    svg.f25196a = this.f25239a;
                    svg.f25197b = this.f25240b;
                    g(svg, attributes);
                    j(svg, attributes);
                    f(svg, attributes);
                    m(svg, attributes);
                    for (int i4 = 0; i4 < attributes.getLength(); i4++) {
                        String strTrim = attributes.getValue(i4).trim();
                        int i5 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i4)).ordinal()];
                        if (i5 == 1) {
                            svg.p = s(strTrim);
                        } else if (i5 == 2) {
                            svg.q = s(strTrim);
                        } else if (i5 == 3) {
                            SVG.Length lengthS = s(strTrim);
                            svg.r = lengthS;
                            if (lengthS.f()) {
                                ct0.j("Invalid <svg> element. width cannot be negative");
                                return;
                            }
                        } else if (i5 != 4) {
                            continue;
                        } else {
                            SVG.Length lengthS2 = s(strTrim);
                            svg.s = lengthS2;
                            if (lengthS2.f()) {
                                ct0.j("Invalid <svg> element. height cannot be negative");
                                return;
                            }
                        }
                    }
                    SVG.SvgContainer svgContainer = this.f25240b;
                    if (svgContainer == null) {
                        this.f25239a.f25153a = svg;
                    } else {
                        svgContainer.g(svg);
                    }
                    this.f25240b = svg;
                    return;
                case 2:
                case 3:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Group group = new SVG.Group();
                    group.f25196a = this.f25239a;
                    group.f25197b = this.f25240b;
                    g(group, attributes);
                    j(group, attributes);
                    l(group, attributes);
                    f(group, attributes);
                    this.f25240b.g(group);
                    this.f25240b = group;
                    return;
                case 4:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Defs defs = new SVG.Defs();
                    defs.f25196a = this.f25239a;
                    defs.f25197b = this.f25240b;
                    g(defs, attributes);
                    j(defs, attributes);
                    l(defs, attributes);
                    this.f25240b.g(defs);
                    this.f25240b = defs;
                    return;
                case 5:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Use use = new SVG.Use();
                    use.f25196a = this.f25239a;
                    use.f25197b = this.f25240b;
                    g(use, attributes);
                    j(use, attributes);
                    l(use, attributes);
                    f(use, attributes);
                    for (int i6 = 0; i6 < attributes.getLength(); i6++) {
                        String strTrim2 = attributes.getValue(i6).trim();
                        int i7 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i6)).ordinal()];
                        if (i7 == 1) {
                            use.p = s(strTrim2);
                        } else if (i7 == 2) {
                            use.q = s(strTrim2);
                        } else if (i7 == 3) {
                            SVG.Length lengthS3 = s(strTrim2);
                            use.r = lengthS3;
                            if (lengthS3.f()) {
                                ct0.j("Invalid <use> element. width cannot be negative");
                                return;
                            }
                        } else if (i7 == 4) {
                            SVG.Length lengthS4 = s(strTrim2);
                            use.s = lengthS4;
                            if (lengthS4.f()) {
                                ct0.j("Invalid <use> element. height cannot be negative");
                                return;
                            }
                        } else if (i7 == 6 && ("".equals(attributes.getURI(i6)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i6)))) {
                            use.o = strTrim2;
                        }
                    }
                    this.f25240b.g(use);
                    this.f25240b = use;
                    return;
                case 6:
                    SVG.SvgContainer svgContainer2 = this.f25240b;
                    if (svgContainer2 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Path path = new SVG.Path();
                    path.f25196a = this.f25239a;
                    path.f25197b = svgContainer2;
                    g(path, attributes);
                    j(path, attributes);
                    l(path, attributes);
                    f(path, attributes);
                    int i8 = 0;
                    while (i8 < attributes.getLength()) {
                        String strTrim3 = attributes.getValue(i8).trim();
                        int i9 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i8)).ordinal()];
                        if (i9 == 8) {
                            TextScanner textScanner = new TextScanner(strTrim3);
                            SVG.PathDefinition pathDefinition = new SVG.PathDefinition();
                            pathDefinition.f25175b = i3;
                            pathDefinition.d = i3;
                            pathDefinition.f25174a = new byte[8];
                            pathDefinition.f25176c = new float[16];
                            if (!textScanner.f()) {
                                int iIntValue = textScanner.h().intValue();
                                int i10 = 109;
                                if (iIntValue == 77 || iIntValue == 109) {
                                    float f2 = 0.0f;
                                    float fI2 = 0.0f;
                                    float f3 = 0.0f;
                                    float fC = 0.0f;
                                    float f4 = 0.0f;
                                    float f5 = 0.0f;
                                    while (true) {
                                        textScanner.q();
                                        switch (iIntValue) {
                                            case EACTags.ELEMENT_LIST /* 65 */:
                                            case 97:
                                                c2 = 'a';
                                                float fI3 = textScanner.i();
                                                float f6 = f3;
                                                float fC2 = textScanner.c(fI3);
                                                float fC3 = textScanner.c(fC2);
                                                Boolean boolB = textScanner.b(Float.valueOf(fC3));
                                                Boolean boolB2 = textScanner.b(boolB);
                                                if (boolB2 == null) {
                                                    fI = Float.NaN;
                                                } else {
                                                    textScanner.p();
                                                    fI = textScanner.i();
                                                }
                                                float fC4 = textScanner.c(fI);
                                                if (!Float.isNaN(fC4) && fI3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fC2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                                    if (iIntValue == 97) {
                                                        fI += f2;
                                                        fC4 += f6;
                                                    }
                                                    boolean zBooleanValue = boolB.booleanValue();
                                                    boolean zBooleanValue2 = boolB2.booleanValue();
                                                    float f7 = fI;
                                                    float f8 = fC4;
                                                    i10 = 109;
                                                    pathDefinition.e(fI3, fC2, fC3, zBooleanValue, zBooleanValue2, f7, f8);
                                                    f2 = f7;
                                                    fI2 = f2;
                                                    f3 = f8;
                                                    fC = f3;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c && (((cCharAt = textScanner.f25254a.charAt(i2)) >= c2 && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                            case 99:
                                                c2 = 'a';
                                                float fI4 = textScanner.i();
                                                float fC5 = textScanner.c(fI4);
                                                float fC6 = textScanner.c(fC5);
                                                float fC7 = textScanner.c(fC6);
                                                float fC8 = textScanner.c(fC7);
                                                float fC9 = textScanner.c(fC8);
                                                if (!Float.isNaN(fC9)) {
                                                    if (iIntValue == 99) {
                                                        fC8 += f2;
                                                        fC9 += f3;
                                                        fI4 += f2;
                                                        fC5 += f3;
                                                        fC6 += f2;
                                                        fC7 += f3;
                                                    }
                                                    float f9 = fC5;
                                                    float f10 = fC6;
                                                    float f11 = fC7;
                                                    float f12 = fC8;
                                                    float f13 = fC9;
                                                    pathDefinition.b(fI4, f9, f10, f11, f12, f13);
                                                    fI2 = f10;
                                                    fC = f11;
                                                    f2 = f12;
                                                    f3 = f13;
                                                    i10 = 109;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case 72:
                                            case 104:
                                                c2 = 'a';
                                                float fI5 = textScanner.i();
                                                if (!Float.isNaN(fI5)) {
                                                    if (iIntValue == 104) {
                                                        fI5 += f2;
                                                    }
                                                    f2 = fI5;
                                                    pathDefinition.c(f2, f3);
                                                    fI2 = f2;
                                                    i10 = i10;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case 76:
                                            case 108:
                                                c2 = 'a';
                                                float fI6 = textScanner.i();
                                                float fC10 = textScanner.c(fI6);
                                                if (!Float.isNaN(fC10)) {
                                                    if (iIntValue == 108) {
                                                        fI6 += f2;
                                                        fC10 += f3;
                                                    }
                                                    f2 = fI6;
                                                    f3 = fC10;
                                                    pathDefinition.c(f2, f3);
                                                    fI2 = f2;
                                                    fC = f3;
                                                    i10 = i10;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID /* 77 */:
                                            case 109:
                                                c2 = 'a';
                                                float fI7 = textScanner.i();
                                                float fC11 = textScanner.c(fI7);
                                                if (!Float.isNaN(fC11)) {
                                                    if (iIntValue == i10 && pathDefinition.f25175b != 0) {
                                                        fI7 += f2;
                                                        fC11 += f3;
                                                    }
                                                    f2 = fI7;
                                                    f3 = fC11;
                                                    pathDefinition.a(f2, f3);
                                                    fI2 = f2;
                                                    f4 = fI2;
                                                    fC = f3;
                                                    f5 = fC;
                                                    iIntValue = iIntValue != i10 ? 76 : 108;
                                                    i10 = i10;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case EACTags.ANSWER_TO_RESET /* 81 */:
                                            case 113:
                                                c2 = 'a';
                                                fI2 = textScanner.i();
                                                fC = textScanner.c(fI2);
                                                float fC12 = textScanner.c(fC);
                                                float fC13 = textScanner.c(fC12);
                                                if (!Float.isNaN(fC13)) {
                                                    if (iIntValue == 113) {
                                                        fC12 += f2;
                                                        fC13 += f3;
                                                        fI2 += f2;
                                                        fC += f3;
                                                    }
                                                    f2 = fC12;
                                                    f3 = fC13;
                                                    pathDefinition.d(fI2, fC, f2, f3);
                                                    i10 = i10;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case 83:
                                            case 115:
                                                float f14 = (f2 * 2.0f) - fI2;
                                                float f15 = (2.0f * f3) - fC;
                                                float fI8 = textScanner.i();
                                                float fC14 = textScanner.c(fI8);
                                                float fC15 = textScanner.c(fC14);
                                                float fC16 = textScanner.c(fC15);
                                                if (!Float.isNaN(fC16)) {
                                                    if (iIntValue == 115) {
                                                        fC15 += f2;
                                                        fC16 += f3;
                                                        fI8 += f2;
                                                        fC14 += f3;
                                                    }
                                                    float f16 = fC14;
                                                    float f17 = fC16;
                                                    float f18 = fI8;
                                                    c2 = 'a';
                                                    pathDefinition.b(f14, f15, f18, f16, fC15, f17);
                                                    fI2 = f18;
                                                    fC = f16;
                                                    f2 = fC15;
                                                    f3 = f17;
                                                    i10 = i10;
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case 84:
                                            case 116:
                                                fI2 = (f2 * 2.0f) - fI2;
                                                fC = (2.0f * f3) - fC;
                                                float fI9 = textScanner.i();
                                                float fC17 = textScanner.c(fI9);
                                                if (!Float.isNaN(fC17)) {
                                                    if (iIntValue == 116) {
                                                        fI9 += f2;
                                                        fC17 += f3;
                                                    }
                                                    f2 = fI9;
                                                    f3 = fC17;
                                                    pathDefinition.d(fI2, fC, f2, f3);
                                                    c2 = 'a';
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case 86:
                                            case 118:
                                                float fI10 = textScanner.i();
                                                if (!Float.isNaN(fI10)) {
                                                    if (iIntValue == 118) {
                                                        fI10 += f3;
                                                    }
                                                    f3 = fI10;
                                                    pathDefinition.c(f2, f3);
                                                    fC = f3;
                                                    c2 = 'a';
                                                    textScanner.p();
                                                    if (textScanner.f()) {
                                                        i2 = textScanner.f25255b;
                                                        if (i2 != textScanner.f25256c) {
                                                            iIntValue = textScanner.h().intValue();
                                                        }
                                                        i10 = i10;
                                                    }
                                                }
                                                break;
                                            case Sink.ORIENTATION_90 /* 90 */:
                                            case 122:
                                                pathDefinition.close();
                                                f2 = f4;
                                                fI2 = f2;
                                                f3 = f5;
                                                fC = f3;
                                                c2 = 'a';
                                                textScanner.p();
                                                if (textScanner.f()) {
                                                    i2 = textScanner.f25255b;
                                                    if (i2 != textScanner.f25256c) {
                                                        iIntValue = textScanner.h().intValue();
                                                    }
                                                    i10 = i10;
                                                }
                                                break;
                                        }
                                    }
                                }
                            }
                            path.o = pathDefinition;
                        } else if (i9 == 9 && p(strTrim3) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            ct0.j("Invalid <path> element. pathLength cannot be negative");
                            return;
                        }
                        i8++;
                        i3 = 0;
                    }
                    this.f25240b.g(path);
                    return;
                case 7:
                    SVG.SvgContainer svgContainer3 = this.f25240b;
                    if (svgContainer3 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Rect rect = new SVG.Rect();
                    rect.f25196a = this.f25239a;
                    rect.f25197b = svgContainer3;
                    g(rect, attributes);
                    j(rect, attributes);
                    l(rect, attributes);
                    f(rect, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim4 = attributes.getValue(i3).trim();
                        int i11 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i11 == 1) {
                            rect.o = s(strTrim4);
                        } else if (i11 == 2) {
                            rect.p = s(strTrim4);
                        } else if (i11 == 3) {
                            SVG.Length lengthS5 = s(strTrim4);
                            rect.q = lengthS5;
                            if (lengthS5.f()) {
                                ct0.j("Invalid <rect> element. width cannot be negative");
                                return;
                            }
                        } else if (i11 == 4) {
                            SVG.Length lengthS6 = s(strTrim4);
                            rect.r = lengthS6;
                            if (lengthS6.f()) {
                                ct0.j("Invalid <rect> element. height cannot be negative");
                                return;
                            }
                        } else if (i11 == 10) {
                            SVG.Length lengthS7 = s(strTrim4);
                            rect.s = lengthS7;
                            if (lengthS7.f()) {
                                ct0.j("Invalid <rect> element. rx cannot be negative");
                                return;
                            }
                        } else if (i11 != 11) {
                            continue;
                        } else {
                            SVG.Length lengthS8 = s(strTrim4);
                            rect.t = lengthS8;
                            if (lengthS8.f()) {
                                ct0.j("Invalid <rect> element. ry cannot be negative");
                                return;
                            }
                        }
                        i3++;
                    }
                    this.f25240b.g(rect);
                    return;
                case 8:
                    SVG.SvgContainer svgContainer4 = this.f25240b;
                    if (svgContainer4 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Circle circle = new SVG.Circle();
                    circle.f25196a = this.f25239a;
                    circle.f25197b = svgContainer4;
                    g(circle, attributes);
                    j(circle, attributes);
                    l(circle, attributes);
                    f(circle, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim5 = attributes.getValue(i3).trim();
                        switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()]) {
                            case 12:
                                circle.o = s(strTrim5);
                                break;
                            case 13:
                                circle.p = s(strTrim5);
                                break;
                            case 14:
                                SVG.Length lengthS9 = s(strTrim5);
                                circle.q = lengthS9;
                                if (lengthS9.f()) {
                                    ct0.j("Invalid <circle> element. r cannot be negative");
                                    return;
                                }
                                break;
                                break;
                        }
                        i3++;
                    }
                    this.f25240b.g(circle);
                    return;
                case 9:
                    SVG.SvgContainer svgContainer5 = this.f25240b;
                    if (svgContainer5 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Ellipse ellipse = new SVG.Ellipse();
                    ellipse.f25196a = this.f25239a;
                    ellipse.f25197b = svgContainer5;
                    g(ellipse, attributes);
                    j(ellipse, attributes);
                    l(ellipse, attributes);
                    f(ellipse, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim6 = attributes.getValue(i3).trim();
                        switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()]) {
                            case 10:
                                SVG.Length lengthS10 = s(strTrim6);
                                ellipse.q = lengthS10;
                                if (lengthS10.f()) {
                                    ct0.j("Invalid <ellipse> element. rx cannot be negative");
                                    return;
                                }
                                break;
                                break;
                            case 11:
                                SVG.Length lengthS11 = s(strTrim6);
                                ellipse.r = lengthS11;
                                if (lengthS11.f()) {
                                    ct0.j("Invalid <ellipse> element. ry cannot be negative");
                                    return;
                                }
                                break;
                                break;
                            case 12:
                                ellipse.o = s(strTrim6);
                                break;
                            case 13:
                                ellipse.p = s(strTrim6);
                                break;
                        }
                        i3++;
                    }
                    this.f25240b.g(ellipse);
                    return;
                case 10:
                    SVG.SvgContainer svgContainer6 = this.f25240b;
                    if (svgContainer6 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Line line = new SVG.Line();
                    line.f25196a = this.f25239a;
                    line.f25197b = svgContainer6;
                    g(line, attributes);
                    j(line, attributes);
                    l(line, attributes);
                    f(line, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim7 = attributes.getValue(i3).trim();
                        switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()]) {
                            case 15:
                                line.o = s(strTrim7);
                                break;
                            case 16:
                                line.p = s(strTrim7);
                                break;
                            case 17:
                                line.q = s(strTrim7);
                                break;
                            case 18:
                                line.r = s(strTrim7);
                                break;
                        }
                        i3++;
                    }
                    this.f25240b.g(line);
                    return;
                case 11:
                    SVG.SvgContainer svgContainer7 = this.f25240b;
                    if (svgContainer7 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.PolyLine polyLine = new SVG.PolyLine();
                    polyLine.f25196a = this.f25239a;
                    polyLine.f25197b = svgContainer7;
                    g(polyLine, attributes);
                    j(polyLine, attributes);
                    l(polyLine, attributes);
                    f(polyLine, attributes);
                    i(polyLine, attributes, "polyline");
                    this.f25240b.g(polyLine);
                    return;
                case 12:
                    SVG.SvgContainer svgContainer8 = this.f25240b;
                    if (svgContainer8 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Polygon polygon = new SVG.Polygon();
                    polygon.f25196a = this.f25239a;
                    polygon.f25197b = svgContainer8;
                    g(polygon, attributes);
                    j(polygon, attributes);
                    l(polygon, attributes);
                    f(polygon, attributes);
                    i(polygon, attributes, "polygon");
                    this.f25240b.g(polygon);
                    return;
                case 13:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Text text = new SVG.Text();
                    text.f25196a = this.f25239a;
                    text.f25197b = this.f25240b;
                    g(text, attributes);
                    j(text, attributes);
                    l(text, attributes);
                    f(text, attributes);
                    k(text, attributes);
                    this.f25240b.g(text);
                    this.f25240b = text;
                    return;
                case 14:
                    SVG.SvgContainer svgContainer9 = this.f25240b;
                    if (svgContainer9 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    if (!(svgContainer9 instanceof SVG.TextContainer)) {
                        ct0.j("Invalid document. <tspan> elements are only valid inside <text> or other <tspan> elements.");
                        return;
                    }
                    SVG.TSpan tSpan = new SVG.TSpan();
                    tSpan.f25196a = this.f25239a;
                    tSpan.f25197b = this.f25240b;
                    g(tSpan, attributes);
                    j(tSpan, attributes);
                    f(tSpan, attributes);
                    k(tSpan, attributes);
                    this.f25240b.g(tSpan);
                    this.f25240b = tSpan;
                    SVG.SvgContainer svgContainer10 = tSpan.f25197b;
                    if (svgContainer10 instanceof SVG.TextRoot) {
                        tSpan.r = (SVG.TextRoot) svgContainer10;
                        return;
                    } else {
                        tSpan.r = ((SVG.TextChild) svgContainer10).c();
                        return;
                    }
                case 15:
                    SVG.SvgContainer svgContainer11 = this.f25240b;
                    if (svgContainer11 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    if (!(svgContainer11 instanceof SVG.TextContainer)) {
                        ct0.j("Invalid document. <tref> elements are only valid inside <text> or <tspan> elements.");
                        return;
                    }
                    SVG.TRef tRef = new SVG.TRef();
                    tRef.f25196a = this.f25239a;
                    tRef.f25197b = this.f25240b;
                    g(tRef, attributes);
                    j(tRef, attributes);
                    f(tRef, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim8 = attributes.getValue(i3).trim();
                        if (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()] == 6 && ("".equals(attributes.getURI(i3)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i3)))) {
                            tRef.n = strTrim8;
                        }
                        i3++;
                    }
                    this.f25240b.g(tRef);
                    SVG.SvgContainer svgContainer12 = tRef.f25197b;
                    if (svgContainer12 instanceof SVG.TextRoot) {
                        tRef.o = (SVG.TextRoot) svgContainer12;
                        return;
                    } else {
                        tRef.o = ((SVG.TextChild) svgContainer12).c();
                        return;
                    }
                case 16:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Switch r1 = new SVG.Switch();
                    r1.f25196a = this.f25239a;
                    r1.f25197b = this.f25240b;
                    g(r1, attributes);
                    j(r1, attributes);
                    l(r1, attributes);
                    f(r1, attributes);
                    this.f25240b.g(r1);
                    this.f25240b = r1;
                    return;
                case 17:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Symbol symbol = new SVG.Symbol();
                    symbol.f25196a = this.f25239a;
                    symbol.f25197b = this.f25240b;
                    g(symbol, attributes);
                    j(symbol, attributes);
                    f(symbol, attributes);
                    m(symbol, attributes);
                    this.f25240b.g(symbol);
                    this.f25240b = symbol;
                    return;
                case 18:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Marker marker = new SVG.Marker();
                    marker.f25196a = this.f25239a;
                    marker.f25197b = this.f25240b;
                    g(marker, attributes);
                    j(marker, attributes);
                    f(marker, attributes);
                    m(marker, attributes);
                    for (int i12 = 0; i12 < attributes.getLength(); i12++) {
                        String strTrim9 = attributes.getValue(i12).trim();
                        switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i12)).ordinal()]) {
                            case 26:
                                marker.q = s(strTrim9);
                                break;
                            case 27:
                                marker.r = s(strTrim9);
                                break;
                            case 28:
                                SVG.Length lengthS12 = s(strTrim9);
                                marker.s = lengthS12;
                                if (lengthS12.f()) {
                                    ct0.j("Invalid <marker> element. markerWidth cannot be negative");
                                    return;
                                }
                                break;
                                break;
                            case 29:
                                SVG.Length lengthS13 = s(strTrim9);
                                marker.t = lengthS13;
                                if (lengthS13.f()) {
                                    ct0.j("Invalid <marker> element. markerHeight cannot be negative");
                                    return;
                                }
                                break;
                                break;
                            case 30:
                                if ("strokeWidth".equals(strTrim9)) {
                                    marker.p = false;
                                } else {
                                    if (!"userSpaceOnUse".equals(strTrim9)) {
                                        ct0.j("Invalid value for attribute markerUnits");
                                        return;
                                    }
                                    marker.p = true;
                                }
                                break;
                            case 31:
                                if ("auto".equals(strTrim9)) {
                                    marker.u = Float.valueOf(Float.NaN);
                                } else {
                                    marker.u = Float.valueOf(p(strTrim9));
                                }
                                break;
                        }
                    }
                    this.f25240b.g(marker);
                    this.f25240b = marker;
                    return;
                case 19:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.SvgLinearGradient svgLinearGradient = new SVG.SvgLinearGradient();
                    svgLinearGradient.f25196a = this.f25239a;
                    svgLinearGradient.f25197b = this.f25240b;
                    g(svgLinearGradient, attributes);
                    j(svgLinearGradient, attributes);
                    h(svgLinearGradient, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim10 = attributes.getValue(i3).trim();
                        switch (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()]) {
                            case 15:
                                svgLinearGradient.m = s(strTrim10);
                                break;
                            case 16:
                                svgLinearGradient.n = s(strTrim10);
                                break;
                            case 17:
                                svgLinearGradient.o = s(strTrim10);
                                break;
                            case 18:
                                svgLinearGradient.p = s(strTrim10);
                                break;
                        }
                        i3++;
                    }
                    this.f25240b.g(svgLinearGradient);
                    this.f25240b = svgLinearGradient;
                    return;
                case 20:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.SvgRadialGradient svgRadialGradient = new SVG.SvgRadialGradient();
                    svgRadialGradient.f25196a = this.f25239a;
                    svgRadialGradient.f25197b = this.f25240b;
                    g(svgRadialGradient, attributes);
                    j(svgRadialGradient, attributes);
                    h(svgRadialGradient, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim11 = attributes.getValue(i3).trim();
                        int i13 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i13 == 35) {
                            svgRadialGradient.p = s(strTrim11);
                        } else if (i13 != 36) {
                            switch (i13) {
                                case 12:
                                    svgRadialGradient.m = s(strTrim11);
                                    break;
                                case 13:
                                    svgRadialGradient.n = s(strTrim11);
                                    break;
                                case 14:
                                    SVG.Length lengthS14 = s(strTrim11);
                                    svgRadialGradient.o = lengthS14;
                                    if (lengthS14.f()) {
                                        ct0.j("Invalid <radialGradient> element. r cannot be negative");
                                        return;
                                    }
                                    break;
                                    break;
                            }
                        } else {
                            svgRadialGradient.q = s(strTrim11);
                        }
                        i3++;
                    }
                    this.f25240b.g(svgRadialGradient);
                    this.f25240b = svgRadialGradient;
                    return;
                case 21:
                    SVG.SvgContainer svgContainer13 = this.f25240b;
                    if (svgContainer13 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    if (!(svgContainer13 instanceof SVG.GradientElement)) {
                        ct0.j("Invalid document. <stop> elements are only valid inside <linearGradient> or <radialGradient> elements.");
                        return;
                    }
                    SVG.Stop stop = new SVG.Stop();
                    stop.f25196a = this.f25239a;
                    stop.f25197b = svgContainer13;
                    g(stop, attributes);
                    j(stop, attributes);
                    for (int i14 = 0; i14 < attributes.getLength(); i14++) {
                        String strTrim12 = attributes.getValue(i14).trim();
                        if (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i14)).ordinal()] == 37) {
                            if (strTrim12.length() == 0) {
                                ct0.j("Invalid offset value in <stop> (empty string)");
                                return;
                            }
                            int length = strTrim12.length();
                            if (strTrim12.charAt(strTrim12.length() - 1) == '%') {
                                length--;
                                z = true;
                            } else {
                                z = false;
                            }
                            try {
                                float fO = o(length, strTrim12);
                                float f19 = 100.0f;
                                if (z) {
                                    fO /= 100.0f;
                                }
                                if (fO < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    f19 = 0.0f;
                                } else if (fO <= 100.0f) {
                                    f19 = fO;
                                }
                                stop.f25177h = Float.valueOf(f19);
                            } catch (NumberFormatException e2) {
                                throw new SVGParseException("Invalid offset value in <stop>: ".concat(strTrim12), e2);
                            }
                        }
                    }
                    this.f25240b.g(stop);
                    this.f25240b = stop;
                    return;
                case 22:
                case 23:
                    this.f25242e = true;
                    this.f25243f = sVGElemA;
                    return;
                case 24:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.ClipPath clipPath = new SVG.ClipPath();
                    clipPath.f25196a = this.f25239a;
                    clipPath.f25197b = this.f25240b;
                    g(clipPath, attributes);
                    j(clipPath, attributes);
                    l(clipPath, attributes);
                    f(clipPath, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim13 = attributes.getValue(i3).trim();
                        if (AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()] == 38) {
                            if ("objectBoundingBox".equals(strTrim13)) {
                                clipPath.o = Boolean.FALSE;
                            } else {
                                if (!"userSpaceOnUse".equals(strTrim13)) {
                                    ct0.j("Invalid value for attribute clipPathUnits");
                                    return;
                                }
                                clipPath.o = Boolean.TRUE;
                            }
                        }
                        i3++;
                    }
                    this.f25240b.g(clipPath);
                    this.f25240b = clipPath;
                    return;
                case 25:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.TextPath textPath = new SVG.TextPath();
                    textPath.f25196a = this.f25239a;
                    textPath.f25197b = this.f25240b;
                    g(textPath, attributes);
                    j(textPath, attributes);
                    f(textPath, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim14 = attributes.getValue(i3).trim();
                        int i15 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i15 != 6) {
                            if (i15 == 39) {
                                textPath.o = s(strTrim14);
                            }
                        } else if ("".equals(attributes.getURI(i3)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i3))) {
                            textPath.n = strTrim14;
                        }
                        i3++;
                    }
                    this.f25240b.g(textPath);
                    this.f25240b = textPath;
                    SVG.SvgContainer svgContainer14 = textPath.f25197b;
                    if (svgContainer14 instanceof SVG.TextRoot) {
                        textPath.p = (SVG.TextRoot) svgContainer14;
                        return;
                    } else {
                        textPath.p = ((SVG.TextChild) svgContainer14).c();
                        return;
                    }
                case 26:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Pattern pattern = new SVG.Pattern();
                    pattern.f25196a = this.f25239a;
                    pattern.f25197b = this.f25240b;
                    g(pattern, attributes);
                    j(pattern, attributes);
                    f(pattern, attributes);
                    m(pattern, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim15 = attributes.getValue(i3).trim();
                        int i16 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i16 == 1) {
                            pattern.s = s(strTrim15);
                        } else if (i16 == 2) {
                            pattern.t = s(strTrim15);
                        } else if (i16 == 3) {
                            SVG.Length lengthS15 = s(strTrim15);
                            pattern.u = lengthS15;
                            if (lengthS15.f()) {
                                ct0.j("Invalid <pattern> element. width cannot be negative");
                                return;
                            }
                        } else if (i16 == 4) {
                            SVG.Length lengthS16 = s(strTrim15);
                            pattern.v = lengthS16;
                            if (lengthS16.f()) {
                                ct0.j("Invalid <pattern> element. height cannot be negative");
                                return;
                            }
                        } else if (i16 != 6) {
                            switch (i16) {
                                case 40:
                                    if ("objectBoundingBox".equals(strTrim15)) {
                                        pattern.p = Boolean.FALSE;
                                    } else {
                                        if (!"userSpaceOnUse".equals(strTrim15)) {
                                            ct0.j("Invalid value for attribute patternUnits");
                                            return;
                                        }
                                        pattern.p = Boolean.TRUE;
                                    }
                                    break;
                                case 41:
                                    if ("objectBoundingBox".equals(strTrim15)) {
                                        pattern.q = Boolean.FALSE;
                                    } else {
                                        if (!"userSpaceOnUse".equals(strTrim15)) {
                                            ct0.j("Invalid value for attribute patternContentUnits");
                                            return;
                                        }
                                        pattern.q = Boolean.TRUE;
                                    }
                                    break;
                                case EACTags.CURRENCY_CODE /* 42 */:
                                    pattern.r = z(strTrim15);
                                    break;
                            }
                        } else if ("".equals(attributes.getURI(i3)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i3))) {
                            pattern.w = strTrim15;
                        }
                        i3++;
                    }
                    this.f25240b.g(pattern);
                    this.f25240b = pattern;
                    return;
                case 27:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Image image = new SVG.Image();
                    image.f25196a = this.f25239a;
                    image.f25197b = this.f25240b;
                    g(image, attributes);
                    j(image, attributes);
                    l(image, attributes);
                    f(image, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim16 = attributes.getValue(i3).trim();
                        int i17 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i17 == 1) {
                            image.p = s(strTrim16);
                        } else if (i17 == 2) {
                            image.q = s(strTrim16);
                        } else if (i17 == 3) {
                            SVG.Length lengthS17 = s(strTrim16);
                            image.r = lengthS17;
                            if (lengthS17.f()) {
                                ct0.j("Invalid <use> element. width cannot be negative");
                                return;
                            }
                        } else if (i17 == 4) {
                            SVG.Length lengthS18 = s(strTrim16);
                            image.s = lengthS18;
                            if (lengthS18.f()) {
                                ct0.j("Invalid <use> element. height cannot be negative");
                                return;
                            }
                        } else if (i17 != 6) {
                            if (i17 == 7) {
                                x(image, strTrim16);
                            }
                        } else if ("".equals(attributes.getURI(i3)) || "http://www.w3.org/1999/xlink".equals(attributes.getURI(i3))) {
                            image.o = strTrim16;
                        }
                        i3++;
                    }
                    this.f25240b.g(image);
                    this.f25240b = image;
                    return;
                case 28:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.View view = new SVG.View();
                    view.f25196a = this.f25239a;
                    view.f25197b = this.f25240b;
                    g(view, attributes);
                    f(view, attributes);
                    m(view, attributes);
                    this.f25240b.g(view);
                    this.f25240b = view;
                    return;
                case 29:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.Mask mask = new SVG.Mask();
                    mask.f25196a = this.f25239a;
                    mask.f25197b = this.f25240b;
                    g(mask, attributes);
                    j(mask, attributes);
                    f(mask, attributes);
                    while (i3 < attributes.getLength()) {
                        String strTrim17 = attributes.getValue(i3).trim();
                        int i18 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i18 == 1) {
                            s(strTrim17);
                        } else if (i18 == 2) {
                            s(strTrim17);
                        } else if (i18 == 3) {
                            SVG.Length lengthS19 = s(strTrim17);
                            mask.p = lengthS19;
                            if (lengthS19.f()) {
                                ct0.j("Invalid <mask> element. width cannot be negative");
                                return;
                            }
                        } else if (i18 == 4) {
                            SVG.Length lengthS20 = s(strTrim17);
                            mask.q = lengthS20;
                            if (lengthS20.f()) {
                                ct0.j("Invalid <mask> element. height cannot be negative");
                                return;
                            }
                        } else if (i18 != 43) {
                            if (i18 != 44) {
                                continue;
                            } else if ("objectBoundingBox".equals(strTrim17)) {
                                mask.o = Boolean.FALSE;
                            } else {
                                if (!"userSpaceOnUse".equals(strTrim17)) {
                                    ct0.j("Invalid value for attribute maskContentUnits");
                                    return;
                                }
                                mask.o = Boolean.TRUE;
                            }
                        } else if ("objectBoundingBox".equals(strTrim17)) {
                            mask.n = Boolean.FALSE;
                        } else {
                            if (!"userSpaceOnUse".equals(strTrim17)) {
                                ct0.j("Invalid value for attribute maskUnits");
                                return;
                            }
                            mask.n = Boolean.TRUE;
                        }
                        i3++;
                    }
                    this.f25240b.g(mask);
                    this.f25240b = mask;
                    return;
                case 30:
                    if (this.f25240b == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    String str4 = "all";
                    boolean zEquals = true;
                    while (i3 < attributes.getLength()) {
                        String strTrim18 = attributes.getValue(i3).trim();
                        int i19 = AnonymousClass1.f25247b[SVGAttr.a(attributes.getLocalName(i3)).ordinal()];
                        if (i19 == 88) {
                            zEquals = strTrim18.equals("text/css");
                        } else if (i19 == 89) {
                            str4 = strTrim18;
                        }
                        i3++;
                    }
                    if (zEquals) {
                        CSSParser.MediaType mediaType = CSSParser.MediaType.screen;
                        CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(str4);
                        cSSTextScanner.q();
                        for (CSSParser.MediaType mediaType2 : CSSParser.c(cSSTextScanner)) {
                            if (mediaType2 == CSSParser.MediaType.all || mediaType2 == mediaType) {
                                this.f25244h = true;
                                return;
                            }
                        }
                    }
                    this.f25241c = true;
                    this.d = 1;
                    return;
                case 31:
                    SVG.SvgContainer svgContainer15 = this.f25240b;
                    if (svgContainer15 == null) {
                        ct0.j("Invalid document. Root element must be <svg>");
                        return;
                    }
                    SVG.SolidColor solidColor = new SVG.SolidColor();
                    solidColor.f25196a = this.f25239a;
                    solidColor.f25197b = svgContainer15;
                    g(solidColor, attributes);
                    j(solidColor, attributes);
                    this.f25240b.g(solidColor);
                    this.f25240b = solidColor;
                    return;
                default:
                    this.f25241c = true;
                    this.d = 1;
                    return;
            }
        }
    }

    public final void F(String str) {
        if (this.f25241c) {
            return;
        }
        if (this.f25242e) {
            if (this.g == null) {
                this.g = new StringBuilder(str.length());
            }
            this.g.append(str);
        } else if (this.f25244h) {
            if (this.f25245i == null) {
                this.f25245i = new StringBuilder(str.length());
            }
            this.f25245i.append(str);
        } else if (this.f25240b instanceof SVG.TextContainer) {
            a(str);
        }
    }

    public final void G(char[] cArr, int i2, int i3) {
        if (this.f25241c) {
            return;
        }
        if (this.f25242e) {
            if (this.g == null) {
                this.g = new StringBuilder(i3);
            }
            this.g.append(cArr, i2, i3);
        } else if (this.f25244h) {
            if (this.f25245i == null) {
                this.f25245i = new StringBuilder(i3);
            }
            this.f25245i.append(cArr, i2, i3);
        } else if (this.f25240b instanceof SVG.TextContainer) {
            a(new String(cArr, i2, i3));
        }
    }

    public final void a(String str) {
        SVG.SvgConditionalContainer svgConditionalContainer = (SVG.SvgConditionalContainer) this.f25240b;
        int size = svgConditionalContainer.f25186i.size();
        SVG.SvgObject svgObject = size == 0 ? null : (SVG.SvgObject) svgConditionalContainer.f25186i.get(size - 1);
        if (svgObject instanceof SVG.TextSequence) {
            SVG.TextSequence textSequence = (SVG.TextSequence) svgObject;
            textSequence.f25198c = n00.r(textSequence.f25198c, str, new StringBuilder());
        } else {
            SVG.SvgContainer svgContainer = this.f25240b;
            SVG.TextSequence textSequence2 = new SVG.TextSequence();
            textSequence2.f25198c = str;
            svgContainer.g(textSequence2);
        }
    }

    public final void c(String str, String str2, String str3) {
        if (this.f25241c) {
            int i2 = this.d - 1;
            this.d = i2;
            if (i2 == 0) {
                this.f25241c = false;
                return;
            }
        }
        if ("http://www.w3.org/2000/svg".equals(str) || "".equals(str)) {
            if (str2.length() <= 0) {
                str2 = str3;
            }
            int i3 = AnonymousClass1.f25246a[SVGElem.a(str2).ordinal()];
            if (i3 != 1 && i3 != 2 && i3 != 4 && i3 != 5 && i3 != 13 && i3 != 14) {
                switch (i3) {
                    case 22:
                    case 23:
                        this.f25242e = false;
                        if (this.g != null) {
                            SVGElem sVGElem = this.f25243f;
                            if (sVGElem == SVGElem.title || sVGElem == SVGElem.desc) {
                                this.f25239a.getClass();
                            }
                            this.g.setLength(0);
                        }
                        break;
                    case 30:
                        StringBuilder sb = this.f25245i;
                        if (sb != null) {
                            this.f25244h = false;
                            String string = sb.toString();
                            CSSParser.MediaType mediaType = CSSParser.MediaType.screen;
                            CSSParser.Source source = CSSParser.Source.Document;
                            CSSParser cSSParser = new CSSParser();
                            cSSParser.f25119c = false;
                            cSSParser.f25117a = mediaType;
                            cSSParser.f25118b = source;
                            SVG svg = this.f25239a;
                            CSSParser.CSSTextScanner cSSTextScanner = new CSSParser.CSSTextScanner(string);
                            cSSTextScanner.q();
                            svg.f25154b.b(cSSParser.e(cSSTextScanner));
                            this.f25245i.setLength(0);
                        }
                        break;
                }
                return;
            }
            this.f25240b = ((SVG.SvgObject) this.f25240b).f25197b;
        }
    }
}
