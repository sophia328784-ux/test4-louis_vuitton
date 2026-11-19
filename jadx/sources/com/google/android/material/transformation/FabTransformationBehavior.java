package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.collection.SimpleArrayMap;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ArgbEvaluatorCompat;
import com.google.android.material.animation.ChildrenAlphaProperty;
import com.google.android.material.animation.DrawableAlphaProperty;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.MotionTiming;
import com.google.android.material.animation.Positioning;
import com.google.android.material.circularreveal.CircularRevealCompat;
import com.google.android.material.circularreveal.CircularRevealWidget;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.math.MathUtils;
import com.vuitton.android.R;
import defpackage.md;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RectF f33259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectF f33260f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f33261h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f33262i;

    public static class FabTransformationSpec {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public MotionSpec f33270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Positioning f33271b;
    }

    public FabTransformationBehavior() {
        this.d = new Rect();
        this.f33259e = new RectF();
        this.f33260f = new RectF();
        this.g = new int[2];
    }

    public static float B(FabTransformationSpec fabTransformationSpec, MotionTiming motionTiming, float f2) {
        long j2 = motionTiming.f32240a;
        long j3 = motionTiming.f32241b;
        MotionTiming motionTimingF = fabTransformationSpec.f33270a.f("expansion");
        return AnimationUtils.a(f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, motionTiming.b().getInterpolation((((motionTimingF.f32240a + motionTimingF.f32241b) + 17) - j2) / j3));
    }

    public static Pair y(float f2, float f3, boolean z, FabTransformationSpec fabTransformationSpec) {
        MotionTiming motionTimingF;
        MotionTiming motionTimingF2;
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            motionTimingF = fabTransformationSpec.f33270a.f("translationXLinear");
            motionTimingF2 = fabTransformationSpec.f33270a.f("translationYLinear");
        } else if ((!z || f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) && (z || f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
            motionTimingF = fabTransformationSpec.f33270a.f("translationXCurveDownwards");
            motionTimingF2 = fabTransformationSpec.f33270a.f("translationYCurveDownwards");
        } else {
            motionTimingF = fabTransformationSpec.f33270a.f("translationXCurveUpwards");
            motionTimingF2 = fabTransformationSpec.f33270a.f("translationYCurveUpwards");
        }
        return new Pair(motionTimingF, motionTimingF2);
    }

    public final float A(View view, View view2, Positioning positioning) {
        float fCenterY;
        float fCenterY2;
        float f2;
        RectF rectF = this.f33259e;
        C(view, rectF);
        rectF.offset(this.f33261h, this.f33262i);
        RectF rectF2 = this.f33260f;
        C(view2, rectF2);
        int i2 = positioning.f32244a & 112;
        if (i2 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else {
            if (i2 != 48) {
                if (i2 != 80) {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    fCenterY = rectF2.bottom;
                    fCenterY2 = rectF.bottom;
                }
                return f2 + positioning.f32246c;
            }
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        }
        f2 = fCenterY - fCenterY2;
        return f2 + positioning.f32246c;
    }

    public final void C(View view, RectF rectF) {
        rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, view.getWidth(), view.getHeight());
        int[] iArr = this.g;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    public abstract FabTransformationSpec D(Context context, boolean z);

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean f(View view, View view2) {
        int expandedComponentIdHint;
        if (view.getVisibility() != 8) {
            return (view2 instanceof FloatingActionButton) && ((expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint()) == 0 || expandedComponentIdHint == view.getId());
        }
        md.k("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final void g(CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.f11856h == 0) {
            layoutParams.f11856h = 80;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0146  */
    /* JADX WARN: Code duplicated, block: B:95:0x0334  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public final AnimatorSet x(final View view, final View view2, final boolean z, boolean z2) {
        ObjectAnimator objectAnimatorOfFloat;
        float f2;
        ObjectAnimator objectAnimatorOfFloat2;
        ObjectAnimator objectAnimatorOfFloat3;
        ArrayList arrayList;
        AnimatorSet animatorSetA;
        int i2;
        ObjectAnimator objectAnimatorOfFloat4;
        ObjectAnimator objectAnimatorOfInt;
        ObjectAnimator objectAnimatorOfInt2;
        FabTransformationSpec fabTransformationSpecD = D(view2.getContext(), z);
        if (z) {
            this.f33261h = view.getTranslationX();
            this.f33262i = view.getTranslationY();
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        float elevation = view2.getElevation() - view.getElevation();
        if (z) {
            if (!z2) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        fabTransformationSpecD.f33270a.f("elevation").a(objectAnimatorOfFloat);
        arrayList2.add(objectAnimatorOfFloat);
        float fZ = z(view, view2, fabTransformationSpecD.f33271b);
        float fA = A(view, view2, fabTransformationSpecD.f33271b);
        Pair pairY = y(fZ, fA, z, fabTransformationSpecD);
        MotionTiming motionTiming = (MotionTiming) pairY.first;
        MotionTiming motionTiming2 = (MotionTiming) pairY.second;
        RectF rectF = this.f33260f;
        Rect rect = this.d;
        RectF rectF2 = this.f33259e;
        if (z) {
            f2 = 0.0f;
            if (!z2) {
                view2.setTranslationX(-fZ);
                view2.setTranslationY(-fA);
            }
            ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            float fB = B(fabTransformationSpecD, motionTiming, -fZ);
            float fB2 = B(fabTransformationSpecD, motionTiming2, -fA);
            view2.getWindowVisibleDisplayFrame(rect);
            rectF2.set(rect);
            C(view2, rectF);
            rectF.offset(fB, fB2);
            rectF.intersect(rectF2);
            rectF2.set(rectF);
            objectAnimatorOfFloat3 = objectAnimatorOfFloat6;
            objectAnimatorOfFloat2 = objectAnimatorOfFloat5;
        } else {
            f2 = 0.0f;
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fZ);
            objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fA);
        }
        motionTiming.a(objectAnimatorOfFloat2);
        motionTiming2.a(objectAnimatorOfFloat3);
        arrayList2.add(objectAnimatorOfFloat2);
        arrayList2.add(objectAnimatorOfFloat3);
        float fWidth = rectF2.width();
        float fHeight = rectF2.height();
        float fZ2 = z(view, view2, fabTransformationSpecD.f33271b);
        float fA2 = A(view, view2, fabTransformationSpecD.f33271b);
        Pair pairY2 = y(fZ2, fA2, z, fabTransformationSpecD);
        MotionTiming motionTiming3 = (MotionTiming) pairY2.first;
        MotionTiming motionTiming4 = (MotionTiming) pairY2.second;
        Property property = View.TRANSLATION_X;
        if (!z) {
            fZ2 = this.f33261h;
        }
        float f3 = fA2;
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fZ2);
        Property property2 = View.TRANSLATION_Y;
        if (!z) {
            f3 = this.f33262i;
        }
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, f3);
        motionTiming3.a(objectAnimatorOfFloat7);
        motionTiming4.a(objectAnimatorOfFloat8);
        arrayList2.add(objectAnimatorOfFloat7);
        arrayList2.add(objectAnimatorOfFloat8);
        boolean z3 = view2 instanceof CircularRevealWidget;
        if (z3 && (view instanceof ImageView)) {
            final CircularRevealWidget circularRevealWidget = (CircularRevealWidget) view2;
            final Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                arrayList = arrayList3;
            } else {
                drawable.mutate();
                if (z) {
                    if (!z2) {
                        drawable.setAlpha(255);
                    }
                    objectAnimatorOfInt2 = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.f32233a, 0);
                } else {
                    objectAnimatorOfInt2 = ObjectAnimator.ofInt(drawable, DrawableAlphaProperty.f32233a, 255);
                }
                objectAnimatorOfInt2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.transformation.FabTransformationBehavior.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        view2.invalidate();
                    }
                });
                fabTransformationSpecD.f33270a.f("iconFade").a(objectAnimatorOfInt2);
                arrayList2.add(objectAnimatorOfInt2);
                AnimatorListenerAdapter animatorListenerAdapter = new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.3
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        circularRevealWidget.setCircularRevealOverlayDrawable(null);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationStart(Animator animator) {
                        circularRevealWidget.setCircularRevealOverlayDrawable(drawable);
                    }
                };
                arrayList = arrayList3;
                arrayList.add(animatorListenerAdapter);
            }
        } else {
            arrayList = arrayList3;
        }
        if (z3) {
            final CircularRevealWidget circularRevealWidget2 = (CircularRevealWidget) view2;
            Positioning positioning = fabTransformationSpecD.f33271b;
            C(view, rectF2);
            rectF2.offset(this.f33261h, this.f33262i);
            C(view2, rectF);
            rectF.offset(-z(view, view2, positioning), f2);
            float fCenterX = rectF2.centerX() - rectF.left;
            Positioning positioning2 = fabTransformationSpecD.f33271b;
            C(view, rectF2);
            rectF2.offset(this.f33261h, this.f33262i);
            C(view2, rectF);
            rectF.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, -A(view, view2, positioning2));
            float fCenterY = rectF2.centerY() - rectF.top;
            ((FloatingActionButton) view).g(rect);
            float fWidth2 = rect.width() / 2.0f;
            MotionTiming motionTimingF = fabTransformationSpecD.f33270a.f("expansion");
            if (z) {
                if (!z2) {
                    circularRevealWidget2.setRevealInfo(new CircularRevealWidget.RevealInfo(fCenterX, fCenterY, fWidth2));
                }
                if (z2) {
                    fWidth2 = circularRevealWidget2.getRevealInfo().f32515c;
                }
                animatorSetA = CircularRevealCompat.a(circularRevealWidget2, fCenterX, fCenterY, MathUtils.b(fCenterX, fCenterY, fWidth, fHeight));
                animatorSetA.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.4
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        CircularRevealWidget circularRevealWidget3 = circularRevealWidget2;
                        CircularRevealWidget.RevealInfo revealInfo = circularRevealWidget3.getRevealInfo();
                        revealInfo.f32515c = Float.MAX_VALUE;
                        circularRevealWidget3.setRevealInfo(revealInfo);
                    }
                });
                long j2 = motionTimingF.f32240a;
                int i3 = (int) fCenterX;
                int i4 = (int) fCenterY;
                if (j2 > 0) {
                    Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view2, i3, i4, fWidth2, fWidth2);
                    animatorCreateCircularReveal.setStartDelay(0L);
                    animatorCreateCircularReveal.setDuration(j2);
                    arrayList2.add(animatorCreateCircularReveal);
                }
            } else {
                float f4 = circularRevealWidget2.getRevealInfo().f32515c;
                AnimatorSet animatorSetA2 = CircularRevealCompat.a(circularRevealWidget2, fCenterX, fCenterY, fWidth2);
                long j3 = motionTimingF.f32240a;
                int i5 = (int) fCenterX;
                int i6 = (int) fCenterY;
                if (j3 > 0) {
                    Animator animatorCreateCircularReveal2 = ViewAnimationUtils.createCircularReveal(view2, i5, i6, f4, f4);
                    animatorCreateCircularReveal2.setStartDelay(0L);
                    animatorCreateCircularReveal2.setDuration(j3);
                    arrayList2.add(animatorCreateCircularReveal2);
                }
                long j4 = motionTimingF.f32240a;
                long j5 = motionTimingF.f32241b;
                SimpleArrayMap simpleArrayMap = fabTransformationSpecD.f33270a.f32238a;
                int i7 = simpleArrayMap.d;
                int i8 = 0;
                long jMax = 0;
                while (i8 < i7) {
                    SimpleArrayMap simpleArrayMap2 = simpleArrayMap;
                    MotionTiming motionTiming5 = (MotionTiming) simpleArrayMap.k(i8);
                    jMax = Math.max(jMax, motionTiming5.f32240a + motionTiming5.f32241b);
                    i8++;
                    i7 = i7;
                    simpleArrayMap = simpleArrayMap2;
                    j4 = j4;
                }
                long j6 = j4 + j5;
                if (j6 < jMax) {
                    Animator animatorCreateCircularReveal3 = ViewAnimationUtils.createCircularReveal(view2, i5, i6, fWidth2, fWidth2);
                    animatorCreateCircularReveal3.setStartDelay(j6);
                    animatorCreateCircularReveal3.setDuration(jMax - j6);
                    arrayList2.add(animatorCreateCircularReveal3);
                }
                animatorSetA = animatorSetA2;
            }
            motionTimingF.a(animatorSetA);
            arrayList2.add(animatorSetA);
            arrayList.add(CircularRevealCompat.b(circularRevealWidget2));
        }
        if (z3) {
            CircularRevealWidget circularRevealWidget3 = (CircularRevealWidget) view2;
            ColorStateList backgroundTintList = view.getBackgroundTintList();
            int colorForState = backgroundTintList != null ? backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor()) : 0;
            int i9 = 16777215 & colorForState;
            if (z) {
                if (!z2) {
                    circularRevealWidget3.setCircularRevealScrimColor(colorForState);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(circularRevealWidget3, CircularRevealWidget.CircularRevealScrimColorProperty.f32512a, i9);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(circularRevealWidget3, CircularRevealWidget.CircularRevealScrimColorProperty.f32512a, colorForState);
            }
            objectAnimatorOfInt.setEvaluator(ArgbEvaluatorCompat.f32231a);
            fabTransformationSpecD.f33270a.f("color").a(objectAnimatorOfInt);
            arrayList2.add(objectAnimatorOfInt);
        }
        if (view2 instanceof ViewGroup) {
            View viewFindViewById = view2.findViewById(R.id.mtrl_child_content_container);
            ViewGroup viewGroup = null;
            if (viewFindViewById != null) {
                if (viewFindViewById instanceof ViewGroup) {
                    viewGroup = (ViewGroup) viewFindViewById;
                }
            } else if ((view2 instanceof TransformationChildLayout) || (view2 instanceof TransformationChildCard)) {
                View childAt = ((ViewGroup) view2).getChildAt(0);
                if (childAt instanceof ViewGroup) {
                    viewGroup = (ViewGroup) childAt;
                }
            } else {
                viewGroup = (ViewGroup) view2;
            }
            if (viewGroup == null) {
                i2 = 0;
            } else {
                if (z) {
                    if (!z2) {
                        ChildrenAlphaProperty.f32232a.set(viewGroup, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    }
                    i2 = 0;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, ChildrenAlphaProperty.f32232a, 1.0f);
                } else {
                    i2 = 0;
                    objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(viewGroup, ChildrenAlphaProperty.f32232a, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                fabTransformationSpecD.f33270a.f("contentFade").a(objectAnimatorOfFloat4);
                arrayList2.add(objectAnimatorOfFloat4);
            }
        } else {
            i2 = 0;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.a(animatorSet, arrayList2);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transformation.FabTransformationBehavior.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (z) {
                    return;
                }
                view2.setVisibility(4);
                View view3 = view;
                view3.setAlpha(1.0f);
                view3.setVisibility(0);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                if (z) {
                    view2.setVisibility(0);
                    View view3 = view;
                    view3.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    view3.setVisibility(4);
                }
            }
        });
        int size = arrayList.size();
        for (int i10 = i2; i10 < size; i10++) {
            animatorSet.addListener((Animator.AnimatorListener) arrayList.get(i10));
        }
        return animatorSet;
    }

    public final float z(View view, View view2, Positioning positioning) {
        float fCenterX;
        float fCenterX2;
        float f2;
        RectF rectF = this.f33259e;
        C(view, rectF);
        rectF.offset(this.f33261h, this.f33262i);
        RectF rectF2 = this.f33260f;
        C(view2, rectF2);
        int i2 = positioning.f32244a & 7;
        if (i2 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else {
            if (i2 != 3) {
                if (i2 != 5) {
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                } else {
                    fCenterX = rectF2.right;
                    fCenterX2 = rectF.right;
                }
                return f2 + positioning.f32245b;
            }
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        }
        f2 = fCenterX - fCenterX2;
        return f2 + positioning.f32245b;
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = new Rect();
        this.f33259e = new RectF();
        this.f33260f = new RectF();
        this.g = new int[2];
    }
}
