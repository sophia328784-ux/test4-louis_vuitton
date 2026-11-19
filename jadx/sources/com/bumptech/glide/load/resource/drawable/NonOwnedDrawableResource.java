package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes2.dex */
final class NonOwnedDrawableResource extends DrawableResource<Drawable> {
    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class b() {
        return this.f24834b.getClass();
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        Drawable drawable = this.f24834b;
        return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
    }
}
