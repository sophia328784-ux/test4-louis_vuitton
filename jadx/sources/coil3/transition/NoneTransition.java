package coil3.transition;

import coil3.request.ErrorResult;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcoil3/transition/NoneTransition;", "Lcoil3/transition/Transition;", "Lcoil3/transition/TransitionTarget;", "target", "Lcoil3/request/ImageResult;", "result", "<init>", "(Lcoil3/transition/TransitionTarget;Lcoil3/request/ImageResult;)V", "Factory", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class NoneTransition implements Transition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TransitionTarget f21713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImageResult f21714b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/transition/NoneTransition$Factory;", "Lcoil3/transition/Transition$Factory;", "<init>", "()V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Factory implements Transition.Factory {
        @Override // coil3.transition.Transition.Factory
        public final Transition a(TransitionTarget transitionTarget, ImageResult imageResult) {
            return new NoneTransition(transitionTarget, imageResult);
        }
    }

    public NoneTransition(TransitionTarget transitionTarget, ImageResult imageResult) {
        this.f21713a = transitionTarget;
        this.f21714b = imageResult;
    }

    @Override // coil3.transition.Transition
    public final void transition() {
        ImageResult imageResult = this.f21714b;
        boolean z = imageResult instanceof SuccessResult;
        TransitionTarget transitionTarget = this.f21713a;
        if (z) {
            transitionTarget.e(((SuccessResult) imageResult).f21668a);
        } else if (imageResult instanceof ErrorResult) {
            transitionTarget.b(((ErrorResult) imageResult).f21609a);
        } else {
            v40.g();
        }
    }
}
