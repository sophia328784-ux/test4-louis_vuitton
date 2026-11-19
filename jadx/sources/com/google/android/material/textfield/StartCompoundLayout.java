package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.vuitton.android.R;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
class StartCompoundLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f33197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppCompatTextView f33198c;
    public CharSequence d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CheckableImageButton f33199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f33200f;
    public PorterDuff.Mode g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f33201h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView.ScaleType f33202i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public View.OnLongClickListener f33203j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f33204k;

    public StartCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f33197b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.f33199e = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.f33198c = appCompatTextView;
        if (MaterialResources.e(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f33203j;
        checkableImageButton.setOnClickListener(null);
        IconHelper.d(checkableImageButton, onLongClickListener);
        this.f33203j = null;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
        TypedArray typedArray = tintTypedArray.f1313b;
        if (typedArray.hasValue(70)) {
            this.f33200f = MaterialResources.b(getContext(), tintTypedArray, 70);
        }
        if (typedArray.hasValue(71)) {
            this.g = ViewUtils.f(typedArray.getInt(71, -1), null);
        }
        if (typedArray.hasValue(67)) {
            b(tintTypedArray.b(67));
            if (typedArray.hasValue(66) && checkableImageButton.getContentDescription() != (text = typedArray.getText(66))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(65, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(68, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            md.n("startIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.f33201h) {
            this.f33201h = dimensionPixelSize;
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(69)) {
            ImageView.ScaleType scaleTypeB = IconHelper.b(typedArray.getInt(69, -1));
            this.f33202i = scaleTypeB;
            checkableImageButton.setScaleType(scaleTypeB);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(61, 0));
        if (typedArray.hasValue(62)) {
            appCompatTextView.setTextColor(tintTypedArray.a(62));
        }
        CharSequence text2 = typedArray.getText(60);
        this.d = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        e();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final int a() {
        int marginEnd;
        CheckableImageButton checkableImageButton = this.f33199e;
        if (checkableImageButton.getVisibility() == 0) {
            marginEnd = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            marginEnd = 0;
        }
        return this.f33198c.getPaddingStart() + getPaddingStart() + marginEnd;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.f33199e;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f33200f;
            PorterDuff.Mode mode = this.g;
            TextInputLayout textInputLayout = this.f33197b;
            IconHelper.a(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            IconHelper.c(textInputLayout, checkableImageButton, this.f33200f);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.f33203j;
        checkableImageButton.setOnClickListener(null);
        IconHelper.d(checkableImageButton, onLongClickListener);
        this.f33203j = null;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z) {
        CheckableImageButton checkableImageButton = this.f33199e;
        if ((checkableImageButton.getVisibility() == 0) != z) {
            checkableImageButton.setVisibility(z ? 0 : 8);
            d();
            e();
        }
    }

    public final void d() {
        EditText editText = this.f33197b.f33209f;
        if (editText == null) {
            return;
        }
        this.f33198c.setPaddingRelative(this.f33199e.getVisibility() == 0 ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void e() {
        int i2 = (this.d == null || this.f33204k) ? 8 : 0;
        setVisibility((this.f33199e.getVisibility() == 0 || i2 == 0) ? 0 : 8);
        this.f33198c.setVisibility(i2);
        this.f33197b.s();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        d();
    }
}
