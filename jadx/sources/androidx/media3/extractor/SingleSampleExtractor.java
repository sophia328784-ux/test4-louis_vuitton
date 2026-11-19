package androidx.media3.extractor;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.base.Preconditions;
import defpackage.d21;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class SingleSampleExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16200c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ExtractorOutput f16202f;
    public TrackOutput g;

    public SingleSampleExtractor(int i2, int i3, String str) {
        this.f16198a = i2;
        this.f16199b = i3;
        this.f16200c = str;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        if (j2 == 0 || this.f16201e == 1) {
            this.f16201e = 1;
            this.d = 0;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16202f = extractorOutput;
        TrackOutput trackOutputR = extractorOutput.r(1024, 4);
        this.g = trackOutputR;
        Format.Builder builder = new Format.Builder();
        String str = this.f16200c;
        builder.m = MimeTypes.p(str);
        builder.n = MimeTypes.p(str);
        d21.w(builder, trackOutputR);
        this.f16202f.n();
        this.f16202f.j(new SingleSampleSeekMap(-9223372036854775807L));
        this.f16201e = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        int i2 = this.f16199b;
        int i3 = this.f16198a;
        Preconditions.q((i3 == -1 || i2 == -1) ? false : true);
        ParsableByteArray parsableByteArray = new ParsableByteArray(i2);
        ((DefaultExtractorInput) extractorInput).i(false, 0, i2, parsableByteArray.f14194a);
        return parsableByteArray.H() == i3;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i2 = this.f16201e;
        if (i2 != 1) {
            if (i2 == 2) {
                return -1;
            }
            r81.b();
            return 0;
        }
        TrackOutput trackOutput = this.g;
        trackOutput.getClass();
        int iC = trackOutput.c(extractorInput, 1024, true);
        if (iC != -1) {
            this.d += iC;
            return 0;
        }
        this.f16201e = 2;
        this.g.g(0L, 1, this.d, 0, null);
        this.d = 0;
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }
}
