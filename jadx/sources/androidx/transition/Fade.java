package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import androidx.core.content.res.TypedArrayUtils;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class Fade extends Visibility {
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.d);
        Z(TypedArrayUtils.d(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, this.F));
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float b0(TransitionValues transitionValues, float f2) {
        Float f3;
        return (transitionValues == null || (f3 = (Float) transitionValues.f20030a.get("android:fade:transitionAlpha")) == null) ? f2 : f3.floatValue();
    }

    @Override // androidx.transition.Transition
    public final boolean B() {
        return true;
    }

    @Override // androidx.transition.Visibility
    public final Animator X(View view, TransitionValues transitionValues) {
        Property property = ViewUtils.f20039a;
        return a0(view, b0(transitionValues, Call.Parameters.DEFAULT_CAMERA_ZOOM), 1.0f);
    }

    @Override // androidx.transition.Visibility
    public final Animator Y(View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Property property = ViewUtils.f20039a;
        ObjectAnimator objectAnimatorA0 = a0(view, b0(transitionValues, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (objectAnimatorA0 == null) {
            view.setTransitionAlpha(b0(transitionValues2, 1.0f));
        }
        return objectAnimatorA0;
    }

    public final ObjectAnimator a0(View view, float f2, float f3) {
        if (f2 == f3) {
            return null;
        }
        Property property = ViewUtils.f20039a;
        view.setTransitionAlpha(f2);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) ViewUtils.f20039a, f3);
        FadeAnimatorListener fadeAnimatorListener = new FadeAnimatorListener(view);
        objectAnimatorOfFloat.addListener(fadeAnimatorListener);
        w().a(fadeAnimatorListener);
        return objectAnimatorOfFloat;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void g(TransitionValues transitionValues) {
        Visibility.V(transitionValues);
        View view = transitionValues.f20031b;
        Float fValueOf = (Float) view.getTag(R.id.transition_pause_alpha);
        if (fValueOf == null) {
            if (view.getVisibility() == 0) {
                Property property = ViewUtils.f20039a;
                fValueOf = Float.valueOf(view.getTransitionAlpha());
            } else {
                fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        }
        transitionValues.f20030a.put("android:fade:transitionAlpha", fValueOf);
    }

    public static class FadeAnimatorListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f19979a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f19980b = false;

        public FadeAnimatorListener(View view) {
            this.f19979a = view;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void a() {
            float transitionAlpha;
            View view = this.f19979a;
            if (view.getVisibility() == 0) {
                Property property = ViewUtils.f20039a;
                transitionAlpha = view.getTransitionAlpha();
            } else {
                transitionAlpha = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            view.setTag(R.id.transition_pause_alpha, Float.valueOf(transitionAlpha));
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void c(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f() {
            this.f19979a.setTag(R.id.transition_pause_alpha, null);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void i(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void k(Transition transition) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            Property property = ViewUtils.f20039a;
            this.f19979a.setTransitionAlpha(1.0f);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            boolean z2 = this.f19980b;
            View view = this.f19979a;
            if (z2) {
                view.setLayerType(0, null);
            }
            if (z) {
                return;
            }
            Property property = ViewUtils.f20039a;
            view.setTransitionAlpha(1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            View view = this.f19979a;
            if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                this.f19980b = true;
                view.setLayerType(2, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }
    }

    public Fade() {
    }

    public Fade(int i2) {
        Z(i2);
    }
}
