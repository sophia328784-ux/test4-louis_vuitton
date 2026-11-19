package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.LegacySubtitleUtil;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import defpackage.lc0;
import defpackage.md;
import defpackage.r81;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class WebvttParser implements SubtitleParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16929a = new ParsableByteArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WebvttCssParser f16930b = new WebvttCssParser();

    /* JADX WARN: Code duplicated, block: B:120:0x0208  */
    /* JADX WARN: Code duplicated, block: B:130:0x022a  */
    /* JADX WARN: Code duplicated, block: B:131:0x0235  */
    /* JADX WARN: Code duplicated, block: B:133:0x023e  */
    /* JADX WARN: Code duplicated, block: B:134:0x0248  */
    /* JADX WARN: Code duplicated, block: B:136:0x0250  */
    /* JADX WARN: Code duplicated, block: B:138:0x0258  */
    /* JADX WARN: Code duplicated, block: B:139:0x025c  */
    /* JADX WARN: Code duplicated, block: B:141:0x0264  */
    /* JADX WARN: Code duplicated, block: B:142:0x026b  */
    /* JADX WARN: Code duplicated, block: B:144:0x0273  */
    /* JADX WARN: Code duplicated, block: B:150:0x0286  */
    /* JADX WARN: Code duplicated, block: B:152:0x028b  */
    /* JADX WARN: Code duplicated, block: B:154:0x0293  */
    /* JADX WARN: Code duplicated, block: B:156:0x029b  */
    /* JADX WARN: Code duplicated, block: B:157:0x029f  */
    /* JADX WARN: Code duplicated, block: B:159:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:160:0x02af  */
    /* JADX WARN: Code duplicated, block: B:162:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:164:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:165:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:167:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:169:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:171:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:173:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:175:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:176:0x0309  */
    /* JADX WARN: Code duplicated, block: B:179:0x031a  */
    /* JADX WARN: Code duplicated, block: B:182:0x0323  */
    /* JADX WARN: Code duplicated, block: B:183:0x0325  */
    /* JADX WARN: Code duplicated, block: B:186:0x032e  */
    /* JADX WARN: Code duplicated, block: B:187:0x0330  */
    /* JADX WARN: Code duplicated, block: B:190:0x0339  */
    /* JADX WARN: Code duplicated, block: B:194:0x0341  */
    /* JADX WARN: Code duplicated, block: B:195:0x0346  */
    /* JADX WARN: Code duplicated, block: B:196:0x034b  */
    /* JADX WARN: Code duplicated, block: B:198:0x035e  */
    /* JADX WARN: Code duplicated, block: B:238:0x033d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:175:0x02f1, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        WebvttCueInfo webvttCueInfoD;
        String strTrim;
        int i4;
        char c2;
        String string;
        int i5;
        Matcher matcher;
        String strGroup;
        byte b2;
        boolean z;
        WebvttParser webvttParser = this;
        ParsableByteArray parsableByteArray = webvttParser.f16929a;
        parsableByteArray.L(i2 + i3, bArr);
        parsableByteArray.N(i2);
        ArrayList arrayList = new ArrayList();
        try {
            WebvttParserUtil.d(parsableByteArray);
            while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8))) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int i6 = 0;
                int i7 = -1;
                int i8 = 0;
                byte b3 = -1;
                while (true) {
                    int i9 = 1;
                    char c3 = 2;
                    if (b3 == -1) {
                        i8 = parsableByteArray.f14195b;
                        String strN = parsableByteArray.n(StandardCharsets.UTF_8);
                        if (strN == null) {
                            b3 = 0;
                        } else if ("STYLE".equals(strN)) {
                            b3 = 2;
                        } else {
                            b3 = strN.startsWith("NOTE") ? (byte) 1 : (byte) 3;
                        }
                    } else {
                        parsableByteArray.N(i8);
                        if (b3 == 0) {
                            LegacySubtitleUtil.b(new WebvttSubtitle(arrayList2), outputOptions, consumer);
                            return;
                        }
                        if (b3 == 1) {
                            while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8))) {
                            }
                        } else {
                            if (b3 == 2) {
                                if (!arrayList2.isEmpty()) {
                                    md.n("A style block was found after the first cue.");
                                    return;
                                }
                                parsableByteArray.n(StandardCharsets.UTF_8);
                                WebvttCssParser webvttCssParser = webvttParser.f16930b;
                                ParsableByteArray parsableByteArray2 = webvttCssParser.f16895a;
                                StringBuilder sb = webvttCssParser.f16896b;
                                sb.setLength(0);
                                int i10 = parsableByteArray.f14195b;
                                while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8))) {
                                }
                                parsableByteArray2.L(parsableByteArray.f14195b, parsableByteArray.f14194a);
                                parsableByteArray2.N(i10);
                                ArrayList arrayList3 = new ArrayList();
                                while (true) {
                                    WebvttCssParser.c(parsableByteArray2);
                                    if (parsableByteArray2.a() >= 5 && "::cue".equals(parsableByteArray2.y(5, StandardCharsets.UTF_8))) {
                                        int i11 = parsableByteArray2.f14195b;
                                        String strB = WebvttCssParser.b(parsableByteArray2, sb);
                                        if (strB == null) {
                                            strTrim = null;
                                        } else if ("{".equals(strB)) {
                                            parsableByteArray2.N(i11);
                                            strTrim = "";
                                        } else {
                                            if ("(".equals(strB)) {
                                                int i12 = parsableByteArray2.f14195b;
                                                int i13 = parsableByteArray2.f14196c;
                                                int i14 = i6;
                                                while (i12 < i13 && i14 == 0) {
                                                    int i15 = i12 + 1;
                                                    int i16 = ((char) parsableByteArray2.f14194a[i12]) == ')' ? i9 : i6;
                                                    i12 = i15;
                                                    i14 = i16;
                                                }
                                                strTrim = parsableByteArray2.y((i12 - 1) - parsableByteArray2.f14195b, StandardCharsets.UTF_8).trim();
                                            } else {
                                                strTrim = null;
                                            }
                                            if (!")".equals(WebvttCssParser.b(parsableByteArray2, sb))) {
                                                strTrim = null;
                                            }
                                        }
                                    } else {
                                        strTrim = null;
                                    }
                                    if (strTrim != null && "{".equals(WebvttCssParser.b(parsableByteArray2, sb))) {
                                        WebvttCssStyle webvttCssStyle = new WebvttCssStyle();
                                        if (!strTrim.isEmpty()) {
                                            int iIndexOf = strTrim.indexOf(91);
                                            if (iIndexOf != i7) {
                                                Matcher matcher2 = WebvttCssParser.f16894c.matcher(strTrim.substring(iIndexOf));
                                                if (matcher2.matches()) {
                                                    String strGroup2 = matcher2.group(i9);
                                                    strGroup2.getClass();
                                                    webvttCssStyle.d = strGroup2;
                                                }
                                                strTrim = strTrim.substring(i6, iIndexOf);
                                            }
                                            String str = Util.f14242a;
                                            String[] strArrSplit = strTrim.split("\\.", i7);
                                            String str2 = strArrSplit[i6];
                                            int iIndexOf2 = str2.indexOf(35);
                                            if (iIndexOf2 != i7) {
                                                webvttCssStyle.f16898b = str2.substring(i6, iIndexOf2);
                                                webvttCssStyle.f16897a = str2.substring(iIndexOf2 + 1);
                                            } else {
                                                webvttCssStyle.f16898b = str2;
                                            }
                                            if (strArrSplit.length > i9) {
                                                int length = strArrSplit.length;
                                                Preconditions.g(length <= strArrSplit.length ? i9 : i6);
                                                webvttCssStyle.f16899c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(strArrSplit, i9, length)));
                                            }
                                        }
                                        int i17 = i6;
                                        String strB2 = null;
                                        while (i17 == 0) {
                                            int i18 = parsableByteArray2.f14195b;
                                            strB2 = WebvttCssParser.b(parsableByteArray2, sb);
                                            int i19 = (strB2 == null || "}".equals(strB2)) ? i9 : i6;
                                            if (i19 == 0) {
                                                parsableByteArray2.N(i18);
                                                WebvttCssParser.c(parsableByteArray2);
                                                String strA = WebvttCssParser.a(parsableByteArray2, sb);
                                                if (!strA.isEmpty() && ":".equals(WebvttCssParser.b(parsableByteArray2, sb))) {
                                                    WebvttCssParser.c(parsableByteArray2);
                                                    StringBuilder sb2 = new StringBuilder();
                                                    boolean z2 = false;
                                                    while (true) {
                                                        if (z2) {
                                                            string = sb2.toString();
                                                        } else {
                                                            int i20 = parsableByteArray2.f14195b;
                                                            String strB3 = WebvttCssParser.b(parsableByteArray2, sb);
                                                            if (strB3 == null) {
                                                                string = null;
                                                            } else if ("}".equals(strB3) || ";".equals(strB3)) {
                                                                parsableByteArray2.N(i20);
                                                                z2 = true;
                                                            } else {
                                                                sb2.append(strB3);
                                                            }
                                                        }
                                                    }
                                                    if (string == null || string.isEmpty()) {
                                                        i4 = 1;
                                                        c2 = 2;
                                                    } else {
                                                        int i21 = parsableByteArray2.f14195b;
                                                        String strB4 = WebvttCssParser.b(parsableByteArray2, sb);
                                                        if (";".equals(strB4)) {
                                                            if ("color".equals(strA)) {
                                                                i5 = 1;
                                                                webvttCssStyle.f16901f = ColorParser.a(string, true);
                                                                webvttCssStyle.g = true;
                                                            } else {
                                                                i5 = 1;
                                                                if ("background-color".equals(strA)) {
                                                                    webvttCssStyle.f16902h = ColorParser.a(string, true);
                                                                    webvttCssStyle.f16903i = true;
                                                                } else if ("ruby-position".equals(strA)) {
                                                                    if ("text-combine-upright".equals(strA)) {
                                                                        if ("all".equals(string)) {
                                                                            z = true;
                                                                        } else {
                                                                            z = true;
                                                                        }
                                                                        webvttCssStyle.q = z;
                                                                    } else if ("text-decoration".equals(strA)) {
                                                                        if ("underline".equals(string)) {
                                                                            i5 = 1;
                                                                            webvttCssStyle.f16905k = 1;
                                                                        }
                                                                        c2 = 2;
                                                                    } else if ("font-family".equals(strA)) {
                                                                        webvttCssStyle.f16900e = Ascii.c(string);
                                                                    } else if (!"font-weight".equals(strA)) {
                                                                        if ("bold".equals(string)) {
                                                                            i5 = 1;
                                                                            webvttCssStyle.l = 1;
                                                                        }
                                                                        c2 = 2;
                                                                    } else {
                                                                        i5 = 1;
                                                                        if ("font-style".equals(strA)) {
                                                                            if ("italic".equals(string)) {
                                                                                webvttCssStyle.m = 1;
                                                                            }
                                                                        } else if ("font-size".equals(strA)) {
                                                                            matcher = WebvttCssParser.d.matcher(Ascii.c(string));
                                                                            if (matcher.matches()) {
                                                                                strGroup = matcher.group(2);
                                                                                strGroup.getClass();
                                                                                switch (strGroup.hashCode()) {
                                                                                    case 37:
                                                                                        if (!strGroup.equals("%")) {
                                                                                            b2 = 0;
                                                                                        }
                                                                                        switch (b2) {
                                                                                            case 0:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i4 = 1;
                                                                                                webvttCssStyle.n = 1;
                                                                                                c2 = 2;
                                                                                                break;
                                                                                            default:
                                                                                                r81.b();
                                                                                                return;
                                                                                        }
                                                                                        String strGroup3 = matcher.group(i4);
                                                                                        strGroup3.getClass();
                                                                                        webvttCssStyle.o = Float.parseFloat(strGroup3);
                                                                                        break;
                                                                                    case 3240:
                                                                                        if (!strGroup.equals("em")) {
                                                                                            b2 = 1;
                                                                                        }
                                                                                        switch (b2) {
                                                                                            case 0:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i4 = 1;
                                                                                                webvttCssStyle.n = 1;
                                                                                                c2 = 2;
                                                                                                break;
                                                                                            default:
                                                                                                r81.b();
                                                                                                return;
                                                                                        }
                                                                                        String strGroup4 = matcher.group(i4);
                                                                                        strGroup4.getClass();
                                                                                        webvttCssStyle.o = Float.parseFloat(strGroup4);
                                                                                        break;
                                                                                    case 3592:
                                                                                        if (!strGroup.equals("px")) {
                                                                                            b2 = 2;
                                                                                        }
                                                                                        switch (b2) {
                                                                                            case 0:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                i4 = 1;
                                                                                                c2 = 2;
                                                                                                webvttCssStyle.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i4 = 1;
                                                                                                webvttCssStyle.n = 1;
                                                                                                c2 = 2;
                                                                                                break;
                                                                                            default:
                                                                                                r81.b();
                                                                                                return;
                                                                                        }
                                                                                        String strGroup5 = matcher.group(i4);
                                                                                        strGroup5.getClass();
                                                                                        webvttCssStyle.o = Float.parseFloat(strGroup5);
                                                                                        break;
                                                                                }
                                                                                b2 = -1;
                                                                                switch (b2) {
                                                                                    case 0:
                                                                                        i4 = 1;
                                                                                        c2 = 2;
                                                                                        webvttCssStyle.n = 3;
                                                                                        break;
                                                                                    case 1:
                                                                                        i4 = 1;
                                                                                        c2 = 2;
                                                                                        webvttCssStyle.n = 2;
                                                                                        break;
                                                                                    case 2:
                                                                                        i4 = 1;
                                                                                        webvttCssStyle.n = 1;
                                                                                        c2 = 2;
                                                                                        break;
                                                                                    default:
                                                                                        r81.b();
                                                                                        return;
                                                                                }
                                                                                String strGroup6 = matcher.group(i4);
                                                                                strGroup6.getClass();
                                                                                webvttCssStyle.o = Float.parseFloat(strGroup6);
                                                                            } else {
                                                                                Log.g("Invalid font-size: '" + string + "'.");
                                                                            }
                                                                        }
                                                                    }
                                                                    i4 = 1;
                                                                    c2 = 2;
                                                                } else if ("over".equals(string)) {
                                                                    webvttCssStyle.p = 1;
                                                                } else if ("under".equals(string)) {
                                                                    webvttCssStyle.p = 2;
                                                                    c2 = 2;
                                                                    i4 = 1;
                                                                } else {
                                                                    i4 = 1;
                                                                    c2 = 2;
                                                                }
                                                            }
                                                            i4 = i5;
                                                            c2 = 2;
                                                        } else {
                                                            if ("}".equals(strB4)) {
                                                                parsableByteArray2.N(i21);
                                                                if ("color".equals(strA)) {
                                                                    i5 = 1;
                                                                    webvttCssStyle.f16901f = ColorParser.a(string, true);
                                                                    webvttCssStyle.g = true;
                                                                } else {
                                                                    i5 = 1;
                                                                    if ("background-color".equals(strA)) {
                                                                        webvttCssStyle.f16902h = ColorParser.a(string, true);
                                                                        webvttCssStyle.f16903i = true;
                                                                    } else if ("ruby-position".equals(strA)) {
                                                                        if ("text-combine-upright".equals(strA)) {
                                                                            if ("all".equals(string) || string.startsWith("digits")) {
                                                                                z = true;
                                                                            } else {
                                                                                z = false;
                                                                            }
                                                                            webvttCssStyle.q = z;
                                                                        } else if ("text-decoration".equals(strA)) {
                                                                            if ("underline".equals(string)) {
                                                                                i5 = 1;
                                                                                webvttCssStyle.f16905k = 1;
                                                                            }
                                                                        } else if ("font-family".equals(strA)) {
                                                                            webvttCssStyle.f16900e = Ascii.c(string);
                                                                        } else if (!"font-weight".equals(strA)) {
                                                                            i5 = 1;
                                                                            if ("font-style".equals(strA)) {
                                                                                if ("italic".equals(string)) {
                                                                                    webvttCssStyle.m = 1;
                                                                                }
                                                                            } else if ("font-size".equals(strA)) {
                                                                                matcher = WebvttCssParser.d.matcher(Ascii.c(string));
                                                                                if (matcher.matches()) {
                                                                                    Log.g("Invalid font-size: '" + string + "'.");
                                                                                } else {
                                                                                    strGroup = matcher.group(2);
                                                                                    strGroup.getClass();
                                                                                    switch (strGroup.hashCode()) {
                                                                                        case 37:
                                                                                            if (!strGroup.equals("%")) {
                                                                                                b2 = 0;
                                                                                            }
                                                                                            switch (b2) {
                                                                                                case 0:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 3;
                                                                                                    break;
                                                                                                case 1:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 2;
                                                                                                    break;
                                                                                                case 2:
                                                                                                    i4 = 1;
                                                                                                    webvttCssStyle.n = 1;
                                                                                                    c2 = 2;
                                                                                                    break;
                                                                                                default:
                                                                                                    r81.b();
                                                                                                    return;
                                                                                            }
                                                                                            String strGroup7 = matcher.group(i4);
                                                                                            strGroup7.getClass();
                                                                                            webvttCssStyle.o = Float.parseFloat(strGroup7);
                                                                                            break;
                                                                                        case 3240:
                                                                                            if (!strGroup.equals("em")) {
                                                                                                b2 = 1;
                                                                                            }
                                                                                            switch (b2) {
                                                                                                case 0:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 3;
                                                                                                    break;
                                                                                                case 1:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 2;
                                                                                                    break;
                                                                                                case 2:
                                                                                                    i4 = 1;
                                                                                                    webvttCssStyle.n = 1;
                                                                                                    c2 = 2;
                                                                                                    break;
                                                                                                default:
                                                                                                    r81.b();
                                                                                                    return;
                                                                                            }
                                                                                            String strGroup8 = matcher.group(i4);
                                                                                            strGroup8.getClass();
                                                                                            webvttCssStyle.o = Float.parseFloat(strGroup8);
                                                                                            break;
                                                                                        case 3592:
                                                                                            if (!strGroup.equals("px")) {
                                                                                                b2 = 2;
                                                                                            }
                                                                                            switch (b2) {
                                                                                                case 0:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 3;
                                                                                                    break;
                                                                                                case 1:
                                                                                                    i4 = 1;
                                                                                                    c2 = 2;
                                                                                                    webvttCssStyle.n = 2;
                                                                                                    break;
                                                                                                case 2:
                                                                                                    i4 = 1;
                                                                                                    webvttCssStyle.n = 1;
                                                                                                    c2 = 2;
                                                                                                    break;
                                                                                                default:
                                                                                                    r81.b();
                                                                                                    return;
                                                                                            }
                                                                                            String strGroup9 = matcher.group(i4);
                                                                                            strGroup9.getClass();
                                                                                            webvttCssStyle.o = Float.parseFloat(strGroup9);
                                                                                            break;
                                                                                    }
                                                                                    b2 = -1;
                                                                                    switch (b2) {
                                                                                        case 0:
                                                                                            i4 = 1;
                                                                                            c2 = 2;
                                                                                            webvttCssStyle.n = 3;
                                                                                            break;
                                                                                        case 1:
                                                                                            i4 = 1;
                                                                                            c2 = 2;
                                                                                            webvttCssStyle.n = 2;
                                                                                            break;
                                                                                        case 2:
                                                                                            i4 = 1;
                                                                                            webvttCssStyle.n = 1;
                                                                                            c2 = 2;
                                                                                            break;
                                                                                        default:
                                                                                            r81.b();
                                                                                            return;
                                                                                    }
                                                                                    String strGroup10 = matcher.group(i4);
                                                                                    strGroup10.getClass();
                                                                                    webvttCssStyle.o = Float.parseFloat(strGroup10);
                                                                                }
                                                                            }
                                                                        } else if ("bold".equals(string)) {
                                                                            i5 = 1;
                                                                            webvttCssStyle.l = 1;
                                                                        }
                                                                        i4 = 1;
                                                                    } else if ("over".equals(string)) {
                                                                        webvttCssStyle.p = 1;
                                                                    } else if ("under".equals(string)) {
                                                                        webvttCssStyle.p = 2;
                                                                        c2 = 2;
                                                                        i4 = 1;
                                                                    } else {
                                                                        i4 = 1;
                                                                    }
                                                                }
                                                                i4 = i5;
                                                            } else {
                                                                i4 = 1;
                                                            }
                                                            c2 = 2;
                                                        }
                                                    }
                                                } else {
                                                    i4 = i9;
                                                    c2 = c3;
                                                }
                                            } else {
                                                i4 = i9;
                                                c2 = c3;
                                            }
                                            i9 = i4;
                                            c3 = c2;
                                            i17 = i19;
                                            i6 = 0;
                                        }
                                        int i22 = i9;
                                        char c4 = c3;
                                        if ("}".equals(strB2)) {
                                            arrayList3.add(webvttCssStyle);
                                        }
                                        i9 = i22;
                                        c3 = c4;
                                        i6 = 0;
                                        i7 = -1;
                                    }
                                }
                                arrayList.addAll(arrayList3);
                            } else if (b3 == 3) {
                                Pattern pattern = WebvttCueParser.f16909a;
                                Charset charset = StandardCharsets.UTF_8;
                                String strN2 = parsableByteArray.n(charset);
                                if (strN2 == null) {
                                    webvttCueInfoD = null;
                                } else {
                                    Pattern pattern2 = WebvttCueParser.f16909a;
                                    Matcher matcher3 = pattern2.matcher(strN2);
                                    if (matcher3.matches()) {
                                        webvttCueInfoD = WebvttCueParser.d(null, matcher3, parsableByteArray, arrayList);
                                    } else {
                                        webvttCueInfoD = null;
                                        String strN3 = parsableByteArray.n(charset);
                                        if (strN3 != null) {
                                            Matcher matcher4 = pattern2.matcher(strN3);
                                            if (matcher4.matches()) {
                                                webvttCueInfoD = WebvttCueParser.d(strN2.trim(), matcher4, parsableByteArray, arrayList);
                                            }
                                        }
                                    }
                                }
                                if (webvttCueInfoD != null) {
                                    arrayList2.add(webvttCueInfoD);
                                }
                            }
                            webvttParser = this;
                        }
                    }
                }
            }
        } catch (ParserException e2) {
            lc0.u(e2);
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 1;
    }
}
