package com.batch.android.x0;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f24170a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f24171b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f24172c = new c();

    public static final class a {
        public static final byte A = -42;
        public static final byte B = -41;
        public static final byte C = -40;
        public static final byte D = -39;
        public static final byte E = -38;
        public static final byte F = -37;
        public static final byte G = -36;
        public static final byte H = -35;
        public static final byte I = -34;
        public static final byte J = -33;
        public static final byte K = -32;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final byte f24173a = -128;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final byte f24174b = -128;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final byte f24175c = -112;
        public static final byte d = -96;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte f24176e = -64;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final byte f24177f = -63;
        public static final byte g = -62;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final byte f24178h = -61;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final byte f24179i = -60;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final byte f24180j = -59;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final byte f24181k = -58;
        public static final byte l = -57;
        public static final byte m = -56;
        public static final byte n = -55;
        public static final byte o = -54;
        public static final byte p = -53;
        public static final byte q = -52;
        public static final byte r = -51;
        public static final byte s = -50;
        public static final byte t = -49;
        public static final byte u = -48;
        public static final byte v = -47;
        public static final byte w = -46;
        public static final byte x = -45;
        public static final byte y = -44;
        public static final byte z = -43;

        public static final boolean a(byte b2) {
            int i2 = b2 & 255;
            return i2 <= 127 || i2 >= 224;
        }

        public static final boolean b(byte b2) {
            return (b2 & K) == -96;
        }

        public static final boolean c(byte b2) {
            return (b2 & (-16)) == -112;
        }

        public static final boolean d(byte b2) {
            return (b2 & (-16)) == -128;
        }

        public static final boolean e(byte b2) {
            return (b2 & K) == -96;
        }

        public static final boolean f(byte b2) {
            return (b2 & K) == -32;
        }

        public static final boolean g(byte b2) {
            return (b2 & (-128)) == 0;
        }
    }

    private h() {
    }

    public static j a(com.batch.android.y0.h hVar) {
        return f24171b.a(hVar);
    }

    public static class b implements Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f24182b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f24183c;
        private int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f24184e;

        private b(b bVar) {
            this.f24182b = 512;
            this.f24183c = 8192;
            this.d = 8192;
            this.f24184e = true;
            this.f24182b = bVar.f24182b;
            this.f24183c = bVar.f24183c;
            this.d = bVar.d;
            this.f24184e = bVar.f24184e;
        }

        public j a(OutputStream outputStream) {
            return a(new com.batch.android.y0.i(outputStream, this.d));
        }

        public b b(int i2) {
            b bVarM31clone = m31clone();
            bVarM31clone.d = i2;
            return bVarM31clone;
        }

        public b c(int i2) {
            b bVarM31clone = m31clone();
            bVarM31clone.f24182b = i2;
            return bVarM31clone;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public b m31clone() {
            return new b(this);
        }

        public boolean d() {
            return this.f24184e;
        }

        public com.batch.android.x0.b e() {
            return new com.batch.android.x0.b(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f24182b == bVar.f24182b && this.f24183c == bVar.f24183c && this.d == bVar.d && this.f24184e == bVar.f24184e;
        }

        public int hashCode() {
            return (((((this.f24182b * 31) + this.f24183c) * 31) + this.d) * 31) + (this.f24184e ? 1 : 0);
        }

        public int b() {
            return this.d;
        }

        public int c() {
            return this.f24182b;
        }

        public j a(com.batch.android.y0.h hVar) {
            return new j(hVar, this);
        }

        public j a(WritableByteChannel writableByteChannel) {
            return a(new com.batch.android.y0.e(writableByteChannel, this.d));
        }

        public b a(int i2) {
            b bVarM31clone = m31clone();
            bVarM31clone.f24183c = i2;
            return bVarM31clone;
        }

        public int a() {
            return this.f24183c;
        }

        public b a(boolean z) {
            b bVarM31clone = m31clone();
            bVarM31clone.f24184e = z;
            return bVarM31clone;
        }

        public b() {
            this.f24182b = 512;
            this.f24183c = 8192;
            this.d = 8192;
            this.f24184e = true;
        }
    }

    public static class c implements Cloneable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f24185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f24186c;
        private CodingErrorAction d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private CodingErrorAction f24187e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f24188f;
        private int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f24189h;

        private c(c cVar) {
            this.f24185b = true;
            this.f24186c = true;
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            this.d = codingErrorAction;
            this.f24187e = codingErrorAction;
            this.f24188f = Integer.MAX_VALUE;
            this.g = 8192;
            this.f24189h = 8192;
            this.f24185b = cVar.f24185b;
            this.f24186c = cVar.f24186c;
            this.d = cVar.d;
            this.f24187e = cVar.f24187e;
            this.f24188f = cVar.f24188f;
            this.g = cVar.g;
        }

        public o a(InputStream inputStream) {
            return a(new com.batch.android.y0.f(inputStream, this.g));
        }

        public c b(boolean z) {
            c cVarM32clone = m32clone();
            cVarM32clone.f24185b = z;
            return cVarM32clone;
        }

        public c c(int i2) {
            c cVarM32clone = m32clone();
            cVarM32clone.f24188f = i2;
            return cVarM32clone;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public c m32clone() {
            return new c(this);
        }

        public boolean d() {
            return this.f24185b;
        }

        public int e() {
            return this.g;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f24185b == cVar.f24185b && this.f24186c == cVar.f24186c && this.d == cVar.d && this.f24187e == cVar.f24187e && this.f24188f == cVar.f24188f && this.f24189h == cVar.f24189h && this.g == cVar.g;
        }

        public int f() {
            return this.f24189h;
        }

        public int g() {
            return this.f24188f;
        }

        public int hashCode() {
            int i2 = (((this.f24185b ? 1 : 0) * 31) + (this.f24186c ? 1 : 0)) * 31;
            CodingErrorAction codingErrorAction = this.d;
            int iHashCode = (i2 + (codingErrorAction != null ? codingErrorAction.hashCode() : 0)) * 31;
            CodingErrorAction codingErrorAction2 = this.f24187e;
            return ((((((iHashCode + (codingErrorAction2 != null ? codingErrorAction2.hashCode() : 0)) * 31) + this.f24188f) * 31) + this.g) * 31) + this.f24189h;
        }

        public c b(CodingErrorAction codingErrorAction) {
            c cVarM32clone = m32clone();
            cVarM32clone.f24187e = codingErrorAction;
            return cVarM32clone;
        }

        public boolean c() {
            return this.f24186c;
        }

        public CodingErrorAction b() {
            return this.f24187e;
        }

        public c b(int i2) {
            c cVarM32clone = m32clone();
            cVarM32clone.f24189h = i2;
            return cVarM32clone;
        }

        public o a(com.batch.android.y0.g gVar) {
            return new o(gVar, this);
        }

        public o a(ReadableByteChannel readableByteChannel) {
            return a(new com.batch.android.y0.d(readableByteChannel, this.g));
        }

        public o a(byte[] bArr) {
            return a(new com.batch.android.y0.a(bArr));
        }

        public o a(byte[] bArr, int i2, int i3) {
            return a(new com.batch.android.y0.a(bArr, i2, i3));
        }

        public o a(ByteBuffer byteBuffer) {
            return a(new com.batch.android.y0.c(byteBuffer));
        }

        public c a(boolean z) {
            c cVarM32clone = m32clone();
            cVarM32clone.f24186c = z;
            return cVarM32clone;
        }

        public c a(CodingErrorAction codingErrorAction) {
            c cVarM32clone = m32clone();
            cVarM32clone.d = codingErrorAction;
            return cVarM32clone;
        }

        public CodingErrorAction a() {
            return this.d;
        }

        public c a(int i2) {
            c cVarM32clone = m32clone();
            cVarM32clone.g = i2;
            return cVarM32clone;
        }

        public c() {
            this.f24185b = true;
            this.f24186c = true;
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            this.d = codingErrorAction;
            this.f24187e = codingErrorAction;
            this.f24188f = Integer.MAX_VALUE;
            this.g = 8192;
            this.f24189h = 8192;
        }
    }

    public static j a(OutputStream outputStream) {
        return f24171b.a(outputStream);
    }

    public static j a(WritableByteChannel writableByteChannel) {
        return f24171b.a(writableByteChannel);
    }

    public static com.batch.android.x0.b a() {
        return f24171b.e();
    }

    public static o a(com.batch.android.y0.g gVar) {
        return f24172c.a(gVar);
    }

    public static o a(InputStream inputStream) {
        return f24172c.a(inputStream);
    }

    public static o a(ReadableByteChannel readableByteChannel) {
        return f24172c.a(readableByteChannel);
    }

    public static o a(byte[] bArr) {
        return f24172c.a(bArr);
    }

    public static o a(byte[] bArr, int i2, int i3) {
        return f24172c.a(bArr, i2, i3);
    }

    public static o a(ByteBuffer byteBuffer) {
        return f24172c.a(byteBuffer);
    }
}
