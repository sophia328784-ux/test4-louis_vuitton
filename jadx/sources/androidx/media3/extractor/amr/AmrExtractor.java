package androidx.media3.extractor.amr;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import com.networkbench.agent.impl.util.r;
import defpackage.d21;
import java.io.EOFException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class AmrExtractor implements Extractor {
    public static final int[] s = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] t = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] u;
    public static final byte[] v;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f16228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DiscardingTrackOutput f16230c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16232f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f16234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16235j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f16236k;
    public ExtractorOutput l;
    public TrackOutput m;
    public TrackOutput n;
    public SeekMap o;
    public boolean p;
    public long q;
    public boolean r;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    static {
        String str = Util.f14242a;
        Charset charset = StandardCharsets.UTF_8;
        u = "#!AMR\n".getBytes(charset);
        v = "#!AMR-WB\n".getBytes(charset);
    }

    public AmrExtractor(int i2) {
        this.f16229b = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f16228a = new byte[1];
        this.f16234i = -1;
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.f16230c = discardingTrackOutput;
        this.n = discardingTrackOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16231e = 0L;
        this.f16232f = 0;
        this.g = 0;
        this.q = j3;
        SeekMap seekMap = this.o;
        if (!(seekMap instanceof IndexSeekMap)) {
            if (j2 == 0 || !(seekMap instanceof ConstantBitrateSeekMap)) {
                this.f16236k = 0L;
                return;
            } else {
                ConstantBitrateSeekMap constantBitrateSeekMap = (ConstantBitrateSeekMap) seekMap;
                this.f16236k = (Math.max(0L, j2 - constantBitrateSeekMap.f16116b) * 8000000) / ((long) constantBitrateSeekMap.f16118e);
                return;
            }
        }
        IndexSeekMap indexSeekMap = (IndexSeekMap) seekMap;
        LongArray longArray = indexSeekMap.f16178b;
        long jC = longArray.f14173a == 0 ? -9223372036854775807L : longArray.c(Util.c(indexSeekMap.f16177a, j2));
        this.f16236k = jC;
        if (Math.abs(this.q - jC) < r.x) {
            return;
        }
        this.p = true;
        this.n = this.f16230c;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.l = extractorOutput;
        TrackOutput trackOutputR = extractorOutput.r(0, 1);
        this.m = trackOutputR;
        this.n = trackOutputR;
        extractorOutput.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        return h(extractorInput);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d9 A[PHI: r10
      0x00d9: PHI (r10v1 androidx.media3.extractor.ExtractorInput) = (r10v0 androidx.media3.extractor.ExtractorInput), (r10v4 androidx.media3.extractor.ExtractorInput) binds: [B:48:0x00d7, B:51:0x00e5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:53:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f1  */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) throws ParserException {
        ExtractorInput extractorInput2;
        int i2;
        int i3;
        int iC;
        int i4;
        this.m.getClass();
        String str = Util.f14242a;
        if (extractorInput.getPosition() == 0 && !h(extractorInput)) {
            throw ParserException.a(null, "Could not find AMR header.");
        }
        if (!this.r) {
            this.r = true;
            boolean z = this.d;
            String str2 = z ? "audio/amr-wb" : "audio/amr";
            String str3 = z ? "audio/amr-wb" : "audio/3gpp";
            int i5 = z ? 16000 : 8000;
            int i6 = z ? t[8] : s[7];
            TrackOutput trackOutput = this.m;
            Format.Builder builder = new Format.Builder();
            builder.m = MimeTypes.p(str2);
            builder.n = MimeTypes.p(str3);
            builder.o = i6;
            builder.F = 1;
            builder.G = i5;
            d21.w(builder, trackOutput);
        }
        if (this.g == 0) {
            try {
                int iG = g(extractorInput);
                this.f16232f = iG;
                this.g = iG;
                if (this.f16234i == -1) {
                    this.f16233h = extractorInput.getPosition();
                    this.f16234i = this.f16232f;
                }
                if (this.f16234i == this.f16232f) {
                    this.f16235j++;
                }
                SeekMap seekMap = this.o;
                if (seekMap instanceof IndexSeekMap) {
                    IndexSeekMap indexSeekMap = (IndexSeekMap) seekMap;
                    long j2 = this.f16236k + this.f16231e + r.x;
                    long position = extractorInput.getPosition() + ((long) this.f16232f);
                    LongArray longArray = indexSeekMap.f16178b;
                    int i7 = longArray.f14173a;
                    if (i7 == 0 || j2 - longArray.c(i7 - 1) >= 100000) {
                        indexSeekMap.i(j2, position);
                    }
                    if (this.p && Math.abs(this.q - j2) < r.x) {
                        this.p = false;
                        this.n = this.m;
                    }
                }
                extractorInput2 = extractorInput;
                iC = this.n.c(extractorInput2, this.g, true);
                if (iC == -1) {
                    i2 = -1;
                } else {
                    i4 = this.g - iC;
                    this.g = i4;
                    if (i4 <= 0) {
                        this.n.g(this.f16236k + this.f16231e, 1, this.f16232f, 0, null);
                        this.f16231e += r.x;
                    }
                    i2 = 0;
                }
            } catch (EOFException unused) {
                extractorInput2 = extractorInput;
            }
        } else {
            extractorInput2 = extractorInput;
            iC = this.n.c(extractorInput2, this.g, true);
            if (iC == -1) {
                i2 = -1;
            } else {
                i4 = this.g - iC;
                this.g = i4;
                if (i4 <= 0) {
                    this.n.g(this.f16236k + this.f16231e, 1, this.f16232f, 0, null);
                    this.f16231e += r.x;
                }
                i2 = 0;
            }
        }
        long length = extractorInput2.getLength();
        if (this.o == null) {
            int i8 = this.f16229b;
            if ((i8 & 4) != 0) {
                this.o = new IndexSeekMap(new long[]{this.f16233h}, new long[]{0}, -9223372036854775807L);
            } else if ((i8 & 1) == 0 || !((i3 = this.f16234i) == -1 || i3 == this.f16232f)) {
                this.o = new SeekMap.Unseekable(-9223372036854775807L);
            } else if (this.f16235j >= 20 || i2 == -1) {
                ConstantBitrateSeekMap constantBitrateSeekMap = new ConstantBitrateSeekMap(length, this.f16233h, (int) ((((long) i3) * 8000000) / r.x), i3, (i8 & 2) != 0);
                this.o = constantBitrateSeekMap;
                this.m.e(constantBitrateSeekMap.f16119f);
            }
            SeekMap seekMap2 = this.o;
            if (seekMap2 != null) {
                this.l.j(seekMap2);
            }
        }
        if (i2 == -1) {
            SeekMap seekMap3 = this.o;
            if (seekMap3 instanceof IndexSeekMap) {
                long j3 = this.f16236k + this.f16231e;
                ((IndexSeekMap) seekMap3).f16179c = j3;
                this.l.j(seekMap3);
                this.m.e(j3);
            }
        }
        return i2;
    }

    public final int g(ExtractorInput extractorInput) throws ParserException {
        boolean z;
        extractorInput.g();
        byte[] bArr = this.f16228a;
        extractorInput.b(0, 1, bArr);
        byte b2 = bArr[0];
        if ((b2 & 131) > 0) {
            throw ParserException.a(null, "Invalid padding bits for frame header " + ((int) b2));
        }
        int i2 = (b2 >> 3) & 15;
        if (i2 >= 0 && i2 <= 15 && (((z = this.d) && (i2 < 10 || i2 > 13)) || (!z && (i2 < 12 || i2 > 14)))) {
            return z ? t[i2] : s[i2];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.d ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i2);
        throw ParserException.a(null, sb.toString());
    }

    public final boolean h(ExtractorInput extractorInput) {
        extractorInput.g();
        byte[] bArr = u;
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.b(0, bArr.length, bArr2);
        if (Arrays.equals(bArr2, bArr)) {
            this.d = false;
            extractorInput.m(bArr.length);
            return true;
        }
        extractorInput.g();
        byte[] bArr3 = v;
        byte[] bArr4 = new byte[bArr3.length];
        extractorInput.b(0, bArr3.length, bArr4);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.d = true;
        extractorInput.m(bArr3.length);
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public AmrExtractor() {
        this(0);
    }
}
