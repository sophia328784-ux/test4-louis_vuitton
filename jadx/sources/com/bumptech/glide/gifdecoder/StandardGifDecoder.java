package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class StandardGifDecoder implements GifDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f24369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f24370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GifDecoder.BitmapProvider f24371c;
    public ByteBuffer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f24372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public short[] f24373f;
    public byte[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f24374h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f24375i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f24376j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f24377k;
    public GifHeader l;
    public Bitmap m;
    public final boolean n;
    public int o;
    public final int p;
    public final int q;
    public final int r;
    public Boolean s;
    public Bitmap.Config t;

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i2) {
        this(bitmapProvider);
        synchronized (this) {
            try {
                if (i2 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
                }
                int iHighestOneBit = Integer.highestOneBit(i2);
                this.o = 0;
                this.l = gifHeader;
                this.f24377k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.d.order(ByteOrder.LITTLE_ENDIAN);
                this.n = false;
                Iterator it = gifHeader.f24360e.iterator();
                while (it.hasNext()) {
                    if (((GifFrame) it.next()).g == 3) {
                        this.n = true;
                        break;
                    }
                }
                this.p = iHighestOneBit;
                int i3 = gifHeader.f24361f;
                this.r = i3 / iHighestOneBit;
                int i4 = gifHeader.g;
                this.q = i4 / iHighestOneBit;
                this.f24375i = this.f24371c.b(i3 * i4);
                this.f24376j = this.f24371c.d(this.r * this.q);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final synchronized Bitmap a() {
        try {
            if (this.l.f24359c <= 0 || this.f24377k < 0) {
                if (Log.isLoggable("StandardGifDecoder", 3)) {
                    int i2 = this.l.f24359c;
                }
                this.o = 1;
            }
            int i3 = this.o;
            if (i3 != 1 && i3 != 2) {
                this.o = 0;
                if (this.f24372e == null) {
                    this.f24372e = this.f24371c.b(255);
                }
                GifFrame gifFrame = (GifFrame) this.l.f24360e.get(this.f24377k);
                int i4 = this.f24377k - 1;
                GifFrame gifFrame2 = i4 >= 0 ? (GifFrame) this.l.f24360e.get(i4) : null;
                int[] iArr = gifFrame.f24356k;
                if (iArr == null) {
                    iArr = this.l.f24357a;
                }
                this.f24369a = iArr;
                if (iArr == null) {
                    Log.isLoggable("StandardGifDecoder", 3);
                    this.o = 1;
                    return null;
                }
                if (gifFrame.f24352f) {
                    System.arraycopy(iArr, 0, this.f24370b, 0, iArr.length);
                    int[] iArr2 = this.f24370b;
                    this.f24369a = iArr2;
                    iArr2[gifFrame.f24353h] = 0;
                    if (gifFrame.g == 2 && this.f24377k == 0) {
                        this.s = Boolean.TRUE;
                    }
                }
                return h(gifFrame, gifFrame2);
            }
            Log.isLoggable("StandardGifDecoder", 3);
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final void b() {
        this.f24377k = (this.f24377k + 1) % this.l.f24359c;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final int c() {
        return this.l.f24359c;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final void clear() {
        this.l = null;
        byte[] bArr = this.f24375i;
        GifDecoder.BitmapProvider bitmapProvider = this.f24371c;
        if (bArr != null) {
            bitmapProvider.e(bArr);
        }
        int[] iArr = this.f24376j;
        if (iArr != null) {
            bitmapProvider.f(iArr);
        }
        Bitmap bitmap = this.m;
        if (bitmap != null) {
            bitmapProvider.a(bitmap);
        }
        this.m = null;
        this.d = null;
        this.s = null;
        byte[] bArr2 = this.f24372e;
        if (bArr2 != null) {
            bitmapProvider.e(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final int d() {
        int i2;
        GifHeader gifHeader = this.l;
        int i3 = gifHeader.f24359c;
        if (i3 <= 0 || (i2 = this.f24377k) < 0) {
            return 0;
        }
        if (i2 < 0 || i2 >= i3) {
            return -1;
        }
        return ((GifFrame) gifHeader.f24360e.get(i2)).f24354i;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final int e() {
        return this.f24377k;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final int f() {
        return (this.f24376j.length * 4) + this.d.limit() + this.f24375i.length;
    }

    public final Bitmap g() {
        Boolean bool = this.s;
        Bitmap bitmapC = this.f24371c.c(this.r, this.q, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.t);
        bitmapC.setHasAlpha(true);
        return bitmapC;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final ByteBuffer getData() {
        return this.d;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Code duplicated, block: B:96:0x01d6 A[PHI: r7
      0x01d6: PHI (r7v17 int) = (r7v11 int), (r7v19 int), (r7v19 int) binds: [B:91:0x01c2, B:93:0x01cd, B:94:0x01cf] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v29, types: [short] */
    /* JADX WARN: Type inference failed for: r8v31 */
    public final Bitmap h(GifFrame gifFrame, GifFrame gifFrame2) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int[] iArr;
        int i7;
        short s;
        int i8;
        int i9;
        GifDecoder.BitmapProvider bitmapProvider = this.f24371c;
        byte b2 = 0;
        int[] iArr2 = this.f24376j;
        if (gifFrame2 == null) {
            Bitmap bitmap = this.m;
            if (bitmap != null) {
                bitmapProvider.a(bitmap);
            }
            this.m = null;
            Arrays.fill(iArr2, 0);
        }
        if (gifFrame2 != null && gifFrame2.g == 3 && this.m == null) {
            Arrays.fill(iArr2, 0);
        }
        int i10 = this.r;
        int i11 = this.p;
        if (gifFrame2 != null && (i8 = gifFrame2.g) > 0) {
            if (i8 == 2) {
                if (gifFrame.f24352f) {
                    i9 = 0;
                } else {
                    GifHeader gifHeader = this.l;
                    i9 = gifHeader.f24365k;
                    if (gifFrame.f24356k != null && gifHeader.f24364j == gifFrame.f24353h) {
                        i9 = 0;
                    }
                }
                int i12 = gifFrame2.d / i11;
                int i13 = gifFrame2.f24349b / i11;
                int i14 = gifFrame2.f24350c / i11;
                int i15 = (i13 * i10) + (gifFrame2.f24348a / i11);
                int i16 = (i12 * i10) + i15;
                while (i15 < i16) {
                    int i17 = i15 + i14;
                    for (int i18 = i15; i18 < i17; i18++) {
                        iArr2[i18] = i9;
                    }
                    i15 += i10;
                }
            } else if (i8 == 3) {
                Bitmap bitmap2 = this.m;
                if (bitmap2 != null) {
                    int i19 = this.q;
                    int i20 = this.r;
                    bitmap2.getPixels(iArr2, 0, i20, 0, 0, i20, i19);
                }
            }
        }
        this.d.position(gifFrame.f24355j);
        int i21 = gifFrame.f24350c * gifFrame.d;
        byte[] bArr = this.f24375i;
        if (bArr == null || bArr.length < i21) {
            this.f24375i = bitmapProvider.b(i21);
        }
        byte[] bArr2 = this.f24375i;
        if (this.f24373f == null) {
            this.f24373f = new short[4096];
        }
        short[] sArr = this.f24373f;
        if (this.g == null) {
            this.g = new byte[4096];
        }
        byte[] bArr3 = this.g;
        if (this.f24374h == null) {
            this.f24374h = new byte[4097];
        }
        byte[] bArr4 = this.f24374h;
        int i22 = this.d.get() & 255;
        int i23 = 1 << i22;
        int i24 = i23 + 1;
        int i25 = i23 + 2;
        int i26 = i22 + 1;
        int i27 = (1 << i26) - 1;
        for (int i28 = 0; i28 < i23; i28++) {
            sArr[i28] = 0;
            bArr3[i28] = (byte) i28;
        }
        byte[] bArr5 = this.f24372e;
        int i29 = 0;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        int i35 = 0;
        int i36 = 0;
        int i37 = i26;
        int i38 = i25;
        int i39 = i27;
        int i40 = -1;
        int i41 = -1;
        while (true) {
            if (i29 >= i21) {
                iArr2 = iArr2;
                break;
            }
            if (i30 == 0) {
                i30 = this.d.get() & 255;
                if (i30 > 0) {
                    ByteBuffer byteBuffer = this.d;
                    byteBuffer.get(this.f24372e, 0, Math.min(i30, byteBuffer.remaining()));
                }
                if (i30 <= 0) {
                    this.o = 3;
                    b2 = 0;
                    break;
                }
                i31 = 0;
            } else {
                iArr2 = iArr2;
                sArr = sArr;
                bArr5 = bArr5;
            }
            i33 += (bArr5[i31] & 255) << i32;
            i31++;
            i30--;
            i41 = i41;
            i32 += 8;
            i38 = i38;
            int i42 = i37;
            bArr3 = bArr3;
            i35 = i35;
            while (true) {
                i32 = i32;
                if (i32 < i42) {
                    i37 = i42;
                    i40 = -1;
                    break;
                }
                int i43 = i33 & i39;
                i33 >>= i42;
                i32 -= i42;
                if (i43 == i23) {
                    i42 = i26;
                    i38 = i25;
                    i39 = i27;
                    i41 = i40;
                    i32 = i32;
                } else {
                    if (i43 == i24) {
                        i37 = i42;
                        break;
                    }
                    int i44 = i42;
                    if (i41 == i40) {
                        bArr2[i34] = bArr3[i43];
                        i34++;
                        i29++;
                        i41 = i43;
                        i35 = i41;
                        i42 = i44;
                    } else {
                        if (i43 >= i38) {
                            bArr4[i36] = (byte) i35;
                            i36++;
                            s = i41;
                        } else {
                            s = i43;
                        }
                        while (s >= i23) {
                            bArr4[i36] = bArr3[s];
                            i36++;
                            s = sArr[s];
                        }
                        i35 = bArr3[s] & 255;
                        byte b3 = (byte) i35;
                        bArr2[i34] = b3;
                        while (true) {
                            i34++;
                            i29++;
                            if (i36 <= 0) {
                                break;
                            }
                            i36--;
                            bArr2[i34] = bArr4[i36];
                        }
                        int i45 = i23;
                        if (i38 < 4096) {
                            sArr[i38] = (short) i41;
                            bArr3[i38] = b3;
                            i38++;
                            if ((i38 & i39) != 0 || i38 >= 4096) {
                                i42 = i44;
                            } else {
                                i42 = i44 + 1;
                                i39 += i38;
                            }
                        } else {
                            i42 = i44;
                        }
                        i41 = i43;
                        i23 = i45;
                    }
                    i40 = -1;
                }
            }
            b2 = 0;
        }
        Arrays.fill(bArr2, i34, i21, b2);
        boolean z = gifFrame.f24351e;
        int[] iArr3 = this.f24376j;
        if (z || i11 != 1) {
            int i46 = gifFrame.d / i11;
            int i47 = gifFrame.f24349b / i11;
            int i48 = gifFrame.f24350c / i11;
            int i49 = gifFrame.f24348a / i11;
            boolean z2 = this.f24377k == 0;
            byte[] bArr6 = this.f24375i;
            int[] iArr4 = this.f24369a;
            Boolean bool = this.s;
            int i50 = 8;
            int i51 = 0;
            int i52 = 0;
            int i53 = 1;
            while (i51 < i46) {
                int i54 = i47;
                if (gifFrame.f24351e) {
                    if (i52 >= i46) {
                        i53++;
                        if (i53 == 2) {
                            i52 = 4;
                        } else if (i53 == 3) {
                            i50 = 4;
                            i52 = 2;
                        } else if (i53 == 4) {
                            i52 = 1;
                            i50 = 2;
                        }
                    }
                    i2 = i52 + i50;
                } else {
                    i2 = i52;
                    i52 = i51;
                }
                int i55 = i52 + i54;
                int i56 = i46;
                boolean z3 = i11 == 1;
                if (i55 < this.q) {
                    int i57 = i55 * i10;
                    int i58 = i57 + i49;
                    int i59 = i58 + i48;
                    int i60 = i57 + i10;
                    if (i60 < i59) {
                        i59 = i60;
                    }
                    i3 = i2;
                    int i61 = i51 * i11 * gifFrame.f24350c;
                    if (z3) {
                        int i62 = i58;
                        while (i62 < i59) {
                            int i63 = i62;
                            int i64 = iArr4[bArr6[i61] & 255];
                            if (i64 != 0) {
                                iArr3[i63] = i64;
                            } else if (z2 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i61 += i11;
                            i62 = i63 + 1;
                        }
                    } else {
                        int i65 = ((i59 - i58) * i11) + i61;
                        Boolean bool2 = bool;
                        int i66 = i61;
                        int i67 = i58;
                        while (i67 < i59) {
                            int i68 = i59;
                            int i69 = gifFrame.f24350c;
                            int i70 = i48;
                            int i71 = i66;
                            int i72 = 0;
                            int i73 = 0;
                            int i74 = 0;
                            int i75 = 0;
                            int i76 = 0;
                            while (true) {
                                if (i71 >= i66 + i11) {
                                    i6 = i49;
                                    break;
                                }
                                byte[] bArr7 = this.f24375i;
                                i6 = i49;
                                if (i71 >= bArr7.length || i71 >= i65) {
                                    break;
                                }
                                int i77 = this.f24369a[bArr7[i71] & 255];
                                if (i77 != 0) {
                                    i72 += (i77 >> 24) & 255;
                                    i73 += (i77 >> 16) & 255;
                                    i74 += (i77 >> 8) & 255;
                                    i75 += i77 & 255;
                                    i76++;
                                }
                                i71++;
                                i49 = i6;
                            }
                            int i78 = i66 + i69;
                            int i79 = i78;
                            while (i79 < i78 + i11) {
                                byte[] bArr8 = this.f24375i;
                                int i80 = i78;
                                if (i79 >= bArr8.length || i79 >= i65) {
                                    break;
                                }
                                int i81 = this.f24369a[bArr8[i79] & 255];
                                if (i81 != 0) {
                                    i72 += (i81 >> 24) & 255;
                                    i73 += (i81 >> 16) & 255;
                                    i74 += (i81 >> 8) & 255;
                                    i75 += i81 & 255;
                                    i76++;
                                }
                                i79++;
                                i78 = i80;
                            }
                            int i82 = i76 == 0 ? 0 : ((i72 / i76) << 24) | ((i73 / i76) << 16) | ((i74 / i76) << 8) | (i75 / i76);
                            if (i82 != 0) {
                                iArr3[i67] = i82;
                            } else if (z2 && bool2 == null) {
                                bool2 = Boolean.TRUE;
                            }
                            i66 += i11;
                            i67++;
                            i59 = i68;
                            i48 = i70;
                            i49 = i6;
                        }
                        i5 = i48;
                        i4 = i49;
                        bool = bool2;
                    }
                    i51++;
                    i47 = i54;
                    i46 = i56;
                    i52 = i3;
                    i48 = i5;
                    i49 = i4;
                } else {
                    i3 = i2;
                }
                i5 = i48;
                i4 = i49;
                i51++;
                i47 = i54;
                i46 = i56;
                i52 = i3;
                i48 = i5;
                i49 = i4;
            }
            if (this.s == null) {
                this.s = Boolean.valueOf(bool == null ? false : bool.booleanValue());
            }
        } else {
            int i83 = gifFrame.d;
            int i84 = gifFrame.f24349b;
            int i85 = gifFrame.f24350c;
            int i86 = gifFrame.f24348a;
            byte b4 = this.f24377k == 0 ? (byte) 1 : b2;
            byte[] bArr9 = this.f24375i;
            int[] iArr5 = this.f24369a;
            byte b5 = -1;
            for (int i87 = b2; i87 < i83; i87++) {
                int i88 = (i87 + i84) * i10;
                int i89 = i88 + i86;
                int i90 = i89 + i85;
                int i91 = i88 + i10;
                if (i91 < i90) {
                    i90 = i91;
                }
                int i92 = gifFrame.f24350c * i87;
                while (i89 < i90) {
                    int i93 = i83;
                    byte b6 = bArr9[i92];
                    int[] iArr6 = iArr3;
                    int i94 = b6 & 255;
                    if (i94 != b5) {
                        int i95 = iArr5[i94];
                        if (i95 != 0) {
                            iArr6[i89] = i95;
                        } else {
                            b5 = b6;
                        }
                    }
                    i92++;
                    i89++;
                    i83 = i93;
                    iArr3 = iArr6;
                }
            }
            Boolean bool3 = this.s;
            this.s = Boolean.valueOf((bool3 != null && bool3.booleanValue()) || !(this.s != null || b4 == 0 || b5 == -1));
        }
        if (this.n && ((i7 = gifFrame.g) == 0 || i7 == 1)) {
            if (this.m == null) {
                this.m = g();
            }
            Bitmap bitmap3 = this.m;
            int i96 = this.q;
            int i97 = this.r;
            iArr = iArr2;
            bitmap3.setPixels(iArr, 0, i97, 0, 0, i97, i96);
        } else {
            iArr = iArr2;
        }
        Bitmap bitmapG = g();
        int i98 = this.q;
        int i99 = this.r;
        bitmapG.setPixels(iArr, 0, i99, 0, 0, i99, i98);
        return bitmapG;
    }

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer) {
        this(bitmapProvider, gifHeader, byteBuffer, 1);
    }

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider) {
        this.f24370b = new int[256];
        this.t = Bitmap.Config.ARGB_8888;
        this.f24371c = bitmapProvider;
        this.l = new GifHeader();
    }
}
