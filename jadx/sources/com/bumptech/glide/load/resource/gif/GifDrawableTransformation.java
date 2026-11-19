package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class GifDrawableTransformation implements Transformation<GifDrawable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transformation f24854b;

    public GifDrawableTransformation(Transformation<Bitmap> transformation) {
        Preconditions.c(transformation, "Argument must not be null");
        this.f24854b = transformation;
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource a(Context context, Resource resource, int i2, int i3) {
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        BitmapResource bitmapResource = new BitmapResource(gifDrawable.c(), Glide.a(context).f24276b);
        Transformation transformation = this.f24854b;
        Resource resourceA = transformation.a(context, bitmapResource, i2, i3);
        if (bitmapResource != resourceA) {
            bitmapResource.a();
        }
        gifDrawable.f24845b.f24853a.c(transformation, (Bitmap) resourceA.get());
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        this.f24854b.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof GifDrawableTransformation) {
            return this.f24854b.equals(((GifDrawableTransformation) obj).f24854b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f24854b.hashCode();
    }
}
