package androidx.core.view;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import defpackage.yg;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class SoftwareKeyboardControllerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Impl20 f12189a;

    public static class Impl {
    }

    public static class Impl20 extends Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f12190a;

        public Impl20(View view) {
            this.f12190a = view;
        }

        public void a() {
            View view = this.f12190a;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        }

        public void b() {
            View viewFindViewById;
            View view = this.f12190a;
            if (view == null) {
                return;
            }
            if (view.isInEditMode() || view.onCheckIsTextEditor()) {
                view.requestFocus();
                viewFindViewById = view;
            } else {
                viewFindViewById = view.getRootView().findFocus();
            }
            if (viewFindViewById == null) {
                viewFindViewById = view.getRootView().findViewById(R.id.content);
            }
            if (viewFindViewById == null || !viewFindViewById.hasWindowFocus()) {
                return;
            }
            viewFindViewById.post(new yg(viewFindViewById, 2));
        }
    }

    public static class Impl30 extends Impl20 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f12191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WindowInsetsController f12192c;

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void a() {
            View view = this.f12191b;
            WindowInsetsController windowInsetsController = this.f12192c;
            if (windowInsetsController == null) {
                windowInsetsController = view != null ? view.getWindowInsetsController() : null;
            }
            if (windowInsetsController == null) {
                super.a();
                return;
            }
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: f01
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i2) {
                    atomicBoolean.set((i2 & 8) != 0);
                }
            };
            windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            if (!atomicBoolean.get() && view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
            windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
            windowInsetsController.hide(WindowInsets.Type.ime());
        }

        @Override // androidx.core.view.SoftwareKeyboardControllerCompat.Impl20
        public final void b() {
            View view = this.f12191b;
            if (view != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.f12192c;
            if (windowInsetsController == null) {
                windowInsetsController = view != null ? view.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            }
            super.b();
        }
    }

    public SoftwareKeyboardControllerCompat(View view) {
        if (Build.VERSION.SDK_INT < 30) {
            this.f12189a = new Impl20(view);
            return;
        }
        Impl30 impl30 = new Impl30(view);
        impl30.f12191b = view;
        this.f12189a = impl30;
    }

    public final void a() {
        this.f12189a.a();
    }

    public final void b() {
        this.f12189a.b();
    }

    public SoftwareKeyboardControllerCompat(WindowInsetsController windowInsetsController) {
        Impl30 impl30 = new Impl30(null);
        impl30.f12192c = windowInsetsController;
        this.f12189a = impl30;
    }
}
