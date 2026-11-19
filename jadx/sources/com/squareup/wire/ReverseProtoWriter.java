package com.squareup.wire;

import defpackage.b21;
import defpackage.it0;
import defpackage.md;
import defpackage.pq0;
import defpackage.xn0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/squareup/wire/ReverseProtoWriter;", "", "<init>", "()V", "Companion", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ReverseProtoWriter {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final byte[] f43475h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Buffer f43476a = new Buffer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Buffer f43477b = new Buffer();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Buffer.UnsafeCursor f43478c = new Buffer.UnsafeCursor();
    public byte[] d = f43475h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f43479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f43480f;
    public final Lazy g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/squareup/wire/ReverseProtoWriter$Companion;", "", "", "EMPTY_ARRAY", "[B", "wire-runtime"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f43475h = new byte[0];
    }

    public ReverseProtoWriter() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.f43480f = LazyKt.a(lazyThreadSafetyMode, new it0(0));
        this.g = LazyKt.a(lazyThreadSafetyMode, new xn0(this, 17));
    }

    public final void a() {
        byte[] bArr = this.d;
        byte[] bArr2 = f43475h;
        if (bArr == bArr2) {
            return;
        }
        this.f43478c.close();
        this.f43477b.skip(this.f43479e);
        this.f43477b.u0(this.f43476a);
        Buffer buffer = this.f43476a;
        this.f43476a = this.f43477b;
        this.f43477b = buffer;
        this.d = bArr2;
        this.f43479e = 0;
    }

    public final int b() {
        return (this.d.length - this.f43479e) + ((int) this.f43476a.f77390c);
    }

    public final void c(int i2) {
        if (this.f43479e >= i2) {
            return;
        }
        a();
        Buffer buffer = this.f43477b;
        Buffer.UnsafeCursor unsafeCursor = this.f43478c;
        buffer.C(unsafeCursor);
        if (i2 <= 0) {
            b21.n(pq0.k(i2, "minByteCount <= 0: "));
            return;
        }
        if (i2 > 8192) {
            b21.n(pq0.k(i2, "minByteCount > Segment.SIZE: "));
            return;
        }
        Buffer buffer2 = unsafeCursor.f77391b;
        if (buffer2 == null) {
            md.k("not attached to a buffer");
            return;
        }
        if (!unsafeCursor.f77392c) {
            md.k("expandBuffer() only permitted for read/write buffers");
            return;
        }
        long j2 = buffer2.f77390c;
        Segment segmentK0 = buffer2.k0(i2);
        int i3 = 8192 - segmentK0.f77448c;
        segmentK0.f77448c = 8192;
        buffer2.f77390c = ((long) i3) + j2;
        unsafeCursor.d = segmentK0;
        unsafeCursor.f77393e = j2;
        byte[] bArr = segmentK0.f77446a;
        unsafeCursor.f77394f = bArr;
        unsafeCursor.g = 8192 - i3;
        unsafeCursor.f77395h = 8192;
        if (j2 == 0) {
            bArr.getClass();
            if (8192 == bArr.length) {
                byte[] bArr2 = unsafeCursor.f77394f;
                bArr2.getClass();
                this.d = bArr2;
                this.f43479e = unsafeCursor.f77395h;
                return;
            }
        }
        md.k("Check failed.");
    }

    public final void d(ByteString byteString) {
        byteString.getClass();
        int iE = byteString.e();
        while (iE != 0) {
            c(1);
            int iMin = Math.min(this.f43479e, iE);
            int i2 = this.f43479e - iMin;
            this.f43479e = i2;
            iE -= iMin;
            byteString.c(iE, i2, this.d, iMin);
        }
    }

    public final void e(int i2) {
        c(4);
        int i3 = this.f43479e;
        int i4 = i3 - 4;
        this.f43479e = i4;
        byte[] bArr = this.d;
        bArr[i4] = (byte) (i2 & 255);
        bArr[i3 - 3] = (byte) ((i2 >>> 8) & 255);
        bArr[i3 - 2] = (byte) ((i2 >>> 16) & 255);
        bArr[i3 - 1] = (byte) ((i2 >>> 24) & 255);
    }

    public final void f(long j2) {
        c(8);
        int i2 = this.f43479e;
        int i3 = i2 - 8;
        this.f43479e = i3;
        byte[] bArr = this.d;
        bArr[i3] = (byte) (j2 & 255);
        bArr[i2 - 7] = (byte) ((j2 >>> 8) & 255);
        bArr[i2 - 6] = (byte) ((j2 >>> 16) & 255);
        bArr[i2 - 5] = (byte) ((j2 >>> 24) & 255);
        bArr[i2 - 4] = (byte) ((j2 >>> 32) & 255);
        bArr[i2 - 3] = (byte) ((j2 >>> 40) & 255);
        bArr[i2 - 2] = (byte) ((j2 >>> 48) & 255);
        bArr[i2 - 1] = (byte) ((j2 >>> 56) & 255);
    }

    public final void g(int i2) {
        ProtoWriter.f43473b.getClass();
        int iA = ProtoWriter.Companion.a(i2);
        c(iA);
        int i3 = this.f43479e - iA;
        this.f43479e = i3;
        while (true) {
            int i4 = i2 & (-128);
            byte[] bArr = this.d;
            if (i4 == 0) {
                bArr[i3] = (byte) i2;
                return;
            } else {
                bArr[i3] = (byte) ((i2 & CertificateBody.profileType) | 128);
                i2 >>>= 7;
                i3++;
            }
        }
    }

    public final void h(long j2) {
        ProtoWriter.f43473b.getClass();
        int iB = ProtoWriter.Companion.b(j2);
        c(iB);
        int i2 = this.f43479e - iB;
        this.f43479e = i2;
        while (true) {
            long j3 = (-128) & j2;
            byte[] bArr = this.d;
            if (j3 == 0) {
                bArr[i2] = (byte) j2;
                return;
            } else {
                bArr[i2] = (byte) ((127 & j2) | 128);
                j2 >>>= 7;
                i2++;
            }
        }
    }
}
