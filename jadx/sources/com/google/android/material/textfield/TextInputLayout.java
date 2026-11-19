package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.BidiFormatter;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.RelativeCornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import defpackage.b21;
import defpackage.f31;
import defpackage.ln0;
import defpackage.md;
import defpackage.o60;
import defpackage.r81;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int[][] E1 = {new int[]{R.attr.state_pressed}, new int[0]};
    public ColorStateList A;
    public ValueAnimator A1;
    public ColorStateList B;
    public boolean B1;
    public ColorStateList C;
    public boolean C1;
    public ColorStateList D;
    public boolean D1;
    public boolean E;
    public CharSequence F;
    public boolean G;
    public MaterialShapeDrawable H;
    public MaterialShapeDrawable I;
    public StateListDrawable J;
    public boolean K;
    public MaterialShapeDrawable L;
    public MaterialShapeDrawable M;
    public ShapeAppearanceModel N;
    public boolean O;
    public final int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int V;
    public int W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FrameLayout f33206b;
    public final Rect b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StartCompoundLayout f33207c;
    public final RectF c1;
    public final EndCompoundLayout d;
    public Typeface d1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f33208e;
    public ColorDrawable e1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public EditText f33209f;
    public int f1;
    public CharSequence g;
    public final LinkedHashSet g1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f33210h;
    public int h0;
    public ColorDrawable h1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f33211i;
    public int i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f33212j;
    public Drawable j1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f33213k;
    public ColorStateList k1;
    public final IndicatorViewController l;
    public ColorStateList l1;
    public boolean m;
    public int m1;
    public int n;
    public int n1;
    public boolean o;
    public int o1;
    public LengthCounter p;
    public ColorStateList p1;
    public AppCompatTextView q;
    public int q1;
    public int r;
    public int r1;
    public int s;
    public int s1;
    public CharSequence t;
    public final Rect t0;
    public int t1;
    public boolean u;
    public int u1;
    public AppCompatTextView v;
    public int v1;
    public ColorStateList w;
    public boolean w1;
    public int x;
    public final CollapsingTextHelper x1;
    public Fade y;
    public boolean y1;
    public Fade z;
    public boolean z1;

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$2, reason: invalid class name */
    public class AnonymousClass2 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }

    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TextInputLayout f33217e;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.f33217e = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.f33217e;
            EditText editText = textInputLayout.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean zIsEmpty = TextUtils.isEmpty(text);
            boolean zIsEmpty2 = TextUtils.isEmpty(hint);
            boolean z = textInputLayout.w1;
            boolean zIsEmpty3 = TextUtils.isEmpty(error);
            boolean z2 = (zIsEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) ? false : true;
            String string = !zIsEmpty2 ? hint.toString() : "";
            StartCompoundLayout startCompoundLayout = textInputLayout.f33207c;
            AppCompatTextView appCompatTextView = startCompoundLayout.f33198c;
            if (appCompatTextView.getVisibility() == 0) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView);
                accessibilityNodeInfo.setTraversalAfter(appCompatTextView);
            } else {
                accessibilityNodeInfo.setTraversalAfter(startCompoundLayout.f33199e);
            }
            if (!zIsEmpty) {
                accessibilityNodeInfoCompat.o(text);
            } else if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfoCompat.o(string);
                if (!z && placeholderText != null) {
                    accessibilityNodeInfoCompat.o(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.o(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                accessibilityNodeInfo.setHintText(string);
                accessibilityNodeInfo.setShowingHintText(zIsEmpty);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
            if (z2) {
                if (zIsEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfo.setError(error);
            }
            AppCompatTextView appCompatTextView2 = textInputLayout.l.y;
            if (appCompatTextView2 != null) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView2);
            }
            textInputLayout.d.a().m(accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            super.e(view, accessibilityEvent);
            this.f33217e.d.a().n(accessibilityEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EndIconMode {
    }

    public interface LengthCounter {
        int d(Editable editable);
    }

    public interface OnEditTextAttachedListener {
        void a(TextInputLayout textInputLayout);
    }

    public interface OnEndIconChangedListener {
        void a();
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, com.vuitton.android.R.style.Widget_Design_TextInputLayout), attributeSet, i2);
        this.f33210h = -1;
        this.f33211i = -1;
        this.f33212j = -1;
        this.f33213k = -1;
        this.l = new IndicatorViewController(this);
        this.p = new b21(5);
        this.t0 = new Rect();
        this.b1 = new Rect();
        this.c1 = new RectF();
        this.g1 = new LinkedHashSet();
        CollapsingTextHelper collapsingTextHelper = new CollapsingTextHelper(this);
        this.x1 = collapsingTextHelper;
        this.D1 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f33206b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = AnimationUtils.f32227a;
        collapsingTextHelper.R = linearInterpolator;
        collapsingTextHelper.j(false);
        collapsingTextHelper.Q = linearInterpolator;
        collapsingTextHelper.j(false);
        if (collapsingTextHelper.g != 8388659) {
            collapsingTextHelper.g = 8388659;
            collapsingTextHelper.j(false);
        }
        ThemeEnforcement.a(context2, attributeSet, i2, com.vuitton.android.R.style.Widget_Design_TextInputLayout);
        int[] iArr = R$styleable.Y;
        ThemeEnforcement.b(context2, attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 50);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i2, com.vuitton.android.R.style.Widget_Design_TextInputLayout);
        TintTypedArray tintTypedArray = new TintTypedArray(context2, typedArrayObtainStyledAttributes);
        StartCompoundLayout startCompoundLayout = new StartCompoundLayout(this, tintTypedArray);
        this.f33207c = startCompoundLayout;
        this.E = typedArrayObtainStyledAttributes.getBoolean(48, true);
        setHint(typedArrayObtainStyledAttributes.getText(4));
        this.z1 = typedArrayObtainStyledAttributes.getBoolean(47, true);
        this.y1 = typedArrayObtainStyledAttributes.getBoolean(42, true);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setMinEms(typedArrayObtainStyledAttributes.getInt(6, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(3)) {
            setMinWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            setMaxEms(typedArrayObtainStyledAttributes.getInt(5, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(2)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.N = ShapeAppearanceModel.c(context2, attributeSet, i2, com.vuitton.android.R.style.Widget_Design_TextInputLayout).a();
        this.P = context2.getResources().getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.R = typedArrayObtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.f33208e = getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.m3_multiline_hint_filled_text_extra_space);
        this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.V = typedArrayObtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.S = this.T;
        float dimension = typedArrayObtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(11, -1.0f);
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        shapeAppearanceModel.getClass();
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
        if (dimension >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            builder.e(dimension);
        }
        if (dimension2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            builder.f(dimension2);
        }
        if (dimension3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            builder.d(dimension3);
        }
        if (dimension4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            builder.c(dimension4);
        }
        this.N = builder.a();
        ColorStateList colorStateListB = MaterialResources.b(context2, tintTypedArray, 7);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.q1 = defaultColor;
            this.h0 = defaultColor;
            if (colorStateListB.isStateful()) {
                this.r1 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.s1 = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.t1 = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.s1 = this.q1;
                ColorStateList colorStateList = ContextCompat.getColorStateList(context2, com.vuitton.android.R.color.mtrl_filled_background_color);
                this.r1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
                this.t1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.h0 = 0;
            this.q1 = 0;
            this.r1 = 0;
            this.s1 = 0;
            this.t1 = 0;
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateListA = tintTypedArray.a(1);
            this.l1 = colorStateListA;
            this.k1 = colorStateListA;
        }
        ColorStateList colorStateListB2 = MaterialResources.b(context2, tintTypedArray, 14);
        this.o1 = typedArrayObtainStyledAttributes.getColor(14, 0);
        this.m1 = ContextCompat.getColor(context2, com.vuitton.android.R.color.mtrl_textinput_default_box_stroke_color);
        this.u1 = ContextCompat.getColor(context2, com.vuitton.android.R.color.mtrl_textinput_disabled_color);
        this.n1 = ContextCompat.getColor(context2, com.vuitton.android.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(MaterialResources.b(context2, tintTypedArray, 15));
        }
        if (typedArrayObtainStyledAttributes.getResourceId(50, -1) != -1) {
            setHintTextAppearance(typedArrayObtainStyledAttributes.getResourceId(50, 0));
        }
        this.C = tintTypedArray.a(24);
        this.D = tintTypedArray.a(25);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = typedArrayObtainStyledAttributes.getText(35);
        int i3 = typedArrayObtainStyledAttributes.getInt(34, 1);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(45, 0);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(43);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(58, 0);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(57);
        boolean z3 = typedArrayObtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(typedArrayObtainStyledAttributes.getInt(19, -1));
        this.s = typedArrayObtainStyledAttributes.getResourceId(22, 0);
        this.r = typedArrayObtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i3);
        setCounterOverflowTextAppearance(this.r);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.s);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArrayObtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(tintTypedArray.a(41));
        }
        if (typedArrayObtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(tintTypedArray.a(46));
        }
        if (typedArrayObtainStyledAttributes.hasValue(51)) {
            setHintTextColor(tintTypedArray.a(51));
        }
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(tintTypedArray.a(23));
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(tintTypedArray.a(21));
        }
        if (typedArrayObtainStyledAttributes.hasValue(59)) {
            setPlaceholderTextColor(tintTypedArray.a(59));
        }
        EndCompoundLayout endCompoundLayout = new EndCompoundLayout(this, tintTypedArray);
        this.d = endCompoundLayout;
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(0, true);
        setHintMaxLines(typedArrayObtainStyledAttributes.getInt(49, 1));
        tintTypedArray.g();
        setImportantForAccessibility(2);
        setImportantForAutofill(1);
        frameLayout.addView(startCompoundLayout);
        frameLayout.addView(endCompoundLayout);
        addView(frameLayout);
        setEnabled(z4);
        setHelperTextEnabled(z2);
        setErrorEnabled(z);
        setCounterEnabled(z3);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f33209f;
        if (!(editText instanceof AutoCompleteTextView) || editText.getInputType() != 0) {
            return this.H;
        }
        int iB = MaterialColors.b(com.vuitton.android.R.attr.colorControlHighlight, this.f33209f);
        int i2 = this.Q;
        int[][] iArr = E1;
        if (i2 != 2) {
            if (i2 != 1) {
                return null;
            }
            MaterialShapeDrawable materialShapeDrawable = this.H;
            int i3 = this.h0;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.g(iB, i3, 0.1f), i3}), materialShapeDrawable, materialShapeDrawable);
        }
        Context context = getContext();
        MaterialShapeDrawable materialShapeDrawable2 = this.H;
        int iD = MaterialColors.d(context, com.vuitton.android.R.attr.colorSurface, "TextInputLayout");
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable2.f32936c.f32945a);
        int iG = MaterialColors.g(iB, iD, 0.1f);
        materialShapeDrawable3.r(new ColorStateList(iArr, new int[]{iG, 0}));
        materialShapeDrawable3.setTint(iD);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iG, iD});
        MaterialShapeDrawable materialShapeDrawable4 = new MaterialShapeDrawable(materialShapeDrawable2.f32936c.f32945a);
        materialShapeDrawable4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable3, materialShapeDrawable4), materialShapeDrawable2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.J == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.J = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.J.addState(new int[0], h(false));
        }
        return this.J;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.I == null) {
            this.I = h(true);
        }
        return this.I;
    }

    public static void m(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.f33209f != null) {
            md.n("We already have an EditText, can only have one");
            return;
        }
        getEndIconMode();
        this.f33209f = editText;
        int i2 = this.f33210h;
        if (i2 != -1) {
            setMinEms(i2);
        } else {
            setMinWidth(this.f33212j);
        }
        int i3 = this.f33211i;
        if (i3 != -1) {
            setMaxEms(i3);
        } else {
            setMaxWidth(this.f33213k);
        }
        this.K = false;
        k();
        setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
        Typeface typeface = this.f33209f.getTypeface();
        CollapsingTextHelper collapsingTextHelper = this.x1;
        collapsingTextHelper.o(typeface);
        float textSize = this.f33209f.getTextSize();
        if (collapsingTextHelper.f32701h != textSize) {
            collapsingTextHelper.f32701h = textSize;
            collapsingTextHelper.j(false);
        }
        float letterSpacing = this.f33209f.getLetterSpacing();
        if (collapsingTextHelper.X != letterSpacing) {
            collapsingTextHelper.X = letterSpacing;
            collapsingTextHelper.j(false);
        }
        int gravity = this.f33209f.getGravity();
        int i4 = (gravity & (-113)) | 48;
        if (collapsingTextHelper.g != i4) {
            collapsingTextHelper.g = i4;
            collapsingTextHelper.j(false);
        }
        if (collapsingTextHelper.f32700f != gravity) {
            collapsingTextHelper.f32700f = gravity;
            collapsingTextHelper.j(false);
        }
        this.v1 = editText.getMinimumHeight();
        this.f33209f.addTextChangedListener(new TextWatcher(editText, this) { // from class: com.google.android.material.textfield.TextInputLayout.1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f33214b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ EditText f33215c;
            public final /* synthetic */ TextInputLayout d;

            {
                this.d = this;
                this.f33215c = editText;
                this.f33214b = editText.getLineCount();
            }

            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                TextInputLayout textInputLayout = this.d;
                textInputLayout.w(!textInputLayout.C1, false);
                if (textInputLayout.m) {
                    textInputLayout.p(editable);
                }
                if (textInputLayout.u) {
                    textInputLayout.x(editable);
                }
                EditText editText2 = this.f33215c;
                int lineCount = editText2.getLineCount();
                int i5 = this.f33214b;
                if (lineCount != i5) {
                    if (lineCount < i5) {
                        int minimumHeight = editText2.getMinimumHeight();
                        int i6 = textInputLayout.v1;
                        if (minimumHeight != i6) {
                            editText2.setMinimumHeight(i6);
                        }
                    }
                    this.f33214b = lineCount;
                }
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }
        });
        if (this.k1 == null) {
            this.k1 = this.f33209f.getHintTextColors();
        }
        if (this.E) {
            if (TextUtils.isEmpty(this.F)) {
                CharSequence hint = this.f33209f.getHint();
                this.g = hint;
                setHint(hint);
                this.f33209f.setHint((CharSequence) null);
            }
            this.G = true;
        }
        r();
        if (this.q != null) {
            p(this.f33209f.getText());
        }
        t();
        this.l.b();
        this.f33207c.bringToFront();
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.bringToFront();
        Iterator it = this.g1.iterator();
        while (it.hasNext()) {
            ((OnEditTextAttachedListener) it.next()).a(this);
        }
        endCompoundLayout.l();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        w(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.F)) {
            return;
        }
        this.F = charSequence;
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (charSequence == null || !TextUtils.equals(collapsingTextHelper.B, charSequence)) {
            collapsingTextHelper.B = charSequence;
            collapsingTextHelper.C = null;
            collapsingTextHelper.j(false);
        }
        if (this.w1) {
            return;
        }
        l();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.u == z) {
            return;
        }
        AppCompatTextView appCompatTextView = this.v;
        if (!z) {
            if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
            }
            this.v = null;
        } else if (appCompatTextView != null) {
            this.f33206b.addView(appCompatTextView);
            this.v.setVisibility(0);
        }
        this.u = z;
    }

    public final void a() {
        if (this.f33209f == null || this.Q != 1) {
            return;
        }
        if (getHintMaxLines() != 1) {
            EditText editText = this.f33209f;
            editText.setPaddingRelative(editText.getPaddingStart(), (int) (this.x1.f() + this.f33208e), this.f33209f.getPaddingEnd(), getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        } else if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
            EditText editText2 = this.f33209f;
            editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_filled_edittext_font_2_0_padding_top), this.f33209f.getPaddingEnd(), getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
        } else if (MaterialResources.e(getContext())) {
            EditText editText3 = this.f33209f;
            editText3.setPaddingRelative(editText3.getPaddingStart(), getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_filled_edittext_font_1_3_padding_top), this.f33209f.getPaddingEnd(), getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i2, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f33206b;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        v();
        setEditText((EditText) view);
    }

    public final void b(float f2) {
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (collapsingTextHelper.f32697b == f2) {
            return;
        }
        if (this.A1 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.A1 = valueAnimator;
            valueAnimator.setInterpolator(MotionUtils.d(getContext(), com.vuitton.android.R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.f32228b));
            this.A1.setDuration(MotionUtils.c(getContext(), com.vuitton.android.R.attr.motionDurationMedium4, 167));
            this.A1.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextInputLayout.this.x1.n(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.A1.setFloatValues(collapsingTextHelper.f32697b, f2);
        this.A1.start();
    }

    public final void c() {
        int i2;
        int i3;
        MaterialShapeDrawable materialShapeDrawable = this.H;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.f32936c.f32945a;
        ShapeAppearanceModel shapeAppearanceModel2 = this.N;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel2);
        }
        if (this.Q == 2 && (i2 = this.S) > -1 && (i3 = this.W) != 0) {
            MaterialShapeDrawable materialShapeDrawable2 = this.H;
            materialShapeDrawable2.y(i2);
            materialShapeDrawable2.x(ColorStateList.valueOf(i3));
        }
        int iC = this.h0;
        if (this.Q == 1) {
            iC = ColorUtils.c(this.h0, MaterialColors.c(getContext(), com.vuitton.android.R.attr.colorSurface, 0));
        }
        this.h0 = iC;
        this.H.r(ColorStateList.valueOf(iC));
        MaterialShapeDrawable materialShapeDrawable3 = this.L;
        if (materialShapeDrawable3 != null && this.M != null) {
            if (this.S > -1 && this.W != 0) {
                materialShapeDrawable3.r(this.f33209f.isFocused() ? ColorStateList.valueOf(this.m1) : ColorStateList.valueOf(this.W));
                this.M.r(ColorStateList.valueOf(this.W));
            }
            invalidate();
        }
        u();
    }

    public final Rect d(Rect rect) {
        if (this.f33209f == null) {
            r81.b();
            return null;
        }
        boolean z = getLayoutDirection() == 1;
        int i2 = rect.bottom;
        Rect rect2 = this.b1;
        rect2.bottom = i2;
        int i3 = this.Q;
        if (i3 == 1) {
            rect2.left = i(rect.left, z);
            rect2.top = rect.top + this.R;
            rect2.right = j(rect.right, z);
            return rect2;
        }
        int i4 = rect.left;
        if (i3 != 2) {
            rect2.left = i(i4, z);
            rect2.top = getPaddingTop();
            rect2.right = j(rect.right, z);
            return rect2;
        }
        rect2.left = this.f33209f.getPaddingLeft() + i4;
        rect2.top = rect.top - e();
        rect2.right = rect.right - this.f33209f.getPaddingRight();
        return rect2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        EditText editText = this.f33209f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        if (this.g != null) {
            boolean z = this.G;
            this.G = false;
            CharSequence hint = editText.getHint();
            this.f33209f.setHint(this.g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i2);
                return;
            } finally {
                this.f33209f.setHint(hint);
                this.G = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i2);
        onProvideAutofillVirtualStructure(viewStructure, i2);
        FrameLayout frameLayout = this.f33206b;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i3 = 0; i3 < frameLayout.getChildCount(); i3++) {
            View childAt = frameLayout.getChildAt(i3);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i3);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i2);
            if (childAt == this.f33209f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.C1 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.C1 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        super.draw(canvas);
        boolean z = this.E;
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (z) {
            TextPaint textPaint = collapsingTextHelper.O;
            RectF rectF = collapsingTextHelper.f32699e;
            int iSave = canvas.save();
            if (collapsingTextHelper.C != null && rectF.width() > Call.Parameters.DEFAULT_CAMERA_ZOOM && rectF.height() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                textPaint.setTextSize(collapsingTextHelper.G);
                float f2 = collapsingTextHelper.q;
                float f3 = collapsingTextHelper.r;
                float f4 = collapsingTextHelper.F;
                if (f4 != 1.0f) {
                    canvas.scale(f4, f4, f2, f3);
                }
                if ((collapsingTextHelper.e0 > 1 || collapsingTextHelper.f0 > 1) && !collapsingTextHelper.D && collapsingTextHelper.p()) {
                    float lineStart = collapsingTextHelper.q - collapsingTextHelper.Z.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas.translate(lineStart, f3);
                    float f5 = alpha;
                    textPaint.setAlpha((int) (collapsingTextHelper.c0 * f5));
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, MaterialColors.a(collapsingTextHelper.K, textPaint.getAlpha()));
                    }
                    collapsingTextHelper.Z.draw(canvas);
                    textPaint.setAlpha((int) (collapsingTextHelper.b0 * f5));
                    if (i2 >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, MaterialColors.a(collapsingTextHelper.K, textPaint.getAlpha()));
                    }
                    int lineBaseline = collapsingTextHelper.Z.getLineBaseline(0);
                    CharSequence charSequence = collapsingTextHelper.d0;
                    float f6 = lineBaseline;
                    canvas.drawText(charSequence, 0, charSequence.length(), Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, textPaint);
                    if (i2 >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, collapsingTextHelper.K);
                    }
                    String strTrim = collapsingTextHelper.d0.toString().trim();
                    if (strTrim.endsWith("…")) {
                        strTrim = o60.g(1, 0, strTrim);
                    }
                    String str = strTrim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(collapsingTextHelper.Z.getLineEnd(0), str.length()), Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, (Paint) textPaint);
                    canvas = canvas;
                } else {
                    canvas.translate(f2, f3);
                    collapsingTextHelper.Z.draw(canvas);
                }
                canvas.restoreToCount(iSave);
            }
        }
        if (this.M == null || (materialShapeDrawable = this.L) == null) {
            return;
        }
        materialShapeDrawable.draw(canvas);
        if (this.f33209f.isFocused()) {
            Rect bounds = this.M.getBounds();
            Rect bounds2 = this.L.getBounds();
            float f7 = collapsingTextHelper.f32697b;
            int iCenterX = bounds2.centerX();
            bounds.left = AnimationUtils.c(iCenterX, bounds2.left, f7);
            bounds.right = AnimationUtils.c(iCenterX, bounds2.right, f7);
            this.M.draw(canvas);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        boolean z;
        ColorStateList colorStateList;
        if (this.B1) {
            return;
        }
        this.B1 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (collapsingTextHelper != null) {
            collapsingTextHelper.M = drawableState;
            ColorStateList colorStateList2 = collapsingTextHelper.f32704k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = collapsingTextHelper.f32703j) == null || !colorStateList.isStateful())) {
                z = false;
            } else {
                collapsingTextHelper.j(false);
                z = true;
            }
        } else {
            z = false;
        }
        if (this.f33209f != null) {
            w(isLaidOut() && isEnabled(), false);
        }
        t();
        z();
        if (z) {
            invalidate();
        }
        this.B1 = false;
    }

    public final int e() {
        if (this.E) {
            int i2 = this.Q;
            CollapsingTextHelper collapsingTextHelper = this.x1;
            if (i2 == 0) {
                return (int) collapsingTextHelper.f();
            }
            if (i2 == 2) {
                if (getHintMaxLines() == 1) {
                    return (int) (collapsingTextHelper.f() / 2.0f);
                }
                float f2 = collapsingTextHelper.f();
                TextPaint textPaint = collapsingTextHelper.P;
                textPaint.setTextSize(collapsingTextHelper.f32702i);
                textPaint.setTypeface(collapsingTextHelper.s);
                textPaint.setLetterSpacing(collapsingTextHelper.W);
                return Math.max(0, (int) (f2 - ((-textPaint.ascent()) / 2.0f)));
            }
        }
        return 0;
    }

    public final Fade f() {
        Fade fade = new Fade();
        fade.d = MotionUtils.c(getContext(), com.vuitton.android.R.attr.motionDurationShort2, 87);
        fade.f19996e = MotionUtils.d(getContext(), com.vuitton.android.R.attr.motionEasingLinearInterpolator, AnimationUtils.f32227a);
        return fade;
    }

    public final boolean g() {
        return this.E && !TextUtils.isEmpty(this.F) && (this.H instanceof CutoutDrawable);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f33209f;
        if (editText == null) {
            return super.getBaseline();
        }
        return e() + getPaddingTop() + editText.getBaseline();
    }

    public MaterialShapeDrawable getBoxBackground() {
        int i2 = this.Q;
        if (i2 == 1 || i2 == 2) {
            return this.H;
        }
        r81.b();
        return null;
    }

    public int getBoxBackgroundColor() {
        return this.h0;
    }

    public int getBoxBackgroundMode() {
        return this.Q;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.R;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        RectF rectF = this.c1;
        return layoutDirection == 1 ? shapeAppearanceModel.f32964h.a(rectF) : shapeAppearanceModel.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        RectF rectF = this.c1;
        return layoutDirection == 1 ? shapeAppearanceModel.g.a(rectF) : shapeAppearanceModel.f32964h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        RectF rectF = this.c1;
        return layoutDirection == 1 ? shapeAppearanceModel.f32962e.a(rectF) : shapeAppearanceModel.f32963f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        RectF rectF = this.c1;
        return layoutDirection == 1 ? shapeAppearanceModel.f32963f.a(rectF) : shapeAppearanceModel.f32962e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.o1;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.p1;
    }

    public int getBoxStrokeWidth() {
        return this.T;
    }

    public int getBoxStrokeWidthFocused() {
        return this.V;
    }

    public int getCounterMaxLength() {
        return this.n;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.m && this.o && (appCompatTextView = this.q) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.B;
    }

    public ColorStateList getCounterTextColor() {
        return this.A;
    }

    public ColorStateList getCursorColor() {
        return this.C;
    }

    public ColorStateList getCursorErrorColor() {
        return this.D;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.k1;
    }

    public EditText getEditText() {
        return this.f33209f;
    }

    public CharSequence getEndIconContentDescription() {
        return this.d.f33160h.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.d.f33160h.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.d.n;
    }

    public int getEndIconMode() {
        return this.d.f33162j;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.d.o;
    }

    public CheckableImageButton getEndIconView() {
        return this.d.f33160h;
    }

    public CharSequence getError() {
        IndicatorViewController indicatorViewController = this.l;
        if (indicatorViewController.q) {
            return indicatorViewController.p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.l.t;
    }

    public CharSequence getErrorContentDescription() {
        return this.l.s;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.l.r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.d.d.getDrawable();
    }

    public CharSequence getHelperText() {
        IndicatorViewController indicatorViewController = this.l;
        if (indicatorViewController.x) {
            return indicatorViewController.w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.l.y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.E) {
            return this.F;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.x1.f();
    }

    public final int getHintCurrentCollapsedTextColor() {
        CollapsingTextHelper collapsingTextHelper = this.x1;
        return collapsingTextHelper.g(collapsingTextHelper.f32704k);
    }

    public int getHintMaxLines() {
        return this.x1.e0;
    }

    public ColorStateList getHintTextColor() {
        return this.l1;
    }

    public LengthCounter getLengthCounter() {
        return this.p;
    }

    public int getMaxEms() {
        return this.f33211i;
    }

    public int getMaxWidth() {
        return this.f33213k;
    }

    public int getMinEms() {
        return this.f33210h;
    }

    public int getMinWidth() {
        return this.f33212j;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.d.f33160h.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.d.f33160h.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.u) {
            return this.t;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.x;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.w;
    }

    public CharSequence getPrefixText() {
        return this.f33207c.d;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f33207c.f33198c.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f33207c.f33198c;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.N;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f33207c.f33199e.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f33207c.f33199e.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f33207c.f33201h;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f33207c.f33202i;
    }

    public CharSequence getSuffixText() {
        return this.d.q;
    }

    public ColorStateList getSuffixTextColor() {
        return this.d.r.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.d.r;
    }

    public Typeface getTypeface() {
        return this.d1;
    }

    public final MaterialShapeDrawable h(boolean z) {
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_shape_corner_size_small_component);
        float f2 = z ? dimensionPixelOffset : Call.Parameters.DEFAULT_CAMERA_ZOOM;
        EditText editText = this.f33209f;
        float popupElevation = editText instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.vuitton.android.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        RelativeCornerSize relativeCornerSize = ShapeAppearanceModel.m;
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.e(f2);
        builder.f(f2);
        builder.c(dimensionPixelOffset);
        builder.d(dimensionPixelOffset);
        ShapeAppearanceModel shapeAppearanceModelA = builder.a();
        EditText editText2 = this.f33209f;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof MaterialAutoCompleteTextView ? ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = MaterialShapeDrawable.G;
            dropDownBackgroundTintList = ColorStateList.valueOf(MaterialColors.d(context, com.vuitton.android.R.attr.colorSurface, "MaterialShapeDrawable"));
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.n(context);
        materialShapeDrawable.r(dropDownBackgroundTintList);
        materialShapeDrawable.q(popupElevation);
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModelA);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f32936c;
        if (materialShapeDrawableState.f32950h == null) {
            materialShapeDrawableState.f32950h = new Rect();
        }
        materialShapeDrawable.f32936c.f32950h.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        materialShapeDrawable.invalidateSelf();
        return materialShapeDrawable;
    }

    public final int i(int i2, boolean z) {
        int iB;
        if (!z && getPrefixText() != null) {
            iB = this.f33207c.a();
        } else {
            if (!z || getSuffixText() == null) {
                return this.f33209f.getCompoundPaddingLeft() + i2;
            }
            iB = this.d.b();
        }
        return i2 + iB;
    }

    public final int j(int i2, boolean z) {
        int compoundPaddingRight;
        if (z || getSuffixText() == null) {
            compoundPaddingRight = (!z || getPrefixText() == null) ? this.f33209f.getCompoundPaddingRight() : this.f33207c.a();
        } else {
            compoundPaddingRight = this.d.b();
        }
        return i2 - compoundPaddingRight;
    }

    public final void k() {
        int i2 = this.Q;
        if (i2 == 0) {
            this.H = null;
            this.L = null;
            this.M = null;
        } else if (i2 == 1) {
            this.H = new MaterialShapeDrawable(this.N);
            this.L = new MaterialShapeDrawable();
            this.M = new MaterialShapeDrawable();
        } else {
            if (i2 != 2) {
                md.n(defpackage.a.i(this.Q, " is illegal; only @BoxBackgroundMode constants are supported.", new StringBuilder()));
                return;
            }
            if (!this.E || (this.H instanceof CutoutDrawable)) {
                this.H = new MaterialShapeDrawable(this.N);
            } else {
                ShapeAppearanceModel shapeAppearanceModel = this.N;
                int i3 = CutoutDrawable.J;
                if (shapeAppearanceModel == null) {
                    shapeAppearanceModel = new ShapeAppearanceModel();
                }
                CutoutDrawable.CutoutDrawableState cutoutDrawableState = new CutoutDrawable.CutoutDrawableState(shapeAppearanceModel, new RectF());
                CutoutDrawable.ImplApi18 implApi18 = new CutoutDrawable.ImplApi18(cutoutDrawableState);
                implApi18.I = cutoutDrawableState;
                this.H = implApi18;
            }
            this.L = null;
            this.M = null;
        }
        u();
        z();
        if (this.Q == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.R = getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.e(getContext())) {
                this.R = getResources().getDimensionPixelSize(com.vuitton.android.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        a();
        if (this.Q != 0) {
            v();
        }
        EditText editText = this.f33209f;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i4 = this.Q;
                if (i4 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i4 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x008d  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cb  */
    public final void l() {
        float f2;
        float f3;
        float f4;
        RectF rectF;
        float f5;
        float lineWidth;
        int i2;
        float f6;
        int i3;
        if (g()) {
            int width = this.f33209f.getWidth();
            int gravity = this.f33209f.getGravity();
            CollapsingTextHelper collapsingTextHelper = this.x1;
            boolean zC = collapsingTextHelper.c(collapsingTextHelper.B);
            collapsingTextHelper.D = zC;
            Rect rect = collapsingTextHelper.d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zC) {
                        i3 = rect.left;
                        f4 = i3;
                    } else {
                        f2 = rect.right;
                        f3 = collapsingTextHelper.a0;
                    }
                } else if (zC) {
                    f2 = rect.right;
                    f3 = collapsingTextHelper.a0;
                } else {
                    i3 = rect.left;
                    f4 = i3;
                }
                float fMax = Math.max(f4, rect.left);
                rectF = this.c1;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f5 = (width / 2.0f) + (collapsingTextHelper.a0 / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (collapsingTextHelper.D) {
                        f6 = collapsingTextHelper.a0;
                        f5 = f6 + fMax;
                    } else {
                        i2 = rect.right;
                        f5 = i2;
                    }
                } else if (collapsingTextHelper.D) {
                    i2 = rect.right;
                    f5 = i2;
                } else {
                    f6 = collapsingTextHelper.a0;
                    f5 = f6 + fMax;
                }
                rectF.right = Math.min(f5, rect.right);
                rectF.bottom = collapsingTextHelper.f() + rect.top;
                if (collapsingTextHelper.Z != null && !collapsingTextHelper.p()) {
                    StaticLayout staticLayout = collapsingTextHelper.Z;
                    lineWidth = (collapsingTextHelper.f32702i / collapsingTextHelper.f32701h) * staticLayout.getLineWidth(staticLayout.getLineCount() - 1);
                    if (collapsingTextHelper.D) {
                        rectF.left = rectF.right - lineWidth;
                    } else {
                        rectF.right = rectF.left + lineWidth;
                    }
                }
                if (rectF.width() > Call.Parameters.DEFAULT_CAMERA_ZOOM || rectF.height() <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                }
                float f7 = rectF.left;
                float f8 = this.P;
                rectF.left = f7 - f8;
                rectF.right += f8;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.S);
                rectF.top = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                CutoutDrawable cutoutDrawable = (CutoutDrawable) this.H;
                cutoutDrawable.getClass();
                cutoutDrawable.D(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f2 = width / 2.0f;
            f3 = collapsingTextHelper.a0 / 2.0f;
            f4 = f2 - f3;
            float fMax2 = Math.max(f4, rect.left);
            rectF = this.c1;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f5 = (width / 2.0f) + (collapsingTextHelper.a0 / 2.0f);
            } else {
                f5 = (width / 2.0f) + (collapsingTextHelper.a0 / 2.0f);
            }
            rectF.right = Math.min(f5, rect.right);
            rectF.bottom = collapsingTextHelper.f() + rect.top;
            if (collapsingTextHelper.Z != null) {
                StaticLayout staticLayout2 = collapsingTextHelper.Z;
                lineWidth = (collapsingTextHelper.f32702i / collapsingTextHelper.f32701h) * staticLayout2.getLineWidth(staticLayout2.getLineCount() - 1);
                if (collapsingTextHelper.D) {
                    rectF.left = rectF.right - lineWidth;
                } else {
                    rectF.right = rectF.left + lineWidth;
                }
            }
            if (rectF.width() > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            }
        }
    }

    public final void n(AppCompatTextView appCompatTextView, int i2) {
        try {
            appCompatTextView.setTextAppearance(i2);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        appCompatTextView.setTextAppearance(com.vuitton.android.R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(ContextCompat.getColor(getContext(), com.vuitton.android.R.color.design_error));
    }

    public final boolean o() {
        IndicatorViewController indicatorViewController = this.l;
        return (indicatorViewController.o != 1 || indicatorViewController.r == null || TextUtils.isEmpty(indicatorViewController.p)) ? false : true;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.x1.i(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        boolean z;
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        int i2 = 0;
        this.D1 = false;
        if (this.f33209f != null && this.f33209f.getMeasuredHeight() < (iMax = Math.max(endCompoundLayout.getMeasuredHeight(), this.f33207c.getMeasuredHeight()))) {
            this.f33209f.setMinimumHeight(iMax);
            z = true;
        } else {
            z = false;
        }
        boolean zS = s();
        if (z || zS) {
            this.f33209f.post(new f31(this, i2));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        float fDescent;
        int i6;
        int compoundPaddingTop;
        super.onLayout(z, i2, i3, i4, i5);
        EditText editText = this.f33209f;
        if (editText != null) {
            Rect rect = this.t0;
            DescendantOffsetUtils.a(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.L;
            if (materialShapeDrawable != null) {
                int i7 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i7 - this.T, rect.right, i7);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.M;
            if (materialShapeDrawable2 != null) {
                int i8 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i8 - this.V, rect.right, i8);
            }
            if (this.E) {
                float textSize = this.f33209f.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.x1;
                float f2 = collapsingTextHelper.f32701h;
                TextPaint textPaint = collapsingTextHelper.P;
                if (f2 != textSize) {
                    collapsingTextHelper.f32701h = textSize;
                    collapsingTextHelper.j(false);
                }
                int gravity = this.f33209f.getGravity();
                int i9 = (gravity & (-113)) | 48;
                if (collapsingTextHelper.g != i9) {
                    collapsingTextHelper.g = i9;
                    collapsingTextHelper.j(false);
                }
                if (collapsingTextHelper.f32700f != gravity) {
                    collapsingTextHelper.f32700f = gravity;
                    collapsingTextHelper.j(false);
                }
                Rect rectD = d(rect);
                int i10 = rectD.left;
                int i11 = rectD.top;
                int i12 = rectD.right;
                int i13 = rectD.bottom;
                Rect rect2 = collapsingTextHelper.d;
                if (rect2.left != i10 || rect2.top != i11 || rect2.right != i12 || rect2.bottom != i13) {
                    rect2.set(i10, i11, i12, i13);
                    collapsingTextHelper.N = true;
                }
                if (this.f33209f == null) {
                    r81.b();
                    return;
                }
                if (getHintMaxLines() == 1) {
                    textPaint.setTextSize(collapsingTextHelper.f32701h);
                    textPaint.setTypeface(collapsingTextHelper.v);
                    textPaint.setLetterSpacing(collapsingTextHelper.X);
                    fDescent = -textPaint.ascent();
                } else {
                    textPaint.setTextSize(collapsingTextHelper.f32701h);
                    textPaint.setTypeface(collapsingTextHelper.v);
                    textPaint.setLetterSpacing(collapsingTextHelper.X);
                    fDescent = collapsingTextHelper.l * (textPaint.descent() + (-textPaint.ascent()));
                }
                int compoundPaddingLeft = this.f33209f.getCompoundPaddingLeft() + rect.left;
                Rect rect3 = this.b1;
                rect3.left = compoundPaddingLeft;
                if (this.Q != 1 || this.f33209f.getMinLines() > 1) {
                    if (this.Q != 0 || getHintMaxLines() == 1) {
                        i6 = 0;
                    } else {
                        textPaint.setTextSize(collapsingTextHelper.f32701h);
                        textPaint.setTypeface(collapsingTextHelper.v);
                        textPaint.setLetterSpacing(collapsingTextHelper.X);
                        i6 = (int) ((-textPaint.ascent()) / 2.0f);
                    }
                    compoundPaddingTop = (this.f33209f.getCompoundPaddingTop() + rect.top) - i6;
                } else {
                    compoundPaddingTop = (int) (rect.centerY() - (fDescent / 2.0f));
                }
                rect3.top = compoundPaddingTop;
                rect3.right = rect.right - this.f33209f.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.Q != 1 || this.f33209f.getMinLines() > 1) ? rect.bottom - this.f33209f.getCompoundPaddingBottom() : (int) (rect3.top + fDescent);
                rect3.bottom = compoundPaddingBottom;
                int i14 = rect3.left;
                int i15 = rect3.top;
                int i16 = rect3.right;
                Rect rect4 = collapsingTextHelper.f32698c;
                if (rect4.left != i14 || rect4.top != i15 || rect4.right != i16 || rect4.bottom != compoundPaddingBottom || true != collapsingTextHelper.k0) {
                    rect4.set(i14, i15, i16, compoundPaddingBottom);
                    collapsingTextHelper.N = true;
                    collapsingTextHelper.k0 = true;
                }
                collapsingTextHelper.j(false);
                if (!g() || this.w1) {
                    return;
                }
                l();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        float f2;
        EditText editText;
        super.onMeasure(i2, i3);
        boolean z = this.D1;
        EndCompoundLayout endCompoundLayout = this.d;
        if (!z) {
            endCompoundLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.D1 = true;
        }
        if (this.v != null && (editText = this.f33209f) != null) {
            this.v.setGravity(editText.getGravity());
            this.v.setPadding(this.f33209f.getCompoundPaddingLeft(), this.f33209f.getCompoundPaddingTop(), this.f33209f.getCompoundPaddingRight(), this.f33209f.getCompoundPaddingBottom());
        }
        endCompoundLayout.l();
        if (getHintMaxLines() == 1) {
            return;
        }
        int measuredWidth = (this.f33209f.getMeasuredWidth() - this.f33209f.getCompoundPaddingLeft()) - this.f33209f.getCompoundPaddingRight();
        CollapsingTextHelper collapsingTextHelper = this.x1;
        TextPaint textPaint = collapsingTextHelper.P;
        textPaint.setTextSize(collapsingTextHelper.f32702i);
        textPaint.setTypeface(collapsingTextHelper.s);
        textPaint.setLetterSpacing(collapsingTextHelper.W);
        float f3 = measuredWidth;
        collapsingTextHelper.i0 = collapsingTextHelper.e(collapsingTextHelper.f0, textPaint, collapsingTextHelper.B, (collapsingTextHelper.f32702i / collapsingTextHelper.f32701h) * f3, collapsingTextHelper.D).getHeight();
        textPaint.setTextSize(collapsingTextHelper.f32701h);
        textPaint.setTypeface(collapsingTextHelper.v);
        textPaint.setLetterSpacing(collapsingTextHelper.X);
        collapsingTextHelper.j0 = collapsingTextHelper.e(collapsingTextHelper.e0, textPaint, collapsingTextHelper.B, f3, collapsingTextHelper.D).getHeight();
        EditText editText2 = this.f33209f;
        Rect rect = this.t0;
        DescendantOffsetUtils.a(this, editText2, rect);
        Rect rectD = d(rect);
        int i4 = rectD.left;
        int i5 = rectD.top;
        int i6 = rectD.right;
        int i7 = rectD.bottom;
        Rect rect2 = collapsingTextHelper.d;
        if (rect2.left != i4 || rect2.top != i5 || rect2.right != i6 || rect2.bottom != i7) {
            rect2.set(i4, i5, i6, i7);
            collapsingTextHelper.N = true;
        }
        v();
        a();
        if (this.f33209f == null) {
            return;
        }
        int i8 = collapsingTextHelper.j0;
        if (i8 != -1) {
            f2 = i8;
        } else {
            TextPaint textPaint2 = collapsingTextHelper.P;
            textPaint2.setTextSize(collapsingTextHelper.f32701h);
            textPaint2.setTypeface(collapsingTextHelper.v);
            textPaint2.setLetterSpacing(collapsingTextHelper.X);
            f2 = -textPaint2.ascent();
        }
        CharSequence charSequence = this.t;
        float height = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (charSequence != null) {
            TextPaint textPaint3 = new TextPaint(129);
            textPaint3.set(this.v.getPaint());
            textPaint3.setTextSize(this.v.getTextSize());
            textPaint3.setTypeface(this.v.getTypeface());
            textPaint3.setLetterSpacing(this.v.getLetterSpacing());
            try {
                StaticLayoutBuilderCompat staticLayoutBuilderCompat = new StaticLayoutBuilderCompat(this.t, textPaint3, measuredWidth);
                staticLayoutBuilderCompat.f32730k = getLayoutDirection() == 1;
                staticLayoutBuilderCompat.f32729j = true;
                float lineSpacingExtra = this.v.getLineSpacingExtra();
                float lineSpacingMultiplier = this.v.getLineSpacingMultiplier();
                staticLayoutBuilderCompat.g = lineSpacingExtra;
                staticLayoutBuilderCompat.f32727h = lineSpacingMultiplier;
                staticLayoutBuilderCompat.m = new ln0(this, 19);
                height = staticLayoutBuilderCompat.a().getHeight() + (this.Q == 1 ? collapsingTextHelper.f() + this.R + this.f33208e : 0.0f);
            } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e2) {
                e2.getCause().getMessage();
            }
        }
        float fMax = Math.max(f2, height);
        if (this.f33209f.getMeasuredHeight() < fMax) {
            this.f33209f.setMinimumHeight(Math.round(fMax));
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        setError(savedState.d);
        if (savedState.f33218e) {
            post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    CheckableImageButton checkableImageButton = TextInputLayout.this.d.f33160h;
                    checkableImageButton.performClick();
                    checkableImageButton.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        boolean z = i2 == 1;
        if (z != this.O) {
            CornerSize cornerSize = this.N.f32962e;
            RectF rectF = this.c1;
            float fA = cornerSize.a(rectF);
            float fA2 = this.N.f32963f.a(rectF);
            float fA3 = this.N.f32964h.a(rectF);
            float fA4 = this.N.g.a(rectF);
            ShapeAppearanceModel shapeAppearanceModel = this.N;
            CornerTreatment cornerTreatment = shapeAppearanceModel.f32959a;
            CornerTreatment cornerTreatment2 = shapeAppearanceModel.f32960b;
            CornerTreatment cornerTreatment3 = shapeAppearanceModel.d;
            CornerTreatment cornerTreatment4 = shapeAppearanceModel.f32961c;
            ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
            builder.f32968a = cornerTreatment2;
            float fB = ShapeAppearanceModel.Builder.b(cornerTreatment2);
            if (fB != -1.0f) {
                builder.e(fB);
            }
            builder.f32969b = cornerTreatment;
            float fB2 = ShapeAppearanceModel.Builder.b(cornerTreatment);
            if (fB2 != -1.0f) {
                builder.f(fB2);
            }
            builder.d = cornerTreatment4;
            float fB3 = ShapeAppearanceModel.Builder.b(cornerTreatment4);
            if (fB3 != -1.0f) {
                builder.c(fB3);
            }
            builder.f32970c = cornerTreatment3;
            float fB4 = ShapeAppearanceModel.Builder.b(cornerTreatment3);
            if (fB4 != -1.0f) {
                builder.d(fB4);
            }
            builder.e(fA2);
            builder.f(fA);
            builder.c(fA4);
            builder.d(fA3);
            ShapeAppearanceModel shapeAppearanceModelA = builder.a();
            this.O = z;
            setShapeAppearanceModel(shapeAppearanceModelA);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (o()) {
            savedState.d = getError();
        }
        EndCompoundLayout endCompoundLayout = this.d;
        savedState.f33218e = endCompoundLayout.f33162j != 0 && endCompoundLayout.f33160h.f32691e;
        return savedState;
    }

    public final void p(Editable editable) {
        int iD = this.p.d(editable);
        boolean z = this.o;
        int i2 = this.n;
        if (i2 == -1) {
            this.q.setText(String.valueOf(iD));
            this.q.setContentDescription(null);
            this.o = false;
        } else {
            this.o = iD > i2;
            Context context = getContext();
            this.q.setContentDescription(context.getString(this.o ? com.vuitton.android.R.string.character_counter_overflowed_content_description : com.vuitton.android.R.string.character_counter_content_description, Integer.valueOf(iD), Integer.valueOf(this.n)));
            if (z != this.o) {
                q();
            }
            BidiFormatter bidiFormatterC = BidiFormatter.c();
            AppCompatTextView appCompatTextView = this.q;
            String string = getContext().getString(com.vuitton.android.R.string.character_counter_pattern, Integer.valueOf(iD), Integer.valueOf(this.n));
            appCompatTextView.setText(string != null ? bidiFormatterC.d(string, bidiFormatterC.f12121c).toString() : null);
        }
        if (this.f33209f == null || z == this.o) {
            return;
        }
        w(false, false);
        z();
        t();
    }

    public final void q() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.q;
        if (appCompatTextView != null) {
            n(appCompatTextView, this.o ? this.r : this.s);
            if (!this.o && (colorStateList2 = this.A) != null) {
                this.q.setTextColor(colorStateList2);
            }
            if (!this.o || (colorStateList = this.B) == null) {
                return;
            }
            this.q.setTextColor(colorStateList);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final void r() {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.C;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueA = MaterialAttributes.a(com.vuitton.android.R.attr.colorControlActivated, context);
            if (typedValueA != null) {
                int i2 = typedValueA.resourceId;
                if (i2 != 0) {
                    colorStateListValueOf = ContextCompat.getColorStateList(context, i2);
                } else {
                    int i3 = typedValueA.data;
                    if (i3 != 0) {
                        colorStateListValueOf = ColorStateList.valueOf(i3);
                    } else {
                        colorStateListValueOf = null;
                    }
                }
            } else {
                colorStateListValueOf = null;
            }
        }
        EditText editText = this.f33209f;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = this.f33209f.getTextCursorDrawable().mutate();
        if ((o() || (this.q != null && this.o)) && (colorStateList = this.D) != null) {
            colorStateListValueOf = colorStateList;
        }
        drawableMutate.setTintList(colorStateListValueOf);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005f  */
    /* JADX WARN: Code duplicated, block: B:23:0x0063  */
    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    public final boolean s() {
        boolean z;
        if (this.f33209f == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z2 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            StartCompoundLayout startCompoundLayout = this.f33207c;
            if (startCompoundLayout.getMeasuredWidth() > 0) {
                int measuredWidth = startCompoundLayout.getMeasuredWidth() - this.f33209f.getPaddingLeft();
                if (this.e1 == null || this.f1 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.e1 = colorDrawable;
                    this.f1 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative = this.f33209f.getCompoundDrawablesRelative();
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.e1;
                if (drawable != colorDrawable2) {
                    this.f33209f.setCompoundDrawablesRelative(colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z = true;
                } else {
                    z = false;
                }
            } else if (this.e1 != null) {
                Drawable[] compoundDrawablesRelative2 = this.f33209f.getCompoundDrawablesRelative();
                this.f33209f.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                this.e1 = null;
                z = true;
            } else {
                z = false;
            }
        } else if (this.e1 != null) {
            Drawable[] compoundDrawablesRelative3 = this.f33209f.getCompoundDrawablesRelative();
            this.f33209f.setCompoundDrawablesRelative(null, compoundDrawablesRelative3[1], compoundDrawablesRelative3[2], compoundDrawablesRelative3[3]);
            this.e1 = null;
            z = true;
        } else {
            z = false;
        }
        EndCompoundLayout endCompoundLayout = this.d;
        if ((endCompoundLayout.d() || ((endCompoundLayout.f33162j != 0 && endCompoundLayout.c()) || endCompoundLayout.q != null)) && endCompoundLayout.getMeasuredWidth() > 0) {
            int measuredWidth2 = endCompoundLayout.r.getMeasuredWidth() - this.f33209f.getPaddingRight();
            if (endCompoundLayout.d()) {
                checkableImageButton = endCompoundLayout.d;
            } else if (endCompoundLayout.f33162j != 0 && endCompoundLayout.c()) {
                checkableImageButton = endCompoundLayout.f33160h;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative4 = this.f33209f.getCompoundDrawablesRelative();
            ColorDrawable colorDrawable3 = this.h1;
            if (colorDrawable3 != null && this.i1 != measuredWidth2) {
                this.i1 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                this.f33209f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.h1, compoundDrawablesRelative4[3]);
                return true;
            }
            if (colorDrawable3 == null) {
                ColorDrawable colorDrawable4 = new ColorDrawable();
                this.h1 = colorDrawable4;
                this.i1 = measuredWidth2;
                colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
            }
            Drawable drawable2 = compoundDrawablesRelative4[2];
            ColorDrawable colorDrawable5 = this.h1;
            if (drawable2 != colorDrawable5) {
                this.j1 = drawable2;
                this.f33209f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], colorDrawable5, compoundDrawablesRelative4[3]);
                return true;
            }
        } else if (this.h1 != null) {
            Drawable[] compoundDrawablesRelative5 = this.f33209f.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative5[2] == this.h1) {
                this.f33209f.setCompoundDrawablesRelative(compoundDrawablesRelative5[0], compoundDrawablesRelative5[1], this.j1, compoundDrawablesRelative5[3]);
            } else {
                z2 = z;
            }
            this.h1 = null;
            return z2;
        }
        return z;
    }

    public void setBoxBackgroundColor(int i2) {
        if (this.h0 != i2) {
            this.h0 = i2;
            this.q1 = i2;
            this.s1 = i2;
            this.t1 = i2;
            c();
        }
    }

    public void setBoxBackgroundColorResource(int i2) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.q1 = defaultColor;
        this.h0 = defaultColor;
        this.r1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.s1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.t1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        c();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.Q) {
            return;
        }
        this.Q = i2;
        if (this.f33209f != null) {
            k();
        }
    }

    public void setBoxCollapsedPaddingTop(int i2) {
        this.R = i2;
    }

    public void setBoxCornerFamily(int i2) {
        ShapeAppearanceModel shapeAppearanceModel = this.N;
        shapeAppearanceModel.getClass();
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder(shapeAppearanceModel);
        CornerSize cornerSize = this.N.f32962e;
        CornerTreatment cornerTreatmentA = MaterialShapeUtils.a(i2);
        builder.f32968a = cornerTreatmentA;
        float fB = ShapeAppearanceModel.Builder.b(cornerTreatmentA);
        if (fB != -1.0f) {
            builder.e(fB);
        }
        builder.f32971e = cornerSize;
        CornerSize cornerSize2 = this.N.f32963f;
        CornerTreatment cornerTreatmentA2 = MaterialShapeUtils.a(i2);
        builder.f32969b = cornerTreatmentA2;
        float fB2 = ShapeAppearanceModel.Builder.b(cornerTreatmentA2);
        if (fB2 != -1.0f) {
            builder.f(fB2);
        }
        builder.f32972f = cornerSize2;
        CornerSize cornerSize3 = this.N.f32964h;
        CornerTreatment cornerTreatmentA3 = MaterialShapeUtils.a(i2);
        builder.d = cornerTreatmentA3;
        float fB3 = ShapeAppearanceModel.Builder.b(cornerTreatmentA3);
        if (fB3 != -1.0f) {
            builder.c(fB3);
        }
        builder.f32973h = cornerSize3;
        CornerSize cornerSize4 = this.N.g;
        CornerTreatment cornerTreatmentA4 = MaterialShapeUtils.a(i2);
        builder.f32970c = cornerTreatmentA4;
        float fB4 = ShapeAppearanceModel.Builder.b(cornerTreatmentA4);
        if (fB4 != -1.0f) {
            builder.d(fB4);
        }
        builder.g = cornerSize4;
        this.N = builder.a();
        c();
    }

    public void setBoxStrokeColor(int i2) {
        if (this.o1 != i2) {
            this.o1 = i2;
            z();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.m1 = colorStateList.getDefaultColor();
            this.u1 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.n1 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.o1 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.o1 != colorStateList.getDefaultColor()) {
            this.o1 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.p1 != colorStateList) {
            this.p1 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i2) {
        this.T = i2;
        z();
    }

    public void setBoxStrokeWidthFocused(int i2) {
        this.V = i2;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(int i2) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidthResource(int i2) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public void setCounterEnabled(boolean z) {
        if (this.m != z) {
            IndicatorViewController indicatorViewController = this.l;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
                this.q = appCompatTextView;
                appCompatTextView.setId(com.vuitton.android.R.id.textinput_counter);
                Typeface typeface = this.d1;
                if (typeface != null) {
                    this.q.setTypeface(typeface);
                }
                this.q.setMaxLines(1);
                indicatorViewController.a(this.q, 2);
                ((ViewGroup.MarginLayoutParams) this.q.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(com.vuitton.android.R.dimen.mtrl_textinput_counter_margin_start));
                q();
                if (this.q != null) {
                    EditText editText = this.f33209f;
                    p(editText != null ? editText.getText() : null);
                }
            } else {
                indicatorViewController.g(this.q, 2);
                this.q = null;
            }
            this.m = z;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.n != i2) {
            if (i2 > 0) {
                this.n = i2;
            } else {
                this.n = -1;
            }
            if (!this.m || this.q == null) {
                return;
            }
            EditText editText = this.f33209f;
            p(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i2) {
        if (this.r != i2) {
            this.r = i2;
            q();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.B != colorStateList) {
            this.B = colorStateList;
            q();
        }
    }

    public void setCounterTextAppearance(int i2) {
        if (this.s != i2) {
            this.s = i2;
            q();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.A != colorStateList) {
            this.A = colorStateList;
            q();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.C != colorStateList) {
            this.C = colorStateList;
            r();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (o() || (this.q != null && this.o)) {
                r();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.k1 = colorStateList;
        this.l1 = colorStateList;
        if (this.f33209f != null) {
            w(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.d.f33160h.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.d.f33160h.setCheckable(z);
    }

    public void setEndIconContentDescription(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        CharSequence text = i2 != 0 ? endCompoundLayout.getResources().getText(i2) : null;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        Drawable drawableA = i2 != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i2) : null;
        TextInputLayout textInputLayout = endCompoundLayout.f33156b;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        checkableImageButton.setImageDrawable(drawableA);
        if (drawableA != null) {
            IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.l, endCompoundLayout.m);
            IconHelper.c(textInputLayout, checkableImageButton, endCompoundLayout.l);
        }
    }

    public void setEndIconMinSize(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (i2 < 0) {
            endCompoundLayout.getClass();
            md.n("endIconSize cannot be less than 0");
        } else if (i2 != endCompoundLayout.n) {
            endCompoundLayout.n = i2;
            CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
            checkableImageButton.setMinimumWidth(i2);
            checkableImageButton.setMinimumHeight(i2);
            CheckableImageButton checkableImageButton2 = endCompoundLayout.d;
            checkableImageButton2.setMinimumWidth(i2);
            checkableImageButton2.setMinimumHeight(i2);
        }
    }

    public void setEndIconMode(int i2) {
        this.d.f(i2);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.d;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.p;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.p = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.o = scaleType;
        endCompoundLayout.f33160h.setScaleType(scaleType);
        endCompoundLayout.d.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (endCompoundLayout.l != colorStateList) {
            endCompoundLayout.l = colorStateList;
            IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.f33160h, colorStateList, endCompoundLayout.m);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (endCompoundLayout.m != mode) {
            endCompoundLayout.m = mode;
            IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.f33160h, endCompoundLayout.l, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.d.g(z);
    }

    public void setError(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.l;
        if (!indicatorViewController.q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            indicatorViewController.f();
            return;
        }
        indicatorViewController.c();
        indicatorViewController.p = charSequence;
        indicatorViewController.r.setText(charSequence);
        int i2 = indicatorViewController.n;
        if (i2 != 1) {
            indicatorViewController.o = 1;
        }
        indicatorViewController.i(i2, indicatorViewController.o, indicatorViewController.h(indicatorViewController.r, charSequence));
    }

    public void setErrorAccessibilityLiveRegion(int i2) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.t = i2;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            appCompatTextView.setAccessibilityLiveRegion(i2);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.s = charSequence;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.l;
        TextInputLayout textInputLayout = indicatorViewController.f33178h;
        if (indicatorViewController.q == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.g);
            indicatorViewController.r = appCompatTextView;
            appCompatTextView.setId(com.vuitton.android.R.id.textinput_error);
            indicatorViewController.r.setTextAlignment(5);
            Typeface typeface = indicatorViewController.B;
            if (typeface != null) {
                indicatorViewController.r.setTypeface(typeface);
            }
            int i2 = indicatorViewController.u;
            indicatorViewController.u = i2;
            AppCompatTextView appCompatTextView2 = indicatorViewController.r;
            if (appCompatTextView2 != null) {
                indicatorViewController.f33178h.n(appCompatTextView2, i2);
            }
            ColorStateList colorStateList = indicatorViewController.v;
            indicatorViewController.v = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = indicatorViewController.s;
            indicatorViewController.s = charSequence;
            AppCompatTextView appCompatTextView4 = indicatorViewController.r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i3 = indicatorViewController.t;
            indicatorViewController.t = i3;
            AppCompatTextView appCompatTextView5 = indicatorViewController.r;
            if (appCompatTextView5 != null) {
                appCompatTextView5.setAccessibilityLiveRegion(i3);
            }
            indicatorViewController.r.setVisibility(4);
            indicatorViewController.a(indicatorViewController.r, 0);
        } else {
            indicatorViewController.f();
            indicatorViewController.g(indicatorViewController.r, 0);
            indicatorViewController.r = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        indicatorViewController.q = z;
    }

    public void setErrorIconDrawable(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.h(i2 != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i2) : null);
        IconHelper.c(endCompoundLayout.f33156b, endCompoundLayout.d, endCompoundLayout.f33158e);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.d;
        CheckableImageButton checkableImageButton = endCompoundLayout.d;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.g;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.g = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.d;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (endCompoundLayout.f33158e != colorStateList) {
            endCompoundLayout.f33158e = colorStateList;
            IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.d, colorStateList, endCompoundLayout.f33159f);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (endCompoundLayout.f33159f != mode) {
            endCompoundLayout.f33159f = mode;
            IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.d, endCompoundLayout.f33158e, mode);
        }
    }

    public void setErrorTextAppearance(int i2) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.u = i2;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            indicatorViewController.f33178h.n(appCompatTextView, i2);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.v = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.y1 != z) {
            this.y1 = z;
            w(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        IndicatorViewController indicatorViewController = this.l;
        if (zIsEmpty) {
            if (indicatorViewController.x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!indicatorViewController.x) {
            setHelperTextEnabled(true);
        }
        indicatorViewController.c();
        indicatorViewController.w = charSequence;
        indicatorViewController.y.setText(charSequence);
        int i2 = indicatorViewController.n;
        if (i2 != 2) {
            indicatorViewController.o = 2;
        }
        indicatorViewController.i(i2, indicatorViewController.o, indicatorViewController.h(indicatorViewController.y, charSequence));
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.A = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.y;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        final IndicatorViewController indicatorViewController = this.l;
        TextInputLayout textInputLayout = indicatorViewController.f33178h;
        if (indicatorViewController.x == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.g);
            indicatorViewController.y = appCompatTextView;
            appCompatTextView.setId(com.vuitton.android.R.id.textinput_helper_text);
            indicatorViewController.y.setTextAlignment(5);
            Typeface typeface = indicatorViewController.B;
            if (typeface != null) {
                indicatorViewController.y.setTypeface(typeface);
            }
            indicatorViewController.y.setVisibility(4);
            indicatorViewController.y.setAccessibilityLiveRegion(1);
            int i2 = indicatorViewController.z;
            indicatorViewController.z = i2;
            AppCompatTextView appCompatTextView2 = indicatorViewController.y;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextAppearance(i2);
            }
            ColorStateList colorStateList = indicatorViewController.A;
            indicatorViewController.A = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.y;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            indicatorViewController.a(indicatorViewController.y, 1);
            indicatorViewController.y.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.textfield.IndicatorViewController.2
                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    EditText editText = IndicatorViewController.this.f33178h.getEditText();
                    if (editText != null) {
                        accessibilityNodeInfo.setLabeledBy(editText);
                    }
                }
            });
        } else {
            indicatorViewController.c();
            int i3 = indicatorViewController.n;
            if (i3 == 2) {
                indicatorViewController.o = 0;
            }
            indicatorViewController.i(i3, indicatorViewController.o, indicatorViewController.h(indicatorViewController.y, ""));
            indicatorViewController.g(indicatorViewController.y, 1);
            indicatorViewController.y = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        indicatorViewController.x = z;
    }

    public void setHelperTextTextAppearance(int i2) {
        IndicatorViewController indicatorViewController = this.l;
        indicatorViewController.z = i2;
        AppCompatTextView appCompatTextView = indicatorViewController.y;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i2);
        }
    }

    public void setHint(int i2) {
        setHint(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setHintAnimationEnabled(boolean z) {
        this.z1 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.E) {
            this.E = z;
            if (z) {
                CharSequence hint = this.f33209f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.F)) {
                        setHint(hint);
                    }
                    this.f33209f.setHint((CharSequence) null);
                }
                this.G = true;
            } else {
                this.G = false;
                if (!TextUtils.isEmpty(this.F) && TextUtils.isEmpty(this.f33209f.getHint())) {
                    this.f33209f.setHint(this.F);
                }
                setHintInternal(null);
            }
            if (this.f33209f != null) {
                v();
            }
        }
    }

    public void setHintMaxLines(int i2) {
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (i2 != collapsingTextHelper.f0) {
            collapsingTextHelper.f0 = i2;
            collapsingTextHelper.j(false);
        }
        if (i2 != collapsingTextHelper.e0) {
            collapsingTextHelper.e0 = i2;
            collapsingTextHelper.j(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(int i2) {
        CollapsingTextHelper collapsingTextHelper = this.x1;
        collapsingTextHelper.l(i2);
        this.l1 = collapsingTextHelper.f32704k;
        if (this.f33209f != null) {
            w(false, false);
            v();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.l1 != colorStateList) {
            if (this.k1 == null) {
                CollapsingTextHelper collapsingTextHelper = this.x1;
                if (collapsingTextHelper.f32704k != colorStateList) {
                    collapsingTextHelper.f32704k = colorStateList;
                    collapsingTextHelper.j(false);
                }
            }
            this.l1 = colorStateList;
            if (this.f33209f != null) {
                w(false, false);
            }
        }
    }

    public void setLengthCounter(LengthCounter lengthCounter) {
        this.p = lengthCounter;
    }

    public void setMaxEms(int i2) {
        this.f33211i = i2;
        EditText editText = this.f33209f;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxEms(i2);
    }

    public void setMaxWidth(int i2) {
        this.f33213k = i2;
        EditText editText = this.f33209f;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMaxWidth(i2);
    }

    public void setMaxWidthResource(int i2) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    public void setMinEms(int i2) {
        this.f33210h = i2;
        EditText editText = this.f33209f;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinEms(i2);
    }

    public void setMinWidth(int i2) {
        this.f33212j = i2;
        EditText editText = this.f33209f;
        if (editText == null || i2 == -1) {
            return;
        }
        editText.setMinWidth(i2);
    }

    public void setMinWidthResource(int i2) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i2));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.f33160h.setContentDescription(i2 != 0 ? endCompoundLayout.getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i2) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.f33160h.setImageDrawable(i2 != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EndCompoundLayout endCompoundLayout = this.d;
        if (z && endCompoundLayout.f33162j != 1) {
            endCompoundLayout.f(1);
        } else if (z) {
            endCompoundLayout.getClass();
        } else {
            endCompoundLayout.f(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.l = colorStateList;
        IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.f33160h, colorStateList, endCompoundLayout.m);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.m = mode;
        IconHelper.a(endCompoundLayout.f33156b, endCompoundLayout.f33160h, endCompoundLayout.l, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.v == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
            this.v = appCompatTextView;
            appCompatTextView.setId(com.vuitton.android.R.id.textinput_placeholder);
            this.v.setImportantForAccessibility(1);
            this.v.setAccessibilityLiveRegion(1);
            Fade fadeF = f();
            this.y = fadeF;
            fadeF.f19995c = 67L;
            this.z = f();
            setPlaceholderTextAppearance(this.x);
            setPlaceholderTextColor(this.w);
            ViewCompat.t(this.v, new AnonymousClass2());
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.u) {
                setPlaceholderTextEnabled(true);
            }
            this.t = charSequence;
        }
        EditText editText = this.f33209f;
        x(editText == null ? null : editText.getText());
    }

    public void setPlaceholderTextAppearance(int i2) {
        this.x = i2;
        AppCompatTextView appCompatTextView = this.v;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i2);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            AppCompatTextView appCompatTextView = this.v;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        startCompoundLayout.getClass();
        startCompoundLayout.d = TextUtils.isEmpty(charSequence) ? null : charSequence;
        startCompoundLayout.f33198c.setText(charSequence);
        startCompoundLayout.e();
    }

    public void setPrefixTextAppearance(int i2) {
        this.f33207c.f33198c.setTextAppearance(i2);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f33207c.f33198c.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = this.H;
        if (materialShapeDrawable == null || materialShapeDrawable.f32936c.f32945a == shapeAppearanceModel) {
            return;
        }
        this.N = shapeAppearanceModel;
        c();
    }

    public void setStartIconCheckable(boolean z) {
        this.f33207c.f33199e.setCheckable(z);
    }

    public void setStartIconContentDescription(int i2) {
        setStartIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setStartIconDrawable(int i2) {
        setStartIconDrawable(i2 != 0 ? AppCompatResources.a(getContext(), i2) : null);
    }

    public void setStartIconMinSize(int i2) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        if (i2 < 0) {
            startCompoundLayout.getClass();
            md.n("startIconSize cannot be less than 0");
        } else if (i2 != startCompoundLayout.f33201h) {
            startCompoundLayout.f33201h = i2;
            CheckableImageButton checkableImageButton = startCompoundLayout.f33199e;
            checkableImageButton.setMinimumWidth(i2);
            checkableImageButton.setMinimumHeight(i2);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        CheckableImageButton checkableImageButton = startCompoundLayout.f33199e;
        View.OnLongClickListener onLongClickListener = startCompoundLayout.f33203j;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        startCompoundLayout.f33203j = onLongClickListener;
        CheckableImageButton checkableImageButton = startCompoundLayout.f33199e;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        startCompoundLayout.f33202i = scaleType;
        startCompoundLayout.f33199e.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        if (startCompoundLayout.f33200f != colorStateList) {
            startCompoundLayout.f33200f = colorStateList;
            IconHelper.a(startCompoundLayout.f33197b, startCompoundLayout.f33199e, colorStateList, startCompoundLayout.g);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        StartCompoundLayout startCompoundLayout = this.f33207c;
        if (startCompoundLayout.g != mode) {
            startCompoundLayout.g = mode;
            IconHelper.a(startCompoundLayout.f33197b, startCompoundLayout.f33199e, startCompoundLayout.f33200f, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.f33207c.c(z);
    }

    public void setSuffixText(CharSequence charSequence) {
        EndCompoundLayout endCompoundLayout = this.d;
        endCompoundLayout.getClass();
        endCompoundLayout.q = TextUtils.isEmpty(charSequence) ? null : charSequence;
        endCompoundLayout.r.setText(charSequence);
        endCompoundLayout.m();
    }

    public void setSuffixTextAppearance(int i2) {
        this.d.r.setTextAppearance(i2);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.d.r.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.f33209f;
        if (editText != null) {
            ViewCompat.t(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.d1) {
            this.d1 = typeface;
            this.x1.o(typeface);
            IndicatorViewController indicatorViewController = this.l;
            if (typeface != indicatorViewController.B) {
                indicatorViewController.B = typeface;
                AppCompatTextView appCompatTextView = indicatorViewController.r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = indicatorViewController.y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.q;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.f33209f;
        if (editText == null || this.Q != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        int[] iArr = DrawableUtils.f1209a;
        Drawable drawableMutate = background.mutate();
        if (o()) {
            drawableMutate.setColorFilter(AppCompatDrawableManager.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
        } else if (this.o && (appCompatTextView = this.q) != null) {
            drawableMutate.setColorFilter(AppCompatDrawableManager.c(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            drawableMutate.clearColorFilter();
            this.f33209f.refreshDrawableState();
        }
    }

    public final void u() {
        EditText editText = this.f33209f;
        if (editText == null || this.H == null) {
            return;
        }
        if ((this.K || editText.getBackground() == null) && this.Q != 0) {
            this.f33209f.setBackground(getEditTextBoxBackground());
            this.K = true;
        }
    }

    public final void v() {
        if (this.Q != 1) {
            FrameLayout frameLayout = this.f33206b;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iE = e();
            if (iE != layoutParams.topMargin) {
                layoutParams.topMargin = iE;
                frameLayout.requestLayout();
            }
        }
    }

    public final void w(boolean z, boolean z2) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f33209f;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f33209f;
        boolean z4 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.k1;
        CollapsingTextHelper collapsingTextHelper = this.x1;
        if (colorStateList2 != null) {
            collapsingTextHelper.k(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.k1;
            int colorForState = this.u1;
            if (colorStateList3 != null) {
                colorForState = colorStateList3.getColorForState(new int[]{-16842910}, colorForState);
            }
            collapsingTextHelper.k(ColorStateList.valueOf(colorForState));
        } else if (o()) {
            AppCompatTextView appCompatTextView2 = this.l.r;
            collapsingTextHelper.k(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.o && (appCompatTextView = this.q) != null) {
            collapsingTextHelper.k(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.l1) != null && collapsingTextHelper.f32704k != colorStateList) {
            collapsingTextHelper.f32704k = colorStateList;
            collapsingTextHelper.j(false);
        }
        EndCompoundLayout endCompoundLayout = this.d;
        StartCompoundLayout startCompoundLayout = this.f33207c;
        if (z3 || !this.y1 || (isEnabled() && z4)) {
            if (z2 || this.w1) {
                ValueAnimator valueAnimator = this.A1;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.A1.cancel();
                }
                if (z && this.z1) {
                    b(1.0f);
                } else {
                    collapsingTextHelper.n(1.0f);
                }
                this.w1 = false;
                if (g()) {
                    l();
                }
                EditText editText3 = this.f33209f;
                x(editText3 != null ? editText3.getText() : null);
                startCompoundLayout.f33204k = false;
                startCompoundLayout.e();
                endCompoundLayout.s = false;
                endCompoundLayout.m();
                return;
            }
            return;
        }
        if (z2 || !this.w1) {
            ValueAnimator valueAnimator2 = this.A1;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.A1.cancel();
            }
            if (z && this.z1) {
                b(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            } else {
                collapsingTextHelper.n(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            if (g() && !((CutoutDrawable) this.H).I.s.isEmpty() && g()) {
                ((CutoutDrawable) this.H).D(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
            this.w1 = true;
            AppCompatTextView appCompatTextView3 = this.v;
            if (appCompatTextView3 != null && this.u) {
                appCompatTextView3.setText((CharSequence) null);
                TransitionManager.a(this.f33206b, this.z);
                this.v.setVisibility(4);
            }
            startCompoundLayout.f33204k = true;
            startCompoundLayout.e();
            endCompoundLayout.s = true;
            endCompoundLayout.m();
        }
    }

    public final void x(Editable editable) {
        int iD = this.p.d(editable);
        FrameLayout frameLayout = this.f33206b;
        if (iD != 0 || this.w1) {
            AppCompatTextView appCompatTextView = this.v;
            if (appCompatTextView == null || !this.u) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.a(frameLayout, this.z);
            this.v.setVisibility(4);
            return;
        }
        if (this.v == null || !this.u || TextUtils.isEmpty(this.t)) {
            return;
        }
        this.v.setText(this.t);
        TransitionManager.a(frameLayout, this.y);
        this.v.setVisibility(0);
        this.v.bringToFront();
    }

    public final void y(boolean z, boolean z2) {
        int defaultColor = this.p1.getDefaultColor();
        int colorForState = this.p1.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.p1.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.W = colorForState2;
        } else if (z2) {
            this.W = colorForState;
        } else {
            this.W = defaultColor;
        }
    }

    public final void z() {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.H == null || this.Q == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f33209f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f33209f) != null && editText.isHovered())) {
            z = true;
        }
        if (!isEnabled()) {
            this.W = this.u1;
        } else if (o()) {
            if (this.p1 != null) {
                y(z2, z);
            } else {
                this.W = getErrorCurrentTextColors();
            }
        } else if (!this.o || (appCompatTextView = this.q) == null) {
            if (z2) {
                this.W = this.o1;
            } else if (z) {
                this.W = this.n1;
            } else {
                this.W = this.m1;
            }
        } else if (this.p1 != null) {
            y(z2, z);
        } else {
            this.W = appCompatTextView.getCurrentTextColor();
        }
        r();
        EndCompoundLayout endCompoundLayout = this.d;
        TextInputLayout textInputLayout = endCompoundLayout.f33156b;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        TextInputLayout textInputLayout2 = endCompoundLayout.f33156b;
        endCompoundLayout.k();
        IconHelper.c(textInputLayout2, endCompoundLayout.d, endCompoundLayout.f33158e);
        IconHelper.c(textInputLayout2, checkableImageButton, endCompoundLayout.l);
        if (endCompoundLayout.a() instanceof DropdownMenuEndIconDelegate) {
            if (!textInputLayout.o() || checkableImageButton.getDrawable() == null) {
                IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.l, endCompoundLayout.m);
            } else {
                Drawable drawableMutate = checkableImageButton.getDrawable().mutate();
                drawableMutate.setTint(textInputLayout.getErrorCurrentTextColors());
                checkableImageButton.setImageDrawable(drawableMutate);
            }
        }
        StartCompoundLayout startCompoundLayout = this.f33207c;
        IconHelper.c(startCompoundLayout.f33197b, startCompoundLayout.f33199e, startCompoundLayout.f33200f);
        if (this.Q == 2) {
            int i2 = this.S;
            if (z2 && isEnabled()) {
                this.S = this.V;
            } else {
                this.S = this.T;
            }
            if (this.S != i2 && g() && !this.w1) {
                if (g()) {
                    ((CutoutDrawable) this.H).D(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                l();
            }
        }
        if (this.Q == 1) {
            if (!isEnabled()) {
                this.h0 = this.r1;
            } else if (z && !z2) {
                this.h0 = this.t1;
            } else if (z2) {
                this.h0 = this.s1;
            } else {
                this.h0 = this.q1;
            }
        }
        c();
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f33218e;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f33218e = parcel.readInt() == 1;
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.d) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            TextUtils.writeToParcel(this.d, parcel, i2);
            parcel.writeInt(this.f33218e ? 1 : 0);
        }

        /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$1, reason: invalid class name */
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
    }

    public void setHint(CharSequence charSequence) {
        if (this.E) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f33207c.f33199e;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f33207c.b(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.d.f33160h.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.d.f33160h.setImageDrawable(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.d.f33160h;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.d.h(drawable);
    }

    public void setEndIconDrawable(Drawable drawable) {
        EndCompoundLayout endCompoundLayout = this.d;
        TextInputLayout textInputLayout = endCompoundLayout.f33156b;
        CheckableImageButton checkableImageButton = endCompoundLayout.f33160h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.l, endCompoundLayout.m);
            IconHelper.c(textInputLayout, checkableImageButton, endCompoundLayout.l);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.textInputStyle);
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }
}
