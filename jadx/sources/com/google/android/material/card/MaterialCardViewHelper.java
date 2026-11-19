package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
class MaterialCardViewHelper {
    public static final double y = Math.cos(Math.toRadians(45.0d));
    public static final /* synthetic */ int z = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialCardView f32425a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaterialShapeDrawable f32427c;
    public final MaterialShapeDrawable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32429f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Drawable f32431i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Drawable f32432j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f32433k;
    public ColorStateList l;
    public ShapeAppearanceModel m;
    public ColorStateList n;
    public RippleDrawable o;
    public LayerDrawable p;
    public MaterialShapeDrawable q;
    public boolean s;
    public ValueAnimator t;
    public final TimeInterpolator u;
    public final int v;
    public final int w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f32426b = new Rect();
    public boolean r = false;
    public float x = Call.Parameters.DEFAULT_CAMERA_ZOOM;

    /* JADX INFO: renamed from: com.google.android.material.card.MaterialCardViewHelper$1, reason: invalid class name */
    class AnonymousClass1 extends InsetDrawable {
        @Override // android.graphics.drawable.Drawable
        public final int getMinimumHeight() {
            return -1;
        }

        @Override // android.graphics.drawable.Drawable
        public final int getMinimumWidth() {
            return -1;
        }

        @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public final boolean getPadding(Rect rect) {
            return false;
        }
    }

    public MaterialCardViewHelper(MaterialCardView materialCardView, AttributeSet attributeSet, int i2, int i3) {
        this.f32425a = materialCardView;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i2, i3);
        this.f32427c = materialShapeDrawable;
        materialShapeDrawable.n(materialCardView.getContext());
        materialShapeDrawable.u();
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.f32936c.f32945a;
        shapeAppearanceModel.getClass();
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.f3200a, i2, R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(3)) {
            float dimension = typedArrayObtainStyledAttributes.getDimension(3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            builder.e(dimension);
            builder.f(dimension);
            builder.d(dimension);
            builder.c(dimension);
        }
        this.d = new MaterialShapeDrawable();
        h(builder.a());
        this.u = MotionUtils.d(materialCardView.getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.f32227a);
        this.v = MotionUtils.c(materialCardView.getContext(), R.attr.motionDurationShort2, 300);
        this.w = MotionUtils.c(materialCardView.getContext(), R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static float b(CornerTreatment cornerTreatment, float f2) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - y) * ((double) f2));
        }
        return cornerTreatment instanceof CutCornerTreatment ? f2 / 2.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final float a() {
        CornerTreatment cornerTreatment = this.m.f32959a;
        MaterialShapeDrawable materialShapeDrawable = this.f32427c;
        float fB = b(cornerTreatment, materialShapeDrawable.l());
        CornerTreatment cornerTreatment2 = this.m.f32960b;
        float[] fArr = materialShapeDrawable.D;
        float fMax = Math.max(fB, b(cornerTreatment2, fArr != null ? fArr[0] : materialShapeDrawable.f32936c.f32945a.f32963f.a(materialShapeDrawable.h())));
        CornerTreatment cornerTreatment3 = this.m.f32961c;
        float[] fArr2 = materialShapeDrawable.D;
        float fB2 = b(cornerTreatment3, fArr2 != null ? fArr2[1] : materialShapeDrawable.f32936c.f32945a.g.a(materialShapeDrawable.h()));
        CornerTreatment cornerTreatment4 = this.m.d;
        float[] fArr3 = materialShapeDrawable.D;
        return Math.max(fMax, Math.max(fB2, b(cornerTreatment4, fArr3 != null ? fArr3[2] : materialShapeDrawable.f32936c.f32945a.f32964h.a(materialShapeDrawable.h()))));
    }

    public final LayerDrawable c() {
        if (this.o == null) {
            this.q = new MaterialShapeDrawable(this.m);
            this.o = new RippleDrawable(this.f32433k, null, this.q);
        }
        if (this.p == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.o, this.d, this.f32432j});
            this.p = layerDrawable;
            layerDrawable.setId(2, R.id.mtrl_card_checked_layer_id);
        }
        return this.p;
    }

    public final Drawable d(Drawable drawable) {
        int iCeil;
        int i2;
        MaterialCardView materialCardView = this.f32425a;
        if (materialCardView.getUseCompatPadding()) {
            float maxCardElevation = materialCardView.getMaxCardElevation() * 1.5f;
            boolean zI = i();
            float fA = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            int iCeil2 = (int) Math.ceil(maxCardElevation + (zI ? a() : 0.0f));
            float maxCardElevation2 = materialCardView.getMaxCardElevation();
            if (i()) {
                fA = a();
            }
            iCeil = (int) Math.ceil(maxCardElevation2 + fA);
            i2 = iCeil2;
        } else {
            iCeil = 0;
            i2 = 0;
        }
        return new AnonymousClass1(drawable, iCeil, i2, iCeil, i2);
    }

    public final void e(int i2, int i3) {
        int iCeil;
        int iCeil2;
        int i4;
        int i5;
        if (this.p != null) {
            MaterialCardView materialCardView = this.f32425a;
            if (materialCardView.getUseCompatPadding()) {
                float maxCardElevation = materialCardView.getMaxCardElevation() * 1.5f;
                boolean zI = i();
                float fA = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                iCeil = (int) Math.ceil((maxCardElevation + (zI ? a() : 0.0f)) * 2.0f);
                float maxCardElevation2 = materialCardView.getMaxCardElevation();
                if (i()) {
                    fA = a();
                }
                iCeil2 = (int) Math.ceil((maxCardElevation2 + fA) * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            int i6 = this.g;
            boolean z2 = (i6 & 8388613) == 8388613;
            int i7 = this.f32428e;
            int i8 = z2 ? ((i2 - i7) - this.f32429f) - iCeil2 : i7;
            int i9 = (i6 & 80) == 80 ? i7 : ((i3 - i7) - this.f32429f) - iCeil;
            int i10 = (i6 & 8388613) == 8388613 ? i7 : ((i2 - i7) - this.f32429f) - iCeil2;
            if ((i6 & 80) == 80) {
                i7 = ((i3 - i7) - this.f32429f) - iCeil;
            }
            int i11 = i7;
            if (materialCardView.getLayoutDirection() == 1) {
                i5 = i10;
                i4 = i8;
            } else {
                i4 = i10;
                i5 = i8;
            }
            this.p.setLayerInset(2, i5, i11, i4, i9);
        }
    }

    public final void f(boolean z2, boolean z3) {
        Drawable drawable = this.f32432j;
        if (drawable != null) {
            float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (!z3) {
                drawable.setAlpha(z2 ? 255 : 0);
                if (z2) {
                    f2 = 1.0f;
                }
                this.x = f2;
                return;
            }
            if (z2) {
                f2 = 1.0f;
            }
            float f3 = this.x;
            if (z2) {
                f3 = 1.0f - f3;
            }
            ValueAnimator valueAnimator = this.t;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.t = null;
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.x, f2);
            this.t = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.a
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    int i2 = MaterialCardViewHelper.z;
                    float fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                    MaterialCardViewHelper materialCardViewHelper = this.f32434a;
                    materialCardViewHelper.f32432j.setAlpha((int) (255.0f * fFloatValue));
                    materialCardViewHelper.x = fFloatValue;
                }
            });
            this.t.setInterpolator(this.u);
            this.t.setDuration((long) ((z2 ? this.v : this.w) * f3));
            this.t.start();
        }
    }

    public final void g(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f32432j = drawableMutate;
            drawableMutate.setTintList(this.l);
            f(this.f32425a.f32424k, false);
        } else {
            this.f32432j = null;
        }
        LayerDrawable layerDrawable = this.p;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, this.f32432j);
        }
    }

    public final void h(ShapeAppearanceModel shapeAppearanceModel) {
        this.m = shapeAppearanceModel;
        MaterialShapeDrawable materialShapeDrawable = this.f32427c;
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        materialShapeDrawable.y = !materialShapeDrawable.o();
        MaterialShapeDrawable materialShapeDrawable2 = this.d;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        }
        MaterialShapeDrawable materialShapeDrawable3 = this.q;
        if (materialShapeDrawable3 != null) {
            materialShapeDrawable3.setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    public final boolean i() {
        MaterialCardView materialCardView = this.f32425a;
        return materialCardView.getPreventCornerOverlap() && this.f32427c.o() && materialCardView.getUseCompatPadding();
    }

    public final boolean j() {
        View view = this.f32425a;
        if (view.isClickable()) {
            return true;
        }
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    public final void k() {
        Drawable drawable = this.f32431i;
        Drawable drawableC = j() ? c() : this.d;
        this.f32431i = drawableC;
        if (drawable != drawableC) {
            MaterialCardView materialCardView = this.f32425a;
            if (materialCardView.getForeground() instanceof InsetDrawable) {
                ((InsetDrawable) materialCardView.getForeground()).setDrawable(drawableC);
            } else {
                materialCardView.setForeground(d(drawableC));
            }
        }
    }

    public final void l() {
        MaterialCardView materialCardView = this.f32425a;
        boolean preventCornerOverlap = materialCardView.getPreventCornerOverlap();
        float cardViewRadius = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float fA = ((!preventCornerOverlap || this.f32427c.o()) && !i()) ? 0.0f : a();
        if (materialCardView.getPreventCornerOverlap() && materialCardView.getUseCompatPadding()) {
            cardViewRadius = (float) ((1.0d - y) * ((double) materialCardView.getCardViewRadius()));
        }
        int i2 = (int) (fA - cardViewRadius);
        Rect rect = this.f32426b;
        materialCardView.f(rect.left + i2, rect.top + i2, rect.right + i2, rect.bottom + i2);
    }

    public final void m() {
        boolean z2 = this.r;
        MaterialCardView materialCardView = this.f32425a;
        if (!z2) {
            materialCardView.setBackgroundInternal(d(this.f32427c));
        }
        materialCardView.setForeground(d(this.f32431i));
    }
}
