package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.no0;
import defpackage.pq0;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
class EndCompoundLayout extends LinearLayout {
    public static final /* synthetic */ int y = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f33156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FrameLayout f33157c;
    public final CheckableImageButton d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorStateList f33158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PorterDuff.Mode f33159f;
    public View.OnLongClickListener g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CheckableImageButton f33160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EndIconDelegates f33161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f33162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashSet f33163k;
    public ColorStateList l;
    public PorterDuff.Mode m;
    public int n;
    public ImageView.ScaleType o;
    public View.OnLongClickListener p;
    public CharSequence q;
    public final AppCompatTextView r;
    public boolean s;
    public EditText t;
    public final AccessibilityManager u;
    public AccessibilityManager.TouchExplorationStateChangeListener v;
    public final TextWatcher w;
    public final TextInputLayout.OnEditTextAttachedListener x;

    public static class EndIconDelegates {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseArray f33167a = new SparseArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EndCompoundLayout f33168b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f33169c;
        public final int d;

        public EndIconDelegates(EndCompoundLayout endCompoundLayout, TintTypedArray tintTypedArray) {
            this.f33168b = endCompoundLayout;
            TypedArray typedArray = tintTypedArray.f1313b;
            this.f33169c = typedArray.getResourceId(28, 0);
            this.d = typedArray.getResourceId(53, 0);
        }
    }

    public EndCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f33162j = 0;
        this.f33163k = new LinkedHashSet();
        this.w = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.EndCompoundLayout.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                EndCompoundLayout.this.a().a();
            }

            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                EndCompoundLayout.this.a().b();
            }
        };
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.2
            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public final void a(TextInputLayout textInputLayout2) {
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                TextWatcher textWatcher = endCompoundLayout.w;
                if (endCompoundLayout.t == textInputLayout2.getEditText()) {
                    return;
                }
                EditText editText = endCompoundLayout.t;
                if (editText != null) {
                    editText.removeTextChangedListener(textWatcher);
                    if (endCompoundLayout.t.getOnFocusChangeListener() == endCompoundLayout.a().e()) {
                        endCompoundLayout.t.setOnFocusChangeListener(null);
                    }
                }
                EditText editText2 = textInputLayout2.getEditText();
                endCompoundLayout.t = editText2;
                if (editText2 != null) {
                    editText2.addTextChangedListener(textWatcher);
                }
                endCompoundLayout.a().l(endCompoundLayout.t);
                endCompoundLayout.i(endCompoundLayout.a());
            }
        };
        this.u = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f33156b = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f33157c = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) this, false);
        checkableImageButton.setId(R.id.text_input_error_icon);
        if (MaterialResources.e(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        this.d = checkableImageButton;
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) layoutInflaterFrom.inflate(R.layout.design_text_input_end_icon, (ViewGroup) frameLayout, false);
        checkableImageButton2.setId(R.id.text_input_end_icon);
        if (MaterialResources.e(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton2.getLayoutParams()).setMarginStart(0);
        }
        this.f33160h = checkableImageButton2;
        this.f33161i = new EndIconDelegates(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.r = appCompatTextView;
        TypedArray typedArray = tintTypedArray.f1313b;
        if (typedArray.hasValue(38)) {
            this.f33158e = MaterialResources.b(getContext(), tintTypedArray, 38);
        }
        if (typedArray.hasValue(39)) {
            this.f33159f = ViewUtils.f(typedArray.getInt(39, -1), null);
        }
        if (typedArray.hasValue(37)) {
            h(tintTypedArray.b(37));
        }
        checkableImageButton.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        checkableImageButton.setImportantForAccessibility(2);
        checkableImageButton.setClickable(false);
        checkableImageButton.setPressable(false);
        checkableImageButton.setCheckable(false);
        checkableImageButton.setFocusable(false);
        if (!typedArray.hasValue(54)) {
            if (typedArray.hasValue(32)) {
                this.l = MaterialResources.b(getContext(), tintTypedArray, 32);
            }
            if (typedArray.hasValue(33)) {
                this.m = ViewUtils.f(typedArray.getInt(33, -1), null);
            }
        }
        if (typedArray.hasValue(30)) {
            f(typedArray.getInt(30, 0));
            if (typedArray.hasValue(27) && checkableImageButton2.getContentDescription() != (text = typedArray.getText(27))) {
                checkableImageButton2.setContentDescription(text);
            }
            checkableImageButton2.setCheckable(typedArray.getBoolean(26, true));
        } else if (typedArray.hasValue(54)) {
            if (typedArray.hasValue(55)) {
                this.l = MaterialResources.b(getContext(), tintTypedArray, 55);
            }
            if (typedArray.hasValue(56)) {
                this.m = ViewUtils.f(typedArray.getInt(56, -1), null);
            }
            f(typedArray.getBoolean(54, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(52);
            if (checkableImageButton2.getContentDescription() != text2) {
                checkableImageButton2.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(29, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize < 0) {
            md.n("endIconSize cannot be less than 0");
            throw null;
        }
        if (dimensionPixelSize != this.n) {
            this.n = dimensionPixelSize;
            checkableImageButton2.setMinimumWidth(dimensionPixelSize);
            checkableImageButton2.setMinimumHeight(dimensionPixelSize);
            checkableImageButton.setMinimumWidth(dimensionPixelSize);
            checkableImageButton.setMinimumHeight(dimensionPixelSize);
        }
        if (typedArray.hasValue(31)) {
            ImageView.ScaleType scaleTypeB = IconHelper.b(typedArray.getInt(31, -1));
            this.o = scaleTypeB;
            checkableImageButton2.setScaleType(scaleTypeB);
            checkableImageButton.setScaleType(scaleTypeB);
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_suffix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        appCompatTextView.setAccessibilityLiveRegion(1);
        appCompatTextView.setTextAppearance(typedArray.getResourceId(73, 0));
        if (typedArray.hasValue(74)) {
            appCompatTextView.setTextColor(tintTypedArray.a(74));
        }
        CharSequence text3 = typedArray.getText(72);
        this.q = TextUtils.isEmpty(text3) ? null : text3;
        appCompatTextView.setText(text3);
        m();
        frameLayout.addView(checkableImageButton2);
        addView(appCompatTextView);
        addView(frameLayout);
        addView(checkableImageButton);
        textInputLayout.g1.add(onEditTextAttachedListener);
        if (textInputLayout.f33209f != null) {
            onEditTextAttachedListener.a(textInputLayout);
        }
        addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.3
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
                int i2 = EndCompoundLayout.y;
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                AccessibilityManager accessibilityManager = endCompoundLayout.u;
                if (endCompoundLayout.v == null || accessibilityManager == null || !endCompoundLayout.isAttachedToWindow()) {
                    return;
                }
                accessibilityManager.addTouchExplorationStateChangeListener(endCompoundLayout.v);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                AccessibilityManager accessibilityManager;
                int i2 = EndCompoundLayout.y;
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = endCompoundLayout.v;
                if (touchExplorationStateChangeListener == null || (accessibilityManager = endCompoundLayout.u) == null) {
                    return;
                }
                accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
            }
        });
    }

    public final EndIconDelegate a() {
        EndIconDelegate customEndIconDelegate;
        int i2 = this.f33162j;
        EndIconDelegates endIconDelegates = this.f33161i;
        SparseArray sparseArray = endIconDelegates.f33167a;
        EndIconDelegate endIconDelegate = (EndIconDelegate) sparseArray.get(i2);
        if (endIconDelegate != null) {
            return endIconDelegate;
        }
        EndCompoundLayout endCompoundLayout = endIconDelegates.f33168b;
        if (i2 == -1) {
            customEndIconDelegate = new CustomEndIconDelegate(endCompoundLayout);
        } else if (i2 == 0) {
            customEndIconDelegate = new NoEndIconDelegate(endCompoundLayout);
        } else if (i2 == 1) {
            customEndIconDelegate = new PasswordToggleEndIconDelegate(endCompoundLayout, endIconDelegates.d);
        } else if (i2 == 2) {
            customEndIconDelegate = new ClearTextEndIconDelegate(endCompoundLayout);
        } else {
            if (i2 != 3) {
                md.n(pq0.k(i2, "Invalid end icon mode: "));
                return null;
            }
            customEndIconDelegate = new DropdownMenuEndIconDelegate(endCompoundLayout);
        }
        sparseArray.append(i2, customEndIconDelegate);
        return customEndIconDelegate;
    }

    public final int b() {
        int marginStart;
        if (c() || d()) {
            CheckableImageButton checkableImageButton = this.f33160h;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        } else {
            marginStart = 0;
        }
        return this.r.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean c() {
        return this.f33157c.getVisibility() == 0 && this.f33160h.getVisibility() == 0;
    }

    public final boolean d() {
        return this.d.getVisibility() == 0;
    }

    public final void e(boolean z) {
        boolean z2;
        boolean zIsActivated;
        boolean z3;
        EndIconDelegate endIconDelegateA = a();
        boolean zJ = endIconDelegateA.j();
        CheckableImageButton checkableImageButton = this.f33160h;
        boolean z4 = true;
        if (!zJ || (z3 = checkableImageButton.f32691e) == endIconDelegateA.k()) {
            z2 = false;
        } else {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        }
        if (!(endIconDelegateA instanceof DropdownMenuEndIconDelegate) || (zIsActivated = checkableImageButton.isActivated()) == ((DropdownMenuEndIconDelegate) endIconDelegateA).l) {
            z4 = z2;
        } else {
            checkableImageButton.setActivated(!zIsActivated);
        }
        if (z || z4) {
            IconHelper.c(this.f33156b, checkableImageButton, this.l);
        }
    }

    public final void f(int i2) {
        if (this.f33162j == i2) {
            return;
        }
        EndIconDelegate endIconDelegateA = a();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.v;
        AccessibilityManager accessibilityManager = this.u;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        this.v = null;
        endIconDelegateA.r();
        this.f33162j = i2;
        Iterator it = this.f33163k.iterator();
        while (it.hasNext()) {
            ((TextInputLayout.OnEndIconChangedListener) it.next()).a();
        }
        g(i2 != 0);
        EndIconDelegate endIconDelegateA2 = a();
        int iD = this.f33161i.f33169c;
        if (iD == 0) {
            iD = endIconDelegateA2.d();
        }
        Drawable drawableA = iD != 0 ? AppCompatResources.a(getContext(), iD) : null;
        CheckableImageButton checkableImageButton = this.f33160h;
        checkableImageButton.setImageDrawable(drawableA);
        TextInputLayout textInputLayout = this.f33156b;
        if (drawableA != null) {
            IconHelper.a(textInputLayout, checkableImageButton, this.l, this.m);
            IconHelper.c(textInputLayout, checkableImageButton, this.l);
        }
        int iC = endIconDelegateA2.c();
        CharSequence text = iC != 0 ? getResources().getText(iC) : null;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
        checkableImageButton.setCheckable(endIconDelegateA2.j());
        if (!endIconDelegateA2.i(textInputLayout.getBoxBackgroundMode())) {
            no0.k(" is not supported by the end icon mode ", textInputLayout.getBoxBackgroundMode(), i2, "The current box background mode ");
            return;
        }
        endIconDelegateA2.q();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListenerH = endIconDelegateA2.h();
        this.v = touchExplorationStateChangeListenerH;
        if (touchExplorationStateChangeListenerH != null && accessibilityManager != null && isAttachedToWindow()) {
            accessibilityManager.addTouchExplorationStateChangeListener(this.v);
        }
        View.OnClickListener onClickListenerF = endIconDelegateA2.f();
        View.OnLongClickListener onLongClickListener = this.p;
        checkableImageButton.setOnClickListener(onClickListenerF);
        IconHelper.d(checkableImageButton, onLongClickListener);
        EditText editText = this.t;
        if (editText != null) {
            endIconDelegateA2.l(editText);
            i(endIconDelegateA2);
        }
        IconHelper.a(textInputLayout, checkableImageButton, this.l, this.m);
        e(true);
    }

    public final void g(boolean z) {
        if (c() != z) {
            this.f33160h.setVisibility(z ? 0 : 8);
            j();
            l();
            this.f33156b.s();
        }
    }

    public final void h(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.d;
        checkableImageButton.setImageDrawable(drawable);
        k();
        IconHelper.a(this.f33156b, checkableImageButton, this.f33158e, this.f33159f);
    }

    public final void i(EndIconDelegate endIconDelegate) {
        if (this.t == null) {
            return;
        }
        if (endIconDelegate.e() != null) {
            this.t.setOnFocusChangeListener(endIconDelegate.e());
        }
        if (endIconDelegate.g() != null) {
            this.f33160h.setOnFocusChangeListener(endIconDelegate.g());
        }
    }

    public final void j() {
        this.f33157c.setVisibility((this.f33160h.getVisibility() != 0 || d()) ? 8 : 0);
        setVisibility((c() || d() || ((this.q == null || this.s) ? '\b' : (char) 0) == 0) ? 0 : 8);
    }

    public final void k() {
        CheckableImageButton checkableImageButton = this.d;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f33156b;
        checkableImageButton.setVisibility((drawable != null && textInputLayout.l.q && textInputLayout.o()) ? 0 : 8);
        j();
        l();
        if (this.f33162j != 0) {
            return;
        }
        textInputLayout.s();
    }

    public final void l() {
        TextInputLayout textInputLayout = this.f33156b;
        if (textInputLayout.f33209f == null) {
            return;
        }
        this.r.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.f33209f.getPaddingTop(), (c() || d()) ? 0 : textInputLayout.f33209f.getPaddingEnd(), textInputLayout.f33209f.getPaddingBottom());
    }

    public final void m() {
        AppCompatTextView appCompatTextView = this.r;
        int visibility = appCompatTextView.getVisibility();
        int i2 = (this.q == null || this.s) ? 8 : 0;
        if (visibility != i2) {
            a().o(i2 == 0);
        }
        j();
        appCompatTextView.setVisibility(i2);
        this.f33156b.s();
    }
}
