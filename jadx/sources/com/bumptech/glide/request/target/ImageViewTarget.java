package com.bumptech.glide.request.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.request.transition.Transition;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImageViewTarget<Z> extends ViewTarget<ImageView, Z> implements Transition.ViewAdapter {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Animatable f24958e;

    public ImageViewTarget(ImageView imageView) {
        super(imageView);
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void d(Drawable drawable) {
        i(null);
        this.f24958e = null;
        ((ImageView) this.f24959c).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.ViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void e(Drawable drawable) {
        super.e(drawable);
        Animatable animatable = this.f24958e;
        if (animatable != null) {
            animatable.stop();
        }
        i(null);
        this.f24958e = null;
        ((ImageView) this.f24959c).setImageDrawable(drawable);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void f(Object obj, Transition transition) {
        i(obj);
        if (!(obj instanceof Animatable)) {
            this.f24958e = null;
            return;
        }
        Animatable animatable = (Animatable) obj;
        this.f24958e = animatable;
        animatable.start();
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
    public final void h(Drawable drawable) {
        i(null);
        this.f24958e = null;
        ((ImageView) this.f24959c).setImageDrawable(drawable);
    }

    public abstract void i(Object obj);

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
        Animatable animatable = this.f24958e;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
        Animatable animatable = this.f24958e;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Deprecated
    public ImageViewTarget(ImageView imageView, boolean z) {
        super(imageView, z);
    }
}
