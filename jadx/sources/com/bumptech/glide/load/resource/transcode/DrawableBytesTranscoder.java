package com.bumptech.glide.load.resource.transcode;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;

/* JADX INFO: loaded from: classes2.dex */
public final class DrawableBytesTranscoder implements ResourceTranscoder<Drawable, byte[]> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BitmapPool f24877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ResourceTranscoder f24878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResourceTranscoder f24879c;

    public DrawableBytesTranscoder(BitmapPool bitmapPool, ResourceTranscoder<Bitmap, byte[]> resourceTranscoder, ResourceTranscoder<GifDrawable, byte[]> resourceTranscoder2) {
        this.f24877a = bitmapPool;
        this.f24878b = resourceTranscoder;
        this.f24879c = resourceTranscoder2;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public final Resource a(Resource resource, Options options) {
        Drawable drawable = (Drawable) resource.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f24878b.a(BitmapResource.c(((BitmapDrawable) drawable).getBitmap(), this.f24877a), options);
        }
        if (drawable instanceof GifDrawable) {
            return this.f24879c.a(resource, options);
        }
        return null;
    }
}
