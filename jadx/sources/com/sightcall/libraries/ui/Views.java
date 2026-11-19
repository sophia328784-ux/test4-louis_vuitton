package com.sightcall.libraries.ui;

import android.animation.Animator;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import defpackage.e31;
import defpackage.m21;
import defpackage.tr;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0019\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u0002H\u0001¢\u0006\u0002\u0010\u0003\u001a\u001e\u0010\u0004\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u001e\u0010\b\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0007\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r\u001a\u0012\u0010\u000e\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0010\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0006\u001a\n\u0010\u0013\u001a\u00020\u0012*\u00020\u0006\u001a\u0012\u0010\u0014\u001a\u00020\u00062\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016\u001a\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u000b*\u00020\u0002¢\u0006\u0002\u0010\u0018\u001a;\u0010\u0019\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\b\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\u0002\b\u001f\u001a3\u0010 \u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\b\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\u0002\b\u001f\u001a3\u0010\u001a\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001c2\u001f\b\u0002\u0010\u001d\u001a\u0019\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000b0\u001e¢\u0006\u0002\b\u001f\u001a\u0012\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"*\u00020\u0002H\u0007¨\u0006$"}, d2 = {"generateAndSetId", "V", "Landroid/view/View;", "(Landroid/view/View;)Landroid/view/View;", "setVisible", "visible", "", "changeAlpha", "setInvisible", "invisible", "onFirstLayout", "", "runnable", "Lkotlin/Function0;", "removeOnGlobalLayoutListenerCompat", "listener", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "toVisibility", "", "toInvisibility", "checkMainThread", "observer", "Lio/reactivex/rxjava3/core/Observer;", "removeFromParent", "(Landroid/view/View;)Lkotlin/Unit;", "reveal", "show", "duration", "", "consumer", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "hide", "layoutSizeChangedEvents", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/ui/ViewLayoutSizeChangeEvent;", "ui_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class Views {
    public static final boolean checkMainThread(Observer<?> observer) {
        observer.getClass();
        if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            return true;
        }
        observer.onSubscribe(Disposable.f(Functions.f70037b));
        observer.onError(new IllegalStateException(tr.g("Expected to be called on the main thread but was ", Thread.currentThread().getName())));
        return false;
    }

    public static final <V extends View> V generateAndSetId(V v) {
        v.getClass();
        v.setId(View.generateViewId());
        return v;
    }

    public static final void hide(View view, long j2, Function2<? super View, ? super Boolean, Unit> function2) {
        view.getClass();
        function2.getClass();
        if (view.getAlpha() != Call.Parameters.DEFAULT_CAMERA_ZOOM && view.getVisibility() == 0) {
            view.animate().setListener(new AnimatorCompletionListener(new m21(function2, view, 28))).alpha(Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(j2);
        }
    }

    public static /* synthetic */ void hide$default(View view, long j2, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function2 = new e31(12);
        }
        hide(view, j2, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit hide$lambda$0(View view, boolean z) {
        view.getClass();
        setVisible$default(view, z, false, 2, null);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit hide$lambda$1(Function2 function2, View view, Animator animator) {
        animator.getClass();
        function2.invoke(view, Boolean.FALSE);
        return Unit.f71739a;
    }

    public static final Observable<ViewLayoutSizeChangeEvent> layoutSizeChangedEvents(View view) {
        view.getClass();
        return new ViewLayoutSizeChangeEventObservable(view);
    }

    public static final void onFirstLayout(final View view, final Function0<Unit> function0) {
        view.getClass();
        function0.getClass();
        view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.sightcall.libraries.ui.Views.onFirstLayout.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                Views.removeOnGlobalLayoutListenerCompat(view, this);
                function0.mo47invoke();
            }
        });
    }

    public static final Unit removeFromParent(View view) {
        view.getClass();
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return null;
        }
        viewGroup.removeView(view);
        return Unit.f71739a;
    }

    public static final void removeOnGlobalLayoutListenerCompat(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        view.getClass();
        onGlobalLayoutListener.getClass();
        view.getViewTreeObserver().removeOnGlobalLayoutListener(onGlobalLayoutListener);
    }

    public static final void reveal(View view, boolean z, long j2, Function2<? super View, ? super Boolean, Unit> function2) {
        view.getClass();
        function2.getClass();
        if (z) {
            show(view, j2, function2);
        } else {
            hide(view, j2, function2);
        }
    }

    public static /* synthetic */ void reveal$default(View view, boolean z, long j2, Function2 function2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            function2 = new e31(14);
        }
        reveal(view, z, j2, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reveal$lambda$0(View view, boolean z) {
        view.getClass();
        setVisible$default(view, z, false, 2, null);
        return Unit.f71739a;
    }

    public static final View setInvisible(View view, boolean z, boolean z2) {
        view.getClass();
        view.setVisibility(z ? 4 : 0);
        if (z2) {
            view.setAlpha(z ? Call.Parameters.DEFAULT_CAMERA_ZOOM : 1.0f);
        }
        return view;
    }

    public static /* synthetic */ View setInvisible$default(View view, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return setInvisible(view, z, z2);
    }

    public static final View setVisible(View view, boolean z, boolean z2) {
        view.getClass();
        view.setVisibility(z ? 0 : 8);
        if (z2) {
            view.setAlpha(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        return view;
    }

    public static /* synthetic */ View setVisible$default(View view, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z2 = false;
        }
        return setVisible(view, z, z2);
    }

    public static final void show(View view, long j2, Function2<? super View, ? super Boolean, Unit> function2) {
        view.getClass();
        function2.getClass();
        if (view.getAlpha() == 1.0f && view.getVisibility() == 0) {
            return;
        }
        function2.invoke(view, Boolean.TRUE);
        view.animate().alpha(1.0f).setDuration(j2);
    }

    public static /* synthetic */ void show$default(View view, long j2, Function2 function2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function2 = new e31(13);
        }
        show(view, j2, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit show$lambda$0(View view, boolean z) {
        view.getClass();
        setVisible$default(view, z, false, 2, null);
        return Unit.f71739a;
    }

    public static final int toInvisibility(boolean z) {
        return z ? 4 : 0;
    }

    public static final int toVisibility(boolean z) {
        return z ? 0 : 8;
    }

    public static final View setInvisible(View view, boolean z) {
        view.getClass();
        return setInvisible$default(view, z, false, 2, null);
    }

    public static final View setVisible(View view, boolean z) {
        view.getClass();
        return setVisible$default(view, z, false, 2, null);
    }
}
