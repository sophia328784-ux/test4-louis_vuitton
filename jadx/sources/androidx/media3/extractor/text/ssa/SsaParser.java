package androidx.media3.extractor.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.ar.core.ImageMetadata;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.a;
import defpackage.fc;
import defpackage.r81;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class SsaParser implements SubtitleParser {
    public static final Pattern g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f16796a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SsaDialogueFormat f16797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16798c;
    public LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f16799e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f16800f;

    public SsaParser(List<byte[]> list) {
        this.f16799e = -3.4028235E38f;
        this.f16800f = -3.4028235E38f;
        this.f16798c = new ParsableByteArray();
        if (list == null || list.isEmpty()) {
            this.f16796a = false;
            this.f16797b = null;
            return;
        }
        this.f16796a = true;
        byte[] bArr = list.get(0);
        String str = Util.f14242a;
        Charset charset = StandardCharsets.UTF_8;
        String str2 = new String(bArr, charset);
        Preconditions.g(str2.startsWith("Format:"));
        SsaDialogueFormat ssaDialogueFormatA = SsaDialogueFormat.a(str2);
        ssaDialogueFormatA.getClass();
        this.f16797b = ssaDialogueFormatA;
        e(new ParsableByteArray(list.get(1)), charset);
    }

    public static int d(long j2, ArrayList arrayList, ArrayList arrayList2) {
        int i2;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i2 = 0;
                break;
            }
            if (((Long) arrayList.get(size)).longValue() == j2) {
                return size;
            }
            if (((Long) arrayList.get(size)).longValue() < j2) {
                i2 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i2, Long.valueOf(j2));
        arrayList2.add(i2, i2 == 0 ? new ArrayList() : new ArrayList((Collection) arrayList2.get(i2 - 1)));
        return i2;
    }

    public static long f(String str) {
        Matcher matcher = g.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String strGroup = matcher.group(1);
        String str2 = Util.f14242a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(strGroup) * 3600000000L);
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        Charset charset;
        long j2;
        ParsableByteArray parsableByteArray;
        int i4;
        float f2;
        Layout.Alignment alignment;
        int i5;
        int i6;
        int i7;
        float f3;
        float f4;
        int i8;
        int i9;
        int i10;
        int i11;
        int iA;
        int i12;
        SsaParser ssaParser = this;
        long j3 = outputOptions.f16685a;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ParsableByteArray parsableByteArray2 = ssaParser.f16798c;
        parsableByteArray2.L(i2 + i3, bArr);
        parsableByteArray2.N(i2);
        Charset charsetJ = parsableByteArray2.J();
        if (charsetJ == null) {
            charsetJ = StandardCharsets.UTF_8;
        }
        boolean z = ssaParser.f16796a;
        if (!z) {
            ssaParser.e(parsableByteArray2, charsetJ);
        }
        SsaDialogueFormat ssaDialogueFormatA = z ? ssaParser.f16797b : null;
        while (true) {
            String strN = parsableByteArray2.n(charsetJ);
            if (strN == null) {
                long j4 = j3;
                ArrayList arrayList3 = (j4 == -9223372036854775807L || !outputOptions.f16686b) ? null : new ArrayList();
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    List list = (List) arrayList.get(i13);
                    if (!list.isEmpty() || i13 == 0) {
                        if (i13 == arrayList.size() - 1) {
                            r81.b();
                            return;
                        }
                        long jLongValue = ((Long) arrayList2.get(i13)).longValue();
                        long jLongValue2 = ((Long) arrayList2.get(i13 + 1)).longValue();
                        CuesWithTiming cuesWithTiming = new CuesWithTiming(list, jLongValue, jLongValue2 - jLongValue);
                        if (j4 == -9223372036854775807L || jLongValue2 >= j4) {
                            consumer.accept(cuesWithTiming);
                        } else if (arrayList3 != null) {
                            arrayList3.add(cuesWithTiming);
                        }
                    }
                }
                if (arrayList3 != null) {
                    Iterator it = arrayList3.iterator();
                    while (it.hasNext()) {
                        consumer.accept((CuesWithTiming) it.next());
                    }
                    return;
                }
                return;
            }
            if (strN.startsWith("Format:")) {
                ssaDialogueFormatA = SsaDialogueFormat.a(strN);
            } else {
                if (strN.startsWith("Dialogue:")) {
                    if (ssaDialogueFormatA == null) {
                        Log.g("Skipping dialogue line before complete format: ".concat(strN));
                    } else {
                        int i14 = ssaDialogueFormatA.f16795f;
                        Preconditions.g(strN.startsWith("Dialogue:"));
                        String strSubstring = strN.substring(9);
                        int i15 = ssaDialogueFormatA.f16791a;
                        String[] strArrSplit = strSubstring.split(",", i14);
                        if (strArrSplit.length != i14) {
                            Log.g("Skipping dialogue line with fewer columns than format: ".concat(strN));
                        } else {
                            if (i15 != -1) {
                                try {
                                    i4 = Integer.parseInt(strArrSplit[i15].trim());
                                } catch (RuntimeException unused) {
                                    Log.g("Fail to parse layer: " + strArrSplit[i15]);
                                    i4 = 0;
                                }
                            } else {
                                i4 = 0;
                            }
                            long jF = f(strArrSplit[ssaDialogueFormatA.f16792b]);
                            if (jF == -9223372036854775807L) {
                                Log.g("Skipping invalid timing: ".concat(strN));
                            } else {
                                charset = charsetJ;
                                j2 = j3;
                                long jF2 = f(strArrSplit[ssaDialogueFormatA.f16793c]);
                                if (jF2 == -9223372036854775807L || jF2 <= jF) {
                                    parsableByteArray = parsableByteArray2;
                                    Log.g("Skipping invalid timing: ".concat(strN));
                                } else {
                                    LinkedHashMap linkedHashMap = ssaParser.d;
                                    SsaStyle ssaStyle = (linkedHashMap == null || (i12 = ssaDialogueFormatA.d) == -1) ? null : (SsaStyle) linkedHashMap.get(strArrSplit[i12].trim());
                                    String str = strArrSplit[ssaDialogueFormatA.f16794e];
                                    Matcher matcher = SsaStyle.Overrides.f16818a.matcher(str);
                                    PointF pointF = null;
                                    int i16 = -1;
                                    while (matcher.find()) {
                                        ParsableByteArray parsableByteArray3 = parsableByteArray2;
                                        String strGroup = matcher.group(1);
                                        strGroup.getClass();
                                        try {
                                            PointF pointFA = SsaStyle.Overrides.a(strGroup);
                                            if (pointFA != null) {
                                                pointF = pointFA;
                                            }
                                        } catch (RuntimeException unused2) {
                                        }
                                        try {
                                            Matcher matcher2 = SsaStyle.Overrides.d.matcher(strGroup);
                                            if (matcher2.find()) {
                                                String strGroup2 = matcher2.group(1);
                                                strGroup2.getClass();
                                                iA = SsaStyle.a(strGroup2);
                                            } else {
                                                iA = -1;
                                            }
                                            if (iA != -1) {
                                                i16 = iA;
                                            }
                                        } catch (RuntimeException unused3) {
                                        }
                                        parsableByteArray2 = parsableByteArray3;
                                    }
                                    parsableByteArray = parsableByteArray2;
                                    String strReplace = SsaStyle.Overrides.f16818a.matcher(str).replaceAll("").replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                    float f5 = ssaParser.f16799e;
                                    float f6 = ssaParser.f16800f;
                                    SpannableString spannableString = new SpannableString(strReplace);
                                    Cue.Builder builder = new Cue.Builder();
                                    builder.f14102a = spannableString;
                                    builder.f14103b = null;
                                    builder.r = i4;
                                    if (ssaStyle != null) {
                                        f2 = -3.4028235E38f;
                                        boolean z2 = ssaStyle.g;
                                        Integer num = ssaStyle.d;
                                        Integer num2 = ssaStyle.f16803c;
                                        if (num2 != null) {
                                            i8 = 0;
                                            i9 = 33;
                                            spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                        } else {
                                            i8 = 0;
                                            i9 = 33;
                                        }
                                        if (ssaStyle.f16808j == 3 && num != null) {
                                            spannableString.setSpan(new BackgroundColorSpan(num.intValue()), i8, spannableString.length(), i9);
                                        }
                                        float f7 = ssaStyle.f16804e;
                                        if (f7 != -3.4028235E38f && f6 != -3.4028235E38f) {
                                            builder.f14110k = f7 / f6;
                                            builder.f14109j = 1;
                                        }
                                        boolean z3 = ssaStyle.f16805f;
                                        if (z3 && z2) {
                                            i10 = 0;
                                            i11 = 33;
                                            spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                        } else {
                                            i10 = 0;
                                            i11 = 33;
                                            if (z3) {
                                                spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                            } else if (z2 != 0) {
                                                spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                            }
                                        }
                                        if (ssaStyle.f16806h) {
                                            spannableString.setSpan(new UnderlineSpan(), i10, spannableString.length(), i11);
                                        }
                                        if (ssaStyle.f16807i) {
                                            spannableString.setSpan(new StrikethroughSpan(), i10, spannableString.length(), i11);
                                        }
                                    } else {
                                        f5 = f5;
                                        f6 = f6;
                                        f2 = -3.4028235E38f;
                                    }
                                    if (i16 == -1) {
                                        i16 = ssaStyle != null ? ssaStyle.f16802b : -1;
                                    }
                                    switch (i16) {
                                        case 0:
                                        default:
                                            a.u(i16, "Unknown alignment: ");
                                        case -1:
                                            alignment = null;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            alignment = Layout.Alignment.ALIGN_NORMAL;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            alignment = Layout.Alignment.ALIGN_CENTER;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                            break;
                                    }
                                    builder.f14104c = alignment;
                                    int i17 = Integer.MIN_VALUE;
                                    switch (i16) {
                                        case 0:
                                        default:
                                            a.u(i16, "Unknown alignment: ");
                                        case -1:
                                            i5 = Integer.MIN_VALUE;
                                            break;
                                        case 1:
                                        case 4:
                                        case 7:
                                            i5 = 0;
                                            break;
                                        case 2:
                                        case 5:
                                        case 8:
                                            i5 = 1;
                                            break;
                                        case 3:
                                        case 6:
                                        case 9:
                                            i5 = 2;
                                            break;
                                    }
                                    builder.f14108i = i5;
                                    switch (i16) {
                                        case -1:
                                            break;
                                        case 0:
                                        default:
                                            a.u(i16, "Unknown alignment: ");
                                            break;
                                        case 1:
                                        case 2:
                                        case 3:
                                            i17 = 2;
                                            break;
                                        case 4:
                                        case 5:
                                        case 6:
                                            i17 = 1;
                                            break;
                                        case 7:
                                        case 8:
                                        case 9:
                                            i17 = 0;
                                            break;
                                    }
                                    builder.g = i17;
                                    if (pointF == null || f6 == f2 || f5 == f2) {
                                        int i18 = builder.f14108i;
                                        if (i18 != 0) {
                                            i6 = 1;
                                            if (i18 != 1) {
                                                i7 = 2;
                                                f3 = i18 != 2 ? f2 : 0.95f;
                                            } else {
                                                i7 = 2;
                                                f3 = 0.5f;
                                            }
                                        } else {
                                            i6 = 1;
                                            i7 = 2;
                                            f3 = 0.05f;
                                        }
                                        builder.f14107h = f3;
                                        if (i17 == 0) {
                                            f4 = 0.05f;
                                        } else if (i17 != i6) {
                                            f4 = i17 != i7 ? f2 : 0.95f;
                                        } else {
                                            f4 = 0.5f;
                                        }
                                        builder.f14105e = f4;
                                        builder.f14106f = 0;
                                    } else {
                                        builder.f14107h = pointF.x / f5;
                                        builder.f14105e = pointF.y / f6;
                                        builder.f14106f = 0;
                                    }
                                    Cue cueA = builder.a();
                                    int iD = d(jF2, arrayList2, arrayList);
                                    for (int iD2 = d(jF, arrayList2, arrayList); iD2 < iD; iD2++) {
                                        ((List) arrayList.get(iD2)).add(cueA);
                                    }
                                }
                            }
                        }
                    }
                    charset = charsetJ;
                    j2 = j3;
                    parsableByteArray = parsableByteArray2;
                } else {
                    charset = charsetJ;
                    j2 = j3;
                    parsableByteArray = parsableByteArray2;
                }
                ssaParser = this;
                charsetJ = charset;
                j3 = j2;
                ssaDialogueFormatA = ssaDialogueFormatA;
                parsableByteArray2 = parsableByteArray;
            }
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 1;
    }

    /* JADX WARN: Code duplicated, block: B:169:0x02e0  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void e(ParsableByteArray parsableByteArray, Charset charset) {
        int i2;
        SsaStyle ssaStyle;
        while (true) {
            String strN = parsableByteArray.n(charset);
            if (strN == null) {
                return;
            }
            int i3 = 2;
            int i4 = 0;
            if ("[Script Info]".equalsIgnoreCase(strN)) {
                while (true) {
                    String strN2 = parsableByteArray.n(charset);
                    if (strN2 == null) {
                        break;
                    }
                    if (parsableByteArray.a() != 0) {
                        int iH = parsableByteArray.h(charset);
                        if ((iH != 0 ? Ints.b(iH >>> 8) : ImageMetadata.STATISTICS_FACE_DETECT_MODE) == 91) {
                            break;
                        }
                    }
                    String[] strArrSplit = strN2.split(":");
                    if (strArrSplit.length == 2) {
                        String strC = Ascii.c(strArrSplit[0].trim());
                        strC.getClass();
                        if (strC.equals("playresx")) {
                            this.f16799e = Float.parseFloat(strArrSplit[1].trim());
                        } else if (strC.equals("playresy")) {
                            try {
                                this.f16800f = Float.parseFloat(strArrSplit[1].trim());
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else if ("[V4+ Styles]".equalsIgnoreCase(strN)) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                while (true) {
                    SsaStyle.Format format = null;
                    while (true) {
                        String strN3 = parsableByteArray.n(charset);
                        if (strN3 != null) {
                            if (parsableByteArray.a() != 0) {
                                int iH2 = parsableByteArray.h(charset);
                                if ((iH2 != 0 ? Ints.b(iH2 >>> 8) : ImageMetadata.STATISTICS_FACE_DETECT_MODE) == 91) {
                                }
                            }
                            int i5 = -1;
                            if (strN3.startsWith("Format:")) {
                                String[] strArrSplit2 = TextUtils.split(strN3.substring(7), ",");
                                int i6 = -1;
                                int i7 = -1;
                                int i8 = -1;
                                int i9 = -1;
                                int i10 = -1;
                                int i11 = -1;
                                int i12 = -1;
                                int i13 = -1;
                                int i14 = -1;
                                int i15 = -1;
                                for (int i16 = i4; i16 < strArrSplit2.length; i16++) {
                                    String strC2 = Ascii.c(strArrSplit2[i16].trim());
                                    strC2.getClass();
                                    switch (strC2.hashCode()) {
                                        case -1178781136:
                                            i2 = strC2.equals("italic") ? i4 : -1;
                                            break;
                                        case -1026963764:
                                            i2 = strC2.equals("underline") ? 1 : -1;
                                            break;
                                        case -192095652:
                                            i2 = strC2.equals("strikeout") ? i3 : -1;
                                            break;
                                        case -70925746:
                                            i2 = strC2.equals("primarycolour") ? 3 : -1;
                                            break;
                                        case 3029637:
                                            i2 = strC2.equals("bold") ? 4 : -1;
                                            break;
                                        case 3373707:
                                            i2 = strC2.equals("name") ? 5 : -1;
                                            break;
                                        case 366554320:
                                            i2 = strC2.equals("fontsize") ? 6 : -1;
                                            break;
                                        case 767321349:
                                            i2 = strC2.equals("borderstyle") ? 7 : -1;
                                            break;
                                        case 1767875043:
                                            i2 = strC2.equals("alignment") ? 8 : -1;
                                            break;
                                        case 1988365454:
                                            i2 = strC2.equals("outlinecolour") ? 9 : -1;
                                            break;
                                        default:
                                            i2 = -1;
                                            break;
                                    }
                                    switch (i2) {
                                        case 0:
                                            i12 = i16;
                                            break;
                                        case 1:
                                            i13 = i16;
                                            break;
                                        case 2:
                                            i14 = i16;
                                            break;
                                        case 3:
                                            i8 = i16;
                                            break;
                                        case 4:
                                            i11 = i16;
                                            break;
                                        case 5:
                                            i6 = i16;
                                            break;
                                        case 6:
                                            i10 = i16;
                                            break;
                                        case 7:
                                            i15 = i16;
                                            break;
                                        case 8:
                                            i7 = i16;
                                            break;
                                        case 9:
                                            i9 = i16;
                                            break;
                                    }
                                }
                                if (i6 != -1) {
                                    format = new SsaStyle.Format(i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, strArrSplit2.length);
                                }
                            } else {
                                if (strN3.startsWith("Style:")) {
                                    if (format == null) {
                                        Log.g("Skipping 'Style:' line before 'Format:' line: ".concat(strN3));
                                    } else {
                                        Preconditions.g(strN3.startsWith("Style:"));
                                        String[] strArrSplit3 = TextUtils.split(strN3.substring(6), ",");
                                        int length = strArrSplit3.length;
                                        int i17 = format.f16817k;
                                        if (length != i17) {
                                            int length2 = strArrSplit3.length;
                                            String str = Util.f14242a;
                                            Locale locale = Locale.US;
                                            StringBuilder sbP = fc.p(i17, length2, "Skipping malformed 'Style:' line (expected ", " values, found ", "): '");
                                            sbP.append(strN3);
                                            sbP.append("'");
                                            Log.g(sbP.toString());
                                        } else {
                                            try {
                                                String strTrim = strArrSplit3[format.f16809a].trim();
                                                int i18 = format.f16810b;
                                                int iA = i18 != -1 ? SsaStyle.a(strArrSplit3[i18].trim()) : -1;
                                                int i19 = format.f16811c;
                                                Integer numC = i19 != -1 ? SsaStyle.c(strArrSplit3[i19].trim()) : null;
                                                int i20 = format.d;
                                                Integer numC2 = i20 != -1 ? SsaStyle.c(strArrSplit3[i20].trim()) : null;
                                                int i21 = format.f16812e;
                                                float f2 = -3.4028235E38f;
                                                if (i21 != -1) {
                                                    String strTrim2 = strArrSplit3[i21].trim();
                                                    try {
                                                        f2 = Float.parseFloat(strTrim2);
                                                    } catch (NumberFormatException e2) {
                                                        Log.h("Failed to parse font size: '" + strTrim2 + "'", e2);
                                                    }
                                                }
                                                float f3 = f2;
                                                int i22 = format.f16813f;
                                                boolean z = i22 != -1 && SsaStyle.b(strArrSplit3[i22].trim());
                                                int i23 = format.g;
                                                boolean z2 = i23 != -1 && SsaStyle.b(strArrSplit3[i23].trim());
                                                int i24 = format.f16814h;
                                                boolean z3 = i24 != -1 && SsaStyle.b(strArrSplit3[i24].trim());
                                                int i25 = format.f16815i;
                                                boolean z4 = i25 != -1 && SsaStyle.b(strArrSplit3[i25].trim());
                                                int i26 = format.f16816j;
                                                if (i26 != -1) {
                                                    String strTrim3 = strArrSplit3[i26].trim();
                                                    try {
                                                        int i27 = Integer.parseInt(strTrim3.trim());
                                                        if (i27 == 1 || i27 == 3) {
                                                            i5 = i27;
                                                        } else {
                                                            Log.g("Ignoring unknown BorderStyle: " + strTrim3);
                                                        }
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                }
                                                ssaStyle = new SsaStyle(strTrim, iA, numC, numC2, f3, z, z2, z3, z4, i5);
                                            } catch (RuntimeException e3) {
                                                Log.h("Skipping malformed 'Style:' line: '" + strN3 + "'", e3);
                                                ssaStyle = null;
                                            }
                                            if (ssaStyle != null) {
                                                linkedHashMap.put(ssaStyle.f16801a, ssaStyle);
                                            }
                                        }
                                        ssaStyle = null;
                                        if (ssaStyle != null) {
                                            linkedHashMap.put(ssaStyle.f16801a, ssaStyle);
                                        }
                                    }
                                }
                                i3 = 2;
                                i4 = 0;
                            }
                        }
                    }
                }
                this.d = linkedHashMap;
            } else if ("[V4 Styles]".equalsIgnoreCase(strN)) {
                Log.f("[V4 Styles] are not supported");
            } else if ("[Events]".equalsIgnoreCase(strN)) {
                return;
            }
        }
    }

    public SsaParser() {
        this(null);
    }
}
