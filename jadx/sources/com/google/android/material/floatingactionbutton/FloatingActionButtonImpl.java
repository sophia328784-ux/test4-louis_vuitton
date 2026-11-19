package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.Property;
import android.view.View;
import androidx.core.util.Preconditions;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MatrixEvaluator;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Iterator;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class FloatingActionButtonImpl {
    public static final FastOutLinearInInterpolator B = AnimationUtils.f32229c;
    public static final int C = R.attr.motionDurationLong2;
    public static final int D = R.attr.motionEasingEmphasizedInterpolator;
    public static final int E = R.attr.motionDurationMedium1;
    public static final int F = R.attr.motionEasingEmphasizedAccelerateInterpolator;
    public static final int[] G = {android.R.attr.state_pressed, android.R.attr.state_enabled};
    public static final int[] H = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] I = {android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] J = {android.R.attr.state_hovered, android.R.attr.state_enabled};
    public static final int[] K = {android.R.attr.state_enabled};
    public static final int[] L = new int[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ShapeAppearanceModel f32661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MaterialShapeDrawable f32662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RippleDrawable f32663c;
    public BorderDrawable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RippleDrawable f32664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f32665f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f32666h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f32667i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f32668j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32669k;
    public StateListAnimator l;
    public Animator m;
    public MotionSpec n;
    public MotionSpec o;
    public int q;
    public ArrayList s;
    public ArrayList t;
    public ArrayList u;
    public final FloatingActionButton v;
    public final ShadowViewDelegate w;
    public boolean g = true;
    public float p = 1.0f;
    public int r = 0;
    public final Rect x = new Rect();
    public final RectF y = new RectF();
    public final RectF z = new RectF();
    public final Matrix A = new Matrix();

    public static class AlwaysStatefulMaterialShapeDrawable extends MaterialShapeDrawable {
        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    public interface InternalTransformationCallback {
        void a();

        void b();
    }

    public interface InternalVisibilityChangedListener {
        void a();

        void b();
    }

    public FloatingActionButtonImpl(FloatingActionButton floatingActionButton, ShadowViewDelegate shadowViewDelegate) {
        this.v = floatingActionButton;
        this.w = shadowViewDelegate;
    }

    public final void a(float f2, Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.v.getDrawable();
        if (drawable == null || this.q == 0) {
            return;
        }
        float intrinsicWidth = drawable.getIntrinsicWidth();
        float intrinsicHeight = drawable.getIntrinsicHeight();
        RectF rectF = this.y;
        rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, intrinsicWidth, intrinsicHeight);
        float f3 = this.q;
        RectF rectF2 = this.z;
        rectF2.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, f3);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        float f4 = this.q / 2.0f;
        matrix.postScale(f2, f2, f4, f4);
    }

    public final AnimatorSet b(MotionSpec motionSpec, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        Property property = View.ALPHA;
        float[] fArr = {f2};
        FloatingActionButton floatingActionButton = this.v;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) property, fArr);
        motionSpec.f("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        motionSpec.f("scale").a(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        motionSpec.f("scale").a(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        Matrix matrix = this.A;
        a(f4, matrix);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(floatingActionButton, new ImageMatrixProperty(), new MatrixEvaluator() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.3
            @Override // com.google.android.material.animation.MatrixEvaluator, android.animation.TypeEvaluator
            /* JADX INFO: renamed from: a */
            public final Matrix evaluate(float f5, Matrix matrix2, Matrix matrix3) {
                FloatingActionButtonImpl.this.p = f5;
                return super.evaluate(f5, matrix2, matrix3);
            }
        }, new Matrix(matrix));
        motionSpec.f("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet c(final float f2, final float f3, final float f4, int i2, int i3) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        FloatingActionButton floatingActionButton = this.v;
        final float alpha = floatingActionButton.getAlpha();
        final float scaleX = floatingActionButton.getScaleX();
        final float scaleY = floatingActionButton.getScaleY();
        final float f5 = this.p;
        final Matrix matrix = new Matrix(this.A);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.floatingactionbutton.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FastOutLinearInInterpolator fastOutLinearInInterpolator = FloatingActionButtonImpl.B;
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                FloatingActionButtonImpl floatingActionButtonImpl = this.f32676a;
                FloatingActionButton floatingActionButton2 = floatingActionButtonImpl.v;
                floatingActionButton2.setAlpha(AnimationUtils.b(alpha, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.2f, fFloatValue));
                float f6 = scaleX;
                float f7 = f3;
                floatingActionButton2.setScaleX(AnimationUtils.a(f6, f7, fFloatValue));
                floatingActionButton2.setScaleY(AnimationUtils.a(scaleY, f7, fFloatValue));
                float f8 = f5;
                float f9 = f4;
                floatingActionButtonImpl.p = AnimationUtils.a(f8, f9, fFloatValue);
                float fA = AnimationUtils.a(f8, f9, fFloatValue);
                Matrix matrix2 = matrix;
                floatingActionButtonImpl.a(fA, matrix2);
                floatingActionButton2.setImageMatrix(matrix2);
            }
        });
        arrayList.add(valueAnimatorOfFloat);
        AnimatorSetCompat.a(animatorSet, arrayList);
        animatorSet.setDuration(MotionUtils.c(floatingActionButton.getContext(), i2, floatingActionButton.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(MotionUtils.d(floatingActionButton.getContext(), i3, AnimationUtils.f32228b));
        return animatorSet;
    }

    public final AnimatorSet d(float f2, float f3) {
        AnimatorSet animatorSet = new AnimatorSet();
        FloatingActionButton floatingActionButton = this.v;
        animatorSet.play(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f2).setDuration(0L)).with(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f3).setDuration(100L));
        animatorSet.setInterpolator(B);
        return animatorSet;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void e(float f2, float f3, float f4) {
        FloatingActionButton floatingActionButton = this.v;
        if (floatingActionButton.getStateListAnimator() == this.l) {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(G, d(f2, f4));
            stateListAnimator.addState(H, d(f2, f3));
            stateListAnimator.addState(I, d(f2, f3));
            stateListAnimator.addState(J, d(f2, f3));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, "elevation", f2).setDuration(0L));
            arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, Call.Parameters.DEFAULT_CAMERA_ZOOM).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(B);
            stateListAnimator.addState(K, animatorSet);
            stateListAnimator.addState(L, d(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM));
            this.l = stateListAnimator;
            floatingActionButton.setStateListAnimator(stateListAnimator);
        }
        if (FloatingActionButton.this.l || (this.f32665f && floatingActionButton.getSizeDimension() < this.f32669k)) {
            h();
        }
    }

    public final void f() {
        ArrayList arrayList = this.u;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((InternalTransformationCallback) it.next()).a();
            }
        }
    }

    public final void g(ShapeAppearanceModel shapeAppearanceModel) {
        this.f32661a = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f32662b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        }
        Drawable.Callback callback = this.f32663c;
        if (callback instanceof Shapeable) {
            ((Shapeable) callback).setShapeAppearanceModel(shapeAppearanceModel);
        }
        BorderDrawable borderDrawable = this.d;
        if (borderDrawable != null) {
            borderDrawable.o = shapeAppearanceModel;
            borderDrawable.invalidateSelf();
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x005e  */
    public final void h() {
        ShadowViewDelegate shadowViewDelegate = this.w;
        boolean z = FloatingActionButton.this.l;
        boolean z2 = this.f32665f;
        Rect rect = this.x;
        FloatingActionButton floatingActionButton = this.v;
        if (z) {
            int iMax = z2 ? Math.max((this.f32669k - floatingActionButton.getSizeDimension()) / 2, 0) : 0;
            float elevation = this.g ? floatingActionButton.getElevation() + this.f32668j : Call.Parameters.DEFAULT_CAMERA_ZOOM;
            int iMax2 = Math.max(iMax, (int) Math.ceil(elevation));
            int iMax3 = Math.max(iMax, (int) Math.ceil(elevation * 1.5f));
            rect.set(iMax2, iMax3, iMax2, iMax3);
        } else if (z2) {
            int sizeDimension = floatingActionButton.getSizeDimension();
            int i2 = this.f32669k;
            if (sizeDimension < i2) {
                int sizeDimension2 = (i2 - floatingActionButton.getSizeDimension()) / 2;
                rect.set(sizeDimension2, sizeDimension2, sizeDimension2, sizeDimension2);
            } else {
                rect.set(0, 0, 0, 0);
            }
        } else {
            rect.set(0, 0, 0, 0);
        }
        Preconditions.e(this.f32664e, "Didn't initialize content background");
        if (FloatingActionButton.this.l || (this.f32665f && floatingActionButton.getSizeDimension() < this.f32669k)) {
            ((FloatingActionButton.ShadowDelegateImpl) shadowViewDelegate).a(new InsetDrawable((Drawable) this.f32664e, rect.left, rect.top, rect.right, rect.bottom));
        } else {
            ((FloatingActionButton.ShadowDelegateImpl) shadowViewDelegate).a(this.f32664e);
        }
        int i3 = rect.left;
        int i4 = rect.top;
        int i5 = rect.right;
        int i6 = rect.bottom;
        FloatingActionButton floatingActionButton2 = FloatingActionButton.this;
        floatingActionButton2.m.set(i3, i4, i5, i6);
        int i7 = floatingActionButton2.f32652j;
        floatingActionButton2.setPadding(i3 + i7, i4 + i7, i5 + i7, i6 + i7);
    }
}
