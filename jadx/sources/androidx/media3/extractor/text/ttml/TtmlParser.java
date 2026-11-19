package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import android.text.TextUtils;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.LegacySubtitleUtil;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleParser;
import com.batch.android.s.b;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Sets;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a;
import defpackage.az;
import defpackage.cj;
import defpackage.fc;
import defpackage.r81;
import defpackage.tr;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: loaded from: classes.dex */
public final class TtmlParser implements SubtitleParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f16840b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f16841c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f16842e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Pattern f16843f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Pattern f16844h = Pattern.compile("^(\\d+) (\\d+)$");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final FrameAndTickRate f16845i = new FrameAndTickRate(1, 1, 30.0f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final XmlPullParserFactory f16846a;

    public static final class FrameAndTickRate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f16847a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16849c;

        public FrameAndTickRate(int i2, int i3, float f2) {
            this.f16847a = f2;
            this.f16848b = i2;
            this.f16849c = i3;
        }
    }

    public static final class TtsExtent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16850a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16851b;

        public TtsExtent(int i2, int i3) {
            this.f16850a = i2;
            this.f16851b = i3;
        }
    }

    public TtmlParser() {
        try {
            XmlPullParserFactory xmlPullParserFactoryNewInstance = XmlPullParserFactory.newInstance();
            this.f16846a = xmlPullParserFactoryNewInstance;
            xmlPullParserFactoryNewInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            r81.g("Couldn't create XmlPullParserFactory instance", e2);
            throw null;
        }
    }

    public static TtmlStyle d(TtmlStyle ttmlStyle) {
        return ttmlStyle == null ? new TtmlStyle() : ttmlStyle;
    }

    public static boolean e(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals(DbParams.KEY_DATA) || str.equals("information");
    }

    public static int f(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = f16844h.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.g("Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z = true;
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i2 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            int i3 = Integer.parseInt(strGroup2);
            if (i2 == 0 || i3 == 0) {
                z = false;
            }
            Preconditions.f("Invalid cell resolution %s %s", i2, i3, z);
            return i3;
        } catch (NumberFormatException unused) {
            Log.g("Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    public static void g(String str, TtmlStyle ttmlStyle) throws SubtitleDecoderException {
        Matcher matcher;
        String str2 = Util.f14242a;
        String[] strArrSplit = str.split("\\s+", -1);
        int length = strArrSplit.length;
        Pattern pattern = d;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else {
            if (strArrSplit.length != 2) {
                throw new SubtitleDecoderException(a.i(strArrSplit.length, FileUtils.HIDDEN_PREFIX, new StringBuilder("Invalid number of entries for fontSize: ")));
            }
            matcher = pattern.matcher(strArrSplit[1]);
            Log.g("Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new SubtitleDecoderException(fc.h("Invalid expression for fontSize: '", str, "'."));
        }
        String strGroup = matcher.group(3);
        strGroup.getClass();
        switch (strGroup) {
            case "%":
                ttmlStyle.f16867j = 3;
                break;
            case "em":
                ttmlStyle.f16867j = 2;
                break;
            case "px":
                ttmlStyle.f16867j = 1;
                break;
            default:
                throw new SubtitleDecoderException(fc.h("Invalid unit for fontSize: '", strGroup, "'."));
        }
        String strGroup2 = matcher.group(1);
        strGroup2.getClass();
        ttmlStyle.f16868k = Float.parseFloat(strGroup2);
    }

    public static FrameAndTickRate h(XmlPullParser xmlPullParser) {
        float f2;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int i2 = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String str = Util.f14242a;
            String[] strArrSplit = attributeValue2.split(" ", -1);
            Preconditions.h(strArrSplit.length == 2, "frameRateMultiplier doesn't have 2 parts");
            f2 = Integer.parseInt(strArrSplit[0]) / Integer.parseInt(strArrSplit[1]);
        } else {
            f2 = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = f16845i;
        int i3 = frameAndTickRate.f16848b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i3 = Integer.parseInt(attributeValue3);
        }
        int i4 = frameAndTickRate.f16849c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i4 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i3, i4, i2 * f2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:104:0x020e  */
    /* JADX WARN: Code duplicated, block: B:82:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01de  */
    public static void i(XmlPullParser xmlPullParser, HashMap map, int i2, TtsExtent ttsExtent, HashMap map2, HashMap map3) throws XmlPullParserException, IOException {
        String strA;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i3;
        int i4;
        TtmlRegion ttmlRegion;
        float f7;
        float f8;
        String strA2;
        TtmlStyle ttmlStyle;
        String strA3;
        TtmlStyle ttmlStyle2;
        String[] strArrSplit;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.c(xmlPullParser, "style")) {
                String strA4 = XmlPullParserUtil.a(xmlPullParser, "style");
                TtmlStyle ttmlStyleK = k(xmlPullParser, new TtmlStyle());
                if (strA4 != null) {
                    String strTrim = strA4.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        String str = Util.f14242a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    for (String str2 : strArrSplit) {
                        ttmlStyleK.a((TtmlStyle) map.get(str2));
                    }
                }
                String str3 = ttmlStyleK.l;
                if (str3 != null) {
                    map.put(str3, ttmlStyleK);
                }
            } else if (XmlPullParserUtil.c(xmlPullParser, "region")) {
                String strA5 = XmlPullParserUtil.a(xmlPullParser, b.a.f24015b);
                if (strA5 != null) {
                    String strA6 = XmlPullParserUtil.a(xmlPullParser, "origin");
                    if (strA6 == null && (strA3 = XmlPullParserUtil.a(xmlPullParser, "style")) != null && (ttmlStyle2 = (TtmlStyle) map.get(strA3)) != null) {
                        strA6 = ttmlStyle2.t;
                    }
                    int i5 = 2;
                    Pattern pattern = g;
                    Pattern pattern2 = f16843f;
                    if (strA6 != null) {
                        Matcher matcher = pattern2.matcher(strA6);
                        Matcher matcher2 = pattern.matcher(strA6);
                        if (matcher.matches()) {
                            try {
                                String strGroup = matcher.group(1);
                                strGroup.getClass();
                                f2 = Float.parseFloat(strGroup) / 100.0f;
                                String strGroup2 = matcher.group(2);
                                strGroup2.getClass();
                                f3 = Float.parseFloat(strGroup2) / 100.0f;
                            } catch (NumberFormatException unused) {
                                Log.g("Ignoring region with malformed origin: ".concat(strA6));
                            }
                        } else if (!matcher2.matches()) {
                            Log.g("Ignoring region with unsupported origin: ".concat(strA6));
                        } else if (ttsExtent == null) {
                            Log.g("Ignoring region with missing tts:extent: ".concat(strA6));
                        } else {
                            try {
                                String strGroup3 = matcher2.group(1);
                                strGroup3.getClass();
                                int i6 = Integer.parseInt(strGroup3);
                                String strGroup4 = matcher2.group(2);
                                strGroup4.getClass();
                                int i7 = Integer.parseInt(strGroup4);
                                float f9 = i6 / ttsExtent.f16850a;
                                f3 = i7 / ttsExtent.f16851b;
                                f2 = f9;
                            } catch (NumberFormatException unused2) {
                                Log.g("Ignoring region with malformed origin: ".concat(strA6));
                            }
                        }
                        ttmlRegion = null;
                    } else {
                        f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        f3 = 0.0f;
                    }
                    String strA7 = XmlPullParserUtil.a(xmlPullParser, "extent");
                    if (strA7 == null && (strA2 = XmlPullParserUtil.a(xmlPullParser, "style")) != null && (ttmlStyle = (TtmlStyle) map.get(strA2)) != null) {
                        strA7 = ttmlStyle.u;
                    }
                    if (strA7 != null) {
                        Matcher matcher3 = pattern2.matcher(strA7);
                        Matcher matcher4 = pattern.matcher(strA7);
                        if (matcher3.matches()) {
                            try {
                                String strGroup5 = matcher3.group(1);
                                strGroup5.getClass();
                                f7 = Float.parseFloat(strGroup5) / 100.0f;
                                String strGroup6 = matcher3.group(2);
                                strGroup6.getClass();
                                f8 = Float.parseFloat(strGroup6) / 100.0f;
                            } catch (NumberFormatException unused3) {
                                cj.y("Ignoring region with malformed extent: ", strA6);
                                ttmlRegion = null;
                            }
                        } else {
                            if (!matcher4.matches()) {
                                cj.y("Ignoring region with unsupported extent: ", strA6);
                            } else if (ttsExtent == null) {
                                cj.y("Ignoring region with missing tts:extent: ", strA6);
                            } else {
                                try {
                                    String strGroup7 = matcher4.group(1);
                                    strGroup7.getClass();
                                    int i8 = Integer.parseInt(strGroup7);
                                    String strGroup8 = matcher4.group(2);
                                    strGroup8.getClass();
                                    int i9 = Integer.parseInt(strGroup8);
                                    float f10 = i8 / ttsExtent.f16850a;
                                    f8 = i9 / ttsExtent.f16851b;
                                    f7 = f10;
                                } catch (NumberFormatException unused4) {
                                    cj.y("Ignoring region with malformed extent: ", strA6);
                                    ttmlRegion = null;
                                }
                            }
                            ttmlRegion = null;
                        }
                        f4 = f7;
                        f5 = f8;
                    } else {
                        f4 = 1.0f;
                        f5 = 1.0f;
                    }
                    String strA8 = XmlPullParserUtil.a(xmlPullParser, "displayAlign");
                    if (strA8 != null) {
                        String strC = Ascii.c(strA8);
                        strC.getClass();
                        if (strC.equals("center")) {
                            f6 = f3 + (f5 / 2.0f);
                            i3 = 1;
                        } else if (strC.equals("after")) {
                            f6 = f3 + f5;
                            i3 = 2;
                        } else {
                            f6 = f3;
                            i3 = 0;
                        }
                    } else {
                        f6 = f3;
                        i3 = 0;
                    }
                    float f11 = 1.0f / i2;
                    String strA9 = XmlPullParserUtil.a(xmlPullParser, "writingMode");
                    if (strA9 != null) {
                        String strC2 = Ascii.c(strA9);
                        strC2.getClass();
                        switch (strC2) {
                            case "tb":
                            case "tblr":
                                i4 = i5;
                                break;
                            case "tbrl":
                                i4 = 1;
                                break;
                            default:
                                i5 = Integer.MIN_VALUE;
                                i4 = i5;
                                break;
                        }
                    } else {
                        i5 = Integer.MIN_VALUE;
                        i4 = i5;
                    }
                    ttmlRegion = new TtmlRegion(strA5, f2, f6, 0, i3, f4, f5, 1, f11, i4);
                } else {
                    ttmlRegion = null;
                }
                if (ttmlRegion != null) {
                    map2.put(ttmlRegion.f16852a, ttmlRegion);
                }
            } else if (XmlPullParserUtil.c(xmlPullParser, "metadata")) {
                do {
                    xmlPullParser.next();
                    if (XmlPullParserUtil.c(xmlPullParser, "image") && (strA = XmlPullParserUtil.a(xmlPullParser, b.a.f24015b)) != null) {
                        map3.put(strA, xmlPullParser.nextText());
                    }
                } while (!XmlPullParserUtil.b(xmlPullParser, "metadata"));
            }
        } while (!XmlPullParserUtil.b(xmlPullParser, "head"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x003c  */
    public static TtmlNode j(XmlPullParser xmlPullParser, TtmlNode ttmlNode, HashMap map, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        long j2;
        String[] strArrSplit;
        int attributeCount = xmlPullParser.getAttributeCount();
        String[] strArr = null;
        TtmlStyle ttmlStyleK = k(xmlPullParser, null);
        String strSubstring = null;
        String str = "";
        long jL = -9223372036854775807L;
        long jL2 = -9223372036854775807L;
        long jL3 = -9223372036854775807L;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlPullParser.getAttributeName(i2);
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            attributeName.getClass();
            switch (attributeName) {
                case "region":
                    if (map.containsKey(attributeValue)) {
                        str = attributeValue;
                        continue;
                    }
                    break;
                case "dur":
                    jL3 = l(attributeValue, frameAndTickRate);
                    break;
                case "end":
                    jL2 = l(attributeValue, frameAndTickRate);
                    break;
                case "begin":
                    jL = l(attributeValue, frameAndTickRate);
                    break;
                case "style":
                    String strTrim = attributeValue.trim();
                    if (strTrim.isEmpty()) {
                        strArrSplit = new String[0];
                    } else {
                        String str2 = Util.f14242a;
                        strArrSplit = strTrim.split("\\s+", -1);
                    }
                    if (strArrSplit.length > 0) {
                        strArr = strArrSplit;
                        break;
                    }
                    break;
                case "backgroundImage":
                    if (attributeValue.startsWith("#")) {
                        strSubstring = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (ttmlNode != null) {
            long j3 = ttmlNode.d;
            if (j3 != -9223372036854775807L) {
                if (jL != -9223372036854775807L) {
                    jL += j3;
                }
                if (jL2 != -9223372036854775807L) {
                    jL2 += j3;
                }
            }
        }
        if (jL2 != -9223372036854775807L) {
            j2 = jL2;
        } else {
            if (jL3 != -9223372036854775807L) {
                jL2 = jL + jL3;
            } else if (ttmlNode != null) {
                long j4 = ttmlNode.f16834e;
                if (j4 != -9223372036854775807L) {
                    j2 = j4;
                }
            }
            j2 = jL2;
        }
        return new TtmlNode(xmlPullParser.getName(), null, jL, j2, ttmlStyleK, strArr, str, strSubstring, ttmlNode);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:120:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:141:0x0203  */
    /* JADX WARN: Code duplicated, block: B:143:0x0216  */
    /* JADX WARN: Code duplicated, block: B:149:0x0224  */
    /* JADX WARN: Code duplicated, block: B:152:0x0232  */
    /* JADX WARN: Code duplicated, block: B:157:0x0251  */
    /* JADX WARN: Code duplicated, block: B:159:0x0262  */
    /* JADX WARN: Code duplicated, block: B:162:0x0268  */
    /* JADX WARN: Code duplicated, block: B:165:0x0272  */
    /* JADX WARN: Code duplicated, block: B:169:0x0288  */
    /* JADX WARN: Code duplicated, block: B:171:0x028d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0293  */
    /* JADX WARN: Code duplicated, block: B:177:0x029d  */
    /* JADX WARN: Code duplicated, block: B:179:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:180:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:6:0x001f  */
    /* JADX WARN: Code duplicated, block: B:80:0x011f  */
    public static TtmlStyle k(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        byte b2;
        int i2;
        Sets.SetView setViewD;
        Sets.SetView setViewD2;
        Sets.SetView setViewD3;
        String str;
        int iHashCode;
        String str2;
        int iHashCode2;
        int i3;
        TextEmphasis textEmphasis;
        String str3;
        int iHashCode3;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle ttmlStyleD = ttmlStyle;
        for (int i4 = 0; i4 < attributeCount; i4++) {
            String attributeValue = xmlPullParser.getAttributeValue(i4);
            String attributeName = xmlPullParser.getAttributeName(i4);
            attributeName.getClass();
            switch (attributeName) {
                case "fontStyle":
                    b2 = 0;
                    break;
                case "extent":
                    b2 = 1;
                    break;
                case "fontFamily":
                    b2 = 2;
                    break;
                case "textAlign":
                    b2 = 3;
                    break;
                case "origin":
                    b2 = 4;
                    break;
                case "textDecoration":
                    b2 = 5;
                    break;
                case "fontWeight":
                    b2 = 6;
                    break;
                case "id":
                    b2 = 7;
                    break;
                case "ruby":
                    b2 = 8;
                    break;
                case "color":
                    b2 = 9;
                    break;
                case "shear":
                    b2 = 10;
                    break;
                case "textCombine":
                    b2 = 11;
                    break;
                case "fontSize":
                    b2 = 12;
                    break;
                case "textEmphasis":
                    b2 = 13;
                    break;
                case "rubyPosition":
                    b2 = 14;
                    break;
                case "backgroundColor":
                    b2 = 15;
                    break;
                case "multiRowAlign":
                    b2 = 16;
                    break;
                default:
                    b2 = -1;
                    break;
            }
            Layout.Alignment alignment = null;
            switch (b2) {
                case 0:
                    ttmlStyleD = d(ttmlStyleD);
                    ttmlStyleD.f16866i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 1:
                    ttmlStyleD = d(ttmlStyleD);
                    ttmlStyleD.u = attributeValue;
                    break;
                case 2:
                    ttmlStyleD = d(ttmlStyleD);
                    ttmlStyleD.f16860a = attributeValue;
                    break;
                case 3:
                    ttmlStyleD = d(ttmlStyleD);
                    String strC = Ascii.c(attributeValue);
                    strC.getClass();
                    switch (strC) {
                        case "center":
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    ttmlStyleD.o = alignment;
                    break;
                case 4:
                    ttmlStyleD = d(ttmlStyleD);
                    ttmlStyleD.t = attributeValue;
                    break;
                case 5:
                    String strC2 = Ascii.c(attributeValue);
                    strC2.getClass();
                    switch (strC2) {
                        case "nounderline":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.g = 0;
                            break;
                        case "underline":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.g = 1;
                            break;
                        case "nolinethrough":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.f16864f = 0;
                            break;
                        case "linethrough":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.f16864f = 1;
                            break;
                    }
                    break;
                case 6:
                    ttmlStyleD = d(ttmlStyleD);
                    ttmlStyleD.f16865h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 7:
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyleD = d(ttmlStyleD);
                        ttmlStyleD.l = attributeValue;
                    }
                    break;
                case 8:
                    String strC3 = Ascii.c(attributeValue);
                    strC3.getClass();
                    switch (strC3) {
                        case "baseContainer":
                        case "base":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.m = 2;
                            break;
                        case "container":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.m = 1;
                            break;
                        case "delimiter":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.m = 4;
                            break;
                        case "textContainer":
                        case "text":
                            ttmlStyleD = d(ttmlStyleD);
                            ttmlStyleD.m = 3;
                            break;
                    }
                    break;
                case 9:
                    ttmlStyleD = d(ttmlStyleD);
                    try {
                        ttmlStyleD.f16861b = ColorParser.a(attributeValue, false);
                        ttmlStyleD.f16862c = true;
                    } catch (IllegalArgumentException unused) {
                        cj.y("Failed parsing color value: ", attributeValue);
                    }
                    break;
                case 10:
                    TtmlStyle ttmlStyleD2 = d(ttmlStyleD);
                    Matcher matcher = f16842e.matcher(attributeValue);
                    float fMin = Float.MAX_VALUE;
                    if (matcher.matches()) {
                        try {
                            String strGroup = matcher.group(1);
                            strGroup.getClass();
                            fMin = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(strGroup)));
                        } catch (NumberFormatException e2) {
                            Log.h("Failed to parse shear: " + attributeValue, e2);
                        }
                    } else {
                        cj.y("Invalid value for shear: ", attributeValue);
                    }
                    ttmlStyleD2.s = fMin;
                    ttmlStyleD = ttmlStyleD2;
                    break;
                case 11:
                    String strC4 = Ascii.c(attributeValue);
                    strC4.getClass();
                    if (strC4.equals("all")) {
                        ttmlStyleD = d(ttmlStyleD);
                        ttmlStyleD.q = 1;
                    } else if (strC4.equals("none")) {
                        ttmlStyleD = d(ttmlStyleD);
                        ttmlStyleD.q = 0;
                    }
                    break;
                case 12:
                    try {
                        ttmlStyleD = d(ttmlStyleD);
                        g(attributeValue, ttmlStyleD);
                    } catch (SubtitleDecoderException unused2) {
                        cj.y("Failed parsing fontSize value: ", attributeValue);
                    }
                    break;
                case 13:
                    ttmlStyleD = d(ttmlStyleD);
                    Pattern pattern = TextEmphasis.d;
                    if (attributeValue == null) {
                        textEmphasis = null;
                    } else {
                        String strC5 = Ascii.c(attributeValue.trim());
                        if (strC5.isEmpty()) {
                            textEmphasis = null;
                        } else {
                            ImmutableSet immutableSetT = ImmutableSet.t(TextUtils.split(strC5, TextEmphasis.d));
                            String str4 = (String) Iterables.a(Sets.d(TextEmphasis.f16827h, immutableSetT), "outside");
                            int iHashCode4 = str4.hashCode();
                            if (iHashCode4 != -1392885889) {
                                if (iHashCode4 != -1106037339) {
                                    if (iHashCode4 == 92734940 && str4.equals("after")) {
                                        i2 = 2;
                                    }
                                } else if (str4.equals("outside")) {
                                    i2 = -2;
                                }
                                setViewD = Sets.d(TextEmphasis.f16825e, immutableSetT);
                                if (setViewD.isEmpty()) {
                                    setViewD2 = Sets.d(TextEmphasis.g, immutableSetT);
                                    setViewD3 = Sets.d(TextEmphasis.f16826f, immutableSetT);
                                    if (setViewD2.isEmpty() || !setViewD3.isEmpty()) {
                                        str = (String) Iterables.a(setViewD2, "filled");
                                        iHashCode = str.hashCode();
                                        if (iHashCode != -1274499742) {
                                            int i5 = (iHashCode != 3417674 && str.equals("open")) ? 2 : 1;
                                            str2 = (String) Iterables.a(setViewD3, "circle");
                                            iHashCode2 = str2.hashCode();
                                            if (iHashCode2 != -1360216880) {
                                                if (iHashCode2 != -905816648) {
                                                    if (iHashCode2 == 99657 && str2.equals("dot")) {
                                                        i3 = 2;
                                                    }
                                                } else if (str2.equals("sesame")) {
                                                    i3 = 3;
                                                }
                                                textEmphasis = new TextEmphasis(i3, i5, i2);
                                            } else {
                                                str2.equals("circle");
                                            }
                                            i3 = 1;
                                            textEmphasis = new TextEmphasis(i3, i5, i2);
                                        } else {
                                            str.equals("filled");
                                        }
                                        str2 = (String) Iterables.a(setViewD3, "circle");
                                        iHashCode2 = str2.hashCode();
                                        if (iHashCode2 != -1360216880) {
                                            if (iHashCode2 != -905816648) {
                                                if (iHashCode2 == 99657) {
                                                    i3 = 2;
                                                }
                                            } else if (str2.equals("sesame")) {
                                                i3 = 3;
                                            }
                                            textEmphasis = new TextEmphasis(i3, i5, i2);
                                        } else {
                                            str2.equals("circle");
                                        }
                                        i3 = 1;
                                        textEmphasis = new TextEmphasis(i3, i5, i2);
                                    } else {
                                        textEmphasis = new TextEmphasis(-1, 0, i2);
                                    }
                                } else {
                                    str3 = (String) setViewD.iterator().next();
                                    iHashCode3 = str3.hashCode();
                                    if (iHashCode3 != 3005871) {
                                        int i6 = (iHashCode3 != 3387192 && str3.equals("none")) ? 0 : -1;
                                        textEmphasis = new TextEmphasis(i6, 0, i2);
                                    } else {
                                        str3.equals("auto");
                                    }
                                    textEmphasis = new TextEmphasis(i6, 0, i2);
                                }
                            } else {
                                str4.equals("before");
                            }
                            i2 = 1;
                            setViewD = Sets.d(TextEmphasis.f16825e, immutableSetT);
                            if (setViewD.isEmpty()) {
                                str3 = (String) setViewD.iterator().next();
                                iHashCode3 = str3.hashCode();
                                if (iHashCode3 != 3005871) {
                                    if (iHashCode3 != 3387192) {
                                    }
                                    textEmphasis = new TextEmphasis(i6, 0, i2);
                                } else {
                                    str3.equals("auto");
                                }
                                textEmphasis = new TextEmphasis(i6, 0, i2);
                            } else {
                                setViewD2 = Sets.d(TextEmphasis.g, immutableSetT);
                                setViewD3 = Sets.d(TextEmphasis.f16826f, immutableSetT);
                                if (setViewD2.isEmpty()) {
                                    str = (String) Iterables.a(setViewD2, "filled");
                                    iHashCode = str.hashCode();
                                    if (iHashCode != -1274499742) {
                                        if (iHashCode != 3417674) {
                                        }
                                        str2 = (String) Iterables.a(setViewD3, "circle");
                                        iHashCode2 = str2.hashCode();
                                        if (iHashCode2 != -1360216880) {
                                            if (iHashCode2 != -905816648) {
                                                if (iHashCode2 == 99657) {
                                                    i3 = 2;
                                                }
                                            } else if (str2.equals("sesame")) {
                                                i3 = 3;
                                            }
                                            textEmphasis = new TextEmphasis(i3, i5, i2);
                                        } else {
                                            str2.equals("circle");
                                        }
                                        i3 = 1;
                                        textEmphasis = new TextEmphasis(i3, i5, i2);
                                    } else {
                                        str.equals("filled");
                                    }
                                    str2 = (String) Iterables.a(setViewD3, "circle");
                                    iHashCode2 = str2.hashCode();
                                    if (iHashCode2 != -1360216880) {
                                        if (iHashCode2 != -905816648) {
                                            if (iHashCode2 == 99657) {
                                                i3 = 2;
                                            }
                                        } else if (str2.equals("sesame")) {
                                            i3 = 3;
                                        }
                                        textEmphasis = new TextEmphasis(i3, i5, i2);
                                    } else {
                                        str2.equals("circle");
                                    }
                                    i3 = 1;
                                    textEmphasis = new TextEmphasis(i3, i5, i2);
                                } else {
                                    str = (String) Iterables.a(setViewD2, "filled");
                                    iHashCode = str.hashCode();
                                    if (iHashCode != -1274499742) {
                                        if (iHashCode != 3417674) {
                                        }
                                        str2 = (String) Iterables.a(setViewD3, "circle");
                                        iHashCode2 = str2.hashCode();
                                        if (iHashCode2 != -1360216880) {
                                            if (iHashCode2 != -905816648) {
                                                if (iHashCode2 == 99657) {
                                                    i3 = 2;
                                                }
                                            } else if (str2.equals("sesame")) {
                                                i3 = 3;
                                            }
                                            textEmphasis = new TextEmphasis(i3, i5, i2);
                                        } else {
                                            str2.equals("circle");
                                        }
                                        i3 = 1;
                                        textEmphasis = new TextEmphasis(i3, i5, i2);
                                    } else {
                                        str.equals("filled");
                                    }
                                    str2 = (String) Iterables.a(setViewD3, "circle");
                                    iHashCode2 = str2.hashCode();
                                    if (iHashCode2 != -1360216880) {
                                        if (iHashCode2 != -905816648) {
                                            if (iHashCode2 == 99657) {
                                                i3 = 2;
                                            }
                                        } else if (str2.equals("sesame")) {
                                            i3 = 3;
                                        }
                                        textEmphasis = new TextEmphasis(i3, i5, i2);
                                    } else {
                                        str2.equals("circle");
                                    }
                                    i3 = 1;
                                    textEmphasis = new TextEmphasis(i3, i5, i2);
                                }
                            }
                        }
                    }
                    ttmlStyleD.r = textEmphasis;
                    break;
                case 14:
                    String strC6 = Ascii.c(attributeValue);
                    strC6.getClass();
                    if (strC6.equals("before")) {
                        ttmlStyleD = d(ttmlStyleD);
                        ttmlStyleD.n = 1;
                    } else if (strC6.equals("after")) {
                        ttmlStyleD = d(ttmlStyleD);
                        ttmlStyleD.n = 2;
                    }
                    break;
                case 15:
                    ttmlStyleD = d(ttmlStyleD);
                    try {
                        ttmlStyleD.d = ColorParser.a(attributeValue, false);
                        ttmlStyleD.f16863e = true;
                    } catch (IllegalArgumentException unused3) {
                        cj.y("Failed parsing background value: ", attributeValue);
                    }
                    break;
                case 16:
                    ttmlStyleD = d(ttmlStyleD);
                    String strC7 = Ascii.c(attributeValue);
                    strC7.getClass();
                    switch (strC7) {
                        case "center":
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case "end":
                        case "right":
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case "left":
                        case "start":
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    ttmlStyleD.p = alignment;
                    break;
            }
        }
        return ttmlStyleD;
    }

    public static long l(String str, FrameAndTickRate frameAndTickRate) throws SubtitleDecoderException {
        double d2;
        double d3;
        Matcher matcher = f16840b.matcher(str);
        if (matcher.matches()) {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            double d4 = Long.parseLong(strGroup) * 3600;
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            double d5 = d4 + (Long.parseLong(strGroup2) * 60);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            double d6 = d5 + Long.parseLong(strGroup3);
            String strGroup4 = matcher.group(4);
            double d7 = d6 + (strGroup4 != null ? Double.parseDouble(strGroup4) : 0.0d);
            String strGroup5 = matcher.group(5);
            double d8 = d7 + (strGroup5 != null ? Long.parseLong(strGroup5) / frameAndTickRate.f16847a : 0.0d);
            String strGroup6 = matcher.group(6);
            return (long) ((d8 + (strGroup6 != null ? (Long.parseLong(strGroup6) / ((double) frameAndTickRate.f16848b)) / ((double) frameAndTickRate.f16847a) : 0.0d)) * 1000000.0d);
        }
        Matcher matcher2 = f16841c.matcher(str);
        if (!matcher2.matches()) {
            throw new SubtitleDecoderException(tr.g("Malformed time expression: ", str));
        }
        String strGroup7 = matcher2.group(1);
        strGroup7.getClass();
        double d9 = Double.parseDouble(strGroup7);
        String strGroup8 = matcher2.group(2);
        strGroup8.getClass();
        switch (strGroup8) {
            case "f":
                d2 = frameAndTickRate.f16847a;
                d9 /= d2;
                return (long) (d9 * 1000000.0d);
            case "h":
                d3 = 3600.0d;
                break;
            case "m":
                d3 = 60.0d;
                break;
            case "t":
                d2 = frameAndTickRate.f16849c;
                d9 /= d2;
                return (long) (d9 * 1000000.0d);
            case "ms":
                d2 = 1000.0d;
                d9 /= d2;
                return (long) (d9 * 1000000.0d);
            default:
                return (long) (d9 * 1000000.0d);
        }
        d9 *= d3;
        return (long) (d9 * 1000000.0d);
    }

    public static TtsExtent m(XmlPullParser xmlPullParser) {
        String strA = XmlPullParserUtil.a(xmlPullParser, "extent");
        if (strA == null) {
            return null;
        }
        Matcher matcher = g.matcher(strA);
        if (!matcher.matches()) {
            Log.g("Ignoring non-pixel tts extent: ".concat(strA));
            return null;
        }
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            int i2 = Integer.parseInt(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            return new TtsExtent(i2, Integer.parseInt(strGroup2));
        } catch (NumberFormatException unused) {
            Log.g("Ignoring malformed tts extent: ".concat(strA));
            return null;
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        LegacySubtitleUtil.b(b(i2, i3, bArr), outputOptions, consumer);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final Subtitle b(int i2, int i3, byte[] bArr) {
        Subtitle subtitle;
        Subtitle subtitle2 = null;
        try {
            XmlPullParser xmlPullParserNewPullParser = this.f16846a.newPullParser();
            HashMap map = new HashMap();
            HashMap map2 = new HashMap();
            HashMap map3 = new HashMap();
            map2.put("", new TtmlRegion(""));
            xmlPullParserNewPullParser.setInput(new ByteArrayInputStream(bArr, i2, i3), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            int eventType = xmlPullParserNewPullParser.getEventType();
            FrameAndTickRate frameAndTickRateH = f16845i;
            int iF = 15;
            int i4 = 0;
            TtmlSubtitle ttmlSubtitle = null;
            TtsExtent ttsExtentM = null;
            while (eventType != 1) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i4 == 0) {
                    String name = xmlPullParserNewPullParser.getName();
                    subtitle = subtitle2;
                    if (eventType == 2) {
                        try {
                            if ("tt".equals(name)) {
                                frameAndTickRateH = h(xmlPullParserNewPullParser);
                                iF = f(xmlPullParserNewPullParser);
                                ttsExtentM = m(xmlPullParserNewPullParser);
                            }
                            FrameAndTickRate frameAndTickRate = frameAndTickRateH;
                            int i5 = iF;
                            TtsExtent ttsExtent = ttsExtentM;
                            if (e(name)) {
                                if ("head".equals(name)) {
                                    i(xmlPullParserNewPullParser, map, i5, ttsExtent, map2, map3);
                                } else {
                                    try {
                                        TtmlNode ttmlNodeJ = j(xmlPullParserNewPullParser, ttmlNode, map2, frameAndTickRate);
                                        arrayDeque.push(ttmlNodeJ);
                                        if (ttmlNode != null) {
                                            if (ttmlNode.m == null) {
                                                ttmlNode.m = new ArrayList();
                                            }
                                            ttmlNode.m.add(ttmlNodeJ);
                                        }
                                    } catch (SubtitleDecoderException e2) {
                                        Log.h("Suppressing parser error", e2);
                                        i4++;
                                    }
                                }
                                ttsExtentM = ttsExtent;
                                iF = i5;
                                frameAndTickRateH = frameAndTickRate;
                            } else {
                                Log.f("Ignoring unsupported tag: " + xmlPullParserNewPullParser.getName());
                            }
                            i4++;
                            ttsExtentM = ttsExtent;
                            iF = i5;
                            frameAndTickRateH = frameAndTickRate;
                        } catch (IOException e3) {
                            e = e3;
                            az.s("Unexpected error when reading input.", e);
                            return subtitle;
                        } catch (XmlPullParserException e4) {
                            e = e4;
                            az.s("Unable to decode source", e);
                            return subtitle;
                        }
                    } else if (eventType == 4) {
                        ttmlNode.getClass();
                        TtmlNode ttmlNodeA = TtmlNode.a(xmlPullParserNewPullParser.getText());
                        if (ttmlNode.m == null) {
                            ttmlNode.m = new ArrayList();
                        }
                        ttmlNode.m.add(ttmlNodeA);
                    } else if (eventType == 3) {
                        if (xmlPullParserNewPullParser.getName().equals("tt")) {
                            TtmlNode ttmlNode2 = (TtmlNode) arrayDeque.peek();
                            ttmlNode2.getClass();
                            ttmlSubtitle = new TtmlSubtitle(ttmlNode2, map, map2, map3);
                        }
                        arrayDeque.pop();
                    }
                } else {
                    subtitle = subtitle2;
                    if (eventType == 2) {
                        i4++;
                    } else if (eventType == 3) {
                        i4--;
                    }
                }
                xmlPullParserNewPullParser.next();
                eventType = xmlPullParserNewPullParser.getEventType();
                subtitle2 = subtitle;
            }
            subtitle = subtitle2;
            ttmlSubtitle.getClass();
            return ttmlSubtitle;
        } catch (IOException e5) {
            e = e5;
            subtitle = subtitle2;
        } catch (XmlPullParserException e6) {
            e = e6;
            subtitle = subtitle2;
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 1;
    }
}
