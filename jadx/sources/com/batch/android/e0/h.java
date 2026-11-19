package com.batch.android.e0;

import android.graphics.Bitmap;
import android.util.Log;
import defpackage.r81;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class h implements b {
    private static final String A = "h";
    private static final int B = 4096;
    private static final int C = -1;
    private static final int D = -1;
    private static final int E = 4;
    private static final int F = 255;
    private static final int G = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int[] f23248f;
    private final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b.a f23249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ByteBuffer f23250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private byte[] f23251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private f f23252k;
    private short[] l;
    private byte[] m;
    private byte[] n;
    private byte[] o;
    private int[] p;
    private int q;
    private e r;
    private Bitmap s;
    private boolean t;
    private int u;
    private int v;
    private int w;
    private int x;
    private Boolean y;
    private Bitmap.Config z;

    public h(b.a aVar) {
        this.g = new int[256];
        this.z = Bitmap.Config.ARGB_8888;
        this.f23249h = aVar;
        this.r = new e();
    }

    private void a(d dVar) {
        int i2;
        int i3;
        int i4;
        int i5;
        int[] iArr = this.p;
        int i6 = dVar.d;
        int i7 = this.v;
        int i8 = i6 / i7;
        int i9 = dVar.f23221b / i7;
        int i10 = dVar.f23222c / i7;
        int i11 = dVar.f23220a / i7;
        boolean z = this.q == 0;
        int i12 = this.x;
        int i13 = this.w;
        byte[] bArr = this.o;
        int[] iArr2 = this.f23248f;
        Boolean bool = this.y;
        int i14 = 8;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1;
        while (i16 < i8) {
            int[] iArr3 = iArr;
            if (dVar.f23223e) {
                if (i15 >= i8) {
                    int i18 = i17 + 1;
                    i2 = i8;
                    if (i18 == 2) {
                        i17 = i18;
                        i15 = 4;
                    } else if (i18 != 3) {
                        i17 = i18;
                        if (i18 == 4) {
                            i15 = 1;
                            i14 = 2;
                        }
                    } else {
                        i17 = i18;
                        i14 = 4;
                        i15 = 2;
                    }
                } else {
                    i2 = i8;
                }
                i3 = i15 + i14;
            } else {
                i2 = i8;
                i3 = i15;
                i15 = i16;
            }
            int i19 = i15 + i9;
            boolean z2 = i7 == 1;
            if (i19 < i13) {
                int i20 = i19 * i12;
                int i21 = i20 + i11;
                int i22 = i21 + i10;
                int i23 = i20 + i12;
                if (i23 < i22) {
                    i22 = i23;
                }
                i4 = i3;
                int i24 = i16 * i7 * dVar.f23222c;
                if (z2) {
                    int i25 = i21;
                    while (i25 < i22) {
                        int i26 = i25;
                        int i27 = iArr2[bArr[i24] & 255];
                        if (i27 != 0) {
                            iArr3[i26] = i27;
                        } else if (z && bool == null) {
                            bool = Boolean.TRUE;
                        }
                        i24 += i7;
                        i25 = i26 + 1;
                    }
                } else {
                    int i28 = ((i22 - i21) * i7) + i24;
                    i5 = i7;
                    int i29 = i21;
                    while (i29 < i22) {
                        int i30 = i22;
                        int iA = a(i24, i28, dVar.f23222c);
                        if (iA != 0) {
                            iArr3[i29] = iA;
                        } else if (z && bool == null) {
                            bool = Boolean.TRUE;
                        }
                        i24 += i5;
                        i29++;
                        i22 = i30;
                    }
                }
                i16++;
                i7 = i5;
                iArr = iArr3;
                i8 = i2;
                i15 = i4;
            } else {
                i4 = i3;
            }
            i5 = i7;
            i16++;
            i7 = i5;
            iArr = iArr3;
            i8 = i2;
            i15 = i4;
        }
        if (this.y == null) {
            this.y = Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13, types: [short] */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    private void c(d dVar) {
        int i2;
        int i3;
        short s;
        h hVar = this;
        if (dVar != null) {
            hVar.f23250i.position(dVar.f23227j);
        }
        if (dVar == null) {
            e eVar = hVar.r;
            i2 = eVar.f23233f;
            i3 = eVar.g;
        } else {
            i2 = dVar.f23222c;
            i3 = dVar.d;
        }
        int i4 = i2 * i3;
        byte[] bArr = hVar.o;
        if (bArr == null || bArr.length < i4) {
            hVar.o = hVar.f23249h.a(i4);
        }
        byte[] bArr2 = hVar.o;
        if (hVar.l == null) {
            hVar.l = new short[4096];
        }
        short[] sArr = hVar.l;
        if (hVar.m == null) {
            hVar.m = new byte[4096];
        }
        byte[] bArr3 = hVar.m;
        if (hVar.n == null) {
            hVar.n = new byte[4097];
        }
        byte[] bArr4 = hVar.n;
        int iR = hVar.r();
        int i5 = 1 << iR;
        int i6 = i5 + 1;
        int i7 = i5 + 2;
        int i8 = iR + 1;
        int i9 = (1 << i8) - 1;
        byte b2 = 0;
        for (int i10 = 0; i10 < i5; i10++) {
            sArr[i10] = 0;
            bArr3[i10] = (byte) i10;
        }
        byte[] bArr5 = hVar.f23251j;
        int i11 = i8;
        int i12 = i7;
        int i13 = i9;
        int i14 = 0;
        int iQ = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int i21 = -1;
        while (i14 < i4) {
            if (iQ == 0) {
                iQ = hVar.q();
                if (iQ <= 0) {
                    hVar.u = 3;
                    break;
                }
                i18 = b2;
            }
            i16 += (bArr5[i18] & 255) << i17;
            i18++;
            iQ--;
            int i22 = i17 + 8;
            int i23 = i20;
            int i24 = i21;
            int i25 = i11;
            short[] sArr2 = sArr;
            i12 = i12;
            while (true) {
                if (i22 < i25) {
                    bArr3 = bArr3;
                    i20 = i23;
                    break;
                }
                bArr3 = bArr3;
                int i26 = i16 & i13;
                i16 >>= i25;
                i22 -= i25;
                if (i26 == i5) {
                    i25 = i8;
                    i12 = i7;
                    i13 = i9;
                    i24 = -1;
                } else {
                    if (i26 == i6) {
                        i20 = i23;
                        break;
                    }
                    byte[] bArr6 = bArr4;
                    if (i24 == -1) {
                        bArr2[i15] = bArr3[i26];
                        i15++;
                        i14++;
                        i24 = i26;
                        i23 = i24;
                        bArr4 = bArr6;
                    } else {
                        if (i26 >= i12) {
                            bArr6[i19] = (byte) i23;
                            i19++;
                            s = i24;
                        } else {
                            s = i26;
                        }
                        while (s >= i5) {
                            bArr6[i19] = bArr3[s];
                            i19++;
                            s = sArr2[s];
                        }
                        int i27 = bArr3[s] & 255;
                        byte b3 = (byte) i27;
                        bArr2[i15] = b3;
                        while (true) {
                            i15++;
                            i14++;
                            if (i19 <= 0) {
                                break;
                            }
                            i19--;
                            bArr2[i15] = bArr6[i19];
                        }
                        if (i12 < 4096) {
                            sArr2[i12] = (short) i24;
                            bArr3[i12] = b3;
                            i12++;
                            if ((i12 & i13) == 0 && i12 < 4096) {
                                i25++;
                                i13 += i12;
                            }
                        }
                        i24 = i26;
                        bArr4 = bArr6;
                        i23 = i27;
                    }
                }
            }
            i17 = i22;
            sArr = sArr2;
            bArr3 = bArr3;
            b2 = 0;
            i21 = i24;
            i11 = i25;
            hVar = this;
        }
        Arrays.fill(bArr2, i15, i4, b2);
    }

    private f o() {
        if (this.f23252k == null) {
            this.f23252k = new f();
        }
        return this.f23252k;
    }

    private Bitmap p() {
        Boolean bool = this.y;
        Bitmap bitmapA = this.f23249h.a(this.x, this.w, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.z);
        bitmapA.setHasAlpha(true);
        return bitmapA;
    }

    private int q() {
        int iR = r();
        if (iR <= 0) {
            return iR;
        }
        ByteBuffer byteBuffer = this.f23250i;
        byteBuffer.get(this.f23251j, 0, Math.min(iR, byteBuffer.remaining()));
        return iR;
    }

    private int r() {
        return this.f23250i.get() & 255;
    }

    @Override // com.batch.android.e0.b
    public synchronized Bitmap b() {
        try {
            if (this.r.f23231c <= 0 || this.q < 0) {
                if (Log.isLoggable(A, 3)) {
                    int i2 = this.r.f23231c;
                }
                this.u = 1;
            }
            int i3 = this.u;
            if (i3 != 1 && i3 != 2) {
                this.u = 0;
                if (this.f23251j == null) {
                    this.f23251j = this.f23249h.a(255);
                }
                d dVar = this.r.f23232e.get(this.q);
                int i4 = this.q - 1;
                d dVar2 = i4 >= 0 ? this.r.f23232e.get(i4) : null;
                int[] iArr = dVar.f23228k;
                if (iArr == null) {
                    iArr = this.r.f23229a;
                }
                this.f23248f = iArr;
                if (iArr == null) {
                    Log.isLoggable(A, 3);
                    this.u = 1;
                    return null;
                }
                if (dVar.f23224f) {
                    System.arraycopy(iArr, 0, this.g, 0, iArr.length);
                    int[] iArr2 = this.g;
                    this.f23248f = iArr2;
                    iArr2[dVar.f23225h] = 0;
                }
                return a(dVar, dVar2);
            }
            Log.isLoggable(A, 3);
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.batch.android.e0.b
    public void clear() {
        this.r = null;
        byte[] bArr = this.o;
        if (bArr != null) {
            this.f23249h.a(bArr);
        }
        int[] iArr = this.p;
        if (iArr != null) {
            this.f23249h.a(iArr);
        }
        Bitmap bitmap = this.s;
        if (bitmap != null) {
            this.f23249h.a(bitmap);
        }
        this.s = null;
        this.f23250i = null;
        this.y = null;
        byte[] bArr2 = this.f23251j;
        if (bArr2 != null) {
            this.f23249h.a(bArr2);
        }
    }

    @Override // com.batch.android.e0.b
    public int d() {
        return this.r.g;
    }

    @Override // com.batch.android.e0.b
    public int e() {
        return this.r.f23231c;
    }

    @Override // com.batch.android.e0.b
    public int f() {
        int i2;
        if (this.r.f23231c <= 0 || (i2 = this.q) < 0) {
            return 0;
        }
        return a(i2);
    }

    @Override // com.batch.android.e0.b
    public ByteBuffer g() {
        return this.f23250i;
    }

    @Override // com.batch.android.e0.b
    public int h() {
        return this.r.m;
    }

    @Override // com.batch.android.e0.b
    public int i() {
        return this.u;
    }

    @Override // com.batch.android.e0.b
    public int j() {
        return (this.p.length * 4) + this.f23250i.limit() + this.o.length;
    }

    @Override // com.batch.android.e0.b
    public int k() {
        return this.r.f23233f;
    }

    @Override // com.batch.android.e0.b
    public int l() {
        int i2 = this.r.m;
        if (i2 == -1) {
            return 1;
        }
        if (i2 == 0) {
            return 0;
        }
        return i2 + 1;
    }

    @Override // com.batch.android.e0.b
    @Deprecated
    public int m() {
        int i2 = this.r.m;
        if (i2 == -1) {
            return 1;
        }
        return i2;
    }

    @Override // com.batch.android.e0.b
    public void n() {
        this.q = -1;
    }

    @Override // com.batch.android.e0.b
    public synchronized int read(byte[] bArr) {
        try {
            e eVarD = o().a(bArr).d();
            this.r = eVarD;
            if (bArr != null) {
                a(eVarD, bArr);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.u;
    }

    public h(b.a aVar, e eVar, ByteBuffer byteBuffer) {
        this(aVar, eVar, byteBuffer, 1);
    }

    public h(b.a aVar, e eVar, ByteBuffer byteBuffer, int i2) {
        this(aVar);
        a(eVar, byteBuffer, i2);
    }

    public h(b.a aVar, ByteBuffer byteBuffer) {
        this(aVar, f.a(byteBuffer), byteBuffer, 1);
    }

    private void b(d dVar) {
        d dVar2 = dVar;
        int[] iArr = this.p;
        int i2 = dVar2.d;
        int i3 = dVar2.f23221b;
        int i4 = dVar2.f23222c;
        int i5 = dVar2.f23220a;
        boolean z = this.q == 0;
        int i6 = this.x;
        byte[] bArr = this.o;
        int[] iArr2 = this.f23248f;
        int i7 = 0;
        byte b2 = -1;
        while (i7 < i2) {
            int i8 = (i7 + i3) * i6;
            int i9 = i8 + i5;
            int i10 = i9 + i4;
            int i11 = i8 + i6;
            if (i11 < i10) {
                i10 = i11;
            }
            int i12 = dVar2.f23222c * i7;
            int i13 = i9;
            while (i13 < i10) {
                byte b3 = bArr[i12];
                int[] iArr3 = iArr;
                int i14 = b3 & 255;
                if (i14 != b2) {
                    int i15 = iArr2[i14];
                    if (i15 != 0) {
                        iArr3[i13] = i15;
                    } else {
                        b2 = b3;
                    }
                }
                i12++;
                i13++;
                iArr = iArr3;
            }
            i7++;
            dVar2 = dVar;
        }
        this.y = Boolean.valueOf(this.y == null && z && b2 != -1);
    }

    @Override // com.batch.android.e0.b
    public int a() {
        return this.q;
    }

    @Override // com.batch.android.e0.b
    public int a(InputStream inputStream, int i2) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2 > 0 ? i2 + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int i3 = inputStream.read(bArr, 0, 16384);
                    if (i3 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i3);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException unused) {
            }
        } else {
            this.u = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused2) {
            }
        }
        return this.u;
    }

    @Override // com.batch.android.e0.b
    public synchronized void a(e eVar, byte[] bArr) {
        a(eVar, ByteBuffer.wrap(bArr));
    }

    @Override // com.batch.android.e0.b
    public synchronized void a(e eVar, ByteBuffer byteBuffer) {
        a(eVar, byteBuffer, 1);
    }

    @Override // com.batch.android.e0.b
    public synchronized void a(e eVar, ByteBuffer byteBuffer, int i2) {
        try {
            if (i2 > 0) {
                int iHighestOneBit = Integer.highestOneBit(i2);
                this.u = 0;
                this.r = eVar;
                this.q = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f23250i = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f23250i.order(ByteOrder.LITTLE_ENDIAN);
                this.t = false;
                Iterator<d> it = eVar.f23232e.iterator();
                while (it.hasNext()) {
                    if (it.next().g == 3) {
                        this.t = true;
                        break;
                    }
                }
                this.v = iHighestOneBit;
                int i3 = eVar.f23233f;
                this.x = i3 / iHighestOneBit;
                int i4 = eVar.g;
                this.w = i4 / iHighestOneBit;
                this.o = this.f23249h.a(i3 * i4);
                this.p = this.f23249h.b(this.x * this.w);
            } else {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.batch.android.e0.b
    public void a(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config != config3 && config != (config2 = Bitmap.Config.RGB_565)) {
            r81.f("Unsupported format: ", config, ", must be one of ", config3, " or ", config2);
        } else {
            this.z = config;
        }
    }

    private Bitmap a(d dVar, d dVar2) {
        int i2;
        int i3;
        Bitmap bitmap;
        int[] iArr = this.p;
        int i4 = 0;
        if (dVar2 == null) {
            Bitmap bitmap2 = this.s;
            if (bitmap2 != null) {
                this.f23249h.a(bitmap2);
            }
            this.s = null;
            Arrays.fill(iArr, 0);
        }
        if (dVar2 != null && dVar2.g == 3 && this.s == null) {
            Arrays.fill(iArr, 0);
        }
        if (dVar2 != null && (i3 = dVar2.g) > 0) {
            if (i3 == 2) {
                if (!dVar.f23224f) {
                    e eVar = this.r;
                    int i5 = eVar.l;
                    if (dVar.f23228k == null || eVar.f23236j != dVar.f23225h) {
                        i4 = i5;
                    }
                } else if (this.q == 0) {
                    this.y = Boolean.TRUE;
                }
                int i6 = dVar2.d;
                int i7 = this.v;
                int i8 = i6 / i7;
                int i9 = dVar2.f23221b / i7;
                int i10 = dVar2.f23222c / i7;
                int i11 = dVar2.f23220a / i7;
                int i12 = this.x;
                int i13 = (i9 * i12) + i11;
                int i14 = (i8 * i12) + i13;
                while (i13 < i14) {
                    int i15 = i13 + i10;
                    for (int i16 = i13; i16 < i15; i16++) {
                        iArr[i16] = i4;
                    }
                    i13 += this.x;
                }
            } else if (i3 == 3 && (bitmap = this.s) != null) {
                int i17 = this.x;
                bitmap.getPixels(iArr, 0, i17, 0, 0, i17, this.w);
            }
        }
        c(dVar);
        if (!dVar.f23223e && this.v == 1) {
            b(dVar);
        } else {
            a(dVar);
        }
        if (this.t && ((i2 = dVar.g) == 0 || i2 == 1)) {
            if (this.s == null) {
                this.s = p();
            }
            Bitmap bitmap3 = this.s;
            int i18 = this.x;
            bitmap3.setPixels(iArr, 0, i18, 0, 0, i18, this.w);
        }
        Bitmap bitmapP = p();
        int i19 = this.x;
        bitmapP.setPixels(iArr, 0, i19, 0, 0, i19, this.w);
        return bitmapP;
    }

    @Override // com.batch.android.e0.b
    public int a(int i2) {
        if (i2 < 0) {
            return -1;
        }
        e eVar = this.r;
        if (i2 < eVar.f23231c) {
            return eVar.f23232e.get(i2).f23226i;
        }
        return -1;
    }

    private int a(int i2, int i3, int i4) {
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        for (int i10 = i2; i10 < this.v + i2; i10++) {
            byte[] bArr = this.o;
            if (i10 >= bArr.length || i10 >= i3) {
                break;
            }
            int i11 = this.f23248f[bArr[i10] & 255];
            if (i11 != 0) {
                i8 += (i11 >> 24) & 255;
                i7 += (i11 >> 16) & 255;
                i6 += (i11 >> 8) & 255;
                i5 += i11 & 255;
                i9++;
            }
        }
        int i12 = i2 + i4;
        for (int i13 = i12; i13 < this.v + i12; i13++) {
            byte[] bArr2 = this.o;
            if (i13 >= bArr2.length || i13 >= i3) {
                break;
            }
            int i14 = this.f23248f[bArr2[i13] & 255];
            if (i14 != 0) {
                i8 += (i14 >> 24) & 255;
                i7 += (i14 >> 16) & 255;
                i6 += (i14 >> 8) & 255;
                i5 += i14 & 255;
                i9++;
            }
        }
        if (i9 == 0) {
            return 0;
        }
        return ((i8 / i9) << 24) | ((i7 / i9) << 16) | ((i6 / i9) << 8) | (i5 / i9);
    }

    @Override // com.batch.android.e0.b
    public void c() {
        this.q = (this.q + 1) % this.r.f23231c;
    }
}
