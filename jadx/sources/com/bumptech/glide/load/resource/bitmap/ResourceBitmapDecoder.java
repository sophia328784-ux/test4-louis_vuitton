package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceBitmapDecoder implements ResourceDecoder<Uri, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ResourceDrawableDecoder f24809a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BitmapPool f24810b;

    public ResourceBitmapDecoder(ResourceDrawableDecoder resourceDrawableDecoder, BitmapPool bitmapPool) {
        this.f24809a = resourceDrawableDecoder;
        this.f24810b = bitmapPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        return "android.resource".equals(((Uri) obj).getScheme());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i2, int i3, Options options) {
        Resource resourceC = this.f24809a.c((Uri) obj, options);
        if (resourceC == null) {
            return null;
        }
        return DrawableToBitmapConverter.a(this.f24810b, (Drawable) ((DrawableResource) resourceC).get(), i2, i3);
    }
}
