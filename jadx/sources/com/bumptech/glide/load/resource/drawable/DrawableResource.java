package com.bumptech.glide.load.resource.drawable;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DrawableResource<T extends Drawable> implements Resource<T>, Initializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Drawable f24834b;

    public DrawableResource(T t) {
        Preconditions.c(t, "Argument must not be null");
        this.f24834b = t;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        Drawable drawable = this.f24834b;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public void n() {
        Drawable drawable = this.f24834b;
        if (drawable instanceof BitmapDrawable) {
            ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
        } else if (drawable instanceof GifDrawable) {
            ((GifDrawable) drawable).c().prepareToDraw();
        }
    }
}
