package androidx.media3.extractor.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.fc;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class Tx3gParser implements SubtitleParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16873a = new ParsableByteArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f16874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16875c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f16876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f16877f;
    public final int g;

    public Tx3gParser(List<byte[]> list) {
        if (list.size() != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f16875c = 0;
            this.d = -1;
            this.f16876e = "sans-serif";
            this.f16874b = false;
            this.f16877f = 0.85f;
            this.g = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f16875c = bArr[24];
        this.d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        int length = bArr.length - 43;
        String str = Util.f14242a;
        this.f16876e = "Serif".equals(new String(bArr, 43, length, StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
        int i2 = bArr[25] * 20;
        this.g = i2;
        boolean z = (bArr[0] & 32) != 0;
        this.f16874b = z;
        if (z) {
            this.f16877f = Util.i(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.95f);
        } else {
            this.f16877f = 0.85f;
        }
    }

    public static void d(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4, int i5, int i6) {
        if (i2 != i3) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i2 >>> 8) | ((i2 & 255) << 24)), i4, i5, i6 | 33);
        }
    }

    public static void e(SpannableStringBuilder spannableStringBuilder, int i2, int i3, int i4, int i5, int i6) {
        if (i2 != i3) {
            int i7 = i6 | 33;
            boolean z = (i2 & 1) != 0;
            boolean z2 = (i2 & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i4, i5, i7);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i4, i5, i7);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i4, i5, i7);
            }
            boolean z3 = (i2 & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i4, i5, i7);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i4, i5, i7);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void a(byte[] bArr, int i2, int i3, SubtitleParser.OutputOptions outputOptions, Consumer consumer) {
        String strY;
        ParsableByteArray parsableByteArray = this.f16873a;
        parsableByteArray.L(i2 + i3, bArr);
        parsableByteArray.N(i2);
        int i4 = 1;
        int i5 = 0;
        Preconditions.g(parsableByteArray.a() >= 2);
        int iH = parsableByteArray.H();
        if (iH == 0) {
            strY = "";
        } else {
            int i6 = parsableByteArray.f14195b;
            Charset charsetJ = parsableByteArray.J();
            int i7 = iH - (parsableByteArray.f14195b - i6);
            if (charsetJ == null) {
                charsetJ = StandardCharsets.UTF_8;
            }
            strY = parsableByteArray.y(i7, charsetJ);
        }
        if (strY.isEmpty()) {
            consumer.accept(new CuesWithTiming(ImmutableList.x(), -9223372036854775807L, -9223372036854775807L));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strY);
        e(spannableStringBuilder, this.f16875c, 0, 0, spannableStringBuilder.length(), 16711680);
        d(spannableStringBuilder, this.d, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f16876e;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float fI = this.f16877f;
        while (parsableByteArray.a() >= 8) {
            int i8 = parsableByteArray.f14195b;
            int iM = parsableByteArray.m();
            int iM2 = parsableByteArray.m();
            if (iM2 == 1937013100) {
                Preconditions.g(parsableByteArray.a() >= 2 ? i4 : i5);
                int iH2 = parsableByteArray.H();
                int i9 = i5;
                while (i9 < iH2) {
                    Preconditions.g(parsableByteArray.a() >= 12 ? i4 : i5);
                    int iH3 = parsableByteArray.H();
                    int iH4 = parsableByteArray.H();
                    parsableByteArray.O(2);
                    int i10 = i9;
                    int iA = parsableByteArray.A();
                    parsableByteArray.O(i4);
                    int iM3 = parsableByteArray.m();
                    if (iH4 > spannableStringBuilder.length()) {
                        StringBuilder sbQ = fc.q(iH4, "Truncating styl end (", ") to cueText.length() (");
                        sbQ.append(spannableStringBuilder.length());
                        sbQ.append(").");
                        Log.g(sbQ.toString());
                        iH4 = spannableStringBuilder.length();
                    }
                    if (iH3 >= iH4) {
                        Log.g("Ignoring styl with start (" + iH3 + ") >= end (" + iH4 + ").");
                    } else {
                        int i11 = iH4;
                        e(spannableStringBuilder, iA, this.f16875c, iH3, i11, 0);
                        d(spannableStringBuilder, iM3, this.d, iH3, i11, 0);
                    }
                    i9 = i10 + 1;
                    i4 = 1;
                    i5 = 0;
                }
            } else if (iM2 == 1952608120 && this.f16874b) {
                Preconditions.g(parsableByteArray.a() >= 2);
                fI = Util.i(parsableByteArray.H() / this.g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.95f);
            }
            parsableByteArray.N(i8 + iM);
            i4 = 1;
            i5 = 0;
        }
        Cue.Builder builder = new Cue.Builder();
        builder.f14102a = spannableStringBuilder;
        builder.f14103b = null;
        builder.f14105e = fI;
        builder.f14106f = 0;
        builder.g = 0;
        consumer.accept(new CuesWithTiming(ImmutableList.A(builder.a()), -9223372036854775807L, -9223372036854775807L));
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final int c() {
        return 2;
    }
}
