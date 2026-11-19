package androidx.core.view;

import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.graphics.Insets;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class WindowInsetsCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final WindowInsetsCompat f12243b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Impl f12244a;

    public static class Impl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final WindowInsetsCompat f12250b = new Builder().f12245a.h().f12244a.a().f12244a.b().f12244a.c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f12251a;

        public Impl(WindowInsetsCompat windowInsetsCompat) {
            this.f12251a = windowInsetsCompat;
        }

        public void A(Rect[][] rectArr) {
        }

        public void B(Rect[][] rectArr) {
        }

        public WindowInsetsCompat a() {
            return this.f12251a;
        }

        public WindowInsetsCompat b() {
            return this.f12251a;
        }

        public WindowInsetsCompat c() {
            return this.f12251a;
        }

        public void d(View view) {
        }

        public void e(WindowInsetsCompat windowInsetsCompat) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl)) {
                return false;
            }
            Impl impl = (Impl) obj;
            return t() == impl.t() && s() == impl.s() && Objects.equals(n(), impl.n()) && Objects.equals(l(), impl.l()) && Objects.equals(h(), impl.h());
        }

        public List<Rect> f(int i2) {
            return Collections.EMPTY_LIST;
        }

        public List<Rect> g(int i2) {
            return Collections.EMPTY_LIST;
        }

        public DisplayCutoutCompat h() {
            return null;
        }

        public int hashCode() {
            return Objects.hash(Boolean.valueOf(t()), Boolean.valueOf(s()), n(), l(), h());
        }

        public Insets i(int i2) {
            return Insets.f12053e;
        }

        public Insets j(int i2) {
            if ((i2 & 8) == 0) {
                return Insets.f12053e;
            }
            md.n("Unable to query the maximum insets for IME");
            return null;
        }

        public Insets k() {
            return n();
        }

        public Insets l() {
            return Insets.f12053e;
        }

        public Insets m() {
            return n();
        }

        public Insets n() {
            return Insets.f12053e;
        }

        public Insets o() {
            return n();
        }

        public void p(View view) {
        }

        public void q() {
        }

        public WindowInsetsCompat r(int i2, int i3, int i4, int i5) {
            return f12250b;
        }

        public boolean s() {
            return false;
        }

        public boolean t() {
            return false;
        }

        public boolean u(int i2) {
            return true;
        }

        public void v(DisplayShapeCompat displayShapeCompat) {
        }

        public void w(Insets[] insetsArr) {
        }

        public void x(Insets insets) {
        }

        public void y(WindowInsetsCompat windowInsetsCompat) {
        }

        public void z(int i2) {
        }
    }

    public static final class Type {

        @Retention(RetentionPolicy.SOURCE)
        public @interface InsetsType {
        }

        public static int a(int i2) {
            if (i2 == 1) {
                return 0;
            }
            if (i2 == 2) {
                return 1;
            }
            if (i2 == 4) {
                return 2;
            }
            if (i2 == 8) {
                return 3;
            }
            if (i2 == 16) {
                return 4;
            }
            if (i2 == 32) {
                return 5;
            }
            if (i2 == 64) {
                return 6;
            }
            if (i2 == 128) {
                return 7;
            }
            if (i2 == 256) {
                return 8;
            }
            if (i2 == 512) {
                return 9;
            }
            md.n(pq0.k(i2, "type needs to be >= FIRST and <= LAST, type="));
            return 0;
        }
    }

    public static final class TypeImpl30 {
        public static int a(int i2) {
            int iStatusBars;
            int i3 = 0;
            for (int i4 = 1; i4 <= 512; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    if (i4 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i4 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i4 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i4 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i4 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i4 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i4 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i4 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i3 |= iStatusBars;
                }
            }
            return i3;
        }
    }

    public static final class TypeImpl34 {
        public static int a(int i2) {
            int iStatusBars;
            int i3 = 0;
            for (int i4 = 1; i4 <= 512; i4 <<= 1) {
                if ((i2 & i4) != 0) {
                    if (i4 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i4 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i4 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i4 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i4 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i4 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i4 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i4 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    } else if (i4 == 512) {
                        iStatusBars = WindowInsets.Type.systemOverlays();
                    }
                    i3 |= iStatusBars;
                }
            }
            return i3;
        }
    }

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            f12243b = Impl34.x;
        } else if (i2 >= 30) {
            f12243b = Impl30.w;
        } else {
            f12243b = Impl.f12250b;
        }
    }

    public WindowInsetsCompat(WindowInsetsCompat windowInsetsCompat) {
        if (windowInsetsCompat == null) {
            this.f12244a = new Impl(this);
            return;
        }
        Impl impl = windowInsetsCompat.f12244a;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35 && (impl instanceof Impl35)) {
            this.f12244a = new Impl35(this, (Impl35) impl);
        } else if (i2 >= 34 && (impl instanceof Impl34)) {
            this.f12244a = new Impl34(this, (Impl34) impl);
        } else if (i2 >= 31 && (impl instanceof Impl31)) {
            this.f12244a = new Impl31(this, (Impl31) impl);
        } else if (i2 >= 30 && (impl instanceof Impl30)) {
            this.f12244a = new Impl30(this, (Impl30) impl);
        } else if (impl instanceof Impl29) {
            this.f12244a = new Impl29(this, (Impl29) impl);
        } else if (impl instanceof Impl28) {
            this.f12244a = new Impl28(this, (Impl28) impl);
        } else if (impl instanceof Impl21) {
            this.f12244a = new Impl21(this, (Impl21) impl);
        } else if (impl instanceof Impl20) {
            this.f12244a = new Impl20(this, (Impl20) impl);
        } else {
            this.f12244a = new Impl(this);
        }
        impl.e(this);
    }

    public static Insets m(Insets insets, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, insets.f12054a - i2);
        int iMax2 = Math.max(0, insets.f12055b - i3);
        int iMax3 = Math.max(0, insets.f12056c - i4);
        int iMax4 = Math.max(0, insets.d - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? insets : Insets.c(iMax, iMax2, iMax3, iMax4);
    }

    public static WindowInsetsCompat r(WindowInsets windowInsets, View view) {
        windowInsets.getClass();
        WindowInsetsCompat windowInsetsCompat = new WindowInsetsCompat(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            WindowInsetsCompat windowInsetsCompatA = ViewCompat.Api23Impl.a(view);
            Impl impl = windowInsetsCompat.f12244a;
            impl.y(windowInsetsCompatA);
            View rootView = view.getRootView();
            impl.d(rootView);
            impl.p(rootView);
            impl.q();
            impl.z(view.getWindowSystemUiVisibility());
        }
        return windowInsetsCompat;
    }

    public final WindowInsetsCompat a() {
        return this.f12244a.a();
    }

    public final WindowInsetsCompat b() {
        return this.f12244a.b();
    }

    public final WindowInsetsCompat c() {
        return this.f12244a.c();
    }

    public final DisplayCutoutCompat d() {
        return this.f12244a.h();
    }

    public final Insets e(int i2) {
        return this.f12244a.i(i2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WindowInsetsCompat) {
            return Objects.equals(this.f12244a, ((WindowInsetsCompat) obj).f12244a);
        }
        return false;
    }

    public final Insets f(int i2) {
        return this.f12244a.j(i2);
    }

    public final int g() {
        return this.f12244a.n().d;
    }

    public final int h() {
        return this.f12244a.n().f12054a;
    }

    public final int hashCode() {
        Impl impl = this.f12244a;
        if (impl == null) {
            return 0;
        }
        return impl.hashCode();
    }

    public final int i() {
        return this.f12244a.n().f12056c;
    }

    public final int j() {
        return this.f12244a.n().f12055b;
    }

    public final boolean k() {
        Impl impl = this.f12244a;
        Insets insetsI = impl.i(-1);
        Insets insets = Insets.f12053e;
        return (insetsI.equals(insets) && impl.j(-9).equals(insets) && impl.h() == null) ? false : true;
    }

    public final WindowInsetsCompat l(int i2, int i3, int i4, int i5) {
        return this.f12244a.r(i2, i3, i4, i5);
    }

    public final boolean n() {
        return this.f12244a.s();
    }

    public final boolean o(int i2) {
        return this.f12244a.u(i2);
    }

    public final WindowInsetsCompat p(int i2, int i3, int i4, int i5) {
        Builder builder = new Builder(this);
        Insets insetsC = Insets.c(i2, i3, i4, i5);
        BuilderImpl29 builderImpl29 = builder.f12245a;
        builderImpl29.f(insetsC);
        return builderImpl29.h();
    }

    public final WindowInsets q() {
        Impl impl = this.f12244a;
        if (impl instanceof Impl20) {
            return ((Impl20) impl).f12252c;
        }
        return null;
    }

    public static class BuilderImpl30 extends BuilderImpl29 {
        public BuilderImpl30() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void c(int i2, Insets insets) {
            this.f12249e.setInsets(TypeImpl30.a(i2), insets.e());
        }

        public BuilderImpl30(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    public static class BuilderImpl31 extends BuilderImpl30 {
        public BuilderImpl31() {
        }

        public BuilderImpl31(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    public static class BuilderImpl34 extends BuilderImpl31 {
        public BuilderImpl34() {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl30, androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void c(int i2, Insets insets) {
            this.f12249e.setInsets(TypeImpl34.a(i2), insets.e());
        }

        public BuilderImpl34(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    public static class BuilderImpl36 extends BuilderImpl35 {
        public BuilderImpl36() {
        }

        public BuilderImpl36(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
        }
    }

    public static class Impl28 extends Impl21 {
        public Impl28(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat a() {
            return WindowInsetsCompat.r(this.f12252c.consumeDisplayCutout(), null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Impl28)) {
                return false;
            }
            Impl28 impl28 = (Impl28) obj;
            return Objects.equals(this.f12252c, impl28.f12252c) && Objects.equals(this.g, impl28.g) && Impl20.L(this.f12255h, impl28.f12255h);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public DisplayCutoutCompat h() {
            DisplayCutout displayCutout = this.f12252c.getDisplayCutout();
            if (displayCutout == null) {
                return null;
            }
            return new DisplayCutoutCompat(displayCutout);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public int hashCode() {
            return this.f12252c.hashCode();
        }

        public Impl28(WindowInsetsCompat windowInsetsCompat, Impl28 impl28) {
            super(windowInsetsCompat, impl28);
        }
    }

    public static class Impl30 extends Impl29 {
        public static final WindowInsetsCompat w = WindowInsetsCompat.r(WindowInsets.CONSUMED, null);

        public Impl30(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public final void d(View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i2) {
            return Insets.d(this.f12252c.getInsets(TypeImpl30.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i2) {
            return Insets.d(this.f12252c.getInsetsIgnoringVisibility(TypeImpl30.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean u(int i2) {
            return this.f12252c.isVisible(TypeImpl30.a(i2));
        }

        public Impl30(WindowInsetsCompat windowInsetsCompat, Impl30 impl30) {
            super(windowInsetsCompat, impl30);
        }
    }

    public static class Impl31 extends Impl30 {
        public Impl31(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        public Impl31(WindowInsetsCompat windowInsetsCompat, Impl31 impl31) {
            super(windowInsetsCompat, impl31);
        }
    }

    public static class Impl34 extends Impl31 {
        public static final WindowInsetsCompat x = WindowInsetsCompat.r(WindowInsets.CONSUMED, null);

        public Impl34(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i2) {
            return Insets.d(this.f12252c.getInsets(TypeImpl34.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i2) {
            return Insets.d(this.f12252c.getInsetsIgnoringVisibility(TypeImpl34.a(i2)));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public void p(View view) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl30, androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public boolean u(int i2) {
            return this.f12252c.isVisible(TypeImpl34.a(i2));
        }

        public Impl34(WindowInsetsCompat windowInsetsCompat, Impl34 impl34) {
            super(windowInsetsCompat, impl34);
        }
    }

    public static class Impl35 extends Impl34 {
        public Impl35(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> f(int i2) {
            return this.f12252c.getBoundingRects(TypeImpl34.a(i2));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> g(int i2) {
            return this.f12252c.getBoundingRectsIgnoringVisibility(TypeImpl34.a(i2));
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public void q() {
        }

        public Impl35(WindowInsetsCompat windowInsetsCompat, Impl35 impl35) {
            super(windowInsetsCompat, impl35);
        }
    }

    public static class BuilderImpl35 extends BuilderImpl34 {
        public BuilderImpl35(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            windowInsetsCompat.n();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void b(WindowInsetsCompat windowInsetsCompat) {
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl34, androidx.core.view.WindowInsetsCompat.BuilderImpl30, androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void c(int i2, Insets insets) {
            super.c(i2, insets);
        }

        public BuilderImpl35() {
        }
    }

    public static class Impl21 extends Impl20 {
        public Insets s;

        public Impl21(WindowInsetsCompat windowInsetsCompat, Impl21 impl21) {
            super(windowInsetsCompat, impl21);
            this.s = null;
            this.s = impl21.s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat b() {
            return WindowInsetsCompat.r(this.f12252c.consumeStableInsets(), null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat c() {
            return WindowInsetsCompat.r(this.f12252c.consumeSystemWindowInsets(), null);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets l() {
            if (this.s == null) {
                WindowInsets windowInsets = this.f12252c;
                this.s = Insets.c(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
            }
            return this.s;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean s() {
            return this.f12252c.isConsumed();
        }

        public Impl21(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.s = null;
        }
    }

    public static class Impl29 extends Impl28 {
        public Insets t;
        public Insets u;
        public Insets v;

        public Impl29(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat, windowInsets);
            this.t = null;
            this.u = null;
            this.v = null;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets k() {
            if (this.u == null) {
                this.u = Insets.d(this.f12252c.getMandatorySystemGestureInsets());
            }
            return this.u;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets m() {
            if (this.t == null) {
                this.t = Insets.d(this.f12252c.getSystemGestureInsets());
            }
            return this.t;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets o() {
            if (this.v == null) {
                this.v = Insets.d(this.f12252c.getTappableElementInsets());
            }
            return this.v;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl20, androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat r(int i2, int i3, int i4, int i5) {
            return WindowInsetsCompat.r(this.f12252c.inset(i2, i3, i4, i5), null);
        }

        public Impl29(WindowInsetsCompat windowInsetsCompat, Impl29 impl29) {
            super(windowInsetsCompat, impl29);
            this.t = null;
            this.u = null;
            this.v = null;
        }
    }

    public static class BuilderImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WindowInsetsCompat f12246a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Insets[] f12247b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Rect[][] f12248c;
        public final Rect[][] d;

        public BuilderImpl(WindowInsetsCompat windowInsetsCompat) {
            this.f12248c = new Rect[10][];
            this.d = new Rect[10][];
            this.f12246a = windowInsetsCompat;
            b(windowInsetsCompat);
        }

        public final void a() {
            Insets[] insetsArr = this.f12247b;
            if (insetsArr != null) {
                Insets insetsI = insetsArr[0];
                Insets insetsI2 = insetsArr[1];
                WindowInsetsCompat windowInsetsCompat = this.f12246a;
                if (insetsI2 == null) {
                    insetsI2 = windowInsetsCompat.f12244a.i(2);
                }
                if (insetsI == null) {
                    insetsI = windowInsetsCompat.f12244a.i(1);
                }
                f(Insets.a(insetsI, insetsI2));
                Insets insets = this.f12247b[Type.a(16)];
                if (insets != null) {
                    e(insets);
                }
                Insets insets2 = this.f12247b[Type.a(32)];
                if (insets2 != null) {
                    d(insets2);
                }
                Insets insets3 = this.f12247b[Type.a(64)];
                if (insets3 != null) {
                    g(insets3);
                }
            }
        }

        public void b(WindowInsetsCompat windowInsetsCompat) {
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                List<Rect> listF = windowInsetsCompat.f12244a.f(i2);
                int iA = Type.a(i2);
                this.f12248c[iA] = (Rect[]) listF.toArray(new Rect[listF.size()]);
                if (i2 != 8) {
                    List<Rect> listG = windowInsetsCompat.f12244a.g(i2);
                    this.d[iA] = (Rect[]) listG.toArray(new Rect[listG.size()]);
                }
            }
        }

        public void c(int i2, Insets insets) {
            if (this.f12247b == null) {
                this.f12247b = new Insets[10];
            }
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    this.f12247b[Type.a(i3)] = insets;
                }
            }
        }

        public abstract void d(Insets insets);

        public abstract void e(Insets insets);

        public abstract void f(Insets insets);

        public abstract void g(Insets insets);

        public BuilderImpl() {
            this(new WindowInsetsCompat((WindowInsetsCompat) null));
        }
    }

    public static class Impl20 extends Impl {
        public static boolean n = false;
        public static Method o;
        public static Class p;
        public static Field q;
        public static Field r;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WindowInsets f12252c;
        public Insets[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Insets f12253e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public WindowInsetsCompat f12254f;
        public Insets g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f12255h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public DisplayShapeCompat f12256i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f12257j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f12258k;
        public Rect[][] l;
        public Rect[][] m;

        public Impl20(WindowInsetsCompat windowInsetsCompat, WindowInsets windowInsets) {
            super(windowInsetsCompat);
            this.f12253e = null;
            this.l = new Rect[10][];
            this.m = new Rect[10][];
            this.f12252c = windowInsets;
        }

        private DisplayShapeCompat C(View view) {
            Display display;
            if (view == null || (display = view.getDisplay()) == null) {
                return null;
            }
            Point point = new Point();
            display.getRealSize(point);
            if (this.f12251a.f12244a.t()) {
                return DisplayShapeCompat.a(true, point.x, point.y, 0, 0, 0, 0);
            }
            RoundedCornerCompat roundedCornerCompatA = DisplayCompat.a(display, 0);
            RoundedCornerCompat roundedCornerCompatA2 = DisplayCompat.a(display, 1);
            RoundedCornerCompat roundedCornerCompatA3 = DisplayCompat.a(display, 2);
            RoundedCornerCompat roundedCornerCompatA4 = DisplayCompat.a(display, 3);
            return DisplayShapeCompat.a(false, point.x, point.y, roundedCornerCompatA != null ? roundedCornerCompatA.f12185b : 0, roundedCornerCompatA2 != null ? roundedCornerCompatA2.f12185b : 0, roundedCornerCompatA3 != null ? roundedCornerCompatA3.f12185b : 0, roundedCornerCompatA4 != null ? roundedCornerCompatA4.f12185b : 0);
        }

        private static List<Rect> D(Rect[][] rectArr, int i2) {
            Rect[] rectArr2;
            Rect[] rectArr3 = null;
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0 && (rectArr2 = rectArr[Type.a(i3)]) != null) {
                    if (rectArr3 == null) {
                        rectArr3 = rectArr2;
                    } else {
                        Rect[] rectArr4 = new Rect[rectArr3.length + rectArr2.length];
                        System.arraycopy(rectArr3, 0, rectArr4, 0, rectArr3.length);
                        System.arraycopy(rectArr2, 0, rectArr4, rectArr3.length, rectArr2.length);
                        rectArr3 = rectArr4;
                    }
                }
            }
            return rectArr3 == null ? Collections.EMPTY_LIST : Arrays.asList(rectArr3);
        }

        private Rect[] E(Insets insets) {
            ArrayList arrayList = new ArrayList();
            int i2 = insets.f12054a;
            int i3 = insets.d;
            int i4 = insets.f12056c;
            int i5 = insets.f12055b;
            if (i2 != 0) {
                arrayList.add(new Rect(0, 0, insets.f12054a, this.f12257j));
            }
            if (i5 != 0) {
                arrayList.add(new Rect(0, 0, this.f12258k, i5));
            }
            if (i4 != 0) {
                int i6 = this.f12258k;
                arrayList.add(new Rect(i6 - i4, 0, i6, this.f12257j));
            }
            if (i3 != 0) {
                int i7 = this.f12257j;
                arrayList.add(new Rect(0, i7 - i3, this.f12258k, i7));
            }
            return (Rect[]) arrayList.toArray(new Rect[arrayList.size()]);
        }

        private Insets F(int i2, boolean z) {
            Insets insetsA = Insets.f12053e;
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    insetsA = Insets.a(insetsA, G(i3, z));
                }
            }
            return insetsA;
        }

        private Insets H() {
            WindowInsetsCompat windowInsetsCompat = this.f12254f;
            return windowInsetsCompat != null ? windowInsetsCompat.f12244a.l() : Insets.f12053e;
        }

        private Insets I(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                mt.i("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
                return null;
            }
            if (!n) {
                K();
            }
            Method method = o;
            if (method != null && p != null && q != null) {
                try {
                    Object objInvoke = method.invoke(view, null);
                    if (objInvoke == null) {
                        return null;
                    }
                    Rect rect = (Rect) q.get(r.get(objInvoke));
                    if (rect != null) {
                        return Insets.c(rect.left, rect.top, rect.right, rect.bottom);
                    }
                    return null;
                } catch (ReflectiveOperationException e2) {
                    e2.getMessage();
                }
            }
            return null;
        }

        private static void K() {
            try {
                o = View.class.getDeclaredMethod("getViewRootImpl", null);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                p = cls;
                q = cls.getDeclaredField("mVisibleInsets");
                r = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                q.setAccessible(true);
                r.setAccessible(true);
            } catch (ReflectiveOperationException e2) {
                e2.getMessage();
            }
            n = true;
        }

        public static boolean L(int i2, int i3) {
            return (i2 & 6) == (i3 & 6);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void A(Rect[][] rectArr) {
            Objects.requireNonNull(rectArr);
            this.l = (Rect[][]) rectArr.clone();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void B(Rect[][] rectArr) {
            Objects.requireNonNull(rectArr);
            this.m = (Rect[][]) rectArr.clone();
        }

        public Insets G(int i2, boolean z) {
            Insets insetsL;
            int i3;
            Insets insets = Insets.f12053e;
            if (i2 == 1) {
                if (z) {
                    return Insets.c(0, Math.max(H().f12055b, n().f12055b), 0, 0);
                }
                return (this.f12255h & 4) != 0 ? insets : Insets.c(0, n().f12055b, 0, 0);
            }
            if (i2 == 2) {
                if (z) {
                    Insets insetsH = H();
                    Insets insetsL2 = l();
                    return Insets.c(Math.max(insetsH.f12054a, insetsL2.f12054a), 0, Math.max(insetsH.f12056c, insetsL2.f12056c), Math.max(insetsH.d, insetsL2.d));
                }
                if ((this.f12255h & 2) != 0) {
                    return insets;
                }
                Insets insetsN = n();
                WindowInsetsCompat windowInsetsCompat = this.f12254f;
                insetsL = windowInsetsCompat != null ? windowInsetsCompat.f12244a.l() : null;
                int iMin = insetsN.d;
                if (insetsL != null) {
                    iMin = Math.min(iMin, insetsL.d);
                }
                return Insets.c(insetsN.f12054a, 0, insetsN.f12056c, iMin);
            }
            if (i2 == 8) {
                Insets[] insetsArr = this.d;
                insetsL = insetsArr != null ? insetsArr[Type.a(8)] : null;
                if (insetsL != null) {
                    return insetsL;
                }
                Insets insetsN2 = n();
                Insets insetsH2 = H();
                int i4 = insetsN2.d;
                if (i4 > insetsH2.d) {
                    return Insets.c(0, 0, 0, i4);
                }
                Insets insets2 = this.g;
                return (insets2 == null || insets2.equals(insets) || (i3 = this.g.d) <= insetsH2.d) ? insets : Insets.c(0, 0, 0, i3);
            }
            if (i2 == 16) {
                return m();
            }
            if (i2 == 32) {
                return k();
            }
            if (i2 == 64) {
                return o();
            }
            if (i2 != 128) {
                return insets;
            }
            WindowInsetsCompat windowInsetsCompat2 = this.f12254f;
            DisplayCutoutCompat displayCutoutCompatH = windowInsetsCompat2 != null ? windowInsetsCompat2.f12244a.h() : h();
            if (displayCutoutCompatH == null) {
                return insets;
            }
            DisplayCutout displayCutout = displayCutoutCompatH.f12165a;
            return Insets.c(displayCutout.getSafeInsetLeft(), displayCutout.getSafeInsetTop(), displayCutout.getSafeInsetRight(), displayCutout.getSafeInsetBottom());
        }

        public boolean J(int i2) {
            if (i2 != 1 && i2 != 2) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 8 && i2 != 128) {
                    return true;
                }
            }
            return !G(i2, false).equals(Insets.f12053e);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void d(View view) {
            this.f12258k = view.getWidth();
            this.f12257j = view.getHeight();
            Insets insetsI = I(view);
            if (insetsI == null) {
                insetsI = Insets.f12053e;
            }
            x(insetsI);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void e(WindowInsetsCompat windowInsetsCompat) {
            windowInsetsCompat.f12244a.y(this.f12254f);
            Insets insets = this.g;
            Impl impl = windowInsetsCompat.f12244a;
            impl.x(insets);
            impl.z(this.f12255h);
            impl.v(this.f12256i);
            impl.A(this.l);
            impl.B(this.m);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean equals(Object obj) {
            if (!super.equals(obj)) {
                return false;
            }
            Impl20 impl20 = (Impl20) obj;
            return Objects.equals(this.g, impl20.g) && L(this.f12255h, impl20.f12255h);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> f(int i2) {
            return D(this.l, i2);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public List<Rect> g(int i2) {
            return D(this.m, i2);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets i(int i2) {
            return F(i2, false);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public Insets j(int i2) {
            return F(i2, true);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public final Insets n() {
            if (this.f12253e == null) {
                WindowInsets windowInsets = this.f12252c;
                this.f12253e = Insets.c(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
            }
            return this.f12253e;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void p(View view) {
            this.f12256i = C(view);
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void q() {
            for (int i2 = 1; i2 <= 512; i2 <<= 1) {
                int iA = Type.a(i2);
                this.l[iA] = E(i(i2));
                if (i2 != 8) {
                    this.m[iA] = E(j(i2));
                }
            }
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public WindowInsetsCompat r(int i2, int i3, int i4, int i5) {
            Builder builder = new Builder(WindowInsetsCompat.r(this.f12252c, null));
            builder.c(WindowInsetsCompat.m(n(), i2, i3, i4, i5));
            Insets insetsM = WindowInsetsCompat.m(l(), i2, i3, i4, i5);
            BuilderImpl29 builderImpl29 = builder.f12245a;
            builderImpl29.i(insetsM);
            return builderImpl29.h();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean t() {
            return this.f12252c.isRound();
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public boolean u(int i2) {
            for (int i3 = 1; i3 <= 512; i3 <<= 1) {
                if ((i2 & i3) != 0 && !J(i3)) {
                    return false;
                }
            }
            return true;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void v(DisplayShapeCompat displayShapeCompat) {
            this.f12256i = displayShapeCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void w(Insets[] insetsArr) {
            this.d = insetsArr;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void x(Insets insets) {
            this.g = insets;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void y(WindowInsetsCompat windowInsetsCompat) {
            this.f12254f = windowInsetsCompat;
        }

        @Override // androidx.core.view.WindowInsetsCompat.Impl
        public void z(int i2) {
            this.f12255h = i2;
        }

        public Impl20(WindowInsetsCompat windowInsetsCompat, Impl20 impl20) {
            this(windowInsetsCompat, new WindowInsets(impl20.f12252c));
        }
    }

    public static class BuilderImpl29 extends BuilderImpl {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final WindowInsets.Builder f12249e;

        public BuilderImpl29(WindowInsetsCompat windowInsetsCompat) {
            super(windowInsetsCompat);
            WindowInsets windowInsetsQ = windowInsetsCompat.q();
            this.f12249e = windowInsetsQ != null ? new WindowInsets.Builder(windowInsetsQ) : new WindowInsets.Builder();
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void d(Insets insets) {
            this.f12249e.setMandatorySystemGestureInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void e(Insets insets) {
            this.f12249e.setSystemGestureInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void f(Insets insets) {
            this.f12249e.setSystemWindowInsets(insets.e());
        }

        @Override // androidx.core.view.WindowInsetsCompat.BuilderImpl
        public void g(Insets insets) {
            this.f12249e.setTappableElementInsets(insets.e());
        }

        public WindowInsetsCompat h() {
            a();
            WindowInsetsCompat windowInsetsCompatR = WindowInsetsCompat.r(this.f12249e.build(), null);
            Insets[] insetsArr = this.f12247b;
            Impl impl = windowInsetsCompatR.f12244a;
            impl.w(insetsArr);
            impl.v(null);
            impl.A(this.f12248c);
            impl.B(this.d);
            return windowInsetsCompatR;
        }

        public void i(Insets insets) {
            this.f12249e.setStableInsets(insets.e());
        }

        public BuilderImpl29() {
            this.f12249e = new WindowInsets.Builder();
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BuilderImpl29 f12245a;

        public Builder() {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 36) {
                this.f12245a = new BuilderImpl36();
                return;
            }
            if (i2 >= 35) {
                this.f12245a = new BuilderImpl35();
                return;
            }
            if (i2 >= 34) {
                this.f12245a = new BuilderImpl34();
                return;
            }
            if (i2 >= 31) {
                this.f12245a = new BuilderImpl31();
            } else if (i2 >= 30) {
                this.f12245a = new BuilderImpl30();
            } else {
                this.f12245a = new BuilderImpl29();
            }
        }

        public final WindowInsetsCompat a() {
            return this.f12245a.h();
        }

        public final void b(int i2, Insets insets) {
            this.f12245a.c(i2, insets);
        }

        public final void c(Insets insets) {
            this.f12245a.f(insets);
        }

        public Builder(WindowInsetsCompat windowInsetsCompat) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 36) {
                this.f12245a = new BuilderImpl36(windowInsetsCompat);
                return;
            }
            if (i2 >= 35) {
                this.f12245a = new BuilderImpl35(windowInsetsCompat);
                return;
            }
            if (i2 >= 34) {
                this.f12245a = new BuilderImpl34(windowInsetsCompat);
                return;
            }
            if (i2 >= 31) {
                this.f12245a = new BuilderImpl31(windowInsetsCompat);
            } else if (i2 >= 30) {
                this.f12245a = new BuilderImpl30(windowInsetsCompat);
            } else {
                this.f12245a = new BuilderImpl29(windowInsetsCompat);
            }
        }
    }

    public WindowInsetsCompat(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            this.f12244a = new Impl35(this, windowInsets);
            return;
        }
        if (i2 >= 34) {
            this.f12244a = new Impl34(this, windowInsets);
            return;
        }
        if (i2 >= 31) {
            this.f12244a = new Impl31(this, windowInsets);
        } else if (i2 >= 30) {
            this.f12244a = new Impl30(this, windowInsets);
        } else {
            this.f12244a = new Impl29(this, windowInsets);
        }
    }
}
