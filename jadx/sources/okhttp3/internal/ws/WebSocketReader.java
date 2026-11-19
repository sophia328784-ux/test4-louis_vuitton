package okhttp3.internal.ws;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.az;
import defpackage.md;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import java.util.zip.Inflater;
import kotlin.Metadata;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.InflaterSource;
import okio.Source;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader;", "Ljava/io/Closeable;", "", "isClient", "Lokio/BufferedSource;", Payload.SOURCE, "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "frameCallback", "perMessageDeflate", "noContextTakeover", "<init>", "(ZLokio/BufferedSource;Lokhttp3/internal/ws/WebSocketReader$FrameCallback;ZZ)V", "FrameCallback", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WebSocketReader implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f77361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BufferedSource f77362c;
    public final FrameCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f77363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f77364f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f77365h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f77366i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f77367j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f77368k;
    public boolean l;
    public boolean m;
    public final Buffer n;
    public final Buffer o;
    public MessageInflater p;
    public final byte[] q;
    public final Buffer.UnsafeCursor r;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface FrameCallback {
        void onReadClose(int i2, String str);

        void onReadMessage(String str);

        void onReadMessage(ByteString byteString);

        void onReadPing(ByteString byteString);

        void onReadPong(ByteString byteString);
    }

    public WebSocketReader(boolean z, BufferedSource bufferedSource, FrameCallback frameCallback, boolean z2, boolean z3) {
        bufferedSource.getClass();
        frameCallback.getClass();
        this.f77361b = z;
        this.f77362c = bufferedSource;
        this.d = frameCallback;
        this.f77363e = z2;
        this.f77364f = z3;
        this.n = new Buffer();
        this.o = new Buffer();
        this.q = z ? null : new byte[4];
        this.r = z ? null : new Buffer.UnsafeCursor();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.g) {
            return;
        }
        this.g = true;
        MessageInflater messageInflater = this.p;
        if (messageInflater != null) {
            _UtilCommonKt.b(messageInflater);
        }
        _UtilCommonKt.b(this.f77362c);
    }

    public final void h() {
        if (this.g) {
            md.k("closed");
            return;
        }
        k();
        if (this.l) {
            j();
            return;
        }
        int i2 = this.f77366i;
        if (i2 != 1 && i2 != 2) {
            TimeZone timeZone = _UtilJvmKt.f77018a;
            String hexString = Integer.toHexString(i2);
            hexString.getClass();
            throw new ProtocolException("Unknown opcode: ".concat(hexString));
        }
        while (!this.f77365h) {
            long j2 = this.f77367j;
            Buffer buffer = this.o;
            if (j2 > 0) {
                this.f77362c.V(buffer, j2);
                if (!this.f77361b) {
                    Buffer.UnsafeCursor unsafeCursor = this.r;
                    unsafeCursor.getClass();
                    buffer.C(unsafeCursor);
                    unsafeCursor.d(buffer.f77390c - this.f77367j);
                    byte[] bArr = this.q;
                    bArr.getClass();
                    WebSocketProtocol.b(unsafeCursor, bArr);
                    unsafeCursor.close();
                }
            }
            if (this.f77368k) {
                if (this.m) {
                    MessageInflater messageInflater = this.p;
                    if (messageInflater == null) {
                        messageInflater = new MessageInflater(this.f77364f);
                        this.p = messageInflater;
                    }
                    buffer.getClass();
                    Buffer buffer2 = messageInflater.f77354c;
                    if (buffer2.f77390c != 0) {
                        md.n("Failed requirement.");
                        return;
                    }
                    Inflater inflater = messageInflater.d;
                    if (inflater == null) {
                        inflater = new Inflater(true);
                        messageInflater.d = inflater;
                    }
                    InflaterSource inflaterSource = messageInflater.f77355e;
                    if (inflaterSource == null) {
                        inflaterSource = new InflaterSource((Source) buffer2, inflater);
                        messageInflater.f77355e = inflaterSource;
                    }
                    if (messageInflater.f77353b) {
                        inflater.reset();
                    }
                    buffer2.u0(buffer);
                    buffer2.p0(65535);
                    long bytesRead = inflater.getBytesRead() + buffer2.f77390c;
                    do {
                        inflaterSource.c(buffer, Long.MAX_VALUE);
                        if (inflater.getBytesRead() >= bytesRead) {
                            break;
                        }
                    } while (!inflater.finished());
                    if (inflater.getBytesRead() < bytesRead) {
                        buffer2.h();
                        inflaterSource.close();
                        messageInflater.f77355e = null;
                        messageInflater.d = null;
                    }
                }
                FrameCallback frameCallback = this.d;
                if (i2 == 1) {
                    frameCallback.onReadMessage(buffer.H());
                    return;
                } else {
                    frameCallback.onReadMessage(buffer.N0(buffer.f77390c));
                    return;
                }
            }
            while (!this.f77365h) {
                k();
                if (!this.l) {
                    break;
                } else {
                    j();
                }
            }
            if (this.f77366i != 0) {
                int i3 = this.f77366i;
                TimeZone timeZone2 = _UtilJvmKt.f77018a;
                String hexString2 = Integer.toHexString(i3);
                hexString2.getClass();
                throw new ProtocolException("Expected continuation opcode. Got: ".concat(hexString2));
            }
        }
        az.o("closed");
    }

    public final void j() throws ProtocolException, EOFException {
        short s;
        String strH;
        long j2 = this.f77367j;
        Buffer buffer = this.n;
        if (j2 > 0) {
            this.f77362c.V(buffer, j2);
            if (!this.f77361b) {
                Buffer.UnsafeCursor unsafeCursor = this.r;
                unsafeCursor.getClass();
                buffer.C(unsafeCursor);
                unsafeCursor.d(0L);
                byte[] bArr = this.q;
                bArr.getClass();
                WebSocketProtocol.b(unsafeCursor, bArr);
                unsafeCursor.close();
            }
        }
        int i2 = this.f77366i;
        FrameCallback frameCallback = this.d;
        switch (i2) {
            case 8:
                long j3 = buffer.f77390c;
                if (j3 == 1) {
                    throw new ProtocolException("Malformed close payload length of 1.");
                }
                if (j3 != 0) {
                    s = buffer.readShort();
                    strH = buffer.H();
                    String strA = WebSocketProtocol.a(s);
                    if (strA != null) {
                        throw new ProtocolException(strA);
                    }
                } else {
                    s = 1005;
                    strH = "";
                }
                frameCallback.onReadClose(s, strH);
                this.f77365h = true;
                return;
            case 9:
                frameCallback.onReadPing(buffer.N0(buffer.f77390c));
                return;
            case 10:
                frameCallback.onReadPong(buffer.N0(buffer.f77390c));
                return;
            default:
                int i3 = this.f77366i;
                TimeZone timeZone = _UtilJvmKt.f77018a;
                String hexString = Integer.toHexString(i3);
                hexString.getClass();
                throw new ProtocolException("Unknown control opcode: ".concat(hexString));
        }
    }

    public final void k() throws IOException {
        boolean z;
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        if (this.f77365h) {
            az.o("closed");
            return;
        }
        BufferedSource bufferedSource = this.f77362c;
        long f77457c = bufferedSource.getF77426c().getF77457c();
        bufferedSource.getF77426c().b();
        try {
            byte b2 = bufferedSource.readByte();
            byte[] bArr = _UtilCommonKt.f77016a;
            bufferedSource.getF77426c().g(f77457c, timeUnit);
            int i2 = b2 & 15;
            this.f77366i = i2;
            boolean z2 = (b2 & 128) != 0;
            this.f77368k = z2;
            boolean z3 = (b2 & 8) != 0;
            this.l = z3;
            if (z3 && !z2) {
                throw new ProtocolException("Control frames must be final.");
            }
            boolean z4 = (b2 & 64) != 0;
            if (i2 == 1 || i2 == 2) {
                if (!z4) {
                    z = false;
                } else {
                    if (!this.f77363e) {
                        throw new ProtocolException("Unexpected rsv1 flag");
                    }
                    z = true;
                }
                this.m = z;
            } else if (z4) {
                throw new ProtocolException("Unexpected rsv1 flag");
            }
            if ((b2 & 32) != 0) {
                throw new ProtocolException("Unexpected rsv2 flag");
            }
            if ((b2 & 16) != 0) {
                throw new ProtocolException("Unexpected rsv3 flag");
            }
            byte b3 = bufferedSource.readByte();
            boolean z5 = (b3 & 128) != 0;
            boolean z6 = this.f77361b;
            if (z5 == z6) {
                throw new ProtocolException(z6 ? "Server-sent frames must not be masked." : "Client-sent frames must be masked.");
            }
            long j2 = b3 & 127;
            this.f77367j = j2;
            if (j2 == 126) {
                this.f77367j = bufferedSource.readShort() & HPKE.aead_EXPORT_ONLY;
            } else if (j2 == 127) {
                long j3 = bufferedSource.readLong();
                this.f77367j = j3;
                if (j3 < 0) {
                    long j4 = this.f77367j;
                    TimeZone timeZone = _UtilJvmKt.f77018a;
                    String hexString = Long.toHexString(j4);
                    hexString.getClass();
                    throw new ProtocolException("Frame length 0x" + hexString + " > 0x7FFFFFFFFFFFFFFF");
                }
            }
            if (this.l && this.f77367j > 125) {
                throw new ProtocolException("Control frame must be less than 125B.");
            }
            if (z5) {
                byte[] bArr2 = this.q;
                bArr2.getClass();
                bufferedSource.readFully(bArr2);
            }
        } catch (Throwable th) {
            bufferedSource.getF77426c().g(f77457c, timeUnit);
            throw th;
        }
    }
}
