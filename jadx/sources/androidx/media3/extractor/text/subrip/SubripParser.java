package androidx.media3.extractor.text.subrip;

import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.collect.ImmutableList;
import defpackage.ct0;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class SubripParser implements SubtitleParser {
    public static final Pattern d = Pattern.compile("\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d{3}))?)\\s*");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Pattern f16821e = Pattern.compile("\\{\\\\.*?\\}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StringBuilder f16822a = new StringBuilder();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f16823b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16824c = new ParsableByteArray();

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:30:0x006b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0089  */
    /* JADX WARN: Code duplicated, block: B:54:0x00af  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b2  */
    public static Cue d(Spanned spanned, String str) {
        float f2;
        Cue.Builder builder = new Cue.Builder();
        builder.f14102a = spanned;
        builder.f14103b = null;
        if (str == null) {
            return builder.a();
        }
        switch (str.hashCode()) {
            case -685620710:
                if (!str.equals("{\\an1}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 0;
                }
                break;
            case -685620679:
                str.equals("{\\an2}");
                builder.f14108i = 1;
                break;
            case -685620648:
                if (!str.equals("{\\an3}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 2;
                }
                break;
            case -685620617:
                if (!str.equals("{\\an4}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 0;
                }
                break;
            case -685620586:
                str.equals("{\\an5}");
                builder.f14108i = 1;
                break;
            case -685620555:
                if (!str.equals("{\\an6}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 2;
                }
                break;
            case -685620524:
                if (!str.equals("{\\an7}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 0;
                }
                break;
            case -685620493:
                str.equals("{\\an8}");
                builder.f14108i = 1;
                break;
            case -685620462:
                if (!str.equals("{\\an9}")) {
                    builder.f14108i = 1;
                } else {
                    builder.f14108i = 2;
                }
                break;
            default:
                builder.f14108i = 1;
                break;
        }
        switch (str.hashCode()) {
            case -685620710:
                if (!str.equals("{\\an1}")) {
                    builder.g = 1;
                } else {
                    builder.g = 2;
                }
                break;
            case -685620679:
                if (!str.equals("{\\an2}")) {
                    builder.g = 1;
                } else {
                    builder.g = 2;
                }
                break;
            case -685620648:
                if (!str.equals("{\\an3}")) {
                    builder.g = 1;
                } else {
                    builder.g = 2;
                }
                break;
            case -685620617:
                str.equals("{\\an4}");
                builder.g = 1;
                break;
            case -685620586:
                str.equals("{\\an5}");
                builder.g = 1;
                break;
            case -685620555:
                str.equals("{\\an6}");
                builder.g = 1;
                break;
            case -685620524:
                if (!str.equals("{\\an7}")) {
                    builder.g = 1;
                } else {
                    builder.g = 0;
                }
                break;
            case -685620493:
                if (!str.equals("{\\an8}")) {
                    builder.g = 1;
                } else {
                    builder.g = 0;
                }
                break;
            case -685620462:
                if (!str.equals("{\\an9}")) {
                    builder.g = 1;
                } else {
                    builder.g = 0;
                }
                break;
            default:
                builder.g = 1;
                break;
        }
        int i2 = builder.f14108i;
        float f3 = 0.08f;
        if (i2 == 0) {
            f2 = 0.08f;
        } else if (i2 == 1) {
            f2 = 0.5f;
        } else {
            if (i2 != 2) {
                ct0.c();
                return null;
            }
            f2 = 0.92f;
        }
        builder.f14107h = f2;
        int i3 = builder.g;
        if (i3 != 0) {
            if (i3 == 1) {
                f3 = 0.5f;
            } else {
                if (i3 != 2) {
                    ct0.c();
                    return null;
                }
                f3 = 0.92f;
            }
        }
        builder.f14105e = f3;
        builder.f14106f = 0;
        return builder.a();
    }

    public static long e(Matcher matcher, int i2) {
        String strGroup = matcher.group(i2 + 1);
        long j2 = strGroup != null ? Long.parseLong(strGroup) * 3600000 : 0L;
        String strGroup2 = matcher.group(i2 + 2);
        strGroup2.getClass();
        long j3 = (Long.parseLong(strGroup2) * 60000) + j2;
        String strGroup3 = matcher.group(i2 + 3);
        strGroup3.getClass();
        long j4 = (Long.parseLong(strGroup3) * 1000) + j3;
        String strGroup4 = matcher.group(i2 + 4);
        if (strGroup4 != null) {
            j4 += Long.parseLong(strGroup4);
        }
        return j4 * 1000;
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        String str;
        SubripParser subripParser = this;
        long j2 = outputOptions.f16685a;
        ParsableByteArray parsableByteArray = subripParser.f16824c;
        parsableByteArray.L(i2 + i3, bArr);
        parsableByteArray.N(i2);
        Charset charsetJ = parsableByteArray.J();
        if (charsetJ == null) {
            charsetJ = StandardCharsets.UTF_8;
        }
        long j3 = -9223372036854775807L;
        ArrayList arrayList = (j2 == -9223372036854775807L || !outputOptions.f16686b) ? null : new ArrayList();
        while (true) {
            String strN = parsableByteArray.n(charsetJ);
            if (strN == null) {
                break;
            }
            if (!strN.isEmpty()) {
                try {
                    Integer.parseInt(strN);
                    String strN2 = parsableByteArray.n(charsetJ);
                    if (strN2 == null) {
                        Log.g("Unexpected end");
                        break;
                    }
                    Matcher matcher = d.matcher(strN2);
                    if (matcher.matches()) {
                        long jE = e(matcher, 1);
                        long jE2 = e(matcher, 6);
                        StringBuilder sb = subripParser.f16822a;
                        sb.setLength(0);
                        long j4 = j3;
                        ArrayList arrayList2 = subripParser.f16823b;
                        arrayList2.clear();
                        for (String strN3 = parsableByteArray.n(charsetJ); !TextUtils.isEmpty(strN3); strN3 = parsableByteArray.n(charsetJ)) {
                            if (sb.length() > 0) {
                                sb.append("<br>");
                            }
                            String strTrim = strN3.trim();
                            StringBuilder sb2 = new StringBuilder(strTrim);
                            Matcher matcher2 = f16821e.matcher(strTrim);
                            int i4 = 0;
                            while (matcher2.find()) {
                                String strGroup = matcher2.group();
                                arrayList2.add(strGroup);
                                int iStart = matcher2.start() - i4;
                                int length = strGroup.length();
                                sb2.replace(iStart, iStart + length, "");
                                i4 += length;
                                j2 = j2;
                            }
                            sb.append(sb2.toString());
                        }
                        long j5 = j2;
                        Spanned spannedFromHtml = Html.fromHtml(sb.toString());
                        int i5 = 0;
                        while (true) {
                            if (i5 >= arrayList2.size()) {
                                str = null;
                                break;
                            }
                            str = (String) arrayList2.get(i5);
                            if (str.matches("\\{\\\\an[1-9]\\}")) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (j5 == j4 || jE2 >= j5) {
                            consumer.accept(new CuesWithTiming(ImmutableList.A(d(spannedFromHtml, str)), jE, jE2 - jE));
                        } else if (arrayList != null) {
                            arrayList.add(new CuesWithTiming(ImmutableList.A(d(spannedFromHtml, str)), jE, jE2 - jE));
                        }
                        subripParser = this;
                        j3 = j4;
                        j2 = j5;
                    } else {
                        Log.g("Skipping invalid timing: ".concat(strN2));
                        subripParser = this;
                    }
                } catch (NumberFormatException unused) {
                    Log.g("Skipping invalid index: ".concat(strN));
                }
            }
        }
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                consumer.accept((CuesWithTiming) it.next());
            }
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 1;
    }
}
