package coil3.transition;

import android.graphics.drawable.Drawable;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.graphics.DataSource;
import coil3.request.ErrorResult;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB-\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcoil3/transition/CrossfadeTransition;", "Lcoil3/transition/Transition;", "Lcoil3/transition/TransitionTarget;", "target", "Lcoil3/request/ImageResult;", "result", "", "durationMillis", "", "preferExactIntrinsicSize", "<init>", "(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;IZ)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CrossfadeTransition implements Transition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TransitionTarget f21708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageResult f21709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f21710c;
    public final boolean d;

    public CrossfadeTransition(TransitionTarget transitionTarget, ImageResult imageResult, int i2, boolean z) {
        this.f21708a = transitionTarget;
        this.f21709b = imageResult;
        this.f21710c = i2;
        this.d = z;
        if (i2 > 0) {
            return;
        }
        md.n("durationMillis must be > 0.");
        throw null;
    }

    @Override // coil3.transition.Transition
    public final void transition() {
        TransitionTarget transitionTarget = this.f21708a;
        Drawable drawableD = transitionTarget.d();
        ImageResult imageResult = this.f21709b;
        Image f21609a = imageResult.getF21668a();
        boolean z = imageResult instanceof SuccessResult;
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(drawableD, f21609a != null ? Image_androidKt.a(f21609a, transitionTarget.a().getResources()) : null, imageResult.getF21669b().v, this.f21710c, (z && ((SuccessResult) imageResult).g) ? false : true, this.d);
        if (z) {
            transitionTarget.e(Image_androidKt.b(crossfadeDrawable));
        } else if (imageResult instanceof ErrorResult) {
            transitionTarget.b(Image_androidKt.b(crossfadeDrawable));
        } else {
            v40.g();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/transition/CrossfadeTransition$Factory;", "Lcoil3/transition/Transition$Factory;", "", "durationMillis", "", "preferExactIntrinsicSize", "<init>", "(IZ)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Transition.Factory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f21711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f21712c;

        public Factory(int i2, boolean z) {
            this.f21711b = i2;
            this.f21712c = z;
            if (i2 > 0) {
                return;
            }
            md.n("durationMillis must be > 0.");
            throw null;
        }

        @Override // coil3.transition.Transition.Factory
        public final Transition a(TransitionTarget transitionTarget, ImageResult imageResult) {
            boolean z = imageResult instanceof SuccessResult;
            NoneTransition.Factory factory = Transition.Factory.f21715a;
            if (!z) {
                factory.getClass();
                return new NoneTransition(transitionTarget, imageResult);
            }
            if (((SuccessResult) imageResult).f21670c != DataSource.MEMORY_CACHE) {
                return new CrossfadeTransition(transitionTarget, imageResult, this.f21711b, this.f21712c);
            }
            factory.getClass();
            return new NoneTransition(transitionTarget, imageResult);
        }

        public Factory(int i2) {
            this(i2, false, 2, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Factory() {
            this(0, 0 == true ? 1 : 0, 3, null);
        }

        public /* synthetic */ Factory(int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 200 : i2, (i3 & 2) != 0 ? false : z);
        }
    }

    public CrossfadeTransition(TransitionTarget transitionTarget, ImageResult imageResult, int i2) {
        this(transitionTarget, imageResult, i2, false, 8, null);
    }

    public CrossfadeTransition(TransitionTarget transitionTarget, ImageResult imageResult) {
        this(transitionTarget, imageResult, 0, false, 12, null);
    }

    public /* synthetic */ CrossfadeTransition(TransitionTarget transitionTarget, ImageResult imageResult, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(transitionTarget, imageResult, (i3 & 4) != 0 ? 200 : i2, (i3 & 8) != 0 ? false : z);
    }
}
