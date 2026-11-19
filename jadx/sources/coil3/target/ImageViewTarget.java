package coil3.target;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/target/ImageViewTarget;", "Lcoil3/target/GenericViewTarget;", "Landroid/widget/ImageView;", "view", "<init>", "(Landroid/widget/ImageView;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public class ImageViewTarget extends GenericViewTarget<ImageView> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f21699c;

    public ImageViewTarget(ImageView imageView) {
        this.f21699c = imageView;
    }

    @Override // coil3.target.ViewTarget, coil3.transition.TransitionTarget
    public final View a() {
        return this.f21699c;
    }

    @Override // coil3.target.GenericViewTarget, coil3.transition.TransitionTarget
    public final Drawable d() {
        return this.f21699c.getDrawable();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ImageViewTarget) && Intrinsics.c(this.f21699c, ((ImageViewTarget) obj).f21699c);
    }

    @Override // coil3.target.GenericViewTarget
    public final void f(Drawable drawable) {
        this.f21699c.setImageDrawable(drawable);
    }

    public final int hashCode() {
        return this.f21699c.hashCode();
    }

    public final String toString() {
        return "ImageViewTarget(view=" + this.f21699c + ")";
    }
}
