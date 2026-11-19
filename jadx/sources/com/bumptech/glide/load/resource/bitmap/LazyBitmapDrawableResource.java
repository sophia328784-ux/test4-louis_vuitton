package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyBitmapDrawableResource implements Resource<BitmapDrawable>, Initializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f24802b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Resource f24803c;

    public LazyBitmapDrawableResource(Resources resources, Resource resource) {
        Preconditions.c(resources, "Argument must not be null");
        this.f24802b = resources;
        Preconditions.c(resource, "Argument must not be null");
        this.f24803c = resource;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        this.f24803c.a();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return BitmapDrawable.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return new BitmapDrawable(this.f24802b, (Bitmap) this.f24803c.get());
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return this.f24803c.getSize();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public final void n() {
        Resource resource = this.f24803c;
        if (resource instanceof Initializable) {
            ((Initializable) resource).n();
        }
    }
}
