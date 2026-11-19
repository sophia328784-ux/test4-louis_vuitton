package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.d21;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class UserDataReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17186a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrackOutput[] f17188c;
    public final ReorderingBufferQueue d;

    public UserDataReader(List<Format> list, String str) {
        this.f17186a = list;
        this.f17187b = str;
        this.f17188c = new TrackOutput[list.size()];
        ReorderingBufferQueue reorderingBufferQueue = new ReorderingBufferQueue(new ReorderingBufferQueue.OutputConsumer() { // from class: androidx.media3.extractor.ts.a
            @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
            public final void f(long j2, ParsableByteArray parsableByteArray) {
                CeaUtil.b(j2, parsableByteArray, this.f17189b.f17188c);
            }
        });
        this.d = reorderingBufferQueue;
        reorderingBufferQueue.c(3);
    }

    public final void a(long j2, ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() < 9) {
            return;
        }
        int iM = parsableByteArray.m();
        int iM2 = parsableByteArray.m();
        int iA = parsableByteArray.A();
        if (iM == 434 && iM2 == 1195456820 && iA == 3) {
            this.d.a(j2, parsableByteArray);
        }
    }

    public final void b(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        int i2 = 0;
        while (true) {
            TrackOutput[] trackOutputArr = this.f17188c;
            if (i2 >= trackOutputArr.length) {
                return;
            }
            trackIdGenerator.a();
            trackIdGenerator.b();
            TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 3);
            Format format = (Format) this.f17186a.get(i2);
            String str = format.o;
            Preconditions.e(str, "Invalid closed caption MIME type provided: %s", "application/cea-608".equals(str) || "application/cea-708".equals(str));
            Format.Builder builder = new Format.Builder();
            trackIdGenerator.b();
            builder.f13764a = trackIdGenerator.f17185e;
            builder.m = MimeTypes.p(this.f17187b);
            builder.n = MimeTypes.p(str);
            builder.f13767e = format.f13758e;
            builder.d = format.d;
            builder.K = format.L;
            builder.q = format.r;
            d21.w(builder, trackOutputR);
            trackOutputArr[i2] = trackOutputR;
            i2++;
        }
    }
}
