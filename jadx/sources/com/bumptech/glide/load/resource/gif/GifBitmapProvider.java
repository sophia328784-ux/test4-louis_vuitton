package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* JADX INFO: loaded from: classes2.dex */
public final class GifBitmapProvider implements GifDecoder.BitmapProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BitmapPool f24843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayPool f24844b;

    public GifBitmapProvider(BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f24843a = bitmapPool;
        this.f24844b = arrayPool;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void a(Bitmap bitmap) {
        this.f24843a.d(bitmap);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final byte[] b(int i2) {
        ArrayPool arrayPool = this.f24844b;
        return arrayPool == null ? new byte[i2] : (byte[]) arrayPool.c(i2, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final Bitmap c(int i2, int i3, Bitmap.Config config) {
        return this.f24843a.c(i2, i3, config);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final int[] d(int i2) {
        ArrayPool arrayPool = this.f24844b;
        return arrayPool == null ? new int[i2] : (int[]) arrayPool.c(i2, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void e(byte[] bArr) {
        ArrayPool arrayPool = this.f24844b;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void f(int[] iArr) {
        ArrayPool arrayPool = this.f24844b;
        if (arrayPool == null) {
            return;
        }
        arrayPool.put(iArr);
    }

    public GifBitmapProvider(BitmapPool bitmapPool) {
        this(bitmapPool, null);
    }
}
