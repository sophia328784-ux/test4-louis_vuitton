package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
class MaterialButtonHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f32412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ShapeAppearanceModel f32413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StateListShapeAppearanceModel f32414c;
    public SpringForce d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MaterialShapeDrawable.OnCornerSizeChangeListener f32415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32416f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f32417h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32418i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f32419j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32420k;
    public PorterDuff.Mode l;
    public ColorStateList m;
    public ColorStateList n;
    public ColorStateList o;
    public MaterialShapeDrawable p;
    public boolean t;
    public RippleDrawable v;
    public int w;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean u = true;

    public MaterialButtonHelper(MaterialButton materialButton, ShapeAppearanceModel shapeAppearanceModel) {
        this.f32412a = materialButton;
        this.f32413b = shapeAppearanceModel;
    }

    public final MaterialShapeDrawable a(boolean z) {
        RippleDrawable rippleDrawable = this.v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.v.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public final void b(int i2, int i3) {
        MaterialButton materialButton = this.f32412a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i4 = this.f32417h;
        int i5 = this.f32418i;
        this.f32418i = i3;
        this.f32417h = i2;
        if (!this.r) {
            c();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i2) - i4, paddingEnd, (paddingBottom + i3) - i5);
    }

    public final void c() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f32413b);
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32414c;
        if (stateListShapeAppearanceModel != null) {
            materialShapeDrawable.w(stateListShapeAppearanceModel);
        }
        SpringForce springForce = this.d;
        if (springForce != null) {
            materialShapeDrawable.p(springForce);
        }
        MaterialShapeDrawable.OnCornerSizeChangeListener onCornerSizeChangeListener = this.f32415e;
        if (onCornerSizeChangeListener != null) {
            materialShapeDrawable.F = onCornerSizeChangeListener;
        }
        MaterialButton materialButton = this.f32412a;
        materialShapeDrawable.n(materialButton.getContext());
        materialShapeDrawable.setTintList(this.m);
        PorterDuff.Mode mode = this.l;
        if (mode != null) {
            materialShapeDrawable.setTintMode(mode);
        }
        float f2 = this.f32420k;
        ColorStateList colorStateList = this.n;
        materialShapeDrawable.y(f2);
        materialShapeDrawable.x(colorStateList);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f32413b);
        StateListShapeAppearanceModel stateListShapeAppearanceModel2 = this.f32414c;
        if (stateListShapeAppearanceModel2 != null) {
            materialShapeDrawable2.w(stateListShapeAppearanceModel2);
        }
        SpringForce springForce2 = this.d;
        if (springForce2 != null) {
            materialShapeDrawable2.p(springForce2);
        }
        materialShapeDrawable2.setTint(0);
        float f3 = this.f32420k;
        int iB = this.q ? MaterialColors.b(R.attr.colorSurface, materialButton) : 0;
        materialShapeDrawable2.y(f3);
        materialShapeDrawable2.x(ColorStateList.valueOf(iB));
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f32413b);
        this.p = materialShapeDrawable3;
        StateListShapeAppearanceModel stateListShapeAppearanceModel3 = this.f32414c;
        if (stateListShapeAppearanceModel3 != null) {
            materialShapeDrawable3.w(stateListShapeAppearanceModel3);
        }
        SpringForce springForce3 = this.d;
        if (springForce3 != null) {
            this.p.p(springForce3);
        }
        this.p.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.b(this.o), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable}), this.f32416f, this.f32417h, this.g, this.f32418i), this.p);
        this.v = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        MaterialShapeDrawable materialShapeDrawableA = a(false);
        if (materialShapeDrawableA != null) {
            materialShapeDrawableA.q(this.w);
            materialShapeDrawableA.setState(materialButton.getDrawableState());
        }
    }

    public final void d() {
        Shapeable shapeable;
        MaterialShapeDrawable materialShapeDrawableA = a(false);
        if (materialShapeDrawableA != null) {
            StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32414c;
            if (stateListShapeAppearanceModel != null) {
                materialShapeDrawableA.w(stateListShapeAppearanceModel);
            } else {
                materialShapeDrawableA.setShapeAppearanceModel(this.f32413b);
            }
            SpringForce springForce = this.d;
            if (springForce != null) {
                materialShapeDrawableA.p(springForce);
            }
        }
        MaterialShapeDrawable materialShapeDrawableA2 = a(true);
        if (materialShapeDrawableA2 != null) {
            StateListShapeAppearanceModel stateListShapeAppearanceModel2 = this.f32414c;
            if (stateListShapeAppearanceModel2 != null) {
                materialShapeDrawableA2.w(stateListShapeAppearanceModel2);
            } else {
                materialShapeDrawableA2.setShapeAppearanceModel(this.f32413b);
            }
            SpringForce springForce2 = this.d;
            if (springForce2 != null) {
                materialShapeDrawableA2.p(springForce2);
            }
        }
        RippleDrawable rippleDrawable = this.v;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            shapeable = null;
        } else {
            int numberOfLayers = this.v.getNumberOfLayers();
            RippleDrawable rippleDrawable2 = this.v;
            shapeable = numberOfLayers > 2 ? (Shapeable) rippleDrawable2.getDrawable(2) : (Shapeable) rippleDrawable2.getDrawable(1);
        }
        if (shapeable != null) {
            shapeable.setShapeAppearanceModel(this.f32413b);
            if (shapeable instanceof MaterialShapeDrawable) {
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) shapeable;
                StateListShapeAppearanceModel stateListShapeAppearanceModel3 = this.f32414c;
                if (stateListShapeAppearanceModel3 != null) {
                    materialShapeDrawable.w(stateListShapeAppearanceModel3);
                }
                SpringForce springForce3 = this.d;
                if (springForce3 != null) {
                    materialShapeDrawable.p(springForce3);
                }
            }
        }
    }

    public final void e() {
        MaterialShapeDrawable materialShapeDrawableA = a(false);
        MaterialShapeDrawable materialShapeDrawableA2 = a(true);
        if (materialShapeDrawableA != null) {
            float f2 = this.f32420k;
            ColorStateList colorStateList = this.n;
            materialShapeDrawableA.y(f2);
            materialShapeDrawableA.x(colorStateList);
            if (materialShapeDrawableA2 != null) {
                float f3 = this.f32420k;
                int iB = this.q ? MaterialColors.b(R.attr.colorSurface, this.f32412a) : 0;
                materialShapeDrawableA2.y(f3);
                materialShapeDrawableA2.x(ColorStateList.valueOf(iB));
            }
        }
    }
}
