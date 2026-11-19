package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public final class OneShotPreDrawListener implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f12181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewTreeObserver f12182c;
    private final Runnable d;

    public OneShotPreDrawListener(View view, Runnable runnable) {
        this.f12181b = view;
        this.f12182c = view.getViewTreeObserver();
        this.d = runnable;
    }

    public static void a(View view, Runnable runnable) {
        if (view == null) {
            r81.d("view == null");
            return;
        }
        OneShotPreDrawListener oneShotPreDrawListener = new OneShotPreDrawListener(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(oneShotPreDrawListener);
        view.addOnAttachStateChangeListener(oneShotPreDrawListener);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        if (this.f12182c.isAlive()) {
            this.f12182c.removeOnPreDrawListener(this);
        } else {
            this.f12181b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f12181b.removeOnAttachStateChangeListener(this);
        this.d.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f12182c = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        if (this.f12182c.isAlive()) {
            this.f12182c.removeOnPreDrawListener(this);
        } else {
            this.f12181b.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f12181b.removeOnAttachStateChangeListener(this);
    }
}
