package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.jm;
import defpackage.mt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable, MaterialCheckable<Chip> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ChipDrawable f32486f;
    public InsetDrawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public RippleDrawable f32487h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public View.OnClickListener f32488i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f32489j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MaterialCheckable.OnCheckedChangeListener f32490k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;
    public int r;
    public CharSequence s;
    public final ChipTouchHelper t;
    public boolean u;
    public final Rect v;
    public final RectF w;
    public final TextAppearanceFontCallback x;
    public static final Rect y = new Rect();
    public static final int[] z = {R.attr.state_selected};
    public static final int[] A = {R.attr.state_checkable};

    public class ChipTouchHelper extends ExploreByTouchHelper {
        public ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final int n(float f2, float f3) {
            Rect rect = Chip.y;
            Chip chip = Chip.this;
            return (chip.e() && chip.getCloseIconTouchBounds().contains(f2, f3)) ? 1 : 0;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void o(ArrayList arrayList) {
            ChipDrawable chipDrawable;
            arrayList.add(0);
            Rect rect = Chip.y;
            Chip chip = Chip.this;
            if (!chip.e() || (chipDrawable = chip.f32486f) == null || !chipDrawable.W || chip.f32488i == null) {
                return;
            }
            arrayList.add(1);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean s(int i2, int i3, Bundle bundle) {
            boolean z = false;
            if (i3 == 16) {
                Chip chip = Chip.this;
                if (i2 == 0) {
                    return chip.performClick();
                }
                if (i2 == 1) {
                    chip.playSoundEffect(0);
                    View.OnClickListener onClickListener = chip.f32488i;
                    if (onClickListener != null) {
                        onClickListener.onClick(chip);
                        z = true;
                    }
                    if (chip.u) {
                        chip.t.x(1, 1);
                    }
                }
            }
            return z;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void t(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            Chip chip = Chip.this;
            ChipDrawable chipDrawable = chip.f32486f;
            accessibilityNodeInfo.setCheckable(chipDrawable != null && chipDrawable.b1);
            accessibilityNodeInfo.setClickable(chip.isClickable());
            accessibilityNodeInfoCompat.i(chip.getAccessibilityClassName());
            accessibilityNodeInfoCompat.o(chip.getText());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void u(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            if (i2 != 1) {
                accessibilityNodeInfoCompat.l("");
                accessibilityNodeInfo.setBoundsInParent(Chip.y);
                return;
            }
            Chip chip = Chip.this;
            CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfoCompat.l(closeIconContentDescription);
            } else {
                CharSequence text = chip.getText();
                accessibilityNodeInfoCompat.l(chip.getContext().getString(com.vuitton.android.R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
            accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12270e);
            accessibilityNodeInfo.setEnabled(chip.isEnabled());
            accessibilityNodeInfoCompat.i(Button.class.getName());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void v(int i2, boolean z) {
            Chip chip = Chip.this;
            if (i2 == 1) {
                chip.o = z;
            }
            ChipDrawable chipDrawable = chip.f32486f;
            boolean z2 = chip.o;
            boolean zB0 = false;
            if (chipDrawable.X != null) {
                zB0 = chipDrawable.b0(z2 ? new int[]{R.attr.state_pressed, R.attr.state_enabled} : ChipDrawable.Q1);
            }
            if (zB0) {
                chip.refreshDrawableState();
            }
        }
    }

    public Chip(Context context, AttributeSet attributeSet, int i2) {
        int resourceId;
        super(MaterialThemeOverlay.b(context, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, i2);
        this.v = new Rect();
        this.w = new RectF();
        this.x = new TextAppearanceFontCallback() { // from class: com.google.android.material.chip.Chip.1
            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void a(int i3) {
            }

            @Override // com.google.android.material.resources.TextAppearanceFontCallback
            public final void b(Typeface typeface, boolean z2) {
                Chip chip = Chip.this;
                ChipDrawable chipDrawable = chip.f32486f;
                chip.setText(chipDrawable.N1 ? chipDrawable.P : chip.getText());
                chip.requestLayout();
                chip.invalidate();
            }
        };
        Context context2 = getContext();
        if (attributeSet != null) {
            attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background");
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                mt.i("Please set left drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                mt.i("Please set start drawable using R.attr#chipIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                mt.i("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                mt.i("Please set end drawable using R.attr#closeIcon.");
                throw null;
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                mt.i("Chip does not support multi-line text");
                throw null;
            }
            attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
        }
        ChipDrawable chipDrawable = new ChipDrawable(context2, attributeSet, i2);
        int i3 = 0;
        Context context3 = chipDrawable.p1;
        int[] iArr = R$styleable.f32223h;
        TypedArray typedArrayD = ThemeEnforcement.d(context3, attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        chipDrawable.P1 = typedArrayD.hasValue(37);
        Context context4 = chipDrawable.p1;
        ColorStateList colorStateListA = MaterialResources.a(context4, typedArrayD, 24);
        if (chipDrawable.I != colorStateListA) {
            chipDrawable.I = colorStateListA;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        ColorStateList colorStateListA2 = MaterialResources.a(context4, typedArrayD, 11);
        if (chipDrawable.J != colorStateListA2) {
            chipDrawable.J = colorStateListA2;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
        float dimension = typedArrayD.getDimension(19, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (chipDrawable.K != dimension) {
            chipDrawable.K = dimension;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        if (typedArrayD.hasValue(12)) {
            chipDrawable.Q(typedArrayD.getDimension(12, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        chipDrawable.V(MaterialResources.a(context4, typedArrayD, 22));
        chipDrawable.W(typedArrayD.getDimension(23, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        chipDrawable.g0(MaterialResources.a(context4, typedArrayD, 36));
        String text = typedArrayD.getText(5);
        text = text == null ? "" : text;
        boolean zEquals = TextUtils.equals(chipDrawable.P, text);
        TextDrawableHelper textDrawableHelper = chipDrawable.v1;
        if (!zEquals) {
            chipDrawable.P = text;
            textDrawableHelper.f32734e = true;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        TextAppearance textAppearance = (!typedArrayD.hasValue(0) || (resourceId = typedArrayD.getResourceId(0, 0)) == 0) ? null : new TextAppearance(context4, resourceId);
        textAppearance.l = typedArrayD.getDimension(1, textAppearance.l);
        textDrawableHelper.c(textAppearance, context4);
        int i4 = typedArrayD.getInt(3, 0);
        if (i4 == 1) {
            chipDrawable.M1 = TextUtils.TruncateAt.START;
        } else if (i4 == 2) {
            chipDrawable.M1 = TextUtils.TruncateAt.MIDDLE;
        } else if (i4 == 3) {
            chipDrawable.M1 = TextUtils.TruncateAt.END;
        }
        chipDrawable.U(typedArrayD.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            chipDrawable.U(typedArrayD.getBoolean(15, false));
        }
        chipDrawable.R(MaterialResources.d(context4, typedArrayD, 14));
        if (typedArrayD.hasValue(17)) {
            chipDrawable.T(MaterialResources.a(context4, typedArrayD, 17));
        }
        chipDrawable.S(typedArrayD.getDimension(16, -1.0f));
        chipDrawable.d0(typedArrayD.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            chipDrawable.d0(typedArrayD.getBoolean(26, false));
        }
        chipDrawable.X(MaterialResources.d(context4, typedArrayD, 25));
        chipDrawable.c0(MaterialResources.a(context4, typedArrayD, 30));
        chipDrawable.Z(typedArrayD.getDimension(28, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        chipDrawable.M(typedArrayD.getBoolean(6, false));
        chipDrawable.P(typedArrayD.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            chipDrawable.P(typedArrayD.getBoolean(8, false));
        }
        chipDrawable.N(MaterialResources.d(context4, typedArrayD, 7));
        if (typedArrayD.hasValue(9)) {
            chipDrawable.O(MaterialResources.a(context4, typedArrayD, 9));
        }
        chipDrawable.f1 = MotionSpec.a(context4, typedArrayD, 39);
        chipDrawable.g1 = MotionSpec.a(context4, typedArrayD, 33);
        float dimension2 = typedArrayD.getDimension(21, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (chipDrawable.h1 != dimension2) {
            chipDrawable.h1 = dimension2;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        chipDrawable.f0(typedArrayD.getDimension(35, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        chipDrawable.e0(typedArrayD.getDimension(34, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        float dimension3 = typedArrayD.getDimension(41, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (chipDrawable.k1 != dimension3) {
            chipDrawable.k1 = dimension3;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        float dimension4 = typedArrayD.getDimension(40, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (chipDrawable.l1 != dimension4) {
            chipDrawable.l1 = dimension4;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        chipDrawable.a0(typedArrayD.getDimension(29, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        chipDrawable.Y(typedArrayD.getDimension(27, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        float dimension5 = typedArrayD.getDimension(13, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        if (chipDrawable.o1 != dimension5) {
            chipDrawable.o1 = dimension5;
            chipDrawable.invalidateSelf();
            chipDrawable.K();
        }
        chipDrawable.O1 = typedArrayD.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayD.recycle();
        ThemeEnforcement.a(context2, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action);
        ThemeEnforcement.b(context2, attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action);
        this.p = typedArrayObtainStyledAttributes.getBoolean(32, false);
        this.r = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, MaterialAttributes.c(context2)));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(chipDrawable);
        chipDrawable.q(getElevation());
        ThemeEnforcement.a(context2, attributeSet, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action);
        ThemeEnforcement.b(context2, attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.t = new ChipTouchHelper(this);
        f();
        if (!zHasValue) {
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.chip.Chip.2
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    ChipDrawable chipDrawable2 = Chip.this.f32486f;
                    if (chipDrawable2 != null) {
                        chipDrawable2.getOutline(outline);
                    } else {
                        outline.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    }
                }
            });
        }
        setChecked(this.l);
        setText(chipDrawable.P);
        setEllipsize(chipDrawable.M1);
        i();
        if (!this.f32486f.N1) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.p) {
            setMinHeight(this.r);
        }
        this.q = getLayoutDirection();
        super.setOnCheckedChangeListener(new jm(this, i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.w;
        rectF.setEmpty();
        if (e() && this.f32488i != null) {
            ChipDrawable chipDrawable = this.f32486f;
            Rect bounds = chipDrawable.getBounds();
            rectF.setEmpty();
            if (chipDrawable.j0()) {
                float f2 = chipDrawable.o1 + chipDrawable.n1 + chipDrawable.h0 + chipDrawable.m1 + chipDrawable.l1;
                if (chipDrawable.getLayoutDirection() == 0) {
                    float f3 = bounds.right;
                    rectF.right = f3;
                    rectF.left = f3 - f2;
                } else {
                    float f4 = bounds.left;
                    rectF.left = f4;
                    rectF.right = f4 + f2;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i2 = (int) closeIconTouchBounds.left;
        int i3 = (int) closeIconTouchBounds.top;
        int i4 = (int) closeIconTouchBounds.right;
        int i5 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.v;
        rect.set(i2, i3, i4, i5);
        return rect;
    }

    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.v1.g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z2) {
        if (this.n != z2) {
            this.n = z2;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z2) {
        if (this.m != z2) {
            this.m = z2;
            refreshDrawableState();
        }
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    public final void a() {
        d(this.r);
        requestLayout();
        invalidateOutline();
    }

    public final void d(int i2) {
        this.r = i2;
        if (!this.p) {
            InsetDrawable insetDrawable = this.g;
            if (insetDrawable == null) {
                g();
                return;
            } else {
                if (insetDrawable != null) {
                    this.g = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i2 - ((int) this.f32486f.K));
        int iMax2 = Math.max(0, i2 - this.f32486f.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.g;
            if (insetDrawable2 == null) {
                g();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.g = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
        }
        int i3 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i4 = iMax > 0 ? iMax / 2 : 0;
        if (this.g != null) {
            Rect rect = new Rect();
            this.g.getPadding(rect);
            if (rect.top == i4 && rect.bottom == i4 && rect.left == i3 && rect.right == i3) {
                g();
                return;
            }
        }
        if (getMinHeight() != i2) {
            setMinHeight(i2);
        }
        if (getMinWidth() != i2) {
            setMinWidth(i2);
        }
        this.g = new InsetDrawable((Drawable) this.f32486f, i3, i4, i3, i4);
        g();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        if (this.u) {
            return this.t.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
        }
        return super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:37:0x0067  */
    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i2;
        if (!this.u) {
            return super.dispatchKeyEvent(keyEvent);
        }
        ChipTouchHelper chipTouchHelper = this.t;
        chipTouchHelper.getClass();
        boolean zQ = false;
        int i3 = 0;
        zQ = false;
        zQ = false;
        zQ = false;
        zQ = false;
        zQ = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i4 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i4 = 33;
                                } else if (keyCode == 21) {
                                    i4 = 17;
                                } else if (keyCode != 22) {
                                    i4 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i3 < repeatCount && chipTouchHelper.q(i4, null)) {
                                    i3++;
                                    z2 = true;
                                }
                                zQ = z2;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                i2 = chipTouchHelper.m;
                                if (i2 != Integer.MIN_VALUE) {
                                    chipTouchHelper.s(i2, 16, null);
                                }
                                zQ = true;
                            }
                            break;
                    }
                } else if (keyEvent.hasNoModifiers()) {
                    i2 = chipTouchHelper.m;
                    if (i2 != Integer.MIN_VALUE) {
                        chipTouchHelper.s(i2, 16, null);
                    }
                    zQ = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                zQ = chipTouchHelper.q(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zQ = chipTouchHelper.q(1, null);
            }
        }
        if (!zQ || chipTouchHelper.m == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i2;
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.f32486f;
        boolean zB0 = false;
        int i3 = 0;
        zB0 = false;
        if (chipDrawable != null && ChipDrawable.J(chipDrawable.X)) {
            ChipDrawable chipDrawable2 = this.f32486f;
            ?? IsEnabled = isEnabled();
            if (this.o) {
                i2 = IsEnabled;
                i2 = IsEnabled + 1;
            }
            i2 = IsEnabled;
            int i4 = i2;
            if (this.n) {
                i4 = i2 + 1;
            }
            int i5 = i4;
            if (this.m) {
                i5 = i4 + 1;
            }
            int i6 = i5;
            if (isChecked()) {
                i6 = i5 + 1;
            }
            int[] iArr = new int[i6];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i3 = 1;
            }
            if (this.o) {
                iArr[i3] = 16842908;
                i3++;
            }
            if (this.n) {
                iArr[i3] = 16843623;
                i3++;
            }
            if (this.m) {
                iArr[i3] = 16842919;
                i3++;
            }
            if (isChecked()) {
                iArr[i3] = 16842913;
            }
            zB0 = chipDrawable2.b0(iArr);
        }
        if (zB0) {
            invalidate();
        }
    }

    public final boolean e() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null) {
            return false;
        }
        Drawable drawable = chipDrawable.X;
        return (drawable != null ? DrawableCompat.a(drawable) : null) != null;
    }

    public final void f() {
        ChipDrawable chipDrawable;
        if (!e() || (chipDrawable = this.f32486f) == null || !chipDrawable.W || this.f32488i == null) {
            ViewCompat.t(this, null);
            this.u = false;
        } else {
            ViewCompat.t(this, this.t);
            this.u = true;
        }
    }

    public final void g() {
        this.f32487h = new RippleDrawable(RippleUtils.b(this.f32486f.O), getBackgroundDrawable(), null);
        this.f32486f.getClass();
        setBackground(this.f32487h);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.s)) {
            return this.s;
        }
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || !chipDrawable.b1) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof ChipGroup) && ((ChipGroup) parent).f32495i.d) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.g;
        return insetDrawable == null ? this.f32486f : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.d1;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.e1;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.J;
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, chipDrawable.H()) : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public Drawable getChipDrawable() {
        return this.f32486f;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.o1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public Drawable getChipIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || (drawable = chipDrawable.R) == null) {
            return null;
        }
        return DrawableCompat.a(drawable);
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.T : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.S;
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.K : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.h1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.M;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.N : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public Drawable getCloseIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || (drawable = chipDrawable.X) == null) {
            return null;
        }
        return DrawableCompat.a(drawable);
    }

    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.t0;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.n1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.h0 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.m1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.Z;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.M1;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.u) {
            ChipTouchHelper chipTouchHelper = this.t;
            if (chipTouchHelper.m == 1 || chipTouchHelper.l == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.g1;
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.j1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.i1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.O;
        }
        return null;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f32486f.f32936c.f32945a;
    }

    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            return chipDrawable.f1;
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.l1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.f32486f;
        return chipDrawable != null ? chipDrawable.k1 : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final void h() {
        ChipDrawable chipDrawable;
        if (TextUtils.isEmpty(getText()) || (chipDrawable = this.f32486f) == null) {
            return;
        }
        int iG = (int) (chipDrawable.G() + chipDrawable.o1 + chipDrawable.l1);
        ChipDrawable chipDrawable2 = this.f32486f;
        int iF = (int) (chipDrawable2.F() + chipDrawable2.h1 + chipDrawable2.k1);
        if (this.g != null) {
            Rect rect = new Rect();
            this.g.getPadding(rect);
            iF += rect.left;
            iG += rect.right;
        }
        setPaddingRelative(iF, getPaddingTop(), iG, getPaddingBottom());
    }

    public final void i() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.d(getContext(), paint, this.x);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.b(this, this.f32486f);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, z);
        }
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null && chipDrawable.b1) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z2, int i2, Rect rect) {
        super.onFocusChanged(z2, i2, rect);
        if (this.u) {
            ChipTouchHelper chipTouchHelper = this.t;
            int i3 = chipTouchHelper.m;
            if (i3 != Integer.MIN_VALUE) {
                chipTouchHelper.j(i3);
            }
            if (z2) {
                chipTouchHelper.q(i2, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i2;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        ChipDrawable chipDrawable = this.f32486f;
        int i3 = 0;
        accessibilityNodeInfo.setCheckable(chipDrawable != null && chipDrawable.b1);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
            if (!chipGroup.d) {
                i2 = -1;
                break;
            }
            i2 = 0;
            while (true) {
                if (i3 >= chipGroup.getChildCount()) {
                    i2 = -1;
                    break;
                }
                View childAt = chipGroup.getChildAt(i3);
                if ((childAt instanceof Chip) && chipGroup.getChildAt(i3).getVisibility() == 0) {
                    if (((Chip) childAt) == this) {
                        break;
                    } else {
                        i2++;
                    }
                }
                i3++;
            }
            Object tag = getTag(com.vuitton.android.R.id.row_index_key);
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, isChecked(), i2, 1));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), 1002) : super.onResolvePointerIcon(motionEvent, i2);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        if (this.q != i2) {
            this.q = i2;
            h();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z2;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked != 2) {
                    if (actionMasked != 3) {
                    }
                } else if (this.m) {
                    if (!zContains) {
                        setCloseIconPressed(false);
                    }
                    z2 = true;
                }
                z2 = false;
            } else {
                if (this.m) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f32488i;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.u) {
                        this.t.x(1, 1);
                    }
                    z2 = true;
                }
                setCloseIconPressed(false);
            }
            z2 = false;
            setCloseIconPressed(false);
        } else if (zContains) {
            setCloseIconPressed(true);
            z2 = true;
        } else {
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.s = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f32487h) {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i2) {
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f32487h) {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i2) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
    }

    public void setCheckable(boolean z2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.M(z2);
        }
    }

    public void setCheckableResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.M(chipDrawable.p1.getResources().getBoolean(i2));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null) {
            this.l = z2;
        } else if (chipDrawable.b1) {
            super.setChecked(z2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.N(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z2) {
        setCheckedIconVisible(z2);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(i2);
    }

    public void setCheckedIconResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.N(AppCompatResources.a(chipDrawable.p1, i2));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.O(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.O(ContextCompat.getColorStateList(chipDrawable.p1, i2));
        }
    }

    public void setCheckedIconVisible(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.P(chipDrawable.p1.getResources().getBoolean(i2));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.J == colorStateList) {
            return;
        }
        chipDrawable.J = colorStateList;
        chipDrawable.onStateChange(chipDrawable.getState());
    }

    public void setChipBackgroundColorResource(int i2) {
        ColorStateList colorStateList;
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.J == (colorStateList = ContextCompat.getColorStateList(chipDrawable.p1, i2))) {
            return;
        }
        chipDrawable.J = colorStateList;
        chipDrawable.onStateChange(chipDrawable.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Q(f2);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Q(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setChipDrawable(ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.f32486f;
        if (chipDrawable2 != chipDrawable) {
            if (chipDrawable2 != null) {
                chipDrawable2.L1 = new WeakReference(null);
            }
            this.f32486f = chipDrawable;
            chipDrawable.N1 = false;
            chipDrawable.L1 = new WeakReference(this);
            d(this.r);
        }
    }

    public void setChipEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.o1 == f2) {
            return;
        }
        chipDrawable.o1 = f2;
        chipDrawable.invalidateSelf();
        chipDrawable.K();
    }

    public void setChipEndPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float dimension = chipDrawable.p1.getResources().getDimension(i2);
            if (chipDrawable.o1 != dimension) {
                chipDrawable.o1 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.K();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.R(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z2) {
        setChipIconVisible(z2);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    public void setChipIconResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.R(AppCompatResources.a(chipDrawable.p1, i2));
        }
    }

    public void setChipIconSize(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.S(f2);
        }
    }

    public void setChipIconSizeResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.S(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.T(colorStateList);
        }
    }

    public void setChipIconTintResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.T(ContextCompat.getColorStateList(chipDrawable.p1, i2));
        }
    }

    public void setChipIconVisible(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.U(chipDrawable.p1.getResources().getBoolean(i2));
        }
    }

    public void setChipMinHeight(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.K == f2) {
            return;
        }
        chipDrawable.K = f2;
        chipDrawable.invalidateSelf();
        chipDrawable.K();
    }

    public void setChipMinHeightResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float dimension = chipDrawable.p1.getResources().getDimension(i2);
            if (chipDrawable.K != dimension) {
                chipDrawable.K = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.K();
            }
        }
    }

    public void setChipStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.h1 == f2) {
            return;
        }
        chipDrawable.h1 = f2;
        chipDrawable.invalidateSelf();
        chipDrawable.K();
    }

    public void setChipStartPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float dimension = chipDrawable.p1.getResources().getDimension(i2);
            if (chipDrawable.h1 != dimension) {
                chipDrawable.h1 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.K();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.V(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.V(ContextCompat.getColorStateList(chipDrawable.p1, i2));
        }
    }

    public void setChipStrokeWidth(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.W(f2);
        }
    }

    public void setChipStrokeWidthResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.W(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i2) {
        setText(getResources().getString(i2));
    }

    public void setCloseIcon(Drawable drawable) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.X(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.t0 == charSequence) {
            return;
        }
        BidiFormatter bidiFormatterC = BidiFormatter.c();
        chipDrawable.t0 = bidiFormatterC.d(charSequence, bidiFormatterC.f12121c);
        chipDrawable.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z2) {
        setCloseIconVisible(z2);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    public void setCloseIconEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Y(f2);
        }
    }

    public void setCloseIconEndPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Y(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setCloseIconResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.X(AppCompatResources.a(chipDrawable.p1, i2));
        }
        f();
    }

    public void setCloseIconSize(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Z(f2);
        }
    }

    public void setCloseIconSizeResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.Z(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setCloseIconStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.a0(f2);
        }
    }

    public void setCloseIconStartPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.a0(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.c0(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.c0(ContextCompat.getColorStateList(chipDrawable.p1, i2));
        }
    }

    public void setCloseIconVisible(int i2) {
        setCloseIconVisible(getResources().getBoolean(i2));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            mt.i("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            mt.i("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            mt.i("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            mt.i("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            mt.i("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            mt.i("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            mt.i("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            mt.i("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.q(f2);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f32486f == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            mt.i("Text within a chip are not allowed to scroll.");
            return;
        }
        super.setEllipsize(truncateAt);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.M1 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z2) {
        this.p = z2;
        d(this.r);
    }

    @Override // android.widget.TextView
    public void setGravity(int i2) {
        if (i2 != 8388627) {
            return;
        }
        super.setGravity(i2);
    }

    public void setHideMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.g1 = motionSpec;
        }
    }

    public void setHideMotionSpecResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.g1 = MotionSpec.b(i2, chipDrawable.p1);
        }
    }

    public void setIconEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.e0(f2);
        }
    }

    public void setIconEndPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.e0(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    public void setIconStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.f0(f2);
        }
    }

    public void setIconStartPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.f0(chipDrawable.p1.getResources().getDimension(i2));
        }
    }

    @Override // com.google.android.material.internal.MaterialCheckable
    public void setInternalOnCheckedChangeListener(MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener) {
        this.f32490k = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        if (this.f32486f == null) {
            return;
        }
        super.setLayoutDirection(i2);
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
        } else {
            mt.i("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
        } else {
            mt.i("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.O1 = i2;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
        } else {
            mt.i("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f32489j = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f32488i = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.g0(colorStateList);
        }
        this.f32486f.getClass();
        g();
    }

    public void setRippleColorResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.g0(ContextCompat.getColorStateList(chipDrawable.p1, i2));
            this.f32486f.getClass();
            g();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        this.f32486f.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.f1 = motionSpec;
        }
    }

    public void setShowMotionSpecResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.f1 = MotionSpec.b(i2, chipDrawable.p1);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z2) {
        if (z2) {
            super.setSingleLine(z2);
        } else {
            mt.i("Chip does not support multi-line text");
        }
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(chipDrawable.N1 ? null : charSequence, bufferType);
        ChipDrawable chipDrawable2 = this.f32486f;
        if (chipDrawable2 == null || TextUtils.equals(chipDrawable2.P, charSequence)) {
            return;
        }
        chipDrawable2.P = charSequence;
        chipDrawable2.v1.f32734e = true;
        chipDrawable2.invalidateSelf();
        chipDrawable2.K();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            Context context2 = chipDrawable.p1;
            chipDrawable.v1.c(new TextAppearance(context2, i2), context2);
        }
        i();
    }

    public void setTextAppearanceResource(int i2) {
        setTextAppearance(getContext(), i2);
    }

    public void setTextEndPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.l1 == f2) {
            return;
        }
        chipDrawable.l1 = f2;
        chipDrawable.invalidateSelf();
        chipDrawable.K();
    }

    public void setTextEndPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float dimension = chipDrawable.p1.getResources().getDimension(i2);
            if (chipDrawable.l1 != dimension) {
                chipDrawable.l1 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.K();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i2, float f2) {
        super.setTextSize(i2, f2);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float fApplyDimension = TypedValue.applyDimension(i2, f2, getResources().getDisplayMetrics());
            TextDrawableHelper textDrawableHelper = chipDrawable.v1;
            TextAppearance textAppearance = textDrawableHelper.g;
            if (textAppearance != null) {
                textAppearance.l = fApplyDimension;
                textDrawableHelper.f32731a.setTextSize(fApplyDimension);
                chipDrawable.a();
            }
        }
        i();
    }

    public void setTextStartPadding(float f2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable == null || chipDrawable.k1 == f2) {
            return;
        }
        chipDrawable.k1 = f2;
        chipDrawable.invalidateSelf();
        chipDrawable.K();
    }

    public void setTextStartPaddingResource(int i2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            float dimension = chipDrawable.p1.getResources().getDimension(i2);
            if (chipDrawable.k1 != dimension) {
                chipDrawable.k1 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.K();
            }
        }
    }

    public void setCloseIconVisible(boolean z2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.d0(z2);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.P(z2);
        }
    }

    public void setChipIconVisible(boolean z2) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.U(z2);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            mt.i("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            mt.i("Please set end drawable using R.attr#closeIcon.");
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            mt.i("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            mt.i("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setTextAppearance(TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            chipDrawable.v1.c(textAppearance, chipDrawable.p1);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        ChipDrawable chipDrawable = this.f32486f;
        if (chipDrawable != null) {
            Context context = chipDrawable.p1;
            chipDrawable.v1.c(new TextAppearance(context, i2), context);
        }
        i();
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.chipStyle);
    }

    public Chip(Context context) {
        this(context, null);
    }
}
