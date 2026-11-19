package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes.dex */
public final class WindowInsetsControllerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Impl f12259a;

    public static class Impl {
        public abstract void a(int i2);

        public abstract boolean b();

        public abstract boolean c();

        public abstract void d(boolean z);

        public abstract void e(boolean z);

        public abstract void f();

        public abstract void g(int i2);
    }

    public static class Impl20 extends Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Window f12260a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SoftwareKeyboardControllerCompat f12261b;

        public Impl20(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this.f12260a = window;
            this.f12261b = softwareKeyboardControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a(int i2) {
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    if (i3 == 1) {
                        h(4);
                    } else if (i3 == 2) {
                        h(2);
                    } else if (i3 == 8) {
                        this.f12261b.a();
                    }
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void f() {
            this.f12260a.getDecorView().setTag(356039078, 2);
            i(2048);
            h(4096);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void g(int i2) {
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    if (i3 == 1) {
                        i(4);
                        this.f12260a.clearFlags(1024);
                    } else if (i3 == 2) {
                        i(2);
                    } else if (i3 == 8) {
                        this.f12261b.b();
                    }
                }
            }
        }

        public final void h(int i2) {
            View decorView = this.f12260a.getDecorView();
            decorView.setSystemUiVisibility(i2 | decorView.getSystemUiVisibility());
        }

        public final void i(int i2) {
            View decorView = this.f12260a.getDecorView();
            decorView.setSystemUiVisibility((~i2) & decorView.getSystemUiVisibility());
        }
    }

    public static class Impl23 extends Impl20 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean c() {
            return (this.f12260a.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void e(boolean z) {
            if (!z) {
                i(8192);
                return;
            }
            Window window = this.f12260a;
            window.clearFlags(67108864);
            window.addFlags(Integer.MIN_VALUE);
            h(8192);
        }
    }

    public static class Impl26 extends Impl23 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean b() {
            return (this.f12260a.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d(boolean z) {
            if (!z) {
                i(16);
                return;
            }
            Window window = this.f12260a;
            window.clearFlags(134217728);
            window.addFlags(Integer.MIN_VALUE);
            h(16);
        }
    }

    public static class Impl31 extends Impl30 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void f() {
            this.f12262a.setSystemBarsBehavior(2);
        }
    }

    public static class Impl35 extends Impl31 {
        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean b() {
            return (this.f12262a.getSystemBarsAppearance() & 16) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final boolean c() {
            return (this.f12262a.getSystemBarsAppearance() & 8) != 0;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void d(boolean z) {
            this.f12262a.setSystemBarsAppearance(z ? 16 : 0, 16);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl30, androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void e(boolean z) {
            this.f12262a.setSystemBarsAppearance(z ? 8 : 0, 8);
        }
    }

    public interface OnControllableInsetsChangedListener {
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat = new SoftwareKeyboardControllerCompat(view);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            this.f12259a = new Impl35(window, softwareKeyboardControllerCompat);
        } else if (i2 >= 30) {
            this.f12259a = new Impl30(window, softwareKeyboardControllerCompat);
        } else {
            this.f12259a = new Impl26(window, softwareKeyboardControllerCompat);
        }
    }

    public final void a(int i2) {
        this.f12259a.a(i2);
    }

    public final boolean b() {
        return this.f12259a.b();
    }

    public final boolean c() {
        return this.f12259a.c();
    }

    public final void d(boolean z) {
        this.f12259a.d(z);
    }

    public final void e(boolean z) {
        this.f12259a.e(z);
    }

    public final void f() {
        this.f12259a.f();
    }

    public final void g(int i2) {
        this.f12259a.g(i2);
    }

    public static class Impl30 extends Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WindowInsetsController f12262a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SoftwareKeyboardControllerCompat f12263b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Window f12264c;

        public Impl30(WindowInsetsController windowInsetsController, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            new SimpleArrayMap();
            this.f12262a = windowInsetsController;
            this.f12263b = softwareKeyboardControllerCompat;
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void a(int i2) {
            if ((i2 & 8) != 0) {
                this.f12263b.a();
            }
            this.f12262a.hide(i2 & (-9));
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean b() {
            return h(16, 16);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public boolean c() {
            return h(8192, 8);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void d(boolean z) {
            Window window = this.f12264c;
            if (window != null) {
                if (!z) {
                    i(16);
                    return;
                } else {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
                    return;
                }
            }
            WindowInsetsController windowInsetsController = this.f12262a;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(16, 16);
            } else {
                windowInsetsController.setSystemBarsAppearance(0, 16);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void e(boolean z) {
            Window window = this.f12264c;
            if (window != null) {
                if (!z) {
                    i(8192);
                    return;
                } else {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
                    return;
                }
            }
            WindowInsetsController windowInsetsController = this.f12262a;
            if (z) {
                windowInsetsController.setSystemBarsAppearance(8, 8);
            } else {
                windowInsetsController.setSystemBarsAppearance(0, 8);
            }
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public void f() {
            Window window = this.f12264c;
            if (window == null) {
                this.f12262a.setSystemBarsBehavior(2);
                return;
            }
            window.getDecorView().setTag(356039078, 2);
            i(2048);
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 4096);
        }

        @Override // androidx.core.view.WindowInsetsControllerCompat.Impl
        public final void g(int i2) {
            if ((i2 & 8) != 0) {
                this.f12263b.b();
            }
            this.f12262a.show(i2 & (-9));
        }

        public final boolean h(int i2, int i3) {
            Window window = this.f12264c;
            if (window == null) {
                this.f12262a.setSystemBarsAppearance(0, 0);
                if ((this.f12262a.getSystemBarsAppearance() & i3) != 0) {
                    return true;
                }
            } else if ((window.getDecorView().getSystemUiVisibility() & i2) != 0) {
                return true;
            }
            return false;
        }

        public final void i(int i2) {
            View decorView = this.f12264c.getDecorView();
            decorView.setSystemUiVisibility((~i2) & decorView.getSystemUiVisibility());
        }

        public Impl30(Window window, SoftwareKeyboardControllerCompat softwareKeyboardControllerCompat) {
            this(window.getInsetsController(), softwareKeyboardControllerCompat);
            this.f12264c = window;
        }
    }

    public WindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        if (Build.VERSION.SDK_INT >= 35) {
            this.f12259a = new Impl35(windowInsetsController, new SoftwareKeyboardControllerCompat(windowInsetsController));
        } else {
            this.f12259a = new Impl30(windowInsetsController, new SoftwareKeyboardControllerCompat(windowInsetsController));
        }
    }
}
