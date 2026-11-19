package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.transition.Transition;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.activity.BackEventCompat;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.vuitton.android.R;
import defpackage.b21;
import defpackage.b5;
import defpackage.jr;
import defpackage.lc0;
import defpackage.md;
import defpackage.ys;
import defpackage.z1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u00002\u00020\u0001:\b\u0006\u0007\b\t\n\u000b\f\rB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u000e"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "Landroid/view/ViewGroup;", "container", "<init>", "(Landroid/view/ViewGroup;)V", "AnimationEffect", "AnimationInfo", "AnimatorEffect", "Api24Impl", "Api26Impl", "SpecialEffectsInfo", "TransitionEffect", "TransitionInfo", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f13189h = 0;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "animationInfo", "<init>", "(Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimationEffect extends SpecialEffectsController.Effect {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AnimationInfo f13190c;

        public AnimationEffect(AnimationInfo animationInfo) {
            animationInfo.getClass();
            this.f13190c = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void b(ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimationInfo animationInfo = this.f13190c;
            SpecialEffectsController.Operation operation = animationInfo.f13203a;
            View view = operation.f13369c.mView;
            view.clearAnimation();
            viewGroup.endViewTransition(view);
            animationInfo.f13203a.c(this);
            if (FragmentManager.O(2)) {
                operation.toString();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void c(final ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimationInfo animationInfo = this.f13190c;
            boolean zA = animationInfo.a();
            final SpecialEffectsController.Operation operation = animationInfo.f13203a;
            if (zA) {
                operation.c(this);
                return;
            }
            Context context = viewGroup.getContext();
            final View view = operation.f13369c.mView;
            context.getClass();
            FragmentAnim.AnimationOrAnimator animationOrAnimatorB = animationInfo.b(context);
            if (animationOrAnimatorB == null) {
                md.k("Required value was null.");
                return;
            }
            Animation animation = animationOrAnimatorB.f13247a;
            if (animation == null) {
                md.k("Required value was null.");
                return;
            }
            if (operation.f13367a != SpecialEffectsController.Operation.State.REMOVED) {
                view.startAnimation(animation);
                operation.c(this);
                return;
            }
            viewGroup.startViewTransition(view);
            FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation, viewGroup, view);
            endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$AnimationEffect$onCommit$1
                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationEnd(Animation animation2) {
                    animation2.getClass();
                    ViewGroup viewGroup2 = viewGroup;
                    viewGroup2.post(new a(viewGroup2, view, this, 0));
                    if (FragmentManager.O(2)) {
                        Objects.toString(operation);
                    }
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationRepeat(Animation animation2) {
                    animation2.getClass();
                }

                @Override // android.view.animation.Animation.AnimationListener
                public final void onAnimationStart(Animation animation2) {
                    animation2.getClass();
                    if (FragmentManager.O(2)) {
                        Objects.toString(operation);
                    }
                }
            });
            view.startAnimation(endViewTransitionAnimation);
            if (FragmentManager.O(2)) {
                operation.toString();
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "operation", "", "isPop", "<init>", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Z)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimationInfo extends SpecialEffectsInfo {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f13194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13195c;
        public FragmentAnim.AnimationOrAnimator d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController.Operation operation, boolean z) {
            super(operation);
            operation.getClass();
            this.f13194b = z;
        }

        /* JADX WARN: Code duplicated, block: B:74:0x00f8 A[Catch: RuntimeException -> 0x00fe, TRY_LEAVE, TryCatch #1 {RuntimeException -> 0x00fe, blocks: (B:72:0x00f2, B:74:0x00f8), top: B:85:0x00f2 }] */
        public final FragmentAnim.AnimationOrAnimator b(Context context) {
            int enterAnim;
            FragmentAnim.AnimationOrAnimator animationOrAnimator;
            Animator animatorLoadAnimator;
            int iA;
            context.getClass();
            if (this.f13195c) {
                return this.d;
            }
            SpecialEffectsController.Operation operation = this.f13203a;
            Fragment fragment = operation.f13369c;
            boolean z = operation.f13367a == SpecialEffectsController.Operation.State.VISIBLE;
            int nextTransition = fragment.getNextTransition();
            if (this.f13194b) {
                enterAnim = z ? fragment.getPopEnterAnim() : fragment.getPopExitAnim();
            } else {
                enterAnim = z ? fragment.getEnterAnim() : fragment.getExitAnim();
            }
            fragment.setAnimations(0, 0, 0, 0);
            ViewGroup viewGroup = fragment.mContainer;
            FragmentAnim.AnimationOrAnimator animationOrAnimator2 = null;
            if (viewGroup != null && viewGroup.getTag(R.id.visible_removing_fragment_view_tag) != null) {
                fragment.mContainer.setTag(R.id.visible_removing_fragment_view_tag, null);
            }
            ViewGroup viewGroup2 = fragment.mContainer;
            if (viewGroup2 == null || viewGroup2.getLayoutTransition() == null) {
                Animation animationOnCreateAnimation = fragment.onCreateAnimation(nextTransition, z, enterAnim);
                if (animationOnCreateAnimation != null) {
                    animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(animationOnCreateAnimation);
                } else {
                    Animator animatorOnCreateAnimator = fragment.onCreateAnimator(nextTransition, z, enterAnim);
                    if (animatorOnCreateAnimator != null) {
                        animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(animatorOnCreateAnimator);
                    } else {
                        if (enterAnim == 0 && nextTransition != 0) {
                            if (nextTransition == 4097) {
                                iA = z ? R.animator.fragment_open_enter : R.animator.fragment_open_exit;
                            } else if (nextTransition == 8194) {
                                iA = z ? R.animator.fragment_close_enter : R.animator.fragment_close_exit;
                            } else if (nextTransition == 8197) {
                                iA = z ? FragmentAnim.a(android.R.attr.activityCloseEnterAnimation, context) : FragmentAnim.a(android.R.attr.activityCloseExitAnimation, context);
                            } else if (nextTransition == 4099) {
                                iA = z ? R.animator.fragment_fade_enter : R.animator.fragment_fade_exit;
                            } else if (nextTransition != 4100) {
                                iA = -1;
                            } else {
                                iA = z ? FragmentAnim.a(android.R.attr.activityOpenEnterAnimation, context) : FragmentAnim.a(android.R.attr.activityOpenExitAnimation, context);
                            }
                            enterAnim = iA;
                        }
                        if (enterAnim != 0) {
                            boolean zEquals = "anim".equals(context.getResources().getResourceTypeName(enterAnim));
                            if (zEquals) {
                                try {
                                    Animation animationLoadAnimation = AnimationUtils.loadAnimation(context, enterAnim);
                                    if (animationLoadAnimation != null) {
                                        animationOrAnimator = new FragmentAnim.AnimationOrAnimator(animationLoadAnimation);
                                        animationOrAnimator2 = animationOrAnimator;
                                    }
                                } catch (Resources.NotFoundException e2) {
                                    throw e2;
                                } catch (RuntimeException unused) {
                                    try {
                                        animatorLoadAnimator = AnimatorInflater.loadAnimator(context, enterAnim);
                                        if (animatorLoadAnimator != null) {
                                            animationOrAnimator = new FragmentAnim.AnimationOrAnimator(animatorLoadAnimator);
                                            animationOrAnimator2 = animationOrAnimator;
                                        }
                                    } catch (RuntimeException e3) {
                                        if (zEquals) {
                                            throw e3;
                                        }
                                        Animation animationLoadAnimation2 = AnimationUtils.loadAnimation(context, enterAnim);
                                        if (animationLoadAnimation2 != null) {
                                            animationOrAnimator2 = new FragmentAnim.AnimationOrAnimator(animationLoadAnimation2);
                                        }
                                    }
                                }
                            } else {
                                animatorLoadAnimator = AnimatorInflater.loadAnimator(context, enterAnim);
                                if (animatorLoadAnimator != null) {
                                    animationOrAnimator = new FragmentAnim.AnimationOrAnimator(animatorLoadAnimator);
                                    animationOrAnimator2 = animationOrAnimator;
                                }
                            }
                        }
                    }
                }
            }
            this.d = animationOrAnimator2;
            this.f13195c = true;
            return animationOrAnimator2;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimatorEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "animatorInfo", "<init>", "(Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class AnimatorEffect extends SpecialEffectsController.Effect {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AnimationInfo f13196c;
        public AnimatorSet d;

        public AnimatorEffect(AnimationInfo animationInfo) {
            animationInfo.getClass();
            this.f13196c = animationInfo;
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void b(ViewGroup viewGroup) {
            viewGroup.getClass();
            AnimatorSet animatorSet = this.d;
            AnimationInfo animationInfo = this.f13196c;
            if (animatorSet == null) {
                animationInfo.f13203a.c(this);
                return;
            }
            SpecialEffectsController.Operation operation = animationInfo.f13203a;
            if (operation.g) {
                Api26Impl.f13202a.a(animatorSet);
            } else {
                animatorSet.end();
            }
            if (FragmentManager.O(2)) {
                operation.toString();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void c(ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController.Operation operation = this.f13196c.f13203a;
            AnimatorSet animatorSet = this.d;
            if (animatorSet == null) {
                operation.c(this);
                return;
            }
            animatorSet.start();
            if (FragmentManager.O(2)) {
                Objects.toString(operation);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void d(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
            SpecialEffectsController.Operation operation = this.f13196c.f13203a;
            AnimatorSet animatorSet = this.d;
            if (animatorSet == null) {
                operation.c(this);
                return;
            }
            if (Build.VERSION.SDK_INT < 34 || !operation.f13369c.mTransitioning) {
                return;
            }
            if (FragmentManager.O(2)) {
                operation.toString();
            }
            long jA = Api24Impl.f13201a.a(animatorSet);
            long j2 = (long) (backEventCompat.f654c * jA);
            if (j2 == 0) {
                j2 = 1;
            }
            if (j2 == jA) {
                j2 = jA - 1;
            }
            if (FragmentManager.O(2)) {
                animatorSet.toString();
                operation.toString();
            }
            Api26Impl.f13202a.b(animatorSet, j2);
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void e(final ViewGroup viewGroup) {
            final AnimatorEffect animatorEffect;
            viewGroup.getClass();
            AnimationInfo animationInfo = this.f13196c;
            if (animationInfo.a()) {
                return;
            }
            Context context = viewGroup.getContext();
            context.getClass();
            FragmentAnim.AnimationOrAnimator animationOrAnimatorB = animationInfo.b(context);
            this.d = animationOrAnimatorB != null ? animationOrAnimatorB.f13248b : null;
            final SpecialEffectsController.Operation operation = animationInfo.f13203a;
            Fragment fragment = operation.f13369c;
            final boolean z = operation.f13367a == SpecialEffectsController.Operation.State.GONE;
            final View view = fragment.mView;
            viewGroup.startViewTransition(view);
            AnimatorSet animatorSet = this.d;
            if (animatorSet != null) {
                animatorEffect = this;
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$AnimatorEffect$onStart$1
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        animator.getClass();
                        ViewGroup viewGroup2 = viewGroup;
                        View view2 = view;
                        viewGroup2.endViewTransition(view2);
                        boolean z2 = z;
                        SpecialEffectsController.Operation operation2 = operation;
                        if (z2) {
                            SpecialEffectsController.Operation.State state = operation2.f13367a;
                            view2.getClass();
                            state.a(view2, viewGroup2);
                        }
                        DefaultSpecialEffectsController.AnimatorEffect animatorEffect2 = animatorEffect;
                        animatorEffect2.f13196c.f13203a.c(animatorEffect2);
                        if (FragmentManager.O(2)) {
                            Objects.toString(operation2);
                        }
                    }
                });
            } else {
                animatorEffect = this;
            }
            AnimatorSet animatorSet2 = animatorEffect.d;
            if (animatorSet2 != null) {
                animatorSet2.setTarget(view);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\bÁ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$Api24Impl;", "", "Landroid/animation/AnimatorSet;", "animatorSet", "", "a", "(Landroid/animation/AnimatorSet;)J", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api24Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Api24Impl f13201a = new Api24Impl();

        public final long a(AnimatorSet animatorSet) {
            animatorSet.getClass();
            return animatorSet.getTotalDuration();
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$Api26Impl;", "", "Landroid/animation/AnimatorSet;", "animatorSet", "", "a", "(Landroid/animation/AnimatorSet;)V", "", "time", NBSSpanMetricUnit.Bit, "(Landroid/animation/AnimatorSet;J)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Api26Impl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Api26Impl f13202a = new Api26Impl();

        public final void a(AnimatorSet animatorSet) {
            animatorSet.getClass();
            animatorSet.reverse();
        }

        public final void b(AnimatorSet animatorSet, long time) {
            animatorSet.getClass();
            animatorSet.setCurrentPlayTime(time);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "operation", "<init>", "(Landroidx/fragment/app/SpecialEffectsController$Operation;)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static class SpecialEffectsInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SpecialEffectsController.Operation f13203a;

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation) {
            operation.getClass();
            this.f13203a = operation;
        }

        public final boolean a() {
            SpecialEffectsController.Operation.State stateA;
            SpecialEffectsController.Operation operation = this.f13203a;
            View view = operation.f13369c.mView;
            if (view != null) {
                SpecialEffectsController.Operation.State.INSTANCE.getClass();
                stateA = SpecialEffectsController.Operation.State.Companion.a(view);
            } else {
                stateA = null;
            }
            SpecialEffectsController.Operation.State state = operation.f13367a;
            if (stateA == state) {
                return true;
            }
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            return (stateA == state2 || state == state2) ? false : true;
        }
    }

    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001Bß\u0001\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0016\u0010\u000f\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0016\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\r0\fj\b\u0012\u0004\u0012\u00020\r`\u000e\u0012\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0016\u0010\u0014\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e\u0012\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00120\fj\b\u0012\u0004\u0012\u00020\u0012`\u000e\u0012\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u0011\u0012\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u0011\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;", "Landroidx/fragment/app/SpecialEffectsController$Effect;", "", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "transitionInfos", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "firstOut", "lastIn", "Landroidx/fragment/app/FragmentTransitionImpl;", "transitionImpl", "", "sharedElementTransition", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "sharedElementFirstOutViews", "sharedElementLastInViews", "Landroidx/collection/ArrayMap;", "", "sharedElementNameMapping", "enteringNames", "exitingNames", "firstOutViews", "lastInViews", "", "isPop", "<init>", "(Ljava/util/List;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Z)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class TransitionEffect extends SpecialEffectsController.Effect {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f13204c;
        public final SpecialEffectsController.Operation d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final SpecialEffectsController.Operation f13205e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final FragmentTransitionImpl f13206f;
        public final Object g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayList f13207h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ArrayList f13208i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ArrayMap f13209j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ArrayList f13210k;
        public final ArrayList l;
        public final ArrayMap m;
        public final ArrayMap n;
        public final boolean o;
        public final CancellationSignal p;
        public Object q;
        public boolean r;

        public TransitionEffect(List<TransitionInfo> list, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, FragmentTransitionImpl fragmentTransitionImpl, Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2, ArrayMap<String, String> arrayMap, ArrayList<String> arrayList3, ArrayList<String> arrayList4, ArrayMap<String, View> arrayMap2, ArrayMap<String, View> arrayMap3, boolean z) {
            list.getClass();
            fragmentTransitionImpl.getClass();
            arrayList.getClass();
            arrayList2.getClass();
            arrayMap.getClass();
            arrayList3.getClass();
            arrayList4.getClass();
            arrayMap2.getClass();
            arrayMap3.getClass();
            this.f13204c = list;
            this.d = operation;
            this.f13205e = operation2;
            this.f13206f = fragmentTransitionImpl;
            this.g = obj;
            this.f13207h = arrayList;
            this.f13208i = arrayList2;
            this.f13209j = arrayMap;
            this.f13210k = arrayList3;
            this.l = arrayList4;
            this.m = arrayMap2;
            this.n = arrayMap3;
            this.o = z;
            this.p = new CancellationSignal();
        }

        public static void f(View view, ArrayList arrayList) {
            if (!(view instanceof ViewGroup)) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            int i2 = ViewGroupCompat.f12210a;
            if (viewGroup.isTransitionGroup()) {
                if (arrayList.contains(view)) {
                    return;
                }
                arrayList.add(view);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (childAt.getVisibility() == 0) {
                    f(childAt, arrayList);
                }
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final boolean a() {
            Object obj;
            FragmentTransitionImpl fragmentTransitionImpl = this.f13206f;
            if (!fragmentTransitionImpl.l()) {
                return false;
            }
            List<TransitionInfo> list = this.f13204c;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (TransitionInfo transitionInfo : list) {
                    if (Build.VERSION.SDK_INT < 34 || (obj = transitionInfo.f13218b) == null || !fragmentTransitionImpl.m(obj)) {
                        return false;
                    }
                }
            }
            Object obj2 = this.g;
            return obj2 == null || fragmentTransitionImpl.m(obj2);
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void b(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.p.a();
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void c(final ViewGroup viewGroup) {
            viewGroup.getClass();
            boolean zIsLaidOut = viewGroup.isLaidOut();
            List<TransitionInfo> list = this.f13204c;
            if (!zIsLaidOut || this.r) {
                for (TransitionInfo transitionInfo : list) {
                    SpecialEffectsController.Operation operation = transitionInfo.f13203a;
                    if (FragmentManager.O(2)) {
                        if (this.r) {
                            Objects.toString(operation);
                        } else {
                            viewGroup.toString();
                            Objects.toString(operation);
                        }
                    }
                    transitionInfo.f13203a.c(this);
                }
                this.r = false;
                return;
            }
            Object obj = this.q;
            FragmentTransitionImpl fragmentTransitionImpl = this.f13206f;
            SpecialEffectsController.Operation operation2 = this.f13205e;
            SpecialEffectsController.Operation operation3 = this.d;
            if (obj != null) {
                fragmentTransitionImpl.c(obj);
                if (FragmentManager.O(2)) {
                    Objects.toString(operation3);
                    Objects.toString(operation2);
                    return;
                }
                return;
            }
            Pair pairG = g(viewGroup, operation2, operation3);
            ArrayList arrayList = (ArrayList) pairG.f71705b;
            final Object obj2 = pairG.f71706c;
            List list2 = list;
            ArrayList<SpecialEffectsController.Operation> arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList2.add(((TransitionInfo) it.next()).f13203a);
            }
            for (SpecialEffectsController.Operation operation4 : arrayList2) {
                fragmentTransitionImpl.u(operation4.f13369c, obj2, this.p, new b(operation4, this, 1));
            }
            i(arrayList, viewGroup, new Function0<Unit>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onCommit$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    this.f13206f.e(viewGroup, obj2);
                    return Unit.f71739a;
                }
            });
            if (FragmentManager.O(2)) {
                Objects.toString(operation3);
                Objects.toString(operation2);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void d(BackEventCompat backEventCompat, ViewGroup viewGroup) {
            viewGroup.getClass();
            Object obj = this.q;
            if (obj != null) {
                this.f13206f.r(obj, backEventCompat.f654c);
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Effect
        public final void e(final ViewGroup viewGroup) {
            Object obj;
            viewGroup.getClass();
            boolean zIsLaidOut = viewGroup.isLaidOut();
            List list = this.f13204c;
            if (!zIsLaidOut) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    SpecialEffectsController.Operation operation = ((TransitionInfo) it.next()).f13203a;
                    if (FragmentManager.O(2)) {
                        viewGroup.toString();
                        Objects.toString(operation);
                    }
                }
                return;
            }
            boolean zH = h();
            SpecialEffectsController.Operation operation2 = this.f13205e;
            SpecialEffectsController.Operation operation3 = this.d;
            if (zH && (obj = this.g) != null && !a()) {
                Objects.toString(obj);
                Objects.toString(operation3);
                Objects.toString(operation2);
            }
            if (a() && h()) {
                final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Pair pairG = g(viewGroup, operation2, operation3);
                ArrayList arrayList = (ArrayList) pairG.f71705b;
                final Object obj2 = pairG.f71706c;
                List list2 = list;
                ArrayList<SpecialEffectsController.Operation> arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(((TransitionInfo) it2.next()).f13203a);
                }
                for (SpecialEffectsController.Operation operation4 : arrayList2) {
                    z1 z1Var = new z1(ref$ObjectRef, 27);
                    Fragment fragment = operation4.f13369c;
                    this.f13206f.v(obj2, this.p, z1Var, new b(operation4, this, 0));
                }
                i(arrayList, viewGroup, new Function0<Unit>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        FragmentManager.O(2);
                        final DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.f13213c;
                        FragmentTransitionImpl fragmentTransitionImpl = transitionEffect.f13206f;
                        final ViewGroup viewGroup2 = viewGroup;
                        final Object obj3 = obj2;
                        Object objI = fragmentTransitionImpl.i(viewGroup2, obj3);
                        transitionEffect.q = objI;
                        if (objI == null) {
                            FragmentManager.O(2);
                            transitionEffect.r = true;
                        } else {
                            ref$ObjectRef.f71921b = new Function0<Unit>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$TransitionEffect$onStart$4.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    final DefaultSpecialEffectsController.TransitionEffect transitionEffect2 = transitionEffect;
                                    List list3 = transitionEffect2.f13204c;
                                    FragmentTransitionImpl fragmentTransitionImpl2 = transitionEffect2.f13206f;
                                    List list4 = list3;
                                    if ((list4 instanceof Collection) && list4.isEmpty()) {
                                        FragmentManager.O(2);
                                        Object obj4 = transitionEffect2.q;
                                        obj4.getClass();
                                        fragmentTransitionImpl2.d(obj4, new b(transitionEffect2, viewGroup2));
                                    } else {
                                        Iterator it3 = list4.iterator();
                                        while (it3.hasNext()) {
                                            if (!((DefaultSpecialEffectsController.TransitionInfo) it3.next()).f13203a.g) {
                                                FragmentManager.O(2);
                                                CancellationSignal cancellationSignal = new CancellationSignal();
                                                fragmentTransitionImpl2.u(((DefaultSpecialEffectsController.TransitionInfo) list3.get(0)).f13203a.f13369c, obj3, cancellationSignal, new Runnable() { // from class: androidx.fragment.app.c
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        FragmentManager.O(2);
                                                        DefaultSpecialEffectsController.TransitionEffect transitionEffect3 = transitionEffect2;
                                                        Iterator it4 = transitionEffect3.f13204c.iterator();
                                                        while (it4.hasNext()) {
                                                            ((DefaultSpecialEffectsController.TransitionInfo) it4.next()).f13203a.c(transitionEffect3);
                                                        }
                                                    }
                                                });
                                                cancellationSignal.a();
                                            }
                                        }
                                        FragmentManager.O(2);
                                        Object obj5 = transitionEffect2.q;
                                        obj5.getClass();
                                        fragmentTransitionImpl2.d(obj5, new b(transitionEffect2, viewGroup2));
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            if (FragmentManager.O(2)) {
                                Objects.toString(transitionEffect.d);
                                Objects.toString(transitionEffect.f13205e);
                            }
                        }
                        return Unit.f71739a;
                    }
                });
            }
        }

        /* JADX WARN: Code duplicated, block: B:44:0x0179  */
        /* JADX WARN: Code duplicated, block: B:46:0x017e  */
        /* JADX WARN: Code duplicated, block: B:49:0x0187  */
        /* JADX WARN: Code duplicated, block: B:52:0x0194 A[LOOP:2: B:50:0x018e->B:52:0x0194, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:53:0x01a1  */
        /* JADX WARN: Code duplicated, block: B:55:0x01aa  */
        /* JADX WARN: Code duplicated, block: B:58:0x01b7 A[LOOP:3: B:56:0x01b1->B:58:0x01b7, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:74:0x01dc A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:75:0x01c8 A[SYNTHETIC] */
        public final Pair g(ViewGroup viewGroup, SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2) {
            ArrayList arrayList;
            ArrayList arrayList2;
            Object obj;
            FragmentTransitionImpl fragmentTransitionImpl;
            Object obj2;
            ArrayList arrayList3;
            this = this;
            View view = new View(viewGroup.getContext());
            Rect rect = new Rect();
            List list = this.f13204c;
            Iterator it = list.iterator();
            View view2 = null;
            boolean z = false;
            while (true) {
                boolean zHasNext = it.hasNext();
                arrayList = this.f13208i;
                arrayList2 = this.f13207h;
                obj = this.g;
                fragmentTransitionImpl = this.f13206f;
                if (!zHasNext) {
                    break;
                }
                if (((TransitionInfo) it.next()).d != null && operation2 != null && operation != null && !this.f13209j.isEmpty() && obj != null) {
                    Fragment fragment = operation.f13369c;
                    Fragment fragment2 = operation2.f13369c;
                    boolean z2 = this.o;
                    ArrayMap arrayMap = this.m;
                    FragmentTransition.a(fragment, fragment2, z2, arrayMap);
                    OneShotPreDrawListener.a(viewGroup, new a(operation, operation2, this, 1));
                    arrayList2.addAll(arrayMap.values());
                    ArrayList arrayList4 = this.l;
                    if (!arrayList4.isEmpty()) {
                        Object obj3 = arrayList4.get(0);
                        obj3.getClass();
                        View view3 = (View) arrayMap.get((String) obj3);
                        fragmentTransitionImpl.s(view3, obj);
                        view2 = view3;
                    }
                    ArrayMap arrayMap2 = this.n;
                    arrayList.addAll(arrayMap2.values());
                    ArrayList arrayList5 = this.f13210k;
                    if (!arrayList5.isEmpty()) {
                        Object obj4 = arrayList5.get(0);
                        obj4.getClass();
                        View view4 = (View) arrayMap2.get((String) obj4);
                        if (view4 != null) {
                            OneShotPreDrawListener.a(viewGroup, new b5(fragmentTransitionImpl, view4, rect, 8));
                            z = true;
                        }
                    }
                    fragmentTransitionImpl.w(obj, view, arrayList2);
                    ArrayList arrayList6 = this.f13208i;
                    FragmentTransitionImpl fragmentTransitionImpl2 = this.f13206f;
                    Object obj5 = this.g;
                    fragmentTransitionImpl2.q(obj5, null, null, obj5, arrayList6);
                }
                list = list;
                it = it;
            }
            List list2 = list;
            ArrayList arrayList7 = new ArrayList();
            Iterator it2 = list2.iterator();
            Object objO = null;
            Object objO2 = null;
            while (it2.hasNext()) {
                it2 = it2;
                TransitionInfo transitionInfo = (TransitionInfo) it2.next();
                z = z;
                SpecialEffectsController.Operation operation3 = transitionInfo.f13203a;
                arrayList = arrayList;
                Object objH = fragmentTransitionImpl.h(transitionInfo.f13218b);
                if (objH != null) {
                    ArrayList arrayList8 = arrayList2;
                    ArrayList arrayList9 = new ArrayList();
                    Object obj6 = obj;
                    Fragment fragment3 = operation3.f13369c;
                    Object obj7 = objO2;
                    View view5 = fragment3.mView;
                    view5.getClass();
                    f(view5, arrayList9);
                    if (obj6 != null && (operation3 == operation2 || operation3 == operation)) {
                        if (operation3 == operation2) {
                            arrayList9.removeAll(CollectionsKt.B0(arrayList8));
                        } else {
                            arrayList9.removeAll(CollectionsKt.B0(arrayList));
                        }
                    }
                    if (arrayList9.isEmpty()) {
                        fragmentTransitionImpl.a(view, objH);
                        obj2 = objH;
                        arrayList3 = arrayList9;
                    } else {
                        fragmentTransitionImpl.b(objH, arrayList9);
                        this.f13206f.q(objH, objH, arrayList9, null, null);
                        obj2 = objH;
                        arrayList3 = arrayList9;
                        if (operation3.f13367a == SpecialEffectsController.Operation.State.GONE) {
                            operation3.f13373i = false;
                            ArrayList arrayList10 = new ArrayList(arrayList3);
                            arrayList10.remove(fragment3.mView);
                            fragmentTransitionImpl.p(obj2, fragment3.mView, arrayList10);
                            OneShotPreDrawListener.a(viewGroup, new ys(0, arrayList3));
                        }
                        if (operation3.f13367a == SpecialEffectsController.Operation.State.VISIBLE) {
                            arrayList7.addAll(arrayList3);
                            if (z) {
                                fragmentTransitionImpl.t(obj2, rect);
                            }
                            if (FragmentManager.O(2)) {
                                obj2.toString();
                                for (Object obj8 : arrayList3) {
                                    obj8.getClass();
                                    Objects.toString((View) obj8);
                                }
                            }
                        } else {
                            fragmentTransitionImpl.s(view2, obj2);
                            if (FragmentManager.O(2)) {
                                obj2.toString();
                                for (Object obj9 : arrayList3) {
                                    obj9.getClass();
                                    Objects.toString((View) obj9);
                                }
                            }
                        }
                        if (transitionInfo.f13219c) {
                            objO = fragmentTransitionImpl.o(objO, obj2);
                            arrayList2 = arrayList8;
                            obj = obj6;
                            objO2 = obj7;
                        } else {
                            objO2 = fragmentTransitionImpl.o(obj7, obj2);
                            arrayList2 = arrayList8;
                            obj = obj6;
                        }
                    }
                    if (operation3.f13367a == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList7.addAll(arrayList3);
                        if (z) {
                            fragmentTransitionImpl.t(obj2, rect);
                        }
                        if (FragmentManager.O(2)) {
                            obj2.toString();
                            while (r0.hasNext()) {
                                obj8.getClass();
                                Objects.toString((View) obj8);
                            }
                        }
                    } else {
                        fragmentTransitionImpl.s(view2, obj2);
                        if (FragmentManager.O(2)) {
                            obj2.toString();
                            while (r0.hasNext()) {
                                obj9.getClass();
                                Objects.toString((View) obj9);
                            }
                        }
                    }
                    if (transitionInfo.f13219c) {
                        objO = fragmentTransitionImpl.o(objO, obj2);
                        arrayList2 = arrayList8;
                        obj = obj6;
                        objO2 = obj7;
                    } else {
                        objO2 = fragmentTransitionImpl.o(obj7, obj2);
                        arrayList2 = arrayList8;
                        obj = obj6;
                    }
                }
            }
            Object objN = fragmentTransitionImpl.n(objO, objO2, obj);
            if (FragmentManager.O(2)) {
                Objects.toString(objN);
                viewGroup.toString();
            }
            return new Pair(arrayList7, objN);
        }

        public final boolean h() {
            List list = this.f13204c;
            if ((list instanceof Collection) && list.isEmpty()) {
                return true;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (!((TransitionInfo) it.next()).f13203a.f13369c.mTransitioning) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void i(ArrayList arrayList, ViewGroup viewGroup, Function0 function0) {
            FragmentTransition.c(4, arrayList);
            final FragmentTransitionImpl fragmentTransitionImpl = this.f13206f;
            fragmentTransitionImpl.getClass();
            final ArrayList arrayList2 = new ArrayList();
            final ArrayList arrayList3 = this.f13208i;
            int size = arrayList3.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = (View) arrayList3.get(i2);
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                arrayList2.add(view.getTransitionName());
                view.setTransitionName(null);
            }
            boolean zO = FragmentManager.O(2);
            ArrayList arrayList4 = this.f13207h;
            if (zO) {
                for (Object obj : arrayList4) {
                    obj.getClass();
                    View view2 = (View) obj;
                    Objects.toString(view2);
                    WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                    view2.getTransitionName();
                }
                for (Object obj2 : arrayList3) {
                    obj2.getClass();
                    View view3 = (View) obj2;
                    Objects.toString(view3);
                    WeakHashMap weakHashMap3 = ViewCompat.f12200a;
                    view3.getTransitionName();
                }
            }
            function0.mo47invoke();
            final int size2 = arrayList3.size();
            final ArrayList arrayList5 = new ArrayList();
            int i3 = 0;
            while (true) {
                final ArrayList arrayList6 = this.f13207h;
                if (i3 >= size2) {
                    OneShotPreDrawListener.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.FragmentTransitionImpl.1
                        @Override // java.lang.Runnable
                        public void run() {
                            for (int i4 = 0; i4 < size2; i4++) {
                                View view4 = (View) arrayList3.get(i4);
                                String str = (String) arrayList2.get(i4);
                                WeakHashMap weakHashMap4 = ViewCompat.f12200a;
                                view4.setTransitionName(str);
                                ((View) arrayList6.get(i4)).setTransitionName((String) arrayList5.get(i4));
                            }
                        }
                    });
                    FragmentTransition.c(0, arrayList);
                    fragmentTransitionImpl.x(this.g, arrayList4, arrayList3);
                    return;
                }
                View view4 = (View) arrayList6.get(i3);
                WeakHashMap weakHashMap4 = ViewCompat.f12200a;
                String transitionName = view4.getTransitionName();
                arrayList5.add(transitionName);
                if (transitionName != null) {
                    view4.setTransitionName(null);
                    String str = (String) this.f13209j.get(transitionName);
                    for (int i4 = 0; i4 < size2; i4++) {
                        if (str.equals(arrayList2.get(i4))) {
                            ((View) arrayList3.get(i4)).setTransitionName(transitionName);
                            break;
                        }
                    }
                }
                i3++;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "operation", "", "isPop", "providesSharedElementTransition", "<init>", "(Landroidx/fragment/app/SpecialEffectsController$Operation;ZZ)V", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class TransitionInfo extends SpecialEffectsInfo {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f13218b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f13219c;
        public final Object d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(SpecialEffectsController.Operation operation, boolean z, boolean z2) {
            super(operation);
            operation.getClass();
            SpecialEffectsController.Operation.State state = operation.f13367a;
            Fragment fragment = operation.f13369c;
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            this.f13218b = state == state2 ? z ? fragment.getReenterTransition() : fragment.getEnterTransition() : z ? fragment.getReturnTransition() : fragment.getExitTransition();
            this.f13219c = operation.f13367a == state2 ? z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() : true;
            this.d = z2 ? z ? fragment.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition() : null;
        }

        public final FragmentTransitionImpl b() {
            Object obj = this.f13218b;
            FragmentTransitionImpl fragmentTransitionImplC = c(obj);
            Object obj2 = this.d;
            FragmentTransitionImpl fragmentTransitionImplC2 = c(obj2);
            if (fragmentTransitionImplC == null || fragmentTransitionImplC2 == null || fragmentTransitionImplC == fragmentTransitionImplC2) {
                return fragmentTransitionImplC == null ? fragmentTransitionImplC2 : fragmentTransitionImplC;
            }
            lc0.q("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ", this.f13203a.f13369c, " returned Transition ", obj, " which uses a different Transition  type than its shared element transition ", obj2);
            return null;
        }

        public final FragmentTransitionImpl c(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.f13344a;
            if (fragmentTransitionImpl != null && (obj instanceof Transition)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.f13345b;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.g(obj)) {
                return fragmentTransitionImpl2;
            }
            StringBuilder sb = new StringBuilder("Transition ");
            sb.append(obj);
            lc0.t(sb, " for fragment ", this.f13203a.f13369c, " is not a valid framework Transition or AndroidX Transition");
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(ViewGroup viewGroup) {
        super(viewGroup);
        viewGroup.getClass();
    }

    public static void n(ArrayMap arrayMap, View view) {
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        String transitionName = view.getTransitionName();
        if (transitionName != null) {
            arrayMap.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    n(arrayMap, childAt);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:156:0x03fa A[LOOP:19: B:154:0x03f4->B:156:0x03fa, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x00ce  */
    @Override // androidx.fragment.app.SpecialEffectsController
    public final void b(ArrayList arrayList, boolean z) {
        Object next;
        Object objPrevious;
        ArrayList<AnimationInfo> arrayList2;
        int i2;
        TransitionEffect transitionEffect;
        boolean z2;
        Iterator it;
        String strB;
        int i3 = 2;
        FragmentManager.O(2);
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) next;
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = operation.f13369c.mView;
            view.getClass();
            companion.getClass();
            SpecialEffectsController.Operation.State stateA = SpecialEffectsController.Operation.State.Companion.a(view);
            SpecialEffectsController.Operation.State state = SpecialEffectsController.Operation.State.VISIBLE;
            if (stateA == state && operation.f13367a != state) {
                break;
            }
        }
        SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) next;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                objPrevious = null;
                break;
            }
            objPrevious = listIterator.previous();
            SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) objPrevious;
            SpecialEffectsController.Operation.State.Companion companion2 = SpecialEffectsController.Operation.State.INSTANCE;
            View view2 = operation3.f13369c.mView;
            view2.getClass();
            companion2.getClass();
            SpecialEffectsController.Operation.State stateA2 = SpecialEffectsController.Operation.State.Companion.a(view2);
            SpecialEffectsController.Operation.State state2 = SpecialEffectsController.Operation.State.VISIBLE;
            if (stateA2 != state2 && operation3.f13367a == state2) {
                break;
            }
        }
        SpecialEffectsController.Operation operation4 = (SpecialEffectsController.Operation) objPrevious;
        if (FragmentManager.O(2)) {
            Objects.toString(operation2);
            Objects.toString(operation4);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        Fragment fragment = ((SpecialEffectsController.Operation) CollectionsKt.M(arrayList)).f13369c;
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            Fragment.AnimationInfo animationInfo = ((SpecialEffectsController.Operation) it3.next()).f13369c.mAnimationInfo;
            Fragment.AnimationInfo animationInfo2 = fragment.mAnimationInfo;
            animationInfo.f13237b = animationInfo2.f13237b;
            animationInfo.f13238c = animationInfo2.f13238c;
            animationInfo.d = animationInfo2.d;
            animationInfo.f13239e = animationInfo2.f13239e;
        }
        Iterator it4 = arrayList.iterator();
        while (true) {
            boolean z3 = false;
            if (!it4.hasNext()) {
                break;
            }
            SpecialEffectsController.Operation operation5 = (SpecialEffectsController.Operation) it4.next();
            arrayList3.add(new AnimationInfo(operation5, z));
            if (z) {
                if (operation5 == operation2) {
                    z3 = true;
                }
            } else if (operation5 == operation4) {
                z3 = true;
            }
            arrayList4.add(new TransitionInfo(operation5, z, z3));
            operation5.d.add(new jr(this, operation5, 7));
        }
        ArrayList arrayList5 = new ArrayList();
        for (Object obj : arrayList4) {
            if (!((TransitionInfo) obj).a()) {
                arrayList5.add(obj);
            }
        }
        ArrayList<TransitionInfo> arrayList6 = new ArrayList();
        for (Object obj2 : arrayList5) {
            if (((TransitionInfo) obj2).b() != null) {
                arrayList6.add(obj2);
            }
        }
        FragmentTransitionImpl fragmentTransitionImpl = null;
        for (TransitionInfo transitionInfo : arrayList6) {
            FragmentTransitionImpl fragmentTransitionImplB = transitionInfo.b();
            if (fragmentTransitionImpl != null && fragmentTransitionImplB != fragmentTransitionImpl) {
                StringBuilder sb = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                sb.append(transitionInfo.f13203a.f13369c);
                sb.append(" returned Transition ");
                b21.n(defpackage.a.n(sb, transitionInfo.f13218b, " which uses a different Transition type than other Fragments."));
                return;
            }
            fragmentTransitionImpl = fragmentTransitionImplB;
        }
        if (fragmentTransitionImpl == null) {
            arrayList2 = arrayList3;
            i2 = 2;
            z2 = false;
        } else {
            ArrayList arrayList7 = new ArrayList();
            ArrayList arrayList8 = new ArrayList();
            ArrayMap arrayMap = new ArrayMap();
            ArrayList<String> arrayList9 = new ArrayList<>();
            ArrayList<String> arrayList10 = new ArrayList<>();
            ArrayMap arrayMap2 = new ArrayMap();
            ArrayList<String> sharedElementSourceNames = arrayList10;
            ArrayMap arrayMap3 = new ArrayMap();
            Iterator it5 = arrayList6.iterator();
            Object obj3 = null;
            while (it5.hasNext()) {
                Object obj4 = ((TransitionInfo) it5.next()).d;
                if (obj4 != null && operation2 != null) {
                    Fragment fragment2 = operation2.f13369c;
                    if (operation4 != null) {
                        Fragment fragment3 = operation4.f13369c;
                        Object objY = fragmentTransitionImpl.y(fragmentTransitionImpl.h(obj4));
                        sharedElementSourceNames = fragment3.getSharedElementSourceNames();
                        sharedElementSourceNames.getClass();
                        i3 = i3;
                        ArrayList<String> sharedElementSourceNames2 = fragment2.getSharedElementSourceNames();
                        sharedElementSourceNames2.getClass();
                        ArrayList arrayList11 = arrayList3;
                        ArrayList<String> sharedElementTargetNames = fragment2.getSharedElementTargetNames();
                        sharedElementTargetNames.getClass();
                        operation2 = operation2;
                        int size = sharedElementTargetNames.size();
                        arrayList7 = arrayList7;
                        int i4 = 0;
                        while (i4 < size) {
                            int i5 = size;
                            int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i4));
                            if (iIndexOf != -1) {
                                sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i4));
                            }
                            i4++;
                            size = i5;
                        }
                        ArrayList<String> sharedElementTargetNames2 = fragment3.getSharedElementTargetNames();
                        sharedElementTargetNames2.getClass();
                        Pair pair = !z ? new Pair(fragment2.getExitTransitionCallback(), fragment3.getEnterTransitionCallback()) : new Pair(fragment2.getEnterTransitionCallback(), fragment3.getExitTransitionCallback());
                        SharedElementCallback sharedElementCallback = (SharedElementCallback) pair.f71705b;
                        SharedElementCallback sharedElementCallback2 = (SharedElementCallback) pair.f71706c;
                        int size2 = sharedElementSourceNames.size();
                        int i6 = 0;
                        while (i6 < size2) {
                            String str = sharedElementSourceNames.get(i6);
                            str.getClass();
                            SharedElementCallback sharedElementCallback3 = sharedElementCallback;
                            String str2 = str;
                            String str3 = sharedElementTargetNames2.get(i6);
                            str3.getClass();
                            arrayMap.put(str2, str3);
                            i6++;
                            sharedElementCallback = sharedElementCallback3;
                            sharedElementCallback2 = sharedElementCallback2;
                        }
                        SharedElementCallback sharedElementCallback4 = sharedElementCallback;
                        SharedElementCallback sharedElementCallback5 = sharedElementCallback2;
                        if (FragmentManager.O(i3)) {
                            for (String str4 : sharedElementTargetNames2) {
                            }
                            for (String str5 : sharedElementSourceNames) {
                            }
                        }
                        View view3 = fragment2.mView;
                        view3.getClass();
                        n(arrayMap2, view3);
                        arrayMap2.o(sharedElementSourceNames);
                        if (sharedElementCallback4 != null) {
                            if (FragmentManager.O(i3)) {
                                operation2.toString();
                            }
                            int size3 = sharedElementSourceNames.size() - 1;
                            if (size3 >= 0) {
                                while (true) {
                                    int i7 = size3 - 1;
                                    String str6 = sharedElementSourceNames.get(size3);
                                    str6.getClass();
                                    String str7 = str6;
                                    View view4 = (View) arrayMap2.get(str7);
                                    if (view4 == null) {
                                        arrayMap.remove(str7);
                                    } else {
                                        WeakHashMap weakHashMap = ViewCompat.f12200a;
                                        if (!str7.equals(view4.getTransitionName())) {
                                            arrayMap.put(view4.getTransitionName(), (String) arrayMap.remove(str7));
                                        }
                                    }
                                    if (i7 < 0) {
                                        break;
                                    } else {
                                        size3 = i7;
                                    }
                                }
                            }
                        } else {
                            arrayMap.o(arrayMap2.keySet());
                        }
                        View view5 = fragment3.mView;
                        view5.getClass();
                        n(arrayMap3, view5);
                        arrayMap3.o(sharedElementTargetNames2);
                        arrayMap3.o(arrayMap.values());
                        if (sharedElementCallback5 != null) {
                            if (FragmentManager.O(i3)) {
                                operation4.toString();
                            }
                            int size4 = sharedElementTargetNames2.size() - 1;
                            if (size4 >= 0) {
                                while (true) {
                                    int i8 = size4 - 1;
                                    String str8 = sharedElementTargetNames2.get(size4);
                                    str8.getClass();
                                    String str9 = str8;
                                    View view6 = (View) arrayMap3.get(str9);
                                    if (view6 == null) {
                                        String strB2 = FragmentTransition.b(arrayMap, str9);
                                        if (strB2 != null) {
                                            arrayMap.remove(strB2);
                                        }
                                    } else {
                                        WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                                        if (!str9.equals(view6.getTransitionName()) && (strB = FragmentTransition.b(arrayMap, str9)) != null) {
                                            arrayMap.put(strB, view6.getTransitionName());
                                        }
                                    }
                                    if (i8 < 0) {
                                        break;
                                    } else {
                                        size4 = i8;
                                    }
                                }
                            }
                        } else {
                            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.f13344a;
                            for (int i9 = arrayMap.d - 1; -1 < i9; i9--) {
                                if (!arrayMap3.containsKey((String) arrayMap.k(i9))) {
                                    arrayMap.i(i9);
                                }
                            }
                        }
                        final Set setKeySet = arrayMap.keySet();
                        CollectionsKt.e0(arrayMap2.entrySet(), new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                Map.Entry entry = (Map.Entry) obj5;
                                entry.getClass();
                                Collection collection = setKeySet;
                                View view7 = (View) entry.getValue();
                                WeakHashMap weakHashMap3 = ViewCompat.f12200a;
                                return Boolean.valueOf(CollectionsKt.u(collection, view7.getTransitionName()));
                            }
                        });
                        final Collection collectionValues = arrayMap.values();
                        CollectionsKt.e0(arrayMap3.entrySet(), new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj5) {
                                Map.Entry entry = (Map.Entry) obj5;
                                entry.getClass();
                                Collection collection = collectionValues;
                                View view7 = (View) entry.getValue();
                                WeakHashMap weakHashMap3 = ViewCompat.f12200a;
                                return Boolean.valueOf(CollectionsKt.u(collection, view7.getTransitionName()));
                            }
                        });
                        if (arrayMap.isEmpty()) {
                            Objects.toString(objY);
                            operation2.toString();
                            operation4.toString();
                            arrayList7.clear();
                            arrayList8.clear();
                            obj3 = null;
                        } else {
                            obj3 = objY;
                        }
                        arrayList9 = sharedElementTargetNames2;
                        arrayList3 = arrayList11;
                    }
                }
                i3 = i3;
                arrayList3 = arrayList3;
                operation2 = operation2;
                arrayList7 = arrayList7;
            }
            arrayList2 = arrayList3;
            SpecialEffectsController.Operation operation6 = operation2;
            ArrayList arrayList12 = arrayList7;
            i2 = i3;
            if (obj3 != null) {
                z2 = false;
                transitionEffect = new TransitionEffect(arrayList6, operation6, operation4, fragmentTransitionImpl, obj3, arrayList12, arrayList8, arrayMap, arrayList9, sharedElementSourceNames, arrayMap2, arrayMap3, z);
                it = arrayList6.iterator();
                while (it.hasNext()) {
                    ((TransitionInfo) it.next()).f13203a.f13374j.add(transitionEffect);
                }
            } else {
                if (!arrayList6.isEmpty()) {
                    Iterator it6 = arrayList6.iterator();
                    while (true) {
                        if (it6.hasNext()) {
                            if (((TransitionInfo) it6.next()).f13218b != null) {
                                z2 = false;
                                transitionEffect = new TransitionEffect(arrayList6, operation6, operation4, fragmentTransitionImpl, obj3, arrayList12, arrayList8, arrayMap, arrayList9, sharedElementSourceNames, arrayMap2, arrayMap3, z);
                                it = arrayList6.iterator();
                                while (it.hasNext()) {
                                    ((TransitionInfo) it.next()).f13203a.f13374j.add(transitionEffect);
                                }
                            }
                        }
                    }
                }
                z2 = false;
            }
        }
        ArrayList<AnimationInfo> arrayList13 = new ArrayList();
        ArrayList arrayList14 = new ArrayList();
        Iterator it7 = arrayList2.iterator();
        while (it7.hasNext()) {
            CollectionsKt.j(arrayList14, ((AnimationInfo) it7.next()).f13203a.f13375k);
        }
        boolean zIsEmpty = arrayList14.isEmpty();
        boolean z4 = z2;
        for (AnimationInfo animationInfo3 : arrayList2) {
            Context context = this.f13360a.getContext();
            SpecialEffectsController.Operation operation7 = animationInfo3.f13203a;
            context.getClass();
            FragmentAnim.AnimationOrAnimator animationOrAnimatorB = animationInfo3.b(context);
            if (animationOrAnimatorB != null) {
                if (animationOrAnimatorB.f13248b == null) {
                    arrayList13.add(animationInfo3);
                } else {
                    Fragment fragment4 = operation7.f13369c;
                    if (operation7.f13375k.isEmpty()) {
                        if (operation7.f13367a == SpecialEffectsController.Operation.State.GONE) {
                            operation7.f13373i = z2;
                        }
                        operation7.f13374j.add(new AnimatorEffect(animationInfo3));
                        z4 = true;
                    } else if (FragmentManager.O(i2)) {
                        Objects.toString(fragment4);
                    }
                }
            }
        }
        for (AnimationInfo animationInfo4 : arrayList13) {
            SpecialEffectsController.Operation operation8 = animationInfo4.f13203a;
            Fragment fragment5 = operation8.f13369c;
            if (zIsEmpty) {
                if (!z4) {
                    operation8.f13374j.add(new AnimationEffect(animationInfo4));
                } else if (FragmentManager.O(i2)) {
                    Objects.toString(fragment5);
                }
            } else if (FragmentManager.O(i2)) {
                Objects.toString(fragment5);
            }
        }
    }
}
