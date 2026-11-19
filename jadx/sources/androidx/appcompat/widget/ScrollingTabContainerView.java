package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.ActionBarPolicy;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes.dex */
public class ScrollingTabContainerView extends HorizontalScrollView implements AdapterView.OnItemSelectedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Runnable f1267b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TabClickListener f1268c;
    public final LinearLayoutCompat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AppCompatSpinner f1269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1270f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1271h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f1272i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1273j;

    public class TabAdapter extends BaseAdapter {
        public TabAdapter() {
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            return ScrollingTabContainerView.this.d.getChildCount();
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i2) {
            return ((TabView) ScrollingTabContainerView.this.d.getChildAt(i2)).f1276b;
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i2) {
            return i2;
        }

        @Override // android.widget.Adapter
        public final View getView(int i2, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.c((ActionBar.Tab) getItem(i2), true);
            }
            TabView tabView = (TabView) view;
            tabView.f1276b = (ActionBar.Tab) getItem(i2);
            tabView.a();
            return view;
        }
    }

    public class TabClickListener implements View.OnClickListener {
        public TabClickListener() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LinearLayoutCompat linearLayoutCompat = ScrollingTabContainerView.this.d;
            Callback.n(view);
            try {
                ((TabView) view).f1276b.b();
                int childCount = linearLayoutCompat.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = linearLayoutCompat.getChildAt(i2);
                    childAt.setSelected(childAt == view);
                }
            } finally {
                Callback.o();
            }
        }
    }

    public class TabView extends LinearLayout {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ActionBar.Tab f1276b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public AppCompatTextView f1277c;
        public View d;

        public TabView(Context context, ActionBar.Tab tab, boolean z) {
            super(context, null, R.attr.actionBarTabStyle);
            int[] iArr = {android.R.attr.background};
            this.f1276b = tab;
            TintTypedArray tintTypedArrayE = TintTypedArray.e(R.attr.actionBarTabStyle, 0, context, null, iArr);
            if (tintTypedArrayE.f1313b.hasValue(0)) {
                setBackgroundDrawable(tintTypedArrayE.b(0));
            }
            tintTypedArrayE.g();
            if (z) {
                setGravity(8388627);
            }
            a();
        }

        public final void a() {
            this.f1276b.getClass();
            View view = this.d;
            if (view != null) {
                removeView(view);
                this.d = null;
            }
            boolean zIsEmpty = TextUtils.isEmpty(null);
            AppCompatTextView appCompatTextView = this.f1277c;
            if (!zIsEmpty) {
                if (appCompatTextView == null) {
                    AppCompatTextView appCompatTextView2 = new AppCompatTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                    appCompatTextView2.setEllipsize(TextUtils.TruncateAt.END);
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.gravity = 16;
                    appCompatTextView2.setLayoutParams(layoutParams);
                    addView(appCompatTextView2);
                    this.f1277c = appCompatTextView2;
                }
                this.f1277c.setText((CharSequence) null);
                this.f1277c.setVisibility(0);
            } else if (appCompatTextView != null) {
                appCompatTextView.setVisibility(8);
                this.f1277c.setText((CharSequence) null);
            }
            TooltipCompat.Api26Impl.a(this, null);
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public final void onMeasure(int i2, int i3) {
            super.onMeasure(i2, i3);
            ScrollingTabContainerView scrollingTabContainerView = ScrollingTabContainerView.this;
            if (scrollingTabContainerView.g > 0) {
                int measuredWidth = getMeasuredWidth();
                int i4 = scrollingTabContainerView.g;
                if (measuredWidth > i4) {
                    super.onMeasure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i3);
                }
            }
        }

        @Override // android.view.View
        public final void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    public class VisibilityAnimListener extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1279a = false;

        public VisibilityAnimListener() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f1279a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.f1279a) {
                return;
            }
            ScrollingTabContainerView.this.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            this.f1279a = false;
        }
    }

    static {
        new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        ActionBarPolicy actionBarPolicyA = ActionBarPolicy.a(context);
        setContentHeight(actionBarPolicyA.c());
        this.f1271h = actionBarPolicyA.f900a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
        LinearLayoutCompat linearLayoutCompat = new LinearLayoutCompat(getContext(), null, R.attr.actionBarTabBarStyle);
        linearLayoutCompat.setMeasureWithLargestChildEnabled(true);
        linearLayoutCompat.setGravity(17);
        linearLayoutCompat.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
        this.d = linearLayoutCompat;
        addView(linearLayoutCompat, new ViewGroup.LayoutParams(-2, -1));
    }

    public final void a(ActionBar.Tab tab, int i2, boolean z) {
        TabView tabViewC = c(tab, false);
        this.d.addView(tabViewC, i2, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner != null) {
            ((TabAdapter) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            tabViewC.setSelected(true);
        }
        if (this.f1270f) {
            requestLayout();
        }
    }

    public final void b(ActionBar.Tab tab, boolean z) {
        TabView tabViewC = c(tab, false);
        this.d.addView(tabViewC, new LinearLayoutCompat.LayoutParams(0, -1, 1.0f));
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner != null) {
            ((TabAdapter) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            tabViewC.setSelected(true);
        }
        if (this.f1270f) {
            requestLayout();
        }
    }

    public final TabView c(ActionBar.Tab tab, boolean z) {
        TabView tabView = new TabView(getContext(), tab, z);
        if (z) {
            tabView.setBackgroundDrawable(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.f1272i));
            return tabView;
        }
        tabView.setFocusable(true);
        if (this.f1268c == null) {
            this.f1268c = new TabClickListener();
        }
        tabView.setOnClickListener(this.f1268c);
        return tabView;
    }

    public final void d() {
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner == null || appCompatSpinner.getParent() != this) {
            return;
        }
        removeView(this.f1269e);
        addView(this.d, new ViewGroup.LayoutParams(-2, -1));
        setTabSelected(this.f1269e.getSelectedItemPosition());
    }

    public final void e() {
        this.d.removeAllViews();
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner != null) {
            ((TabAdapter) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1270f) {
            requestLayout();
        }
    }

    public final void f(int i2) {
        this.d.removeViewAt(i2);
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner != null) {
            ((TabAdapter) appCompatSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.f1270f) {
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Runnable runnable = this.f1267b;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ActionBarPolicy actionBarPolicyA = ActionBarPolicy.a(getContext());
        setContentHeight(actionBarPolicyA.c());
        this.f1271h = actionBarPolicyA.f900a.getResources().getDimensionPixelSize(R.dimen.abc_action_bar_stacked_tab_max_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.f1267b;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i2, long j2) {
        Callback.s(view);
        try {
            ((TabView) view).f1276b.b();
        } finally {
            Callback.t();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        boolean z = mode == 1073741824;
        setFillViewport(z);
        LinearLayoutCompat linearLayoutCompat = this.d;
        int childCount = linearLayoutCompat.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.g = -1;
        } else {
            if (childCount > 2) {
                this.g = (int) (View.MeasureSpec.getSize(i2) * 0.4f);
            } else {
                this.g = View.MeasureSpec.getSize(i2) / 2;
            }
            this.g = Math.min(this.g, this.f1271h);
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1272i, 1073741824);
        if (z || !this.f1270f) {
            d();
        } else {
            linearLayoutCompat.measure(0, iMakeMeasureSpec);
            if (linearLayoutCompat.getMeasuredWidth() > View.MeasureSpec.getSize(i2)) {
                AppCompatSpinner appCompatSpinner = this.f1269e;
                if (appCompatSpinner == null || appCompatSpinner.getParent() != this) {
                    if (this.f1269e == null) {
                        AppCompatSpinner appCompatSpinner2 = new AppCompatSpinner(getContext(), null, R.attr.actionDropDownStyle);
                        appCompatSpinner2.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
                        appCompatSpinner2.setOnItemSelectedListener(this);
                        this.f1269e = appCompatSpinner2;
                    }
                    removeView(linearLayoutCompat);
                    addView(this.f1269e, new ViewGroup.LayoutParams(-2, -1));
                    if (this.f1269e.getAdapter() == null) {
                        this.f1269e.setAdapter((SpinnerAdapter) new TabAdapter());
                    }
                    Runnable runnable = this.f1267b;
                    if (runnable != null) {
                        removeCallbacks(runnable);
                        this.f1267b = null;
                    }
                    this.f1269e.setSelection(this.f1273j);
                }
            } else {
                d();
            }
        }
        int measuredWidth = getMeasuredWidth();
        super.onMeasure(i2, iMakeMeasureSpec);
        int measuredWidth2 = getMeasuredWidth();
        if (!z || measuredWidth == measuredWidth2) {
            return;
        }
        setTabSelected(this.f1273j);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.f1270f = z;
    }

    public void setContentHeight(int i2) {
        this.f1272i = i2;
        requestLayout();
    }

    public void setTabSelected(int i2) {
        this.f1273j = i2;
        LinearLayoutCompat linearLayoutCompat = this.d;
        int childCount = linearLayoutCompat.getChildCount();
        int i3 = 0;
        while (i3 < childCount) {
            View childAt = linearLayoutCompat.getChildAt(i3);
            boolean z = i3 == i2;
            childAt.setSelected(z);
            if (z) {
                final View childAt2 = linearLayoutCompat.getChildAt(i2);
                Runnable runnable = this.f1267b;
                if (runnable != null) {
                    removeCallbacks(runnable);
                }
                Runnable runnable2 = new Runnable() { // from class: androidx.appcompat.widget.ScrollingTabContainerView.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ScrollingTabContainerView.this.smoothScrollTo(childAt2.getLeft() - ((ScrollingTabContainerView.this.getWidth() - childAt2.getWidth()) / 2), 0);
                        ScrollingTabContainerView.this.f1267b = null;
                    }
                };
                this.f1267b = runnable2;
                post(runnable2);
            }
            i3++;
        }
        AppCompatSpinner appCompatSpinner = this.f1269e;
        if (appCompatSpinner == null || i2 < 0) {
            return;
        }
        appCompatSpinner.setSelection(i2);
    }
}
