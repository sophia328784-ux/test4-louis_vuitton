package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import defpackage.md;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public abstract class WebvttParserUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Pattern f16931a = Pattern.compile("^NOTE([ \t].*)?$");

    public static boolean a(ParsableByteArray parsableByteArray) {
        parsableByteArray.getClass();
        String strN = parsableByteArray.n(StandardCharsets.UTF_8);
        return strN != null && strN.startsWith("WEBVTT");
    }

    public static float b(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long c(String str) {
        String str2 = Util.f14242a;
        String[] strArrSplit = str.split("\\.", 2);
        long j2 = 0;
        for (String str3 : strArrSplit[0].split(":", -1)) {
            j2 = (j2 * 60) + Long.parseLong(str3);
        }
        long j3 = j2 * 1000;
        if (strArrSplit.length == 2) {
            String strTrim = strArrSplit[1].trim();
            if (strTrim.length() != 3) {
                md.n("Expected 3 decimal places, got: ".concat(strTrim));
                return 0L;
            }
            j3 += Long.parseLong(strTrim);
        }
        return j3 * 1000;
    }

    public static void d(ParsableByteArray parsableByteArray) throws ParserException {
        int i2 = parsableByteArray.f14195b;
        if (a(parsableByteArray)) {
            return;
        }
        parsableByteArray.N(i2);
        throw ParserException.a(null, "Expected WEBVTT. Got " + parsableByteArray.n(StandardCharsets.UTF_8));
    }
}
