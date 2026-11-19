package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import defpackage.d21;
import defpackage.ln0;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SeiReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f17148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f17149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrackOutput[] f17150c;
    public final ReorderingBufferQueue d = new ReorderingBufferQueue(new ln0(this, 9));

    public SeiReader(List<Format> list, String str) {
        this.f17148a = list;
        this.f17149b = str;
        this.f17150c = new TrackOutput[list.size()];
    }

    public final void a(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        int i2 = 0;
        while (true) {
            TrackOutput[] trackOutputArr = this.f17150c;
            if (i2 >= trackOutputArr.length) {
                return;
            }
            trackIdGenerator.a();
            trackIdGenerator.b();
            TrackOutput trackOutputR = extractorOutput.r(trackIdGenerator.d, 3);
            Format format = (Format) this.f17148a.get(i2);
            String str = format.o;
            Preconditions.e(str, "Invalid closed caption MIME type provided: %s", "application/cea-608".equals(str) || "application/cea-708".equals(str));
            String str2 = format.f13755a;
            if (str2 == null) {
                trackIdGenerator.b();
                str2 = trackIdGenerator.f17185e;
            }
            Format.Builder builder = new Format.Builder();
            builder.f13764a = str2;
            builder.m = MimeTypes.p(this.f17149b);
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
