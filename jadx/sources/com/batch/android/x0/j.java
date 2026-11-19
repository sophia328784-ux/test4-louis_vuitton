package com.batch.android.x0;

import com.batch.android.msgpack.core.buffer.MessageBuffer;
import com.batch.android.z0.x;
import defpackage.md;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: loaded from: classes2.dex */
public class j implements Closeable, Flushable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final boolean f24191j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f24192k = 6;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24194c;
    private final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected com.batch.android.y0.h f24195e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private MessageBuffer f24196f;
    private int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f24197h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private CharsetEncoder f24198i;

    static {
        boolean z;
        try {
            Class<?> cls = Class.forName("android.os.Build$VERSION");
            int i2 = cls.getField("SDK_INT").getInt(cls.getConstructor(null).newInstance(null));
            z = i2 >= 14 && i2 < 21;
        } catch (ClassNotFoundException unused) {
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        } catch (NoSuchFieldException e4) {
            e4.printStackTrace();
        } catch (NoSuchMethodException e5) {
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        }
        f24191j = z;
    }

    public j(com.batch.android.y0.h hVar, h.b bVar) {
        this.f24195e = (com.batch.android.y0.h) p.a(hVar, "MessageBufferOutput is null");
        this.f24193b = bVar.c();
        this.f24194c = bVar.a();
        this.d = bVar.d();
    }

    private void e() {
        if (this.f24198i == null) {
            CharsetEncoder charsetEncoderNewEncoder = h.f24170a.newEncoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            this.f24198i = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        }
        this.f24198i.reset();
    }

    private void i(int i2) throws IOException {
        c(4);
        this.f24196f.putInt(this.g, i2);
        this.g += 4;
    }

    public j a(String str) throws IOException {
        if (str.length() <= 0) {
            h(0);
            return this;
        }
        if (f24191j || str.length() < this.f24193b) {
            b(str);
            return this;
        }
        if (str.length() < 256) {
            c((str.length() * 6) + 3);
            int iA = a(this.g + 2, str);
            if (iA >= 0) {
                if (this.d && iA < 256) {
                    MessageBuffer messageBuffer = this.f24196f;
                    int i2 = this.g;
                    this.g = i2 + 1;
                    messageBuffer.putByte(i2, h.a.D);
                    MessageBuffer messageBuffer2 = this.f24196f;
                    int i3 = this.g;
                    this.g = i3 + 1;
                    messageBuffer2.putByte(i3, (byte) iA);
                    this.g += iA;
                    return this;
                }
                if (iA >= 65536) {
                    md.n("Unexpected UTF-8 encoder state");
                    return null;
                }
                MessageBuffer messageBuffer3 = this.f24196f;
                int i4 = this.g;
                messageBuffer3.putMessageBuffer(i4 + 3, messageBuffer3, i4 + 2, iA);
                MessageBuffer messageBuffer4 = this.f24196f;
                int i5 = this.g;
                this.g = i5 + 1;
                messageBuffer4.putByte(i5, h.a.E);
                this.f24196f.putShort(this.g, (short) iA);
                this.g = this.g + 2 + iA;
                return this;
            }
        } else if (str.length() < 65536) {
            c((str.length() * 6) + 5);
            int iA2 = a(this.g + 3, str);
            if (iA2 >= 0) {
                if (iA2 < 65536) {
                    MessageBuffer messageBuffer5 = this.f24196f;
                    int i6 = this.g;
                    this.g = i6 + 1;
                    messageBuffer5.putByte(i6, h.a.E);
                    this.f24196f.putShort(this.g, (short) iA2);
                    this.g = this.g + 2 + iA2;
                    return this;
                }
                if (iA2 >= 4294967296L) {
                    md.n("Unexpected UTF-8 encoder state");
                    return null;
                }
                MessageBuffer messageBuffer6 = this.f24196f;
                int i7 = this.g;
                messageBuffer6.putMessageBuffer(i7 + 5, messageBuffer6, i7 + 3, iA2);
                MessageBuffer messageBuffer7 = this.f24196f;
                int i8 = this.g;
                this.g = i8 + 1;
                messageBuffer7.putByte(i8, h.a.F);
                this.f24196f.putInt(this.g, iA2);
                this.g = this.g + 4 + iA2;
                return this;
            }
        }
        b(str);
        return this;
    }

    public j b(byte[] bArr, int i2, int i3) throws IOException {
        MessageBuffer messageBuffer = this.f24196f;
        if (messageBuffer != null) {
            int size = messageBuffer.size();
            int i4 = this.g;
            if (size - i4 >= i3 && i3 <= this.f24194c) {
                this.f24196f.putBytes(i4, bArr, i2, i3);
                this.g += i3;
                return this;
            }
        }
        flush();
        this.f24195e.a(bArr, i2, i3);
        this.f24197h += (long) i3;
        return this;
    }

    public j c(byte[] bArr, int i2, int i3) throws IOException {
        MessageBuffer messageBuffer = this.f24196f;
        if (messageBuffer != null) {
            int size = messageBuffer.size();
            int i4 = this.g;
            if (size - i4 >= i3 && i3 <= this.f24194c) {
                this.f24196f.putBytes(i4, bArr, i2, i3);
                this.g += i3;
                return this;
            }
        }
        flush();
        this.f24195e.write(bArr, i2, i3);
        this.f24197h += (long) i3;
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
        } finally {
            this.f24195e.close();
        }
    }

    public j d(int i2) throws IOException {
        if (i2 < 0) {
            md.n("array size must be >= 0");
            return null;
        }
        if (i2 < 16) {
            b((byte) (i2 | (-112)));
            return this;
        }
        if (i2 < 65536) {
            a(h.a.G, (short) i2);
            return this;
        }
        b(h.a.H, i2);
        return this;
    }

    public j f(int i2) throws IOException {
        if (i2 < -32) {
            if (i2 < -32768) {
                b(h.a.w, i2);
                return this;
            }
            if (i2 < -128) {
                a(h.a.v, (short) i2);
                return this;
            }
            a(h.a.u, (byte) i2);
            return this;
        }
        if (i2 < 128) {
            b((byte) i2);
            return this;
        }
        if (i2 < 256) {
            a(h.a.q, (byte) i2);
            return this;
        }
        if (i2 < 65536) {
            a(h.a.r, (short) i2);
            return this;
        }
        b(h.a.s, i2);
        return this;
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        if (this.g > 0) {
            b();
        }
        this.f24195e.flush();
    }

    public j g(int i2) throws IOException {
        if (i2 < 0) {
            md.n("map size must be >= 0");
            return null;
        }
        if (i2 < 16) {
            b((byte) (i2 | (-128)));
            return this;
        }
        if (i2 < 65536) {
            a(h.a.I, (short) i2);
            return this;
        }
        b(h.a.J, i2);
        return this;
    }

    public j h(int i2) throws IOException {
        if (i2 < 32) {
            b((byte) (i2 | (-96)));
            return this;
        }
        if (this.d && i2 < 256) {
            a(h.a.D, (byte) i2);
            return this;
        }
        if (i2 < 65536) {
            a(h.a.E, (short) i2);
            return this;
        }
        b(h.a.F, i2);
        return this;
    }

    public j e(int i2) throws IOException {
        if (i2 < 256) {
            a(h.a.f24179i, (byte) i2);
            return this;
        }
        if (i2 < 65536) {
            a(h.a.f24180j, (short) i2);
            return this;
        }
        b(h.a.f24181k, i2);
        return this;
    }

    public j d() throws IOException {
        b(h.a.f24176e);
        return this;
    }

    private void b(byte b2) throws IOException {
        c(1);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
    }

    private void c(int i2) throws IOException {
        MessageBuffer messageBuffer = this.f24196f;
        if (messageBuffer == null) {
            this.f24196f = this.f24195e.a(i2);
        } else if (this.g + i2 >= messageBuffer.size()) {
            b();
            this.f24196f = this.f24195e.a(i2);
        }
    }

    private void b(byte b2, int i2) throws IOException {
        c(5);
        MessageBuffer messageBuffer = this.f24196f;
        int i3 = this.g;
        this.g = i3 + 1;
        messageBuffer.putByte(i3, b2);
        this.f24196f.putInt(this.g, i2);
        this.g += 4;
    }

    public long c() {
        return this.f24197h + ((long) this.g);
    }

    private void b(short s) throws IOException {
        c(2);
        this.f24196f.putShort(this.g, s);
        this.g += 2;
    }

    private void b(long j2) throws IOException {
        c(8);
        this.f24196f.putLong(this.g, j2);
        this.g += 8;
    }

    private void b(String str) throws IOException {
        byte[] bytes = str.getBytes(h.f24170a);
        h(bytes.length);
        a(bytes);
    }

    public j b(byte[] bArr) throws IOException {
        return c(bArr, 0, bArr.length);
    }

    private void b() throws IOException {
        this.f24195e.b(this.g);
        this.f24196f = null;
        this.f24197h += (long) this.g;
        this.g = 0;
    }

    public void a() {
        this.g = 0;
    }

    private void a(byte b2, byte b3) throws IOException {
        c(2);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
        MessageBuffer messageBuffer2 = this.f24196f;
        int i3 = this.g;
        this.g = i3 + 1;
        messageBuffer2.putByte(i3, b3);
    }

    private void a(byte b2, short s) throws IOException {
        c(3);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
        this.f24196f.putShort(this.g, s);
        this.g += 2;
    }

    private void a(byte b2, float f2) throws IOException {
        c(5);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
        this.f24196f.putFloat(this.g, f2);
        this.g += 4;
    }

    private void a(byte b2, double d) throws IOException {
        c(9);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
        this.f24196f.putDouble(this.g, d);
        this.g += 8;
    }

    private void a(byte b2, long j2) throws IOException {
        c(9);
        MessageBuffer messageBuffer = this.f24196f;
        int i2 = this.g;
        this.g = i2 + 1;
        messageBuffer.putByte(i2, b2);
        this.f24196f.putLong(this.g, j2);
        this.g += 8;
    }

    public j a(boolean z) throws IOException {
        b(z ? h.a.f24178h : h.a.g);
        return this;
    }

    public j a(byte b2) throws IOException {
        if (b2 < -32) {
            a(h.a.u, b2);
            return this;
        }
        b(b2);
        return this;
    }

    public j a(short s) throws IOException {
        if (s < -32) {
            if (s < -128) {
                a(h.a.v, s);
                return this;
            }
            a(h.a.u, (byte) s);
            return this;
        }
        if (s < 128) {
            b((byte) s);
            return this;
        }
        if (s < 256) {
            a(h.a.q, (byte) s);
            return this;
        }
        a(h.a.r, s);
        return this;
    }

    public j a(long j2) throws IOException {
        if (j2 < -32) {
            if (j2 < -32768) {
                if (j2 < -2147483648L) {
                    a(h.a.x, j2);
                    return this;
                }
                b(h.a.w, (int) j2);
                return this;
            }
            if (j2 < -128) {
                a(h.a.v, (short) j2);
                return this;
            }
            a(h.a.u, (byte) j2);
            return this;
        }
        if (j2 < 128) {
            b((byte) j2);
            return this;
        }
        if (j2 < 65536) {
            if (j2 < 256) {
                a(h.a.q, (byte) j2);
                return this;
            }
            a(h.a.r, (short) j2);
            return this;
        }
        if (j2 < 4294967296L) {
            b(h.a.s, (int) j2);
            return this;
        }
        a(h.a.t, j2);
        return this;
    }

    public j a(BigInteger bigInteger) throws IOException {
        if (bigInteger.bitLength() <= 63) {
            a(bigInteger.longValue());
            return this;
        }
        if (bigInteger.bitLength() == 64 && bigInteger.signum() == 1) {
            a(h.a.t, bigInteger.longValue());
            return this;
        }
        md.n("MessagePack cannot serialize BigInteger larger than 2^64-1");
        return null;
    }

    public j a(float f2) throws IOException {
        a(h.a.o, f2);
        return this;
    }

    public j a(double d) throws IOException {
        a(h.a.p, d);
        return this;
    }

    private int a(int i2, String str) {
        e();
        MessageBuffer messageBuffer = this.f24196f;
        ByteBuffer byteBufferSliceAsByteBuffer = messageBuffer.sliceAsByteBuffer(i2, messageBuffer.size() - i2);
        int iPosition = byteBufferSliceAsByteBuffer.position();
        CoderResult coderResultEncode = this.f24198i.encode(CharBuffer.wrap(str), byteBufferSliceAsByteBuffer, true);
        if (coderResultEncode.isError()) {
            try {
                coderResultEncode.throwException();
            } catch (CharacterCodingException e2) {
                throw new l(e2);
            }
        }
        if (coderResultEncode.isUnderflow() && !coderResultEncode.isOverflow() && this.f24198i.flush(byteBufferSliceAsByteBuffer).isUnderflow()) {
            return byteBufferSliceAsByteBuffer.position() - iPosition;
        }
        return -1;
    }

    public com.batch.android.y0.h a(com.batch.android.y0.h hVar) throws IOException {
        com.batch.android.y0.h hVar2 = (com.batch.android.y0.h) p.a(hVar, "MessageBufferOutput is null");
        flush();
        com.batch.android.y0.h hVar3 = this.f24195e;
        this.f24195e = hVar2;
        this.f24197h = 0L;
        return hVar3;
    }

    public j a(x xVar) throws IOException {
        xVar.a(this);
        return this;
    }

    public j a(byte b2, int i2) throws IOException {
        if (i2 >= 256) {
            if (i2 < 65536) {
                a(h.a.m, (short) i2);
                b(b2);
                return this;
            }
            b(h.a.n, i2);
            b(b2);
            return this;
        }
        if (i2 <= 0 || ((i2 - 1) & i2) != 0) {
            a(h.a.l, (byte) i2);
            b(b2);
            return this;
        }
        if (i2 == 1) {
            a(h.a.y, b2);
            return this;
        }
        if (i2 == 2) {
            a(h.a.z, b2);
            return this;
        }
        if (i2 == 4) {
            a(h.a.A, b2);
            return this;
        }
        if (i2 == 8) {
            a(h.a.B, b2);
            return this;
        }
        if (i2 == 16) {
            a(h.a.C, b2);
            return this;
        }
        a(h.a.l, (byte) i2);
        b(b2);
        return this;
    }

    public j a(byte[] bArr) throws IOException {
        return b(bArr, 0, bArr.length);
    }
}
