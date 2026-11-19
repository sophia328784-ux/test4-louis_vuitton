package okhttp3.internal.ws;

import defpackage.az;
import defpackage.md;
import java.io.Closeable;
import java.io.IOException;
import java.util.Random;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import okhttp3.internal._UtilCommonKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.DeflaterSink;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/ws/WebSocketWriter;", "Ljava/io/Closeable;", "", "isClient", "Lokio/BufferedSink;", "sink", "Ljava/util/Random;", "random", "perMessageDeflate", "noContextTakeover", "", "minimumDeflateSize", "<init>", "(ZLokio/BufferedSink;Ljava/util/Random;ZZJ)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WebSocketWriter implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedSink f77370c;
    public final Random d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f77371e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f77372f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Buffer f77373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Buffer f77374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f77375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MessageDeflater f77376k;
    public final byte[] l;
    public final Buffer.UnsafeCursor m;

    public WebSocketWriter(boolean z, BufferedSink bufferedSink, Random random, boolean z2, boolean z3, long j2) {
        bufferedSink.getClass();
        random.getClass();
        this.f77369b = z;
        this.f77370c = bufferedSink;
        this.d = random;
        this.f77371e = z2;
        this.f77372f = z3;
        this.g = j2;
        this.f77373h = new Buffer();
        this.f77374i = bufferedSink.getF77441c();
        this.l = z ? new byte[4] : null;
        this.m = z ? new Buffer.UnsafeCursor() : null;
    }

    public final void c(int i2, ByteString byteString) {
        if (this.f77375j) {
            az.o("closed");
            return;
        }
        int iE = byteString.e();
        if (iE > 125) {
            md.n("Payload size must be less than or equal to 125");
            return;
        }
        Buffer buffer = this.f77374i;
        buffer.m0(i2 | 128);
        if (this.f77369b) {
            buffer.m0(iE | 128);
            byte[] bArr = this.l;
            bArr.getClass();
            this.d.nextBytes(bArr);
            buffer.write(bArr, 0, bArr.length);
            if (iE > 0) {
                long j2 = buffer.f77390c;
                buffer.l0(byteString);
                Buffer.UnsafeCursor unsafeCursor = this.m;
                unsafeCursor.getClass();
                buffer.C(unsafeCursor);
                unsafeCursor.d(j2);
                WebSocketProtocol.b(unsafeCursor, bArr);
                unsafeCursor.close();
            }
        } else {
            buffer.m0(iE);
            buffer.l0(byteString);
        }
        this.f77370c.flush();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        MessageDeflater messageDeflater = this.f77376k;
        if (messageDeflater != null) {
            _UtilCommonKt.b(messageDeflater);
        }
        _UtilCommonKt.b(this.f77370c);
    }

    public final void d(int i2, ByteString byteString) throws IOException {
        byteString.getClass();
        if (this.f77375j) {
            az.o("closed");
            return;
        }
        Buffer buffer = this.f77373h;
        buffer.l0(byteString);
        int i3 = i2 | 128;
        if (this.f77371e && byteString.e() >= this.g) {
            MessageDeflater messageDeflater = this.f77376k;
            if (messageDeflater == null) {
                messageDeflater = new MessageDeflater(this.f77372f);
                this.f77376k = messageDeflater;
            }
            DeflaterSink deflaterSink = messageDeflater.f77351e;
            Buffer buffer2 = messageDeflater.f77350c;
            if (buffer2.f77390c != 0) {
                md.n("Failed requirement.");
                return;
            }
            if (messageDeflater.f77349b) {
                messageDeflater.d.reset();
            }
            deflaterSink.D(buffer, buffer.f77390c);
            deflaterSink.flush();
            ByteString byteString2 = MessageDeflaterKt.f77352a;
            if (buffer2.B(byteString2.e(), byteString2, buffer2.f77390c - ((long) byteString2.data.length))) {
                long j2 = buffer2.f77390c - 4;
                Buffer.UnsafeCursor unsafeCursor = new Buffer.UnsafeCursor();
                buffer2.C(unsafeCursor);
                try {
                    unsafeCursor.c(j2);
                    unsafeCursor.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(unsafeCursor, th);
                        throw th2;
                    }
                }
            } else {
                buffer2.m0(0);
            }
            buffer.D(buffer2, buffer2.f77390c);
            i3 = i2 | 192;
        }
        long j3 = buffer.f77390c;
        Buffer buffer3 = this.f77374i;
        buffer3.m0(i3);
        boolean z = this.f77369b;
        int i4 = z ? 128 : 0;
        if (j3 <= 125) {
            buffer3.m0(i4 | ((int) j3));
        } else if (j3 <= 65535) {
            buffer3.m0(i4 | 126);
            buffer3.v0((int) j3);
        } else {
            buffer3.m0(i4 | CertificateBody.profileType);
            buffer3.q0(j3);
        }
        if (z) {
            byte[] bArr = this.l;
            bArr.getClass();
            this.d.nextBytes(bArr);
            buffer3.write(bArr, 0, bArr.length);
            if (j3 > 0) {
                Buffer.UnsafeCursor unsafeCursor2 = this.m;
                unsafeCursor2.getClass();
                buffer.C(unsafeCursor2);
                unsafeCursor2.d(0L);
                WebSocketProtocol.b(unsafeCursor2, bArr);
                unsafeCursor2.close();
            }
        }
        buffer3.D(buffer, j3);
        this.f77370c.flush();
    }
}
