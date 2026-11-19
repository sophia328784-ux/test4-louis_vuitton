package com.google.android.material.card;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialCardView extends CardView implements Checkable, Shapeable {
    public static final int[] n = {R.attr.state_checkable};
    public static final int[] o = {R.attr.state_checked};
    public static final int[] p = {com.vuitton.android.R.attr.state_dragged};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MaterialCardViewHelper f32422i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f32423j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32424k;
    public boolean l;
    public OnCheckedChangeListener m;

    @Retention(RetentionPolicy.SOURCE)
    public @interface CheckedIconGravity {
    }

    public interface OnCheckedChangeListener {
        void a();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public MaterialCardView(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_CardView), attributeSet, i2);
        this.f32424k = false;
        this.l = false;
        this.f32423j = true;
        TypedArray typedArrayD = ThemeEnforcement.d(getContext(), attributeSet, R$styleable.B, i2, com.vuitton.android.R.style.Widget_MaterialComponents_CardView, new int[0]);
        MaterialCardViewHelper materialCardViewHelper = new MaterialCardViewHelper(this, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_CardView);
        this.f32422i = materialCardViewHelper;
        ColorStateList cardBackgroundColor = super.getCardBackgroundColor();
        MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.f32427c;
        materialShapeDrawable.r(cardBackgroundColor);
        materialCardViewHelper.f32426b.set(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
        materialCardViewHelper.l();
        MaterialCardView materialCardView = materialCardViewHelper.f32425a;
        ColorStateList colorStateListA = MaterialResources.a(materialCardView.getContext(), typedArrayD, 11);
        materialCardViewHelper.n = colorStateListA;
        if (colorStateListA == null) {
            materialCardViewHelper.n = ColorStateList.valueOf(-1);
        }
        materialCardViewHelper.f32430h = typedArrayD.getDimensionPixelSize(12, 0);
        boolean z = typedArrayD.getBoolean(0, false);
        materialCardViewHelper.s = z;
        materialCardView.setLongClickable(z);
        materialCardViewHelper.l = MaterialResources.a(materialCardView.getContext(), typedArrayD, 6);
        materialCardViewHelper.g(MaterialResources.d(materialCardView.getContext(), typedArrayD, 2));
        materialCardViewHelper.f32429f = typedArrayD.getDimensionPixelSize(5, 0);
        materialCardViewHelper.f32428e = typedArrayD.getDimensionPixelSize(4, 0);
        materialCardViewHelper.g = typedArrayD.getInteger(3, 8388661);
        ColorStateList colorStateListA2 = MaterialResources.a(materialCardView.getContext(), typedArrayD, 7);
        materialCardViewHelper.f32433k = colorStateListA2;
        if (colorStateListA2 == null) {
            materialCardViewHelper.f32433k = ColorStateList.valueOf(MaterialColors.b(com.vuitton.android.R.attr.colorControlHighlight, materialCardView));
        }
        ColorStateList colorStateListA3 = MaterialResources.a(materialCardView.getContext(), typedArrayD, 1);
        colorStateListA3 = colorStateListA3 == null ? ColorStateList.valueOf(0) : colorStateListA3;
        MaterialShapeDrawable materialShapeDrawable2 = materialCardViewHelper.d;
        materialShapeDrawable2.r(colorStateListA3);
        RippleDrawable rippleDrawable = materialCardViewHelper.o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(materialCardViewHelper.f32433k);
        }
        materialShapeDrawable.q(materialCardView.getCardElevation());
        float f2 = materialCardViewHelper.f32430h;
        ColorStateList colorStateList = materialCardViewHelper.n;
        materialShapeDrawable2.y(f2);
        materialShapeDrawable2.x(colorStateList);
        materialCardView.setBackgroundInternal(materialCardViewHelper.d(materialShapeDrawable));
        Drawable drawableC = materialCardViewHelper.j() ? materialCardViewHelper.c() : materialShapeDrawable2;
        materialCardViewHelper.f32431i = drawableC;
        materialCardView.setForeground(materialCardViewHelper.d(drawableC));
        typedArrayD.recycle();
    }

    private RectF getBoundsAsRectF() {
        RectF rectF = new RectF();
        rectF.set(this.f32422i.f32427c.getBounds());
        return rectF;
    }

    public final void g() {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        RippleDrawable rippleDrawable = materialCardViewHelper.o;
        if (rippleDrawable != null) {
            Rect bounds = rippleDrawable.getBounds();
            int i2 = bounds.bottom;
            materialCardViewHelper.o.setBounds(bounds.left, bounds.top, bounds.right, i2 - 1);
            materialCardViewHelper.o.setBounds(bounds.left, bounds.top, bounds.right, i2);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public ColorStateList getCardBackgroundColor() {
        return this.f32422i.f32427c.f32936c.d;
    }

    public ColorStateList getCardForegroundColor() {
        return this.f32422i.d.f32936c.d;
    }

    public float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        return this.f32422i.f32432j;
    }

    public int getCheckedIconGravity() {
        return this.f32422i.g;
    }

    public int getCheckedIconMargin() {
        return this.f32422i.f32428e;
    }

    public int getCheckedIconSize() {
        return this.f32422i.f32429f;
    }

    public ColorStateList getCheckedIconTint() {
        return this.f32422i.l;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingBottom() {
        return this.f32422i.f32426b.bottom;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingLeft() {
        return this.f32422i.f32426b.left;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingRight() {
        return this.f32422i.f32426b.right;
    }

    @Override // androidx.cardview.widget.CardView
    public int getContentPaddingTop() {
        return this.f32422i.f32426b.top;
    }

    public float getProgress() {
        return this.f32422i.f32427c.f32936c.f32952j;
    }

    @Override // androidx.cardview.widget.CardView
    public float getRadius() {
        return this.f32422i.f32427c.l();
    }

    public ColorStateList getRippleColor() {
        return this.f32422i.f32433k;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f32422i.m;
    }

    @Deprecated
    public int getStrokeColor() {
        ColorStateList colorStateList = this.f32422i.n;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    public ColorStateList getStrokeColorStateList() {
        return this.f32422i.n;
    }

    public int getStrokeWidth() {
        return this.f32422i.f32430h;
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f32424k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.k();
        MaterialShapeUtils.b(this, materialCardViewHelper.f32427c);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 3);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (materialCardViewHelper != null && materialCardViewHelper.s) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, n);
        }
        if (this.f32424k) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, o);
        }
        if (this.l) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, p);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(this.f32424k);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        accessibilityNodeInfo.setCheckable(materialCardViewHelper != null && materialCardViewHelper.s);
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(this.f32424k);
    }

    @Override // androidx.cardview.widget.CardView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        this.f32422i.e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f32423j) {
            MaterialCardViewHelper materialCardViewHelper = this.f32422i;
            if (!materialCardViewHelper.r) {
                materialCardViewHelper.r = true;
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(int i2) {
        this.f32422i.f32427c.r(ColorStateList.valueOf(i2));
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardElevation(float f2) {
        super.setCardElevation(f2);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.f32427c.q(materialCardViewHelper.f32425a.getCardElevation());
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f32422i.d;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.r(colorStateList);
    }

    public void setCheckable(boolean z) {
        this.f32422i.s = z;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f32424k != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f32422i.g(drawable);
    }

    public void setCheckedIconGravity(int i2) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (materialCardViewHelper.g != i2) {
            materialCardViewHelper.g = i2;
            MaterialCardView materialCardView = materialCardViewHelper.f32425a;
            materialCardViewHelper.e(materialCardView.getMeasuredWidth(), materialCardView.getMeasuredHeight());
        }
    }

    public void setCheckedIconMargin(int i2) {
        this.f32422i.f32428e = i2;
    }

    public void setCheckedIconMarginResource(int i2) {
        if (i2 != -1) {
            this.f32422i.f32428e = getResources().getDimensionPixelSize(i2);
        }
    }

    public void setCheckedIconResource(int i2) {
        this.f32422i.g(AppCompatResources.a(getContext(), i2));
    }

    public void setCheckedIconSize(int i2) {
        this.f32422i.f32429f = i2;
    }

    public void setCheckedIconSizeResource(int i2) {
        if (i2 != 0) {
            this.f32422i.f32429f = getResources().getDimensionPixelSize(i2);
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.l = colorStateList;
        Drawable drawable = materialCardViewHelper.f32432j;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (materialCardViewHelper != null) {
            materialCardViewHelper.k();
        }
    }

    public void setDragged(boolean z) {
        if (this.l != z) {
            this.l = z;
            refreshDrawableState();
            g();
            invalidate();
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setMaxCardElevation(float f2) {
        super.setMaxCardElevation(f2);
        this.f32422i.m();
    }

    public void setOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.m = onCheckedChangeListener;
    }

    @Override // androidx.cardview.widget.CardView
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.m();
        materialCardViewHelper.l();
    }

    public void setProgress(float f2) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.f32427c.s(f2);
        MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.d;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.s(f2);
        }
        MaterialShapeDrawable materialShapeDrawable2 = materialCardViewHelper.q;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.s(f2);
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setRadius(float f2) {
        super.setRadius(f2);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.h(materialCardViewHelper.m.h(f2));
        materialCardViewHelper.f32431i.invalidateSelf();
        if (materialCardViewHelper.i() || (materialCardViewHelper.f32425a.getPreventCornerOverlap() && !materialCardViewHelper.f32427c.o())) {
            materialCardViewHelper.l();
        }
        if (materialCardViewHelper.i()) {
            materialCardViewHelper.m();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.f32433k = colorStateList;
        RippleDrawable rippleDrawable = materialCardViewHelper.o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i2) {
        ColorStateList colorStateList = ContextCompat.getColorStateList(getContext(), i2);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.f32433k = colorStateList;
        RippleDrawable rippleDrawable = materialCardViewHelper.o;
        if (rippleDrawable != null) {
            rippleDrawable.setColor(colorStateList);
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        setClipToOutline(shapeAppearanceModel.g(getBoundsAsRectF()));
        this.f32422i.h(shapeAppearanceModel);
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (materialCardViewHelper.n != colorStateList) {
            materialCardViewHelper.n = colorStateList;
            MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.d;
            materialShapeDrawable.y(materialCardViewHelper.f32430h);
            materialShapeDrawable.x(colorStateList);
        }
        invalidate();
    }

    public void setStrokeWidth(int i2) {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (i2 != materialCardViewHelper.f32430h) {
            materialCardViewHelper.f32430h = i2;
            MaterialShapeDrawable materialShapeDrawable = materialCardViewHelper.d;
            ColorStateList colorStateList = materialCardViewHelper.n;
            materialShapeDrawable.y(i2);
            materialShapeDrawable.x(colorStateList);
        }
        invalidate();
    }

    @Override // androidx.cardview.widget.CardView
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        materialCardViewHelper.m();
        materialCardViewHelper.l();
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        MaterialCardViewHelper materialCardViewHelper = this.f32422i;
        if (materialCardViewHelper != null && materialCardViewHelper.s && isEnabled()) {
            this.f32424k = !this.f32424k;
            refreshDrawableState();
            g();
            materialCardViewHelper.f(this.f32424k, true);
            OnCheckedChangeListener onCheckedChangeListener = this.m;
            if (onCheckedChangeListener != null) {
                onCheckedChangeListener.a();
            }
        }
    }

    @Override // androidx.cardview.widget.CardView
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f32422i.f32427c.r(colorStateList);
    }

    public void setStrokeColor(int i2) {
        setStrokeColor(ColorStateList.valueOf(i2));
    }

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.materialCardViewStyle);
    }

    public MaterialCardView(Context context) {
        this(context, null);
    }
}
