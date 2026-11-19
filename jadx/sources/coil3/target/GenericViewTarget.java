package coil3.target;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.transition.TransitionTarget;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00042\u00020\u0005B\u0007¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/target/GenericViewTarget;", "Landroid/view/View;", "T", "Lcoil3/target/ViewTarget;", "Lcoil3/transition/TransitionTarget;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class GenericViewTarget<T extends View> implements ViewTarget<T>, TransitionTarget, DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f21698b;

    @Override // coil3.target.Target
    public final void b(Image image) {
        h(image);
    }

    @Override // coil3.target.Target
    public final void c(Image image) {
        h(image);
    }

    @Override // coil3.transition.TransitionTarget
    public abstract Drawable d();

    @Override // coil3.target.Target
    public final void e(Image image) {
        h(image);
    }

    public abstract void f(Drawable drawable);

    public final void g() {
        Object objD = d();
        Animatable animatable = objD instanceof Animatable ? (Animatable) objD : null;
        if (animatable == null) {
            return;
        }
        if (this.f21698b) {
            animatable.start();
        } else {
            animatable.stop();
        }
    }

    public final void h(Image image) {
        Drawable drawableA = image != null ? Image_androidKt.a(image, ((ImageViewTarget) this).f21699c.getResources()) : null;
        Object objD = d();
        Animatable animatable = objD instanceof Animatable ? (Animatable) objD : null;
        if (animatable != null) {
            animatable.stop();
        }
        f(drawableA);
        g();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStart(LifecycleOwner lifecycleOwner) {
        this.f21698b = true;
        g();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onStop(LifecycleOwner lifecycleOwner) {
        this.f21698b = false;
        g();
    }
}
