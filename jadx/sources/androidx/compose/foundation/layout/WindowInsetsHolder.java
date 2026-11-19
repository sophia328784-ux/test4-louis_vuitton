package androidx.compose.foundation.layout;

import android.graphics.Path;
import android.view.View;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.graphics.Insets;
import androidx.core.view.DisplayCutoutCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.vuitton.android.R;
import defpackage.c61;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/layout/WindowInsetsHolder;", "", "Companion", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WindowInsetsHolder {
    public static final Companion y = new Companion(null);
    public static final WeakHashMap z = new WeakHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AndroidWindowInsets f5074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AndroidWindowInsets f5075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AndroidWindowInsets f5076c;
    public final AndroidWindowInsets d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AndroidWindowInsets f5077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AndroidWindowInsets f5078f;
    public final AndroidWindowInsets g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AndroidWindowInsets f5079h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AndroidWindowInsets f5080i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ValueInsets f5081j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableState f5082k;
    public final WindowInsets l;
    public final WindowInsets m;
    public final WindowInsets n;
    public final ValueInsets o;
    public final ValueInsets p;
    public final ValueInsets q;
    public final ValueInsets r;
    public final ValueInsets s;
    public final ValueInsets t;
    public final ValueInsets u;
    public final boolean v;
    public int w;
    public final InsetsListener x;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;", "", "Ljava/util/WeakHashMap;", "Landroid/view/View;", "Landroidx/compose/foundation/layout/WindowInsetsHolder;", "viewMap", "Ljava/util/WeakHashMap;", "", "testInsets", "Z", "foundation-layout"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final AndroidWindowInsets a(Companion companion, WindowInsetsCompat windowInsetsCompat, int i2, String str) {
            companion.getClass();
            AndroidWindowInsets androidWindowInsets = new AndroidWindowInsets(i2, str);
            if (windowInsetsCompat != null) {
                androidWindowInsets.g(windowInsetsCompat, i2);
            }
            return androidWindowInsets;
        }

        public static final ValueInsets b(Companion companion, WindowInsetsCompat windowInsetsCompat, int i2, String str) {
            Insets insetsF;
            companion.getClass();
            if (windowInsetsCompat == null || (insetsF = windowInsetsCompat.f(i2)) == null) {
                insetsF = Insets.f12053e;
            }
            return new ValueInsets(WindowInsets_androidKt.d(insetsF), str);
        }

        public static WindowInsetsHolder c(Composer composer) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            View view = (View) composer.k(AndroidCompositionLocals_androidKt.f9939f);
            WindowInsetsHolder windowInsetsHolderD = d(view);
            boolean zY = composer.y(windowInsetsHolderD) | composer.y(view);
            Object objX = composer.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new c61(windowInsetsHolderD, view, 10);
                composer.q(objX);
            }
            EffectsKt.c(windowInsetsHolderD, (Function1) objX, composer);
            return windowInsetsHolderD;
        }

        public static WindowInsetsHolder d(View view) {
            WindowInsetsHolder windowInsetsHolder;
            WeakHashMap weakHashMap = WindowInsetsHolder.z;
            synchronized (weakHashMap) {
                try {
                    Object windowInsetsHolder2 = weakHashMap.get(view);
                    if (windowInsetsHolder2 == null) {
                        windowInsetsHolder2 = new WindowInsetsHolder(null, view, null);
                        weakHashMap.put(view, windowInsetsHolder2);
                    }
                    windowInsetsHolder = (WindowInsetsHolder) windowInsetsHolder2;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return windowInsetsHolder;
        }
    }

    public WindowInsetsHolder(WindowInsetsCompat windowInsetsCompat, View view, DefaultConstructorMarker defaultConstructorMarker) {
        DisplayCutoutCompat displayCutoutCompatD;
        Path pathB;
        DisplayCutoutCompat displayCutoutCompatD2;
        Companion companion = y;
        AndroidWindowInsets androidWindowInsetsA = Companion.a(companion, windowInsetsCompat, 4, "captionBar");
        this.f5074a = androidWindowInsetsA;
        AndroidWindowInsets androidWindowInsetsA2 = Companion.a(companion, windowInsetsCompat, 128, "displayCutout");
        this.f5075b = androidWindowInsetsA2;
        AndroidWindowInsets androidWindowInsetsA3 = Companion.a(companion, windowInsetsCompat, 8, "ime");
        this.f5076c = androidWindowInsetsA3;
        AndroidWindowInsets androidWindowInsetsA4 = Companion.a(companion, windowInsetsCompat, 32, "mandatorySystemGestures");
        this.d = androidWindowInsetsA4;
        AndroidWindowInsets androidWindowInsetsA5 = Companion.a(companion, windowInsetsCompat, 2, "navigationBars");
        this.f5077e = androidWindowInsetsA5;
        AndroidWindowInsets androidWindowInsetsA6 = Companion.a(companion, windowInsetsCompat, 1, "statusBars");
        this.f5078f = androidWindowInsetsA6;
        AndroidWindowInsets androidWindowInsetsA7 = Companion.a(companion, windowInsetsCompat, 519, "systemBars");
        this.g = androidWindowInsetsA7;
        AndroidWindowInsets androidWindowInsetsA8 = Companion.a(companion, windowInsetsCompat, 16, "systemGestures");
        this.f5079h = androidWindowInsetsA8;
        AndroidWindowInsets androidWindowInsetsA9 = Companion.a(companion, windowInsetsCompat, 64, "tappableElement");
        this.f5080i = androidWindowInsetsA9;
        Insets insets = Insets.f12053e;
        ValueInsets valueInsets = new ValueInsets(WindowInsets_androidKt.d((windowInsetsCompat == null || (displayCutoutCompatD2 = windowInsetsCompat.d()) == null) ? insets : displayCutoutCompatD2.c()), "waterfall");
        this.f5081j = valueInsets;
        this.f5082k = SnapshotStateKt.g((windowInsetsCompat == null || (displayCutoutCompatD = windowInsetsCompat.d()) == null || (pathB = displayCutoutCompatD.b()) == null) ? null : new AndroidPath(pathB));
        FixedIntInsets fixedIntInsets = WindowInsetsKt.f5085a;
        UnionInsets unionInsets = new UnionInsets(new UnionInsets(androidWindowInsetsA7, androidWindowInsetsA3), androidWindowInsetsA2);
        this.l = unionInsets;
        UnionInsets unionInsets2 = new UnionInsets(new UnionInsets(new UnionInsets(androidWindowInsetsA9, androidWindowInsetsA4), androidWindowInsetsA8), valueInsets);
        this.m = unionInsets2;
        this.n = new UnionInsets(unionInsets, unionInsets2);
        this.o = Companion.b(companion, windowInsetsCompat, 4, "captionBarIgnoringVisibility");
        this.p = Companion.b(companion, windowInsetsCompat, 2, "navigationBarsIgnoringVisibility");
        this.q = Companion.b(companion, windowInsetsCompat, 1, "statusBarsIgnoringVisibility");
        this.r = Companion.b(companion, windowInsetsCompat, 519, "systemBarsIgnoringVisibility");
        this.s = Companion.b(companion, windowInsetsCompat, 64, "tappableElementIgnoringVisibility");
        this.t = new ValueInsets(WindowInsets_androidKt.d(insets), "imeAnimationTarget");
        this.u = new ValueInsets(WindowInsets_androidKt.d(insets), "imeAnimationSource");
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        Object tag = view2 != null ? view2.getTag(R.id.consume_window_insets_tag) : null;
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        this.v = bool != null ? bool.booleanValue() : false;
        this.x = new InsetsListener(this);
        WindowInsetsCompat windowInsetsCompatJ = ViewCompat.j(view);
        if (windowInsetsCompatJ != null) {
            androidWindowInsetsA.f(windowInsetsCompatJ.o(4));
            androidWindowInsetsA2.f(windowInsetsCompatJ.o(128));
            androidWindowInsetsA3.f(windowInsetsCompatJ.o(8));
            androidWindowInsetsA4.f(windowInsetsCompatJ.o(32));
            androidWindowInsetsA5.f(windowInsetsCompatJ.o(2));
            androidWindowInsetsA6.f(windowInsetsCompatJ.o(1));
            androidWindowInsetsA7.f(windowInsetsCompatJ.o(519));
            androidWindowInsetsA8.f(windowInsetsCompatJ.o(16));
            androidWindowInsetsA9.f(windowInsetsCompatJ.o(64));
        }
    }

    public static void b(WindowInsetsHolder windowInsetsHolder, WindowInsetsCompat windowInsetsCompat) {
        Path pathB;
        windowInsetsHolder.f5074a.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5076c.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5075b.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5077e.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5078f.g(windowInsetsCompat, 0);
        windowInsetsHolder.g.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5079h.g(windowInsetsCompat, 0);
        windowInsetsHolder.f5080i.g(windowInsetsCompat, 0);
        windowInsetsHolder.d.g(windowInsetsCompat, 0);
        windowInsetsHolder.o.f(WindowInsets_androidKt.d(windowInsetsCompat.f(4)));
        windowInsetsHolder.p.f(WindowInsets_androidKt.d(windowInsetsCompat.f(2)));
        windowInsetsHolder.q.f(WindowInsets_androidKt.d(windowInsetsCompat.f(1)));
        windowInsetsHolder.r.f(WindowInsets_androidKt.d(windowInsetsCompat.f(519)));
        windowInsetsHolder.s.f(WindowInsets_androidKt.d(windowInsetsCompat.f(64)));
        DisplayCutoutCompat displayCutoutCompatD = windowInsetsCompat.d();
        windowInsetsHolder.f5081j.f(WindowInsets_androidKt.d(displayCutoutCompatD != null ? displayCutoutCompatD.c() : Insets.f12053e));
        ((SnapshotMutableStateImpl) windowInsetsHolder.f5082k).setValue((displayCutoutCompatD == null || (pathB = displayCutoutCompatD.b()) == null) ? null : new AndroidPath(pathB));
        Snapshot.f8462e.getClass();
        Snapshot.Companion.f();
    }

    public final void a(View view) {
        if (this.w == 0) {
            InsetsListener insetsListener = this.x;
            ViewCompat.x(view, insetsListener);
            if (view.isAttachedToWindow()) {
                view.requestApplyInsets();
            }
            view.addOnAttachStateChangeListener(insetsListener);
            ViewCompat.A(view, insetsListener);
        }
        this.w++;
    }
}
