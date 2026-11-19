package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.transition.Transition;

/* JADX INFO: loaded from: classes2.dex */
public interface Target<R> extends LifecycleListener {
    Request a();

    void b(SingleRequest singleRequest);

    void c(SingleRequest singleRequest);

    void d(Drawable drawable);

    void e(Drawable drawable);

    void f(Object obj, Transition transition);

    void g(Request request);

    void h(Drawable drawable);
}
