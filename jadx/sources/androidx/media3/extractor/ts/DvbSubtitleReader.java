package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.d21;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DvbSubtitleReader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f16987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrackOutput[] f16989c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16991f;
    public long g = -9223372036854775807L;

    public DvbSubtitleReader(List<TsPayloadReader.DvbSubtitleInfo> list, String str) {
        this.f16987a = list;
        this.f16988b = str;
        this.f16989c = new TrackOutput[list.size()];
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        boolean z;
        boolean z2;
        if (this.d) {
            if (this.f16990e == 2) {
                if (parsableByteArray.a() == 0) {
                    z2 = false;
                } else {
                    if (parsableByteArray.A() != 32) {
                        this.d = false;
                    }
                    this.f16990e--;
                    z2 = this.d;
                }
                if (!z2) {
                    return;
                }
            }
            if (this.f16990e == 1) {
                if (parsableByteArray.a() == 0) {
                    z = false;
                } else {
                    if (parsableByteArray.A() != 0) {
                        this.d = false;
                    }
                    this.f16990e--;
                    z = this.d;
                }
                if (!z) {
                    return;
                }
            }
            int i2 = parsableByteArray.f14195b;
            int iA = parsableByteArray.a();
            for (TrackOutput trackOutput : this.f16989c) {
                parsableByteArray.N(i2);
                trackOutput.f(iA, parsableByteArray);
            }
            this.f16991f += iA;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.d = false;
        this.g = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
        if (this.d) {
            Preconditions.q(this.g != -9223372036854775807L);
            for (TrackOutput trackOutput : this.f16989c) {
                trackOutput.g(this.g, 1, this.f16991f, 0, null);
            }
            this.d = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        int i2 = 0;
        while (true) {
            TrackOutput[] trackOutputArr = this.f16989c;
            if (i2 >= trackOutputArr.length) {
                return;
            }
            TsPayloadReader.DvbSubtitleInfo dvbSubtitleInfo = (TsPayloadReader.DvbSubtitleInfo) this.f16987a.get(i2);
            trackIdGenerator.a();
            trackIdGenerator.b();
            TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 3);
            Format.Builder builder = new Format.Builder();
            trackIdGenerator.b();
            builder.f13764a = trackIdGenerator.f17185e;
            builder.m = MimeTypes.p(this.f16988b);
            builder.n = MimeTypes.p("application/dvbsubs");
            builder.q = Collections.singletonList(dvbSubtitleInfo.f17177b);
            builder.d = dvbSubtitleInfo.f17176a;
            d21.w(builder, trackOutputR);
            trackOutputArr[i2] = trackOutputR;
            i2++;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.d = true;
        this.g = j2;
        this.f16991f = 0;
        this.f16990e = 2;
    }
}
