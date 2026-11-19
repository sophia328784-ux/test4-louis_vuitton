package okio.internal;

import defpackage.no0;
import java.io.IOException;
import kotlin.Metadata;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lokio/internal/FixedLengthSource;", "Lokio/ForwardingSource;", "Lokio/Source;", "delegate", "", "size", "", "truncate", "<init>", "(Lokio/Source;JZ)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FixedLengthSource extends ForwardingSource {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f77477h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f77478i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f77479j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(Source source, long j2, boolean z) {
        super(source);
        source.getClass();
        this.f77477h = j2;
        this.f77478i = z;
    }

    @Override // okio.ForwardingSource, okio.Source
    public final long read(Buffer buffer, long j2) throws IOException {
        buffer.getClass();
        long j3 = this.f77479j;
        long j4 = this.f77477h;
        if (j3 > j4) {
            j2 = 0;
        } else if (this.f77478i) {
            long j5 = j4 - j3;
            if (j5 == 0) {
                return -1L;
            }
            j2 = Math.min(j2, j5);
        }
        long j6 = super.read(buffer, j2);
        if (j6 != -1) {
            this.f77479j += j6;
        }
        long j7 = this.f77479j;
        if ((j7 >= j4 || j6 != -1) && j7 <= j4) {
            return j6;
        }
        if (j6 > 0 && j7 > j4) {
            long j8 = buffer.f77390c - (j7 - j4);
            Buffer buffer2 = new Buffer();
            buffer2.u0(buffer);
            buffer.D(buffer2, j8);
            buffer2.h();
        }
        no0.p("expected ", j4, " bytes but got ", this.f77479j);
        return 0L;
    }
}
