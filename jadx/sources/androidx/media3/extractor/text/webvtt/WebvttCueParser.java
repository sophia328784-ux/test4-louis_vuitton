package androidx.media3.extractor.text.webvtt;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.HorizontalTextInVerticalContextSpan;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.VoiceSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.md;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class WebvttCueParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f16909a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Pattern f16910b = Pattern.compile("(\\S+?):(\\S+)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map f16911c;
    public static final Map d;

    public static class Element {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f16912c = new a();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StartTag f16913a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16914b;

        public Element(StartTag startTag, int i2) {
            this.f16913a = startTag;
            this.f16914b = i2;
        }
    }

    public static final class StartTag {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f16915a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f16917c;
        public final Set d;

        public StartTag(String str, int i2, String str2, Set set) {
            this.f16916b = i2;
            this.f16915a = str;
            this.f16917c = str2;
            this.d = set;
        }
    }

    public static final class StyleMatch implements Comparable<StyleMatch> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16918b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WebvttCssStyle f16919c;

        public StyleMatch(int i2, WebvttCssStyle webvttCssStyle) {
            this.f16918b = i2;
            this.f16919c = webvttCssStyle;
        }

        @Override // java.lang.Comparable
        public final int compareTo(StyleMatch styleMatch) {
            return Integer.compare(this.f16918b, styleMatch.f16918b);
        }
    }

    public static final class WebvttCueInfoBuilder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CharSequence f16922c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f16920a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f16921b = 0;
        public int d = 2;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f16923e = -3.4028235E38f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f16924f = 1;
        public int g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f16925h = -3.4028235E38f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16926i = Integer.MIN_VALUE;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f16927j = 1.0f;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f16928k = Integer.MIN_VALUE;

        /* JADX WARN: Code duplicated, block: B:20:0x0032  */
        /* JADX WARN: Code duplicated, block: B:21:0x0034  */
        /* JADX WARN: Code duplicated, block: B:29:0x004e  */
        /* JADX WARN: Code duplicated, block: B:31:0x0054  */
        /* JADX WARN: Code duplicated, block: B:39:0x006a  */
        public final Cue.Builder a() {
            Layout.Alignment alignment;
            float f2 = this.f16925h;
            float f3 = -3.4028235E38f;
            if (f2 == -3.4028235E38f) {
                int i2 = this.d;
                if (i2 != 4) {
                    f2 = i2 != 5 ? 0.5f : 1.0f;
                } else {
                    f2 = 0.0f;
                }
            }
            int i3 = this.f16926i;
            if (i3 == Integer.MIN_VALUE) {
                int i4 = this.d;
                if (i4 == 1) {
                    i3 = 0;
                } else if (i4 == 3) {
                    i3 = 2;
                } else if (i4 == 4) {
                    i3 = 0;
                } else if (i4 != 5) {
                    i3 = 1;
                } else {
                    i3 = 2;
                }
            }
            Cue.Builder builder = new Cue.Builder();
            int i5 = this.d;
            if (i5 == 1) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i5 == 2) {
                alignment = Layout.Alignment.ALIGN_CENTER;
            } else if (i5 == 3) {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            } else if (i5 == 4) {
                alignment = Layout.Alignment.ALIGN_NORMAL;
            } else if (i5 != 5) {
                defpackage.a.u(i5, "Unknown textAlignment: ");
                alignment = null;
            } else {
                alignment = Layout.Alignment.ALIGN_OPPOSITE;
            }
            builder.f14104c = alignment;
            float f4 = this.f16923e;
            int i6 = this.f16924f;
            if (f4 != -3.4028235E38f && i6 == 0 && (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM || f4 > 1.0f)) {
                f3 = 1.0f;
            } else if (f4 != -3.4028235E38f) {
                f3 = f4;
            } else if (i6 == 0) {
                f3 = 1.0f;
            }
            builder.f14105e = f3;
            builder.f14106f = i6;
            builder.g = this.g;
            builder.f14107h = f2;
            builder.f14108i = i3;
            float f5 = this.f16927j;
            if (i3 == 0) {
                f2 = 1.0f - f2;
            } else if (i3 == 1) {
                f2 = f2 <= 0.5f ? f2 * 2.0f : (1.0f - f2) * 2.0f;
            } else if (i3 != 2) {
                md.k(String.valueOf(i3));
                return null;
            }
            builder.l = Math.min(f5, f2);
            builder.p = this.f16928k;
            CharSequence charSequence = this.f16922c;
            if (charSequence != null) {
                builder.b(charSequence);
            }
            return builder;
        }
    }

    static {
        HashMap map = new HashMap();
        map.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        f16911c = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        map2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        map2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        map2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        map2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        map2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        map2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        map2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        d = Collections.unmodifiableMap(map2);
    }

    public static void a(String str, StartTag startTag, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        int i2;
        int i3;
        int i4;
        int i5 = startTag.f16916b;
        int length = spannableStringBuilder.length();
        String str2 = startTag.f16915a;
        str2.getClass();
        int i6 = -1;
        switch (str2) {
            case "":
            case "lang":
                break;
            case "b":
                spannableStringBuilder.setSpan(new StyleSpan(1), i5, length, 33);
                break;
            case "c":
                for (String str3 : startTag.d) {
                    Map map = f16911c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i5, length, 33);
                    } else {
                        Map map2 = d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i5, length, 33);
                        }
                    }
                }
                break;
            case "i":
                spannableStringBuilder.setSpan(new StyleSpan(2), i5, length, 33);
                break;
            case "u":
                spannableStringBuilder.setSpan(new UnderlineSpan(), i5, length, 33);
                break;
            case "v":
                spannableStringBuilder.setSpan(new VoiceSpan(startTag.f16917c), i5, length, 33);
                break;
            case "ruby":
                int iC = c(list2, str, startTag);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, Element.f16912c);
                int i7 = startTag.f16916b;
                int i8 = 0;
                int length2 = 0;
                while (i8 < arrayList.size()) {
                    if ("rt".equals(((Element) arrayList.get(i8)).f16913a.f16915a)) {
                        Element element = (Element) arrayList.get(i8);
                        int iC2 = c(list2, str, element.f16913a);
                        if (iC2 == i6) {
                            iC2 = iC != i6 ? iC : 1;
                        }
                        int i9 = element.f16913a.f16916b - length2;
                        int i10 = element.f16914b - length2;
                        CharSequence charSequenceSubSequence = spannableStringBuilder.subSequence(i9, i10);
                        spannableStringBuilder.delete(i9, i10);
                        spannableStringBuilder.setSpan(new RubySpan(charSequenceSubSequence.toString(), iC2), i7, i9, 33);
                        length2 = charSequenceSubSequence.length() + length2;
                        i7 = i9;
                    }
                    i8++;
                    i6 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList arrayListB = b(list2, str, startTag);
        for (int i11 = 0; i11 < arrayListB.size(); i11++) {
            WebvttCssStyle webvttCssStyle = ((StyleMatch) arrayListB.get(i11)).f16919c;
            if (webvttCssStyle != null) {
                int i12 = webvttCssStyle.l;
                if (i12 == -1 && webvttCssStyle.m == -1) {
                    i2 = -1;
                } else {
                    i2 = (webvttCssStyle.m == 1 ? (char) 2 : (char) 0) | (i12 == 1 ? (char) 1 : (char) 0);
                }
                if (i2 != -1) {
                    int i13 = webvttCssStyle.l;
                    if (i13 == -1 && webvttCssStyle.m == -1) {
                        i4 = -1;
                        i3 = 1;
                    } else {
                        i3 = 1;
                        i4 = (i13 == 1 ? 1 : 0) | (webvttCssStyle.m == 1 ? 2 : 0);
                    }
                    SpanUtil.a(spannableStringBuilder, new StyleSpan(i4), i5, length);
                } else {
                    i3 = 1;
                }
                if (webvttCssStyle.f16904j == i3) {
                    spannableStringBuilder.setSpan(new StrikethroughSpan(), i5, length, 33);
                }
                if (webvttCssStyle.f16905k == i3) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i5, length, 33);
                }
                if (webvttCssStyle.g) {
                    if (!webvttCssStyle.g) {
                        md.k("Font color not defined");
                        return;
                    }
                    SpanUtil.a(spannableStringBuilder, new ForegroundColorSpan(webvttCssStyle.f16901f), i5, length);
                }
                if (webvttCssStyle.f16903i) {
                    if (!webvttCssStyle.f16903i) {
                        md.k("Background color not defined.");
                        return;
                    }
                    SpanUtil.a(spannableStringBuilder, new BackgroundColorSpan(webvttCssStyle.f16902h), i5, length);
                }
                if (webvttCssStyle.f16900e != null) {
                    SpanUtil.a(spannableStringBuilder, new TypefaceSpan(webvttCssStyle.f16900e), i5, length);
                }
                int i14 = webvttCssStyle.n;
                if (i14 == 1) {
                    SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) webvttCssStyle.o, true), i5, length);
                } else if (i14 == 2) {
                    SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.o), i5, length);
                } else if (i14 == 3) {
                    SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.o / 100.0f), i5, length);
                }
                if (webvttCssStyle.q) {
                    spannableStringBuilder.setSpan(new HorizontalTextInVerticalContextSpan(), i5, length, 33);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5, types: [int] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public static ArrayList b(List list, String str, StartTag startTag) {
        ?? r4;
        int size;
        boolean zIsEmpty;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            WebvttCssStyle webvttCssStyle = (WebvttCssStyle) list.get(i2);
            String str2 = startTag.f16915a;
            Set set = startTag.d;
            String str3 = startTag.f16917c;
            if (webvttCssStyle.f16897a.isEmpty() && webvttCssStyle.f16898b.isEmpty() && webvttCssStyle.f16899c.isEmpty() && webvttCssStyle.d.isEmpty()) {
                zIsEmpty = TextUtils.isEmpty(str2);
            } else {
                int iA = WebvttCssStyle.a(WebvttCssStyle.a(WebvttCssStyle.a(0, 1073741824, webvttCssStyle.f16897a, str), 2, webvttCssStyle.f16898b, str2), 4, webvttCssStyle.d, str3);
                if (iA == -1 || !set.containsAll(webvttCssStyle.f16899c)) {
                    r4 = 0;
                } else {
                    size = iA + (webvttCssStyle.f16899c.size() * 4);
                }
            }
            if (r4 > 0) {
                r4 = size;
                r4 = zIsEmpty;
                arrayList.add(new StyleMatch(r4, webvttCssStyle));
            } else {
                r4 = size;
                r4 = zIsEmpty;
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List list, String str, StartTag startTag) {
        ArrayList arrayListB = b(list, str, startTag);
        for (int i2 = 0; i2 < arrayListB.size(); i2++) {
            int i3 = ((StyleMatch) arrayListB.get(i2)).f16919c.p;
            if (i3 != -1) {
                return i3;
            }
        }
        return -1;
    }

    public static WebvttCueInfo d(String str, Matcher matcher, ParsableByteArray parsableByteArray, ArrayList arrayList) {
        WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueInfoBuilder();
        try {
            String strGroup = matcher.group(1);
            strGroup.getClass();
            webvttCueInfoBuilder.f16920a = WebvttParserUtil.c(strGroup);
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            webvttCueInfoBuilder.f16921b = WebvttParserUtil.c(strGroup2);
            String strGroup3 = matcher.group(3);
            strGroup3.getClass();
            e(strGroup3, webvttCueInfoBuilder);
            StringBuilder sb = new StringBuilder();
            parsableByteArray.getClass();
            String strN = parsableByteArray.n(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(strN)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(strN.trim());
                strN = parsableByteArray.n(StandardCharsets.UTF_8);
            }
            webvttCueInfoBuilder.f16922c = f(str, sb.toString(), arrayList);
            return new WebvttCueInfo(webvttCueInfoBuilder.a().a(), webvttCueInfoBuilder.f16920a, webvttCueInfoBuilder.f16921b);
        } catch (IllegalArgumentException unused) {
            Log.g("Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void e(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        Matcher matcher = f16910b.matcher(str);
        while (matcher.find()) {
            int i2 = 1;
            String strGroup = matcher.group(1);
            strGroup.getClass();
            String strGroup2 = matcher.group(2);
            strGroup2.getClass();
            try {
                if ("line".equals(strGroup)) {
                    g(strGroup2, webvttCueInfoBuilder);
                } else {
                    if ("align".equals(strGroup)) {
                        switch (strGroup2) {
                            case "center":
                            case "middle":
                                i2 = 2;
                                break;
                            case "end":
                                i2 = 3;
                                break;
                            case "left":
                                i2 = 4;
                                break;
                            case "right":
                                i2 = 5;
                                break;
                            case "start":
                                break;
                            default:
                                Log.g("Invalid alignment value: ".concat(strGroup2));
                                i2 = 2;
                                break;
                        }
                        webvttCueInfoBuilder.d = i2;
                    } else if ("position".equals(strGroup)) {
                        int iIndexOf = strGroup2.indexOf(44);
                        if (iIndexOf != -1) {
                            String strSubstring = strGroup2.substring(iIndexOf + 1);
                            switch (strSubstring) {
                                case "line-left":
                                case "start":
                                    i2 = 0;
                                    break;
                                case "center":
                                case "middle":
                                    break;
                                case "line-right":
                                case "end":
                                    i2 = 2;
                                    break;
                                default:
                                    Log.g("Invalid anchor value: ".concat(strSubstring));
                                    i2 = Integer.MIN_VALUE;
                                    break;
                            }
                            webvttCueInfoBuilder.f16926i = i2;
                            strGroup2 = strGroup2.substring(0, iIndexOf);
                        }
                        webvttCueInfoBuilder.f16925h = WebvttParserUtil.b(strGroup2);
                    } else if ("size".equals(strGroup)) {
                        webvttCueInfoBuilder.f16927j = WebvttParserUtil.b(strGroup2);
                    } else if ("vertical".equals(strGroup)) {
                        if (strGroup2.equals("lr")) {
                            i2 = 2;
                        } else if (!strGroup2.equals("rl")) {
                            Log.g("Invalid 'vertical' value: ".concat(strGroup2));
                            i2 = Integer.MIN_VALUE;
                        }
                        webvttCueInfoBuilder.f16928k = i2;
                    } else {
                        Log.g("Unknown cue setting " + strGroup + ":" + strGroup2);
                    }
                }
            } catch (NumberFormatException unused) {
                Log.g("Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    public static SpannedString f(String str, String str2, List list) {
        char c2;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            String strTrim = "";
            if (i2 >= str2.length()) {
                while (!arrayDeque.isEmpty()) {
                    a(str, (StartTag) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                a(str, new StartTag("", 0, "", Collections.EMPTY_SET), Collections.EMPTY_LIST, spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
            char cCharAt = str2.charAt(i2);
            if (cCharAt == '&') {
                i2++;
                int iIndexOf = str2.indexOf(59, i2);
                int iIndexOf2 = str2.indexOf(32, i2);
                if (iIndexOf == -1) {
                    iIndexOf = iIndexOf2;
                } else if (iIndexOf2 != -1) {
                    iIndexOf = Math.min(iIndexOf, iIndexOf2);
                }
                if (iIndexOf != -1) {
                    String strSubstring = str2.substring(i2, iIndexOf);
                    switch (strSubstring) {
                        case "gt":
                            spannableStringBuilder.append('>');
                            break;
                        case "lt":
                            spannableStringBuilder.append('<');
                            break;
                        case "amp":
                            spannableStringBuilder.append('&');
                            break;
                        case "nbsp":
                            spannableStringBuilder.append(' ');
                            break;
                        default:
                            Log.g("ignoring unsupported entity: '&" + strSubstring + ";'");
                            break;
                    }
                    if (iIndexOf == iIndexOf2) {
                        spannableStringBuilder.append((CharSequence) " ");
                    }
                    i2 = iIndexOf + 1;
                } else {
                    spannableStringBuilder.append(cCharAt);
                }
            } else if (cCharAt != '<') {
                spannableStringBuilder.append(cCharAt);
                i2++;
            } else {
                int length = i2 + 1;
                if (length < str2.length()) {
                    boolean z = str2.charAt(length) == '/';
                    int iIndexOf3 = str2.indexOf(62, length);
                    length = iIndexOf3 == -1 ? str2.length() : iIndexOf3 + 1;
                    int i3 = length - 2;
                    boolean z2 = str2.charAt(i3) == '/';
                    int i4 = i2 + (z ? 2 : 1);
                    if (!z2) {
                        i3 = length - 1;
                    }
                    String strSubstring2 = str2.substring(i4, i3);
                    if (!strSubstring2.trim().isEmpty()) {
                        String strTrim2 = strSubstring2.trim();
                        Preconditions.g(!strTrim2.isEmpty());
                        String str3 = Util.f14242a;
                        String str4 = strTrim2.split("[ \\.]", 2)[0];
                        str4.getClass();
                        switch (str4) {
                            case "b":
                            case "c":
                            case "i":
                            case "u":
                            case "v":
                            case "rt":
                            case "lang":
                            case "ruby":
                                if (!z) {
                                    if (!z2) {
                                        int length2 = spannableStringBuilder.length();
                                        String strTrim3 = strSubstring2.trim();
                                        Preconditions.g(!strTrim3.isEmpty());
                                        int iIndexOf4 = strTrim3.indexOf(" ");
                                        if (iIndexOf4 == -1) {
                                            c2 = 0;
                                        } else {
                                            strTrim = strTrim3.substring(iIndexOf4).trim();
                                            c2 = 0;
                                            strTrim3 = strTrim3.substring(0, iIndexOf4);
                                        }
                                        String[] strArrSplit = strTrim3.split("\\.", -1);
                                        String str5 = strArrSplit[c2];
                                        HashSet hashSet = new HashSet();
                                        for (int i5 = 1; i5 < strArrSplit.length; i5++) {
                                            hashSet.add(strArrSplit[i5]);
                                        }
                                        arrayDeque.push(new StartTag(str5, length2, strTrim, hashSet));
                                    }
                                    break;
                                } else {
                                    while (!arrayDeque.isEmpty()) {
                                        StartTag startTag = (StartTag) arrayDeque.pop();
                                        a(str, startTag, arrayList, spannableStringBuilder, list);
                                        if (arrayDeque.isEmpty()) {
                                            arrayList.clear();
                                        } else {
                                            arrayList.add(new Element(startTag, spannableStringBuilder.length()));
                                        }
                                        if (startTag.f16915a.equals(str4)) {
                                            break;
                                        }
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                }
                i2 = length;
            }
        }
    }

    public static void g(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf != -1) {
            String strSubstring = str.substring(iIndexOf + 1);
            int i2 = 2;
            switch (strSubstring) {
                case "center":
                case "middle":
                    i2 = 1;
                    break;
                case "end":
                    break;
                case "start":
                    i2 = 0;
                    break;
                default:
                    Log.g("Invalid anchor value: ".concat(strSubstring));
                    i2 = Integer.MIN_VALUE;
                    break;
            }
            webvttCueInfoBuilder.g = i2;
            str = str.substring(0, iIndexOf);
        }
        if (str.endsWith("%")) {
            webvttCueInfoBuilder.f16923e = WebvttParserUtil.b(str);
            webvttCueInfoBuilder.f16924f = 0;
        } else {
            webvttCueInfoBuilder.f16923e = Integer.parseInt(str);
            webvttCueInfoBuilder.f16924f = 1;
        }
    }
}
