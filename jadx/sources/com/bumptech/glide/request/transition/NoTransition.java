package com.bumptech.glide.request.transition;

/* JADX INFO: loaded from: classes2.dex */
public class NoTransition<R> implements Transition<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NoTransition f24965a = new NoTransition();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NoAnimationFactory f24966b = new NoAnimationFactory();

    public static class NoAnimationFactory<R> implements TransitionFactory<R> {
        @Override // com.bumptech.glide.request.transition.TransitionFactory
        public final NoTransition build() {
            return NoTransition.f24965a;
        }
    }
}
