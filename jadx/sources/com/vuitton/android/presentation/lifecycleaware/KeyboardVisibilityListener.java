package com.vuitton.android.presentation.lifecycleaware;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.vuitton.android.presentation.lifecycleaware.KeyboardVisibilityListener;
import defpackage.y40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroid/view/View;", "view", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;", "listener", "<init>", "(Landroid/view/View;Landroidx/lifecycle/Lifecycle;Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;)V", "OnKeyboardVisibilityListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KeyboardVisibilityListener implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lifecycle f51590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnKeyboardVisibilityListener f51591c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final y40 f51592e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnKeyboardVisibilityListener {
        default void a() {
        }

        default void b() {
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [y40] */
    public KeyboardVisibilityListener(View view, Lifecycle lifecycle, OnKeyboardVisibilityListener onKeyboardVisibilityListener) {
        view.getClass();
        lifecycle.getClass();
        onKeyboardVisibilityListener.getClass();
        this.f51590b = lifecycle;
        this.f51591c = onKeyboardVisibilityListener;
        View rootView = view.getRootView();
        rootView.getClass();
        this.d = rootView;
        this.f51592e = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: y40
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Rect rect = new Rect();
                KeyboardVisibilityListener keyboardVisibilityListener = this.f81285b;
                View view2 = keyboardVisibilityListener.d;
                view2.getWindowVisibleDisplayFrame(rect);
                int height = view2.getHeight();
                double d = height - rect.bottom;
                double d2 = ((double) height) * 0.15d;
                KeyboardVisibilityListener.OnKeyboardVisibilityListener onKeyboardVisibilityListener2 = keyboardVisibilityListener.f51591c;
                if (d > d2) {
                    onKeyboardVisibilityListener2.b();
                } else {
                    onKeyboardVisibilityListener2.a();
                }
            }
        };
        lifecycle.a(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        this.d.getViewTreeObserver().addOnGlobalLayoutListener(this.f51592e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        this.d.getViewTreeObserver().removeOnGlobalLayoutListener(this.f51592e);
        this.f51590b.d(this);
    }
}
