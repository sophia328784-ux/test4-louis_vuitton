package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.d21;

/* JADX INFO: loaded from: classes.dex */
public final class Id3Reader implements ElementaryStreamReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17070a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TrackOutput f17072c;
    public boolean d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17074f;
    public int g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f17071b = new ParsableByteArray(10);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f17073e = -9223372036854775807L;

    public Id3Reader(String str) {
        this.f17070a = str;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a(ParsableByteArray parsableByteArray) {
        this.f17072c.getClass();
        if (this.d) {
            int iA = parsableByteArray.a();
            int i2 = this.g;
            if (i2 < 10) {
                int iMin = Math.min(iA, 10 - i2);
                byte[] bArr = parsableByteArray.f14194a;
                int i3 = parsableByteArray.f14195b;
                ParsableByteArray parsableByteArray2 = this.f17071b;
                System.arraycopy(bArr, i3, parsableByteArray2.f14194a, this.g, iMin);
                if (this.g + iMin == 10) {
                    parsableByteArray2.N(0);
                    if (73 != parsableByteArray2.A() || 68 != parsableByteArray2.A() || 51 != parsableByteArray2.A()) {
                        Log.g("Discarding invalid ID3 tag");
                        this.d = false;
                        return;
                    } else {
                        parsableByteArray2.O(3);
                        this.f17074f = parsableByteArray2.z() + 10;
                    }
                }
            }
            int iMin2 = Math.min(iA, this.f17074f - this.g);
            this.f17072c.f(iMin2, parsableByteArray);
            this.g += iMin2;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        this.d = false;
        this.f17073e = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d(boolean z) {
        int i2;
        this.f17072c.getClass();
        if (this.d && (i2 = this.f17074f) != 0 && this.g == i2) {
            Preconditions.q(this.f17073e != -9223372036854775807L);
            this.f17072c.g(this.f17073e, 1, this.f17074f, 0, null);
            this.d = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 5);
        this.f17072c = trackOutputR;
        Format.Builder builder = new Format.Builder();
        trackIdGenerator.b();
        builder.f13764a = trackIdGenerator.f17185e;
        builder.m = MimeTypes.p(this.f17070a);
        builder.n = MimeTypes.p("application/id3");
        d21.w(builder, trackOutputR);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(int i2, long j2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.d = true;
        this.f17073e = j2;
        this.f17074f = 0;
        this.g = 0;
    }
}
