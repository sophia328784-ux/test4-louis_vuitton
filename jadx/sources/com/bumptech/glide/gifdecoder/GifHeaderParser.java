package com.bumptech.glide.gifdecoder;

import android.util.Log;
import com.batch.android.q0.b;
import defpackage.md;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class GifHeaderParser {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f24367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GifHeader f24368c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f24366a = new byte[256];
    public int d = 0;

    public final boolean a() {
        return this.f24368c.f24358b != 0;
    }

    public final GifHeader b() {
        byte[] bArr;
        if (this.f24367b == null) {
            md.k("You must call setData() before parseHeader()");
            return null;
        }
        if (a()) {
            return this.f24368c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < 6; i2++) {
            sb.append((char) c());
        }
        boolean zStartsWith = sb.toString().startsWith("GIF");
        GifHeader gifHeader = this.f24368c;
        if (zStartsWith) {
            gifHeader.f24361f = this.f24367b.getShort();
            this.f24368c.g = this.f24367b.getShort();
            int iC = c();
            GifHeader gifHeader2 = this.f24368c;
            gifHeader2.f24362h = (iC & 128) != 0;
            gifHeader2.f24363i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.f24368c.f24364j = c();
            GifHeader gifHeader3 = this.f24368c;
            c();
            gifHeader3.getClass();
            if (this.f24368c.f24362h && !a()) {
                GifHeader gifHeader4 = this.f24368c;
                gifHeader4.f24357a = e(gifHeader4.f24363i);
                GifHeader gifHeader5 = this.f24368c;
                gifHeader5.f24365k = gifHeader5.f24357a[gifHeader5.f24364j];
            }
        } else {
            gifHeader.f24358b = 1;
        }
        if (!a()) {
            boolean z = false;
            while (!z && !a() && this.f24368c.f24359c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.f24368c.d = new GifFrame();
                        c();
                        int iC4 = c();
                        GifFrame gifFrame = this.f24368c.d;
                        int i3 = (iC4 & 28) >> 2;
                        gifFrame.g = i3;
                        if (i3 == 0) {
                            gifFrame.g = 1;
                        }
                        gifFrame.f24352f = (iC4 & 1) != 0;
                        short s = this.f24367b.getShort();
                        if (s < 2) {
                            s = 10;
                        }
                        GifFrame gifFrame2 = this.f24368c.d;
                        gifFrame2.f24354i = s * 10;
                        gifFrame2.f24353h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i4 = 0;
                        while (true) {
                            bArr = this.f24366a;
                            if (i4 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i4]);
                            i4++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b2 = bArr[1];
                                    byte b3 = bArr[2];
                                    this.f24368c.getClass();
                                }
                                if (this.d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    GifHeader gifHeader6 = this.f24368c;
                    if (gifHeader6.d == null) {
                        gifHeader6.d = new GifFrame();
                    }
                    gifHeader6.d.f24348a = this.f24367b.getShort();
                    this.f24368c.d.f24349b = this.f24367b.getShort();
                    this.f24368c.d.f24350c = this.f24367b.getShort();
                    this.f24368c.d.d = this.f24367b.getShort();
                    int iC5 = c();
                    boolean z2 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    GifFrame gifFrame3 = this.f24368c.d;
                    gifFrame3.f24351e = (iC5 & 64) != 0;
                    if (z2) {
                        gifFrame3.f24356k = e(iPow);
                    } else {
                        gifFrame3.f24356k = null;
                    }
                    this.f24368c.d.f24355j = this.f24367b.position();
                    c();
                    f();
                    if (!a()) {
                        GifHeader gifHeader7 = this.f24368c;
                        gifHeader7.f24359c++;
                        gifHeader7.f24360e.add(gifHeader7.d);
                    }
                } else if (iC2 != 59) {
                    this.f24368c.f24358b = 1;
                } else {
                    z = true;
                }
            }
            GifHeader gifHeader8 = this.f24368c;
            if (gifHeader8.f24359c < 0) {
                gifHeader8.f24358b = 1;
            }
        }
        return this.f24368c;
    }

    public final int c() {
        try {
            return this.f24367b.get() & 255;
        } catch (Exception unused) {
            this.f24368c.f24358b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.d = iC;
        if (iC <= 0) {
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
                this.f24367b.get(this.f24366a, i2, i4);
                i2 += i4;
            } catch (Exception unused) {
                Log.isLoggable("GifHeaderParser", 3);
                this.f24368c.f24358b = 1;
                return;
            }
        }
    }

    public final int[] e(int i2) {
        byte[] bArr = new byte[i2 * 3];
        int[] iArr = null;
        try {
            this.f24367b.get(bArr);
            iArr = new int[256];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i2) {
                int i5 = bArr[i4] & 255;
                int i6 = i4 + 2;
                int i7 = bArr[i4 + 1] & 255;
                i4 += 3;
                int i8 = i3 + 1;
                iArr[i3] = (i7 << 8) | (i5 << 16) | b.v | (bArr[i6] & 255);
                i3 = i8;
            }
            return iArr;
        } catch (BufferUnderflowException unused) {
            Log.isLoggable("GifHeaderParser", 3);
            this.f24368c.f24358b = 1;
            return iArr;
        }
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.f24367b.position(Math.min(this.f24367b.position() + iC, this.f24367b.limit()));
        } while (iC > 0);
    }
}
