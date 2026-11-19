package com.google.android.material.checkbox;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.TintTypedArray;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.vuitton.android.R;
import defpackage.n00;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialCheckBox extends AppCompatCheckBox {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashSet f32479f;
    public final LinkedHashSet g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ColorStateList f32480h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f32481i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f32482j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32483k;
    public CharSequence l;
    public Drawable m;
    public Drawable n;
    public boolean o;
    public ColorStateList p;
    public ColorStateList q;
    public PorterDuff.Mode r;
    public int s;
    public int[] t;
    public boolean u;
    public CharSequence v;
    public CompoundButton.OnCheckedChangeListener w;
    public final AnimatedVectorDrawableCompat x;
    public final Animatable2Compat.AnimationCallback y;
    public static final int[] z = {R.attr.state_indeterminate};
    public static final int[] A = {R.attr.state_error};
    public static final int[][] B = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
    public static final int C = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", ReferenceApiV3ConstKt.OS_NAME);

    @Retention(RetentionPolicy.SOURCE)
    public @interface CheckedState {
    }

    public interface OnCheckedStateChangedListener {
        void a();
    }

    public interface OnErrorChangedListener {
        void a();
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f32485b;

        /* JADX INFO: renamed from: com.google.android.material.checkbox.MaterialCheckBox$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState(parcel);
                savedState.f32485b = ((Integer) parcel.readValue(SavedState.class.getClassLoader())).intValue();
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" CheckedState=");
            int i2 = this.f32485b;
            if (i2 != 1) {
                str = i2 != 2 ? "unchecked" : "indeterminate";
            } else {
                str = "checked";
            }
            return n00.r(str, "}", sb);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeValue(Integer.valueOf(this.f32485b));
        }
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, i2);
        this.f32479f = new LinkedHashSet();
        this.g = new LinkedHashSet();
        this.x = AnimatedVectorDrawableCompat.a(getContext());
        this.y = new Animatable2Compat.AnimationCallback() { // from class: com.google.android.material.checkbox.MaterialCheckBox.1
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
            public final void a(Drawable drawable) {
                ColorStateList colorStateList = MaterialCheckBox.this.p;
                if (colorStateList != null) {
                    drawable.setTintList(colorStateList);
                }
            }

            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
            public final void b(Drawable drawable) {
                MaterialCheckBox materialCheckBox = MaterialCheckBox.this;
                ColorStateList colorStateList = materialCheckBox.p;
                if (colorStateList != null) {
                    drawable.setTint(colorStateList.getColorForState(materialCheckBox.t, colorStateList.getDefaultColor()));
                }
            }
        };
        Context context2 = getContext();
        this.m = getButtonDrawable();
        this.p = getSuperButtonTintList();
        setSupportButtonTintList(null);
        ThemeEnforcement.a(context2, attributeSet, i2, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        int[] iArr = R$styleable.C;
        ThemeEnforcement.b(context2, attributeSet, iArr, i2, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i2, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        TintTypedArray tintTypedArray = new TintTypedArray(context2, typedArrayObtainStyledAttributes);
        this.n = tintTypedArray.b(2);
        if (this.m != null && MaterialAttributes.b(context2, R.attr.isMaterial3Theme, false)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == C && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.m = AppCompatResources.a(context2, R.drawable.mtrl_checkbox_button);
                this.o = true;
                if (this.n == null) {
                    this.n = AppCompatResources.a(context2, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.q = MaterialResources.b(context2, tintTypedArray, 3);
        this.r = ViewUtils.f(typedArrayObtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f32481i = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.f32482j = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f32483k = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.l = typedArrayObtainStyledAttributes.getText(8);
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            setCheckedState(typedArrayObtainStyledAttributes.getInt(7, 0));
        }
        tintTypedArray.g();
        b();
    }

    private String getButtonStateDescription() {
        int i2 = this.s;
        if (i2 == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        return i2 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f32480h == null) {
            int iB = MaterialColors.b(R.attr.colorControlActivated, this);
            int iB2 = MaterialColors.b(R.attr.colorError, this);
            int iB3 = MaterialColors.b(R.attr.colorSurface, this);
            int iB4 = MaterialColors.b(R.attr.colorOnSurface, this);
            this.f32480h = new ColorStateList(B, new int[]{MaterialColors.g(iB3, iB2, 1.0f), MaterialColors.g(iB3, iB, 1.0f), MaterialColors.g(iB3, iB4, 0.54f), MaterialColors.g(iB3, iB4, 0.38f), MaterialColors.g(iB3, iB4, 0.38f)});
        }
        return this.f32480h;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.p;
        if (colorStateList != null) {
            return colorStateList;
        }
        return super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public final void b() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.m = DrawableUtils.b(this.m, this.p, getButtonTintMode());
        this.n = DrawableUtils.b(this.n, this.q, this.r);
        if (this.o) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.x;
            if (animatedVectorDrawableCompat != null) {
                Animatable2Compat.AnimationCallback animationCallback = this.y;
                animatedVectorDrawableCompat.c(animationCallback);
                animatedVectorDrawableCompat.b(animationCallback);
            }
            Drawable drawable = this.m;
            if ((drawable instanceof AnimatedStateListDrawable) && animatedVectorDrawableCompat != null) {
                ((AnimatedStateListDrawable) drawable).addTransition(R.id.checked, R.id.unchecked, animatedVectorDrawableCompat, false);
                ((AnimatedStateListDrawable) this.m).addTransition(R.id.indeterminate, R.id.unchecked, animatedVectorDrawableCompat, false);
            }
        }
        Drawable drawable2 = this.m;
        if (drawable2 != null && (colorStateList2 = this.p) != null) {
            drawable2.setTintList(colorStateList2);
        }
        Drawable drawable3 = this.n;
        if (drawable3 != null && (colorStateList = this.q) != null) {
            drawable3.setTintList(colorStateList);
        }
        super.setButtonDrawable(DrawableUtils.a(this.m, this.n, -1, -1));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.m;
    }

    public Drawable getButtonIconDrawable() {
        return this.n;
    }

    public ColorStateList getButtonIconTintList() {
        return this.q;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.r;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.p;
    }

    public int getCheckedState() {
        return this.s;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.l;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.s == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f32481i && this.p == null && this.q == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i2) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, z);
        }
        if (this.f32483k) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, A);
        }
        this.t = DrawableUtils.c(iArrOnCreateDrawableState);
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (!this.f32482j || !TextUtils.isEmpty(getText()) || (buttonDrawable = getButtonDrawable()) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * (getLayoutDirection() == 1 ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = buttonDrawable.getBounds();
            getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f32483k) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.l));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f32485b);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f32485b = getCheckedState();
        return savedState;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(int i2) {
        setButtonDrawable(AppCompatResources.a(getContext(), i2));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.n = drawable;
        b();
    }

    public void setButtonIconDrawableResource(int i2) {
        setButtonIconDrawable(AppCompatResources.a(getContext(), i2));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.q == colorStateList) {
            return;
        }
        this.q = colorStateList;
        b();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.r == mode) {
            return;
        }
        this.r = mode;
        b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.p == colorStateList) {
            return;
        }
        this.p = colorStateList;
        b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        b();
    }

    public void setCenterIfNoTextEnabled(boolean z2) {
        this.f32482j = z2;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z2) {
        setCheckedState(z2 ? 1 : 0);
    }

    public void setCheckedState(int i2) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.s != i2) {
            this.s = i2;
            super.setChecked(i2 == 1);
            refreshDrawableState();
            if (Build.VERSION.SDK_INT >= 30 && this.v == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.u) {
                return;
            }
            this.u = true;
            LinkedHashSet linkedHashSet = this.g;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                while (it.hasNext()) {
                    ((OnCheckedStateChangedListener) it.next()).a();
                }
            }
            if (this.s != 2 && (onCheckedChangeListener = this.w) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.u = false;
        }
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.l = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i2) {
        setErrorAccessibilityLabel(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setErrorShown(boolean z2) {
        if (this.f32483k == z2) {
            return;
        }
        this.f32483k = z2;
        refreshDrawableState();
        Iterator it = this.f32479f.iterator();
        while (it.hasNext()) {
            ((OnErrorChangedListener) it.next()).a();
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.w = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.v = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else {
            if (Build.VERSION.SDK_INT < 30 || charSequence != null) {
                return;
            }
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z2) {
        this.f32481i = z2;
        if (z2) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.m = drawable;
        this.o = false;
        b();
    }

    public MaterialCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    public MaterialCheckBox(Context context) {
        this(context, null);
    }
}
