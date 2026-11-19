package com.batch.android.e0;

import android.util.Log;
import defpackage.md;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f23238e = "GifHeaderParser";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f23239f = 255;
    private static final int g = 44;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f23240h = 33;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f23241i = 59;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f23242j = 249;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f23243k = 255;
    private static final int l = 254;
    private static final int m = 1;
    private static final int n = 28;
    private static final int o = 2;
    private static final int p = 1;
    private static final int q = 128;
    private static final int r = 64;
    private static final int s = 7;
    private static final int t = 128;
    private static final int u = 7;
    static final int v = 2;
    static final int w = 10;
    private static final int x = 256;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f23245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f23246c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f23244a = new byte[256];
    private int d = 0;

    private int[] a(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.f23245b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = bArr[i4] & 255;
                int i6 = i4 + 2;
                int i7 = bArr[i4 + 1] & 255;
                i4 += 3;
                int i8 = i3 + 1;
                iArr[i3] = (i7 << 8) | (i5 << 16) | com.batch.android.q0.b.v | (bArr[i6] & 255);
                i3 = i8;
            }
            return iArr;
        } catch (BufferUnderflowException unused) {
            Log.isLoggable(f23238e, 3);
            this.f23246c.f23230b = 1;
            return iArr;
        }
    }

    private void b(int i2) {
        boolean z = false;
        while (!z && !b() && this.f23246c.f23231c <= i2) {
            int iE = e();
            if (iE == 33) {
                int iE2 = e();
                if (iE2 == 1) {
                    o();
                } else if (iE2 == 249) {
                    this.f23246c.d = new d();
                    i();
                } else if (iE2 == 254) {
                    o();
                } else if (iE2 != 255) {
                    o();
                } else {
                    g();
                    StringBuilder sb = new StringBuilder();
                    for (int i3 = 0; i3 < 11; i3++) {
                        sb.append((char) this.f23244a[i3]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        l();
                    } else {
                        o();
                    }
                }
            } else if (iE == 44) {
                e eVar = this.f23246c;
                if (eVar.d == null) {
                    eVar.d = new d();
                }
                f();
            } else if (iE != 59) {
                this.f23246c.f23230b = 1;
            } else {
                z = true;
            }
        }
    }

    private int e() {
        try {
            return this.f23245b.get() & 255;
        } catch (Exception unused) {
            this.f23246c.f23230b = 1;
            return 0;
        }
    }

    private void f() {
        this.f23246c.d.f23220a = m();
        this.f23246c.d.f23221b = m();
        this.f23246c.d.f23222c = m();
        this.f23246c.d.d = m();
        int iE = e();
        boolean z = (iE & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iE & 7) + 1);
        d dVar = this.f23246c.d;
        dVar.f23223e = (iE & 64) != 0;
        if (z) {
            dVar.f23228k = a(iPow);
        } else {
            dVar.f23228k = null;
        }
        this.f23246c.d.f23227j = this.f23245b.position();
        p();
        if (b()) {
            return;
        }
        e eVar = this.f23246c;
        eVar.f23231c++;
        eVar.f23232e.add(eVar.d);
    }

    private void g() {
        int iE = e();
        this.d = iE;
        if (iE <= 0) {
            return;
        }
        int i2 = 0;
        while (true) {
            try {
                int i3 = this.d;
                if (i2 >= i3) {
                    return;
                }
                int i4 = i3 - i2;
                this.f23245b.get(this.f23244a, i2, i4);
                i2 += i4;
            } catch (Exception unused) {
                Log.isLoggable(f23238e, 3);
                this.f23246c.f23230b = 1;
                return;
            }
        }
    }

    private void h() {
        b(Integer.MAX_VALUE);
    }

    private void i() {
        e();
        int iE = e();
        d dVar = this.f23246c.d;
        int i2 = (iE & 28) >> 2;
        dVar.g = i2;
        if (i2 == 0) {
            dVar.g = 1;
        }
        dVar.f23224f = (iE & 1) != 0;
        int iM = m();
        if (iM < 2) {
            iM = 10;
        }
        d dVar2 = this.f23246c.d;
        dVar2.f23226i = iM * 10;
        dVar2.f23225h = e();
        e();
    }

    private void j() {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 6; i2++) {
            sb.append((char) e());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.f23246c.f23230b = 1;
            return;
        }
        k();
        if (!this.f23246c.f23234h || b()) {
            return;
        }
        e eVar = this.f23246c;
        eVar.f23229a = a(eVar.f23235i);
        e eVar2 = this.f23246c;
        eVar2.l = eVar2.f23229a[eVar2.f23236j];
    }

    private void k() {
        this.f23246c.f23233f = m();
        this.f23246c.g = m();
        int iE = e();
        e eVar = this.f23246c;
        eVar.f23234h = (iE & 128) != 0;
        eVar.f23235i = (int) Math.pow(2.0d, (iE & 7) + 1);
        this.f23246c.f23236j = e();
        this.f23246c.f23237k = e();
    }

    private void l() {
        do {
            g();
            byte[] bArr = this.f23244a;
            if (bArr[0] == 1) {
                this.f23246c.m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.d <= 0) {
                return;
            }
        } while (!b());
    }

    private int m() {
        return this.f23245b.getShort();
    }

    private void n() {
        this.f23245b = null;
        Arrays.fill(this.f23244a, (byte) 0);
        this.f23246c = new e();
        this.d = 0;
    }

    private void o() {
        int iE;
        do {
            iE = e();
            this.f23245b.position(Math.min(this.f23245b.position() + iE, this.f23245b.limit()));
        } while (iE > 0);
    }

    private void p() {
        e();
        o();
    }

    public boolean c() {
        j();
        if (!b()) {
            b(2);
        }
        return this.f23246c.f23231c > 1;
    }

    public e d() {
        if (this.f23245b == null) {
            md.k("You must call setData() before parseHeader()");
            return null;
        }
        if (b()) {
            return this.f23246c;
        }
        j();
        if (!b()) {
            h();
            e eVar = this.f23246c;
            if (eVar.f23231c < 0) {
                eVar.f23230b = 1;
            }
        }
        return this.f23246c;
    }

    public f a(byte[] bArr) {
        if (bArr != null) {
            b(ByteBuffer.wrap(bArr));
            return this;
        }
        this.f23245b = null;
        this.f23246c.f23230b = 2;
        return this;
    }

    public void a() {
        this.f23245b = null;
        this.f23246c = null;
    }

    public static e a(ByteBuffer byteBuffer) {
        f fVar = new f();
        fVar.b(byteBuffer);
        return fVar.d();
    }

    public f b(ByteBuffer byteBuffer) {
        n();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.f23245b = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.f23245b.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    private boolean b() {
        return this.f23246c.f23230b != 0;
    }
}
