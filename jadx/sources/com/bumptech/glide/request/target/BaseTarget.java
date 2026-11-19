package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class BaseTarget<Z> implements Target<Z> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Request f24955b;

    @Override // com.bumptech.glide.request.target.Target
    public Request a() {
        return this.f24955b;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void d(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void e(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void g(Request request) {
        this.f24955b = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void h(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }
}
