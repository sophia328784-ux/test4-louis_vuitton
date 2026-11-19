package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;

/* JADX INFO: loaded from: classes2.dex */
public class BitmapResource implements Resource<Bitmap>, Initializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bitmap f24756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BitmapPool f24757c;

    public BitmapResource(Bitmap bitmap, BitmapPool bitmapPool) {
        Preconditions.c(bitmap, "Bitmap must not be null");
        this.f24756b = bitmap;
        Preconditions.c(bitmapPool, "BitmapPool must not be null");
        this.f24757c = bitmapPool;
    }

    public static BitmapResource c(Bitmap bitmap, BitmapPool bitmapPool) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapResource(bitmap, bitmapPool);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        this.f24757c.d(this.f24756b);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f24756b;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return Util.c(this.f24756b);
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public final void n() {
        this.f24756b.prepareToDraw();
    }
}
