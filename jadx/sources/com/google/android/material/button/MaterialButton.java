package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import androidx.customview.view.AbsSavedState;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.et;
import defpackage.fw;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int[] D = {R.attr.state_checkable};
    public static final int[] E = {R.attr.state_checked};
    public static final FloatPropertyCompat F = new AnonymousClass1("widthIncrease");
    public float A;
    public float B;
    public SpringAnimation C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialButtonHelper f32395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f32396c;
    public OnPressedChangeListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f32397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f32398f;
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f32399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f32401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f32402k;
    public int l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public float q;
    public int r;
    public int s;
    public LinearLayout.LayoutParams t;
    public boolean u;
    public int v;
    public boolean w;
    public int x;
    public StateListSizeChange y;
    public int z;

    /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$1, reason: invalid class name */
    public class AnonymousClass1 extends FloatPropertyCompat<MaterialButton> {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Object obj) {
            return ((MaterialButton) obj).getDisplayedWidthIncrease();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Object obj, float f2) {
            ((MaterialButton) obj).setDisplayedWidthIncrease(f2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconGravity {
    }

    public interface OnCheckedChangeListener {
        void a();
    }

    public interface OnPressedChangeListener {
        void a();
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.a(i2, com.vuitton.android.R.style.Widget_MaterialComponents_Button, context, attributeSet, new int[]{com.vuitton.android.R.attr.materialSizeOverlay}), attributeSet, i2);
        this.f32396c = new LinkedHashSet();
        this.m = false;
        this.n = false;
        this.p = -1;
        this.q = -1.0f;
        this.r = -1;
        this.s = -1;
        this.x = -1;
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.w, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.l = typedArrayD.getDimensionPixelSize(13, 0);
        int i3 = typedArrayD.getInt(16, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f32397e = ViewUtils.f(i3, mode);
        this.f32398f = MaterialResources.a(getContext(), typedArrayD, 15);
        this.g = MaterialResources.d(getContext(), typedArrayD, 11);
        this.o = typedArrayD.getInteger(12, 1);
        this.f32400i = typedArrayD.getDimensionPixelSize(14, 0);
        StateListShapeAppearanceModel stateListShapeAppearanceModelB = StateListShapeAppearanceModel.b(context2, typedArrayD, 19);
        ShapeAppearanceModel shapeAppearanceModelC = stateListShapeAppearanceModelB != null ? stateListShapeAppearanceModelB.c() : ShapeAppearanceModel.c(context2, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Button).a();
        boolean z = typedArrayD.getBoolean(17, false);
        MaterialButtonHelper materialButtonHelper = new MaterialButtonHelper(this, shapeAppearanceModelC);
        this.f32395b = materialButtonHelper;
        materialButtonHelper.f32416f = typedArrayD.getDimensionPixelOffset(2, 0);
        materialButtonHelper.g = typedArrayD.getDimensionPixelOffset(3, 0);
        materialButtonHelper.f32417h = typedArrayD.getDimensionPixelOffset(4, 0);
        materialButtonHelper.f32418i = typedArrayD.getDimensionPixelOffset(5, 0);
        if (typedArrayD.hasValue(9)) {
            int dimensionPixelSize = typedArrayD.getDimensionPixelSize(9, -1);
            materialButtonHelper.f32419j = dimensionPixelSize;
            materialButtonHelper.f32413b = materialButtonHelper.f32413b.h(dimensionPixelSize);
            materialButtonHelper.f32414c = null;
            materialButtonHelper.d();
            materialButtonHelper.s = true;
        }
        materialButtonHelper.f32420k = typedArrayD.getDimensionPixelSize(22, 0);
        materialButtonHelper.l = ViewUtils.f(typedArrayD.getInt(8, -1), mode);
        materialButtonHelper.m = MaterialResources.a(getContext(), typedArrayD, 7);
        materialButtonHelper.n = MaterialResources.a(getContext(), typedArrayD, 21);
        materialButtonHelper.o = MaterialResources.a(getContext(), typedArrayD, 18);
        materialButtonHelper.t = typedArrayD.getBoolean(6, false);
        materialButtonHelper.w = typedArrayD.getDimensionPixelSize(10, 0);
        materialButtonHelper.u = typedArrayD.getBoolean(23, true);
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayD.hasValue(0)) {
            materialButtonHelper.r = true;
            setSupportBackgroundTintList(materialButtonHelper.m);
            setSupportBackgroundTintMode(materialButtonHelper.l);
        } else {
            materialButtonHelper.c();
        }
        setPaddingRelative(paddingStart + materialButtonHelper.f32416f, paddingTop + materialButtonHelper.f32417h, paddingEnd + materialButtonHelper.g, paddingBottom + materialButtonHelper.f32418i);
        setCheckedInternal(typedArrayD.getBoolean(1, false));
        if (stateListShapeAppearanceModelB != null) {
            materialButtonHelper.d = d();
            if (materialButtonHelper.f32414c != null) {
                materialButtonHelper.d();
            }
            materialButtonHelper.f32414c = stateListShapeAppearanceModelB;
            materialButtonHelper.d();
        }
        setOpticalCenterEnabled(z);
        typedArrayD.recycle();
        setCompoundDrawablePadding(this.l);
        h(this.g != null);
    }

    public static /* synthetic */ void a(MaterialButton materialButton) {
        materialButton.v = materialButton.getOpticalCenterShift();
        materialButton.j();
        materialButton.invalidate();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.A;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            return (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        MaterialShapeDrawable materialShapeDrawableA;
        if (this.u && this.w && (materialShapeDrawableA = this.f32395b.a(false)) != null) {
            return (int) (materialShapeDrawableA.i() * 0.11f);
        }
        return 0;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (int i2 = 0; i2 < lineCount; i2++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i2));
        }
        return (int) Math.ceil(fMax);
    }

    private void setCheckedInternal(boolean z) {
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper == null || !materialButtonHelper.t || this.m == z) {
            return;
        }
        this.m = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
            boolean z2 = this.m;
            if (!materialButtonToggleGroup.n) {
                materialButtonToggleGroup.f(getId(), z2);
            }
        }
        if (this.n) {
            return;
        }
        this.n = true;
        Iterator it = this.f32396c.iterator();
        while (it.hasNext()) {
            ((OnCheckedChangeListener) it.next()).a();
        }
        this.n = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f2) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.A != f2) {
            this.A = f2;
            j();
            invalidate();
            if (getParent() instanceof MaterialButtonGroup) {
                MaterialButtonGroup materialButtonGroup = (MaterialButtonGroup) getParent();
                int i2 = (int) this.A;
                int iIndexOfChild = materialButtonGroup.indexOfChild(this);
                if (iIndexOfChild < 0) {
                    return;
                }
                int i3 = iIndexOfChild - 1;
                while (true) {
                    materialButton = null;
                    if (i3 < 0) {
                        materialButton2 = null;
                        break;
                    } else {
                        if (materialButtonGroup.c(i3)) {
                            materialButton2 = (MaterialButton) materialButtonGroup.getChildAt(i3);
                            break;
                        }
                        i3--;
                    }
                }
                int childCount = materialButtonGroup.getChildCount();
                while (true) {
                    iIndexOfChild++;
                    if (iIndexOfChild >= childCount) {
                        break;
                    } else if (materialButtonGroup.c(iIndexOfChild)) {
                        materialButton = (MaterialButton) materialButtonGroup.getChildAt(iIndexOfChild);
                        break;
                    }
                }
                if (materialButton2 == null && materialButton == null) {
                    return;
                }
                if (materialButton2 == null) {
                    materialButton.setDisplayedWidthDecrease(i2);
                }
                if (materialButton == null) {
                    materialButton2.setDisplayedWidthDecrease(i2);
                }
                if (materialButton2 == null || materialButton == null) {
                    return;
                }
                materialButton2.setDisplayedWidthDecrease(i2 / 2);
                materialButton.setDisplayedWidthDecrease((i2 + 1) / 2);
            }
        }
    }

    public final SpringForce d() {
        Context context = getContext();
        TypedValue typedValueA = MaterialAttributes.a(com.vuitton.android.R.attr.motionSpringFastSpatial, context);
        int[] iArr = R$styleable.F;
        TypedArray typedArrayObtainStyledAttributes = typedValueA == null ? context.obtainStyledAttributes(null, iArr, 0, com.vuitton.android.R.style.Motion_Material3_Spring_Standard_Fast_Spatial) : context.obtainStyledAttributes(typedValueA.resourceId, iArr);
        SpringForce springForce = new SpringForce();
        try {
            float f2 = typedArrayObtainStyledAttributes.getFloat(1, Float.MIN_VALUE);
            if (f2 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
            }
            float f3 = typedArrayObtainStyledAttributes.getFloat(0, Float.MIN_VALUE);
            if (f3 == Float.MIN_VALUE) {
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            springForce.b(f2);
            springForce.a(f3);
            typedArrayObtainStyledAttributes.recycle();
            return springForce;
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final boolean e() {
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        return (materialButtonHelper == null || materialButtonHelper.r) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0080  */
    /* JADX WARN: Code duplicated, block: B:46:? A[RETURN, SYNTHETIC] */
    public final void f(boolean z) {
        int i2;
        if (this.y == null) {
            return;
        }
        if (this.C == null) {
            SpringAnimation springAnimation = new SpringAnimation(this, (FloatPropertyCompat<MaterialButton>) F);
            this.C = springAnimation;
            springAnimation.u = d();
        }
        if (this.w) {
            int i3 = this.z;
            StateListSizeChange stateListSizeChange = this.y;
            int[] drawableState = getDrawableState();
            int[][] iArr = stateListSizeChange.f33024c;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = -1;
                if (i5 >= stateListSizeChange.f33022a) {
                    i5 = -1;
                    break;
                } else if (StateSet.stateSetMatches(iArr[i5], drawableState)) {
                    break;
                } else {
                    i5++;
                }
            }
            if (i5 < 0) {
                int[] iArr2 = StateSet.WILD_CARD;
                int[][] iArr3 = stateListSizeChange.f33024c;
                for (int i6 = 0; i6 < stateListSizeChange.f33022a; i6++) {
                    if (StateSet.stateSetMatches(iArr3[i6], iArr2)) {
                        i2 = i6;
                        break;
                    }
                }
                i5 = i2;
            }
            StateListSizeChange.SizeChangeAmount sizeChangeAmount = (i5 < 0 ? stateListSizeChange.f33023b : stateListSizeChange.d[i5]).f33025a;
            int width = getWidth();
            float f2 = sizeChangeAmount.f33027b;
            StateListSizeChange.SizeChangeType sizeChangeType = sizeChangeAmount.f33026a;
            if (sizeChangeType != StateListSizeChange.SizeChangeType.PERCENT) {
                if (sizeChangeType == StateListSizeChange.SizeChangeType.PIXELS) {
                }
                this.C.f(Math.min(i3, i4));
                if (z) {
                    this.C.g();
                }
            }
            f2 *= width;
            i4 = (int) f2;
            this.C.f(Math.min(i3, i4));
            if (z) {
                this.C.g();
            }
        }
    }

    public final void g() {
        int i2 = this.o;
        if (i2 == 1 || i2 == 2) {
            setCompoundDrawablesRelative(this.g, null, null, null);
            return;
        }
        if (i2 == 3 || i2 == 4) {
            setCompoundDrawablesRelative(null, null, this.g, null);
        } else if (i2 == 16 || i2 == 32) {
            setCompoundDrawablesRelative(null, this.g, null, null);
        }
    }

    public String getA11yClassName() {
        if (!TextUtils.isEmpty(this.f32399h)) {
            return this.f32399h;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        return ((materialButtonHelper == null || !materialButtonHelper.t) ? Button.class : CompoundButton.class).getName();
    }

    public int getAllowedWidthDecrease() {
        return this.x;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (e()) {
            return this.f32395b.f32419j;
        }
        return 0;
    }

    public SpringForce getCornerSpringForce() {
        return this.f32395b.d;
    }

    public Drawable getIcon() {
        return this.g;
    }

    public int getIconGravity() {
        return this.o;
    }

    public int getIconPadding() {
        return this.l;
    }

    public int getIconSize() {
        return this.f32400i;
    }

    public ColorStateList getIconTint() {
        return this.f32398f;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f32397e;
    }

    public int getInsetBottom() {
        return this.f32395b.f32418i;
    }

    public int getInsetTop() {
        return this.f32395b.f32417h;
    }

    public ColorStateList getRippleColor() {
        if (e()) {
            return this.f32395b.o;
        }
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (e()) {
            return this.f32395b.f32413b;
        }
        md.k("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public StateListShapeAppearanceModel getStateListShapeAppearanceModel() {
        if (e()) {
            return this.f32395b.f32414c;
        }
        md.k("Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background.");
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.f32395b.n;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (e()) {
            return this.f32395b.f32420k;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return e() ? this.f32395b.m : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return e() ? this.f32395b.l : super.getSupportBackgroundTintMode();
    }

    public final void h(boolean z) {
        Drawable drawable = this.g;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.g = drawableMutate;
            drawableMutate.setTintList(this.f32398f);
            PorterDuff.Mode mode = this.f32397e;
            if (mode != null) {
                this.g.setTintMode(mode);
            }
            int intrinsicWidth = this.f32400i;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.g.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f32400i;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.g.getIntrinsicHeight();
            }
            Drawable drawable2 = this.g;
            int i2 = this.f32401j;
            int i3 = this.f32402k;
            drawable2.setBounds(i2, i3, intrinsicWidth + i2, intrinsicHeight + i3);
            this.g.setVisible(true, z);
        }
        if (z) {
            g();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i4 = this.o;
        if (((i4 == 1 || i4 == 2) && drawable3 != this.g) || (((i4 == 3 || i4 == 4) && drawable5 != this.g) || ((i4 == 16 || i4 == 32) && drawable4 != this.g))) {
            g();
        }
    }

    public final void i(int i2, int i3) {
        if (this.g == null || getLayout() == null) {
            return;
        }
        int i4 = this.o;
        if (i4 != 1 && i4 != 2 && i4 != 3 && i4 != 4) {
            if (i4 == 16 || i4 == 32) {
                this.f32401j = 0;
                if (i4 == 16) {
                    this.f32402k = 0;
                    h(false);
                    return;
                }
                int intrinsicHeight = this.f32400i;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.g.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i3 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.l) - getPaddingBottom()) / 2);
                if (this.f32402k != iMax) {
                    this.f32402k = iMax;
                    h(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f32402k = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i5 = this.o;
        if (i5 == 1 || i5 == 3 || ((i5 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i5 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f32401j = 0;
            h(false);
            return;
        }
        int intrinsicWidth = this.f32400i;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.g.getIntrinsicWidth();
        }
        int textLayoutWidth = ((((i2 - getTextLayoutWidth()) - getPaddingEnd()) - intrinsicWidth) - this.l) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.o == 4)) {
            textLayoutWidth = -textLayoutWidth;
        }
        if (this.f32401j != textLayoutWidth) {
            this.f32401j = textLayoutWidth;
            h(false);
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.m;
    }

    public final void j() {
        int i2 = (int) (this.A - this.B);
        int i3 = (i2 / 2) + this.v;
        getLayoutParams().width = (int) (this.q + i2);
        setPaddingRelative(this.r + i3, getPaddingTop(), (this.s + i2) - i3, getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            MaterialShapeUtils.b(this, this.f32395b.a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper != null && materialButtonHelper.t) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, D);
        }
        if (this.m) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, E);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.m);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        accessibilityNodeInfo.setCheckable(materialButtonHelper != null && materialButtonHelper.t);
        accessibilityNodeInfo.setChecked(this.m);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        super.onLayout(z, i2, i3, i4, i5);
        i(getMeasuredWidth(), getMeasuredHeight());
        int i7 = getResources().getConfiguration().orientation;
        if (this.p != i7) {
            this.p = i7;
            this.q = -1.0f;
        }
        if (this.q == -1.0f) {
            this.q = getMeasuredWidth();
            if (this.t == null && (getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getButtonSizeChange() != null) {
                this.t = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.t);
                layoutParams.width = (int) this.q;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.x == -1) {
            if (this.g == null) {
                i6 = 0;
            } else {
                int iconPadding = getIconPadding();
                int intrinsicWidth = this.f32400i;
                if (intrinsicWidth == 0) {
                    intrinsicWidth = this.g.getIntrinsicWidth();
                }
                i6 = iconPadding + intrinsicWidth;
            }
            this.x = (getMeasuredWidth() - getTextLayoutWidth()) - i6;
        }
        if (this.r == -1) {
            this.r = getPaddingStart();
        }
        if (this.s == -1) {
            this.s = getPaddingEnd();
        }
        if ((getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.w = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        setChecked(savedState.d);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.m;
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.f32395b.u) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.g != null) {
            if (this.g.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f32399h = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
        if (!e()) {
            super.setBackgroundColor(i2);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper.a(false) != null) {
            materialButtonHelper.a(false).setTint(i2);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!e()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        materialButtonHelper.r = true;
        MaterialButton materialButton = materialButtonHelper.f32412a;
        materialButton.setSupportBackgroundTintList(materialButtonHelper.m);
        materialButton.setSupportBackgroundTintMode(materialButtonHelper.l);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (e()) {
            this.f32395b.t = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    public void setCornerRadius(int i2) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            if (materialButtonHelper.s && materialButtonHelper.f32419j == i2) {
                return;
            }
            materialButtonHelper.f32419j = i2;
            materialButtonHelper.s = true;
            materialButtonHelper.f32413b = materialButtonHelper.f32413b.h(i2);
            materialButtonHelper.f32414c = null;
            materialButtonHelper.d();
        }
    }

    public void setCornerRadiusResource(int i2) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i2));
        }
    }

    public void setCornerSpringForce(SpringForce springForce) {
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        materialButtonHelper.d = springForce;
        if (materialButtonHelper.f32414c != null) {
            materialButtonHelper.d();
        }
    }

    public void setDisplayedWidthDecrease(int i2) {
        this.B = Math.min(i2, this.x);
        j();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        if (e()) {
            this.f32395b.a(false).q(f2);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.g != drawable) {
            this.g = drawable;
            h(true);
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i2) {
        if (this.o != i2) {
            this.o = i2;
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i2) {
        if (this.l != i2) {
            this.l = i2;
            setCompoundDrawablePadding(i2);
        }
    }

    public void setIconResource(int i2) {
        setIcon(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    public void setIconSize(int i2) {
        if (i2 < 0) {
            md.n("iconSize cannot be less than 0");
        } else if (this.f32400i != i2) {
            this.f32400i = i2;
            h(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f32398f != colorStateList) {
            this.f32398f = colorStateList;
            h(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f32397e != mode) {
            this.f32397e = mode;
            h(false);
        }
    }

    public void setIconTintResource(int i2) {
        setIconTint(ContextCompat.getColorStateList(getContext(), i2));
    }

    public void setInsetBottom(int i2) {
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        materialButtonHelper.b(materialButtonHelper.f32417h, i2);
    }

    public void setInsetTop(int i2) {
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        materialButtonHelper.b(i2, materialButtonHelper.f32418i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(OnPressedChangeListener onPressedChangeListener) {
        this.d = onPressedChangeListener;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.u != z) {
            this.u = z;
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            if (z) {
                fw fwVar = new fw(this, 21);
                materialButtonHelper.f32415e = fwVar;
                MaterialShapeDrawable materialShapeDrawableA = materialButtonHelper.a(false);
                if (materialShapeDrawableA != null) {
                    materialShapeDrawableA.F = fwVar;
                }
            } else {
                materialButtonHelper.f32415e = null;
                MaterialShapeDrawable materialShapeDrawableA2 = materialButtonHelper.a(false);
                if (materialShapeDrawableA2 != null) {
                    materialShapeDrawableA2.F = null;
                }
            }
            post(new et(this, 24));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.d;
        if (onPressedChangeListener != null) {
            onPressedChangeListener.a();
        }
        super.setPressed(z);
        f(false);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            MaterialButton materialButton = materialButtonHelper.f32412a;
            if (materialButtonHelper.o != colorStateList) {
                materialButtonHelper.o = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(RippleUtils.b(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(int i2) {
        if (e()) {
            setRippleColor(ContextCompat.getColorStateList(getContext(), i2));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        if (!e()) {
            md.k("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        materialButtonHelper.f32413b = shapeAppearanceModel;
        materialButtonHelper.f32414c = null;
        materialButtonHelper.d();
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            materialButtonHelper.q = z;
            materialButtonHelper.e();
        }
    }

    public void setSizeChange(StateListSizeChange stateListSizeChange) {
        if (this.y != stateListSizeChange) {
            this.y = stateListSizeChange;
            f(true);
        }
    }

    public void setStateListShapeAppearanceModel(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        if (!e()) {
            md.k("Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background.");
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper.d == null && stateListShapeAppearanceModel.d()) {
            materialButtonHelper.d = d();
            if (materialButtonHelper.f32414c != null) {
                materialButtonHelper.d();
            }
        }
        materialButtonHelper.f32414c = stateListShapeAppearanceModel;
        materialButtonHelper.d();
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            if (materialButtonHelper.n != colorStateList) {
                materialButtonHelper.n = colorStateList;
                materialButtonHelper.e();
            }
        }
    }

    public void setStrokeColorResource(int i2) {
        if (e()) {
            setStrokeColor(ContextCompat.getColorStateList(getContext(), i2));
        }
    }

    public void setStrokeWidth(int i2) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.f32395b;
            if (materialButtonHelper.f32420k != i2) {
                materialButtonHelper.f32420k = i2;
                materialButtonHelper.e();
            }
        }
    }

    public void setStrokeWidthResource(int i2) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i2));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!e()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper.m != colorStateList) {
            materialButtonHelper.m = colorStateList;
            if (materialButtonHelper.a(false) != null) {
                materialButtonHelper.a(false).setTintList(materialButtonHelper.m);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!e()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        MaterialButtonHelper materialButtonHelper = this.f32395b;
        if (materialButtonHelper.l != mode) {
            materialButtonHelper.l = mode;
            if (materialButtonHelper.a(false) == null || materialButtonHelper.l == null) {
                return;
            }
            materialButtonHelper.a(false).setTintMode(materialButtonHelper.l);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i2) {
        super.setTextAlignment(i2);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.f32395b.u = z;
    }

    @Override // android.widget.TextView
    public void setWidth(int i2) {
        this.q = -1.0f;
        super.setWidth(i2);
    }

    public void setWidthChangeMax(int i2) {
        if (this.z != i2) {
            this.z = i2;
            f(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.m);
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public boolean d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.d = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d ? 1 : 0);
        }

        /* JADX INFO: renamed from: com.google.android.material.button.MaterialButton$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.materialButtonStyle);
    }

    public MaterialButton(Context context) {
        this(context, null);
    }
}
