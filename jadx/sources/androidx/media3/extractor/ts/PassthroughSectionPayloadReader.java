package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* JADX INFO: loaded from: classes.dex */
public final class PassthroughSectionPayloadReader implements SectionPayloadReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Format f17109a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TimestampAdjuster f17110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TrackOutput f17111c;

    public PassthroughSectionPayloadReader(String str, String str2) {
        Format.Builder builder = new Format.Builder();
        builder.m = MimeTypes.p(str2);
        builder.n = MimeTypes.p(str);
        this.f17109a = new Format(builder);
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public final void a(ParsableByteArray parsableByteArray) {
        long jD;
        long j2;
        this.f17110b.getClass();
        String str = Util.f14242a;
        TimestampAdjuster timestampAdjuster = this.f17110b;
        synchronized (timestampAdjuster) {
            try {
                long j3 = timestampAdjuster.f14241c;
                jD = j3 != -9223372036854775807L ? j3 + timestampAdjuster.f14240b : timestampAdjuster.d();
            } catch (Throwable th) {
                throw th;
            }
        }
        TimestampAdjuster timestampAdjuster2 = this.f17110b;
        synchronized (timestampAdjuster2) {
            j2 = timestampAdjuster2.f14240b;
        }
        if (jD == -9223372036854775807L || j2 == -9223372036854775807L) {
            return;
        }
        Format format = this.f17109a;
        if (j2 != format.t) {
            Format.Builder builderA = format.a();
            builderA.s = j2;
            Format format2 = new Format(builderA);
            this.f17109a = format2;
            this.f17111c.b(format2);
        }
        int iA = parsableByteArray.a();
        this.f17111c.f(iA, parsableByteArray);
        this.f17111c.g(jD, 1, iA, 0, null);
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public final void b(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.f17110b = timestampAdjuster;
        trackIdGenerator.a();
        trackIdGenerator.b();
        TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 5);
        this.f17111c = trackOutputR;
        trackOutputR.b(this.f17109a);
    }
}
