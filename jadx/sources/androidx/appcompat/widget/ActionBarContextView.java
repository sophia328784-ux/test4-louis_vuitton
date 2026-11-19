package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;
import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends AbsActionBarView {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f1072j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1073k;
    public View l;
    public View m;
    public View n;
    public LinearLayout o;
    public TextView p;
    public TextView q;
    public final int r;
    public final int s;
    public boolean t;
    public final int u;

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.d, i2, 0);
        TintTypedArray tintTypedArray = new TintTypedArray(context, typedArrayObtainStyledAttributes);
        setBackground(tintTypedArray.b(0));
        this.r = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.s = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f1057f = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.u = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        tintTypedArray.g();
    }

    public final void e(final ActionMode actionMode) {
        View view = this.l;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.u, (ViewGroup) this, false);
            this.l = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.l);
        }
        View viewFindViewById = this.l.findViewById(R.id.action_mode_close_button);
        this.m = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: androidx.appcompat.widget.ActionBarContextView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                Callback.n(view2);
                try {
                    actionMode.c();
                } finally {
                    Callback.o();
                }
            }
        });
        MenuBuilder menuBuilderE = actionMode.e();
        ActionMenuPresenter actionMenuPresenter = this.f1056e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = actionMenuPresenter.u;
            if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
                actionButtonSubmenu.f1041j.dismiss();
            }
        }
        ActionMenuPresenter actionMenuPresenter2 = new ActionMenuPresenter(getContext());
        this.f1056e = actionMenuPresenter2;
        actionMenuPresenter2.m = true;
        actionMenuPresenter2.n = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuBuilderE.b(this.f1056e, this.f1055c);
        ActionMenuPresenter actionMenuPresenter3 = this.f1056e;
        MenuView menuView = actionMenuPresenter3.f965i;
        if (menuView == null) {
            MenuView menuView2 = (MenuView) actionMenuPresenter3.f962e.inflate(actionMenuPresenter3.g, (ViewGroup) this, false);
            actionMenuPresenter3.f965i = menuView2;
            menuView2.a(actionMenuPresenter3.d);
            actionMenuPresenter3.h(true);
        }
        MenuView menuView3 = actionMenuPresenter3.f965i;
        if (menuView != menuView3) {
            ((ActionMenuView) menuView3).setPresenter(actionMenuPresenter3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) menuView3;
        this.d = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.d, layoutParams);
    }

    public final void f() {
        if (this.o == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.o = linearLayout;
            this.p = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.q = (TextView) this.o.findViewById(R.id.action_bar_subtitle);
            int i2 = this.r;
            if (i2 != 0) {
                this.p.setTextAppearance(getContext(), i2);
            }
            int i3 = this.s;
            if (i3 != 0) {
                this.q.setTextAppearance(getContext(), i3);
            }
        }
        this.p.setText(this.f1072j);
        this.q.setText(this.f1073k);
        boolean zIsEmpty = TextUtils.isEmpty(this.f1072j);
        boolean zIsEmpty2 = TextUtils.isEmpty(this.f1073k);
        this.q.setVisibility(!zIsEmpty2 ? 0 : 8);
        this.o.setVisibility((zIsEmpty && zIsEmpty2) ? 8 : 0);
        if (this.o.getParent() == null) {
            addView(this.o);
        }
    }

    public final void g() {
        removeAllViews();
        this.n = null;
        this.d = null;
        this.f1056e = null;
        View view = this.m;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.g != null ? this.f1054b.f1061b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1057f;
    }

    public CharSequence getSubtitle() {
        return this.f1073k;
    }

    public CharSequence getTitle() {
        return this.f1072j;
    }

    public final ViewPropertyAnimatorCompat h(int i2, long j2) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.g;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.b();
        }
        AbsActionBarView.VisibilityAnimListener visibilityAnimListener = this.f1054b;
        if (i2 != 0) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.b(this);
            viewPropertyAnimatorCompatB.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            viewPropertyAnimatorCompatB.c(j2);
            AbsActionBarView.this.g = viewPropertyAnimatorCompatB;
            visibilityAnimListener.f1061b = i2;
            viewPropertyAnimatorCompatB.d(visibilityAnimListener);
            return viewPropertyAnimatorCompatB;
        }
        if (getVisibility() != 0) {
            setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB2 = ViewCompat.b(this);
        viewPropertyAnimatorCompatB2.a(1.0f);
        viewPropertyAnimatorCompatB2.c(j2);
        AbsActionBarView.this.g = viewPropertyAnimatorCompatB2;
        visibilityAnimListener.f1061b = i2;
        viewPropertyAnimatorCompatB2.d(visibilityAnimListener);
        return viewPropertyAnimatorCompatB2;
    }

    public final void i() {
        ActionMenuPresenter actionMenuPresenter = this.f1056e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.o();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActionMenuPresenter actionMenuPresenter = this.f1056e;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m();
            ActionMenuPresenter.ActionButtonSubmenu actionButtonSubmenu = this.f1056e.u;
            if (actionButtonSubmenu == null || !actionButtonSubmenu.b()) {
                return;
            }
            actionButtonSubmenu.f1041j.dismiss();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2 = getLayoutDirection() == 1;
        int paddingRight = z2 ? (i4 - i2) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
        View view = this.l;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
            int i6 = z2 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i7 = z2 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i8 = z2 ? paddingRight - i6 : paddingRight + i6;
            int iD = i8 + AbsActionBarView.d(i8, paddingTop, paddingTop2, this.l, z2);
            paddingRight = z2 ? iD - i7 : iD + i7;
        }
        LinearLayout linearLayout = this.o;
        if (linearLayout != null && this.n == null && linearLayout.getVisibility() != 8) {
            paddingRight += AbsActionBarView.d(paddingRight, paddingTop, paddingTop2, this.o, z2);
        }
        View view2 = this.n;
        if (view2 != null) {
            AbsActionBarView.d(paddingRight, paddingTop, paddingTop2, view2, z2);
        }
        int paddingLeft = z2 ? getPaddingLeft() : (i4 - i2) - getPaddingRight();
        ActionMenuView actionMenuView = this.d;
        if (actionMenuView != null) {
            AbsActionBarView.d(paddingLeft, paddingTop, paddingTop2, actionMenuView, !z2);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        if (View.MeasureSpec.getMode(i2) != 1073741824) {
            md.k(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
            return;
        }
        if (View.MeasureSpec.getMode(i3) == 0) {
            md.k(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
            return;
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.f1057f;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i3);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.l;
        if (view != null) {
            int iC = AbsActionBarView.c(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.l.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.d;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = AbsActionBarView.c(this.d, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.o;
        if (linearLayout != null && this.n == null) {
            if (this.t) {
                this.o.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.o.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.o.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = AbsActionBarView.c(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.n;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i4 = layoutParams.width;
            int i5 = i4 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i4 >= 0) {
                paddingLeft = Math.min(i4, paddingLeft);
            }
            int i6 = layoutParams.height;
            int i7 = i6 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i6 >= 0) {
                iMin = Math.min(i6, iMin);
            }
            this.n.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i5), View.MeasureSpec.makeMeasureSpec(iMin, i7));
        }
        if (this.f1057f > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            int measuredHeight = getChildAt(i9).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i8) {
                i8 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i8);
    }

    @Override // androidx.appcompat.widget.AbsActionBarView
    public void setContentHeight(int i2) {
        this.f1057f = i2;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.n;
        if (view2 != null) {
            removeView(view2);
        }
        this.n = view;
        if (view != null && (linearLayout = this.o) != null) {
            removeView(linearLayout);
            this.o = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f1073k = charSequence;
        f();
    }

    public void setTitle(CharSequence charSequence) {
        this.f1072j = charSequence;
        f();
        ViewCompat.v(this, charSequence);
    }

    public void setTitleOptional(boolean z) {
        if (z != this.t) {
            requestLayout();
        }
        this.t = z;
    }

    @Override // androidx.appcompat.widget.AbsActionBarView, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }
}
