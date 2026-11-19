package okio;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokio/PeekSource;", "Lokio/Source;", "Lokio/BufferedSource;", "upstream", "<init>", "(Lokio/BufferedSource;)V", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PeekSource implements Source {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BufferedSource f77434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer f77435c;
    public Segment d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77436e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f77437f;
    public long g;

    public PeekSource(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        this.f77434b = bufferedSource;
        Buffer f77441c = bufferedSource.getF77441c();
        this.f77435c = f77441c;
        Segment segment = f77441c.f77389b;
        this.d = segment;
        this.f77436e = segment != null ? segment.f77447b : -1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f77437f = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        if (r3 == r5.f77447b) goto L15;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long read(okio.Buffer r9, long r10) {
        /*
            r8 = this;
            r9.getClass()
            r0 = 0
            int r2 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r2 < 0) goto L65
            boolean r3 = r8.f77437f
            if (r3 != 0) goto L5f
            okio.Segment r3 = r8.d
            okio.Buffer r4 = r8.f77435c
            if (r3 == 0) goto L27
            okio.Segment r5 = r4.f77389b
            if (r3 != r5) goto L21
            int r3 = r8.f77436e
            r5.getClass()
            int r5 = r5.f77447b
            if (r3 != r5) goto L21
            goto L27
        L21:
            java.lang.String r8 = "Peek source is invalid because upstream source was used"
            defpackage.md.k(r8)
            return r0
        L27:
            if (r2 != 0) goto L2a
            return r0
        L2a:
            long r0 = r8.g
            r2 = 1
            long r0 = r0 + r2
            okio.BufferedSource r2 = r8.f77434b
            boolean r0 = r2.request(r0)
            if (r0 != 0) goto L3a
            r8 = -1
            return r8
        L3a:
            okio.Segment r0 = r8.d
            if (r0 != 0) goto L48
            okio.Segment r0 = r4.f77389b
            if (r0 == 0) goto L48
            r8.d = r0
            int r0 = r0.f77447b
            r8.f77436e = r0
        L48:
            long r0 = r4.f77390c
            long r2 = r8.g
            long r0 = r0 - r2
            long r6 = java.lang.Math.min(r10, r0)
            okio.Buffer r2 = r8.f77435c
            long r4 = r8.g
            r3 = r9
            r2.u(r3, r4, r6)
            long r9 = r8.g
            long r9 = r9 + r6
            r8.g = r9
            return r6
        L5f:
            java.lang.String r8 = "closed"
            defpackage.md.k(r8)
            return r0
        L65:
            java.lang.String r8 = "byteCount < 0: "
            java.lang.String r8 = defpackage.d21.g(r10, r8)
            defpackage.b21.n(r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.PeekSource.read(okio.Buffer, long):long");
    }

    @Override // okio.Source
    /* JADX INFO: renamed from: timeout */
    public final Timeout getF77426c() {
        return this.f77434b.getF77426c();
    }
}
