package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Util;
import defpackage.md;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
public abstract class CustomTarget<T> implements Target<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24957c;
    public Request d;

    public CustomTarget(int i2, int i3) {
        if (!Util.i(i2, i3)) {
            md.n(o60.h(i2, i3, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: ", " and height: "));
            throw null;
        }
        this.f24956b = i2;
        this.f24957c = i3;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final Request a() {
        return this.d;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void b(SingleRequest singleRequest) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void c(SingleRequest singleRequest) throws Throwable {
        singleRequest.e(this.f24956b, this.f24957c);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void d(Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void g(Request request) {
        this.d = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void h(Drawable drawable) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final void onStop() {
    }

    public CustomTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }
}
