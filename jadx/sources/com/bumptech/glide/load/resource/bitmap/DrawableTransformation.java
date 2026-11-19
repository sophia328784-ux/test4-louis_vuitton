package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import defpackage.lc0;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class DrawableTransformation implements Transformation<Drawable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Transformation f24783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24784c;

    public DrawableTransformation(Transformation<Bitmap> transformation, boolean z) {
        this.f24783b = transformation;
        this.f24784c = z;
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource a(Context context, Resource resource, int i2, int i3) {
        BitmapPool bitmapPool = Glide.a(context).f24276b;
        Drawable drawable = (Drawable) resource.get();
        BitmapResource bitmapResourceA = DrawableToBitmapConverter.a(bitmapPool, drawable, i2, i3);
        if (bitmapResourceA == null) {
            if (!this.f24784c) {
                return resource;
            }
            lc0.n("Unable to convert ", drawable, " to a Bitmap");
            return null;
        }
        Resource resourceA = this.f24783b.a(context, bitmapResourceA, i2, i3);
        if (!resourceA.equals(bitmapResourceA)) {
            return new LazyBitmapDrawableResource(context.getResources(), resourceA);
        }
        resourceA.a();
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        this.f24783b.b(messageDigest);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof DrawableTransformation) {
            return this.f24783b.equals(((DrawableTransformation) obj).f24783b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.f24783b.hashCode();
    }
}
