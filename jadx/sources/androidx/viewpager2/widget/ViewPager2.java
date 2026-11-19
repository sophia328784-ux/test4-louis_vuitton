package androidx.viewpager2.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.R$styleable;
import androidx.viewpager2.adapter.StatefulAdapter;
import defpackage.md;
import defpackage.r81;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class ViewPager2 extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Rect f20167b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f20168c;
    public final CompositeOnPageChangeCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f20169e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f20170f;
    public final RecyclerView.AdapterDataObserver g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public LinearLayoutManager f20171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Parcelable f20173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RecyclerView f20174k;
    public PagerSnapHelper l;
    public ScrollEventAdapter m;
    public CompositeOnPageChangeCallback n;
    public FakeDrag o;
    public PageTransformerAdapter p;
    public RecyclerView.ItemAnimator q;
    public boolean r;
    public boolean s;
    public int t;
    public PageAwareAccessibilityProvider u;

    /* JADX INFO: renamed from: androidx.viewpager2.widget.ViewPager2$4, reason: invalid class name */
    class AnonymousClass4 implements RecyclerView.OnChildAttachStateChangeListener {
        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void b(View view) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
        public final void c(View view) {
            RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
            if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                return;
            }
            md.k("Pages must fill the whole ViewPager2 (use match_parent)");
        }
    }

    public abstract class AccessibilityProvider {
    }

    public class LinearLayoutManagerImpl extends LinearLayoutManager {
        public LinearLayoutManagerImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public final void L0(RecyclerView.State state, int[] iArr) {
            ViewPager2 viewPager2 = ViewPager2.this;
            int offscreenPageLimit = viewPager2.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.L0(state, iArr);
                return;
            }
            int pageSize = viewPager2.getPageSize() * offscreenPageLimit;
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void c0(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.c0(recycler, state, accessibilityNodeInfoCompat);
            ViewPager2.this.u.getClass();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final void e0(RecyclerView.Recycler recycler, RecyclerView.State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int iN;
            int iN2;
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getOrientation() == 1) {
                viewPager2.f20171h.getClass();
                iN = RecyclerView.LayoutManager.N(view);
            } else {
                iN = 0;
            }
            if (viewPager2.getOrientation() == 0) {
                viewPager2.f20171h.getClass();
                iN2 = RecyclerView.LayoutManager.N(view);
            } else {
                iN2 = 0;
            }
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(iN, 1, false, iN2, 1));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean q0(RecyclerView.Recycler recycler, RecyclerView.State state, int i2, Bundle bundle) {
            ViewPager2.this.u.getClass();
            return super.q0(recycler, state, i2, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public final boolean v0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OffscreenPageLimit {
    }

    public static abstract class OnPageChangeCallback {
        public void a(int i2) {
        }

        public void b(int i2, int i3, float f2) {
        }

        public void c(int i2) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public class PageAwareAccessibilityProvider extends AccessibilityProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AccessibilityViewCommand f20178a = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.1
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean a(View view) {
                int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.s) {
                    viewPager2.d(currentItem);
                }
                return true;
            }
        };

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AccessibilityViewCommand f20179b = new AccessibilityViewCommand() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.2
            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean a(View view) {
                int currentItem = ((ViewPager2) view).getCurrentItem() - 1;
                ViewPager2 viewPager2 = ViewPager2.this;
                if (viewPager2.s) {
                    viewPager2.d(currentItem);
                }
                return true;
            }
        };

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public RecyclerView.AdapterDataObserver f20180c;

        public PageAwareAccessibilityProvider() {
        }

        public final void a() {
            int itemCount;
            int i2 = R.id.accessibilityActionPageLeft;
            ViewPager2 viewPager2 = ViewPager2.this;
            ViewCompat.q(R.id.accessibilityActionPageLeft, viewPager2);
            ViewCompat.n(0, viewPager2);
            ViewCompat.q(R.id.accessibilityActionPageRight, viewPager2);
            ViewCompat.n(0, viewPager2);
            ViewCompat.q(R.id.accessibilityActionPageUp, viewPager2);
            ViewCompat.n(0, viewPager2);
            ViewCompat.q(R.id.accessibilityActionPageDown, viewPager2);
            ViewCompat.n(0, viewPager2);
            if (viewPager2.getAdapter() == null || (itemCount = viewPager2.getAdapter().getItemCount()) == 0 || !viewPager2.s) {
                return;
            }
            int orientation = viewPager2.getOrientation();
            AccessibilityViewCommand accessibilityViewCommand = this.f20179b;
            AccessibilityViewCommand accessibilityViewCommand2 = this.f20178a;
            if (orientation != 0) {
                if (viewPager2.f20169e < itemCount - 1) {
                    ViewCompat.r(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, (CharSequence) null), accessibilityViewCommand2);
                }
                if (viewPager2.f20169e > 0) {
                    ViewCompat.r(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, (CharSequence) null), accessibilityViewCommand);
                    return;
                }
                return;
            }
            boolean z = viewPager2.f20171h.f19271b.getLayoutDirection() == 1;
            int i3 = z ? 16908360 : 16908361;
            if (z) {
                i2 = 16908361;
            }
            if (viewPager2.f20169e < itemCount - 1) {
                ViewCompat.r(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i3, (CharSequence) null), accessibilityViewCommand2);
            }
            if (viewPager2.f20169e > 0) {
                ViewCompat.r(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, (CharSequence) null), accessibilityViewCommand);
            }
        }
    }

    public interface PageTransformer {
        void a(float f2, View view);
    }

    public class PagerSnapHelperImpl extends PagerSnapHelper {
        public PagerSnapHelperImpl() {
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public final View e(RecyclerView.LayoutManager layoutManager) {
            ScrollEventAdapter scrollEventAdapter = ViewPager2.this.o.f20152a;
            return super.e(layoutManager);
        }
    }

    public class RecyclerViewImpl extends RecyclerView {
        public RecyclerViewImpl(Context context) {
            super(context);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public final CharSequence getAccessibilityClassName() {
            ViewPager2.this.u.getClass();
            return super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            ViewPager2 viewPager2 = ViewPager2.this;
            accessibilityEvent.setFromIndex(viewPager2.f20169e);
            accessibilityEvent.setToIndex(viewPager2.f20169e);
            accessibilityEvent.setSource(ViewPager2.this);
            accessibilityEvent.setClassName("androidx.viewpager.widget.ViewPager");
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.s && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            return ViewPager2.this.s && super.onTouchEvent(motionEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    public static class SmoothScrollToPosition implements Runnable {
        private final int mPosition;
        private final RecyclerView mRecyclerView;

        public SmoothScrollToPosition(int i2, RecyclerView recyclerView) {
            this.mPosition = i2;
            this.mRecyclerView = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRecyclerView.smoothScrollToPosition(this.mPosition);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        this.f20167b = new Rect();
        this.f20168c = new Rect();
        this.d = new CompositeOnPageChangeCallback();
        this.f20170f = false;
        this.g = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f20170f = true;
                viewPager2.m.l = true;
            }
        };
        this.f20172i = -1;
        this.q = null;
        this.r = false;
        this.s = true;
        this.t = -1;
        a(context, null);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        this.u = new PageAwareAccessibilityProvider();
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(context);
        this.f20174k = recyclerViewImpl;
        recyclerViewImpl.setId(View.generateViewId());
        this.f20174k.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(context);
        this.f20171h = linearLayoutManagerImpl;
        this.f20174k.setLayoutManager(linearLayoutManagerImpl);
        this.f20174k.setScrollingTouchSlop(1);
        int[] iArr = R$styleable.f20149a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        ViewCompat.s(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(0, 0));
            typedArrayObtainStyledAttributes.recycle();
            this.f20174k.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            this.f20174k.addOnChildAttachStateChangeListener(new AnonymousClass4());
            ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
            this.m = scrollEventAdapter;
            this.o = new FakeDrag(scrollEventAdapter);
            PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl();
            this.l = pagerSnapHelperImpl;
            pagerSnapHelperImpl.b(this.f20174k);
            this.f20174k.addOnScrollListener(this.m);
            CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback();
            this.n = compositeOnPageChangeCallback;
            this.m.f20155a = compositeOnPageChangeCallback;
            OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.2
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void a(int i2) {
                    if (i2 == 0) {
                        ViewPager2.this.f();
                    }
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void c(int i2) {
                    ViewPager2 viewPager2 = ViewPager2.this;
                    if (viewPager2.f20169e != i2) {
                        viewPager2.f20169e = i2;
                        viewPager2.u.a();
                    }
                }
            };
            OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback() { // from class: androidx.viewpager2.widget.ViewPager2.3
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public final void c(int i2) {
                    ViewPager2 viewPager2 = ViewPager2.this;
                    viewPager2.clearFocus();
                    if (viewPager2.hasFocus()) {
                        viewPager2.f20174k.requestFocus(2);
                    }
                }
            };
            this.n.f20151a.add(onPageChangeCallback);
            this.n.f20151a.add(onPageChangeCallback2);
            final PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.u;
            RecyclerView recyclerView = this.f20174k;
            pageAwareAccessibilityProvider.getClass();
            recyclerView.setImportantForAccessibility(2);
            pageAwareAccessibilityProvider.f20180c = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.3
                @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public final void onChanged() {
                    PageAwareAccessibilityProvider.this.a();
                }
            };
            ViewPager2 viewPager2 = ViewPager2.this;
            if (viewPager2.getImportantForAccessibility() == 0) {
                viewPager2.setImportantForAccessibility(1);
            }
            CompositeOnPageChangeCallback compositeOnPageChangeCallback2 = this.n;
            compositeOnPageChangeCallback2.f20151a.add(this.d);
            PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.f20171h);
            this.p = pageTransformerAdapter;
            this.n.f20151a.add(pageTransformerAdapter);
            RecyclerView recyclerView2 = this.f20174k;
            attachViewToParent(recyclerView2, 0, recyclerView2.getLayoutParams());
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void b(OnPageChangeCallback onPageChangeCallback) {
        this.d.f20151a.add(onPageChangeCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c() {
        RecyclerView.Adapter adapter;
        if (this.f20172i == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        if (this.f20173j != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).a();
            }
            this.f20173j = null;
        }
        int iMax = Math.max(0, Math.min(this.f20172i, adapter.getItemCount() - 1));
        this.f20169e = iMax;
        this.f20172i = -1;
        this.f20174k.scrollToPosition(iMax);
        this.u.a();
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i2) {
        return this.f20174k.canScrollHorizontally(i2);
    }

    @Override // android.view.View
    public final boolean canScrollVertically(int i2) {
        return this.f20174k.canScrollVertically(i2);
    }

    public final void d(int i2) {
        OnPageChangeCallback onPageChangeCallback;
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.f20172i != -1) {
                this.f20172i = Math.max(i2, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() <= 0) {
            return;
        }
        int iMin = Math.min(Math.max(i2, 0), adapter.getItemCount() - 1);
        int i3 = this.f20169e;
        if ((iMin == i3 && this.m.f20159f == 0) || iMin == i3) {
            return;
        }
        double d = i3;
        this.f20169e = iMin;
        this.u.a();
        ScrollEventAdapter scrollEventAdapter = this.m;
        if (scrollEventAdapter.f20159f != 0) {
            scrollEventAdapter.e();
            ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.g;
            d = ((double) scrollEventValues.f20164a) + ((double) scrollEventValues.f20165b);
        }
        ScrollEventAdapter scrollEventAdapter2 = this.m;
        scrollEventAdapter2.getClass();
        scrollEventAdapter2.f20158e = 2;
        boolean z = scrollEventAdapter2.f20161i != iMin;
        scrollEventAdapter2.f20161i = iMin;
        scrollEventAdapter2.c(2);
        if (z && (onPageChangeCallback = scrollEventAdapter2.f20155a) != null) {
            onPageChangeCallback.c(iMin);
        }
        double d2 = iMin;
        double dAbs = Math.abs(d2 - d);
        RecyclerView recyclerView = this.f20174k;
        if (dAbs <= 3.0d) {
            recyclerView.smoothScrollToPosition(iMin);
            return;
        }
        recyclerView.scrollToPosition(d2 > d ? iMin - 3 : iMin + 3);
        RecyclerView recyclerView2 = this.f20174k;
        recyclerView2.post(new SmoothScrollToPosition(iMin, recyclerView2));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        Parcelable parcelable = (Parcelable) sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i2 = ((SavedState) parcelable).f20186b;
            sparseArray.put(this.f20174k.getId(), (Parcelable) sparseArray.get(i2));
            sparseArray.remove(i2);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        c();
    }

    public final void e(OnPageChangeCallback onPageChangeCallback) {
        this.d.f20151a.remove(onPageChangeCallback);
    }

    public final void f() {
        PagerSnapHelper pagerSnapHelper = this.l;
        if (pagerSnapHelper == null) {
            md.k("Design assumption violated.");
            return;
        }
        View viewE = pagerSnapHelper.e(this.f20171h);
        if (viewE == null) {
            return;
        }
        this.f20171h.getClass();
        int iN = RecyclerView.LayoutManager.N(viewE);
        if (iN != this.f20169e && getScrollState() == 0) {
            this.n.c(iN);
        }
        this.f20170f = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        this.u.getClass();
        this.u.getClass();
        return "androidx.viewpager.widget.ViewPager";
    }

    public RecyclerView.Adapter getAdapter() {
        return this.f20174k.getAdapter();
    }

    public int getCurrentItem() {
        return this.f20169e;
    }

    public int getItemDecorationCount() {
        return this.f20174k.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.t;
    }

    public int getOrientation() {
        return this.f20171h.p == 1 ? 1 : 0;
    }

    public int getPageSize() {
        int height;
        int paddingBottom;
        RecyclerView recyclerView = this.f20174k;
        if (getOrientation() == 0) {
            height = recyclerView.getWidth() - recyclerView.getPaddingLeft();
            paddingBottom = recyclerView.getPaddingRight();
        } else {
            height = recyclerView.getHeight() - recyclerView.getPaddingTop();
            paddingBottom = recyclerView.getPaddingBottom();
        }
        return height - paddingBottom;
    }

    public int getScrollState() {
        return this.m.f20159f;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int itemCount;
        int itemCount2;
        int itemCount3;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.u;
        pageAwareAccessibilityProvider.getClass();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
        ViewPager2 viewPager2 = ViewPager2.this;
        if (viewPager2.getAdapter() == null) {
            itemCount = 0;
            itemCount2 = 0;
        } else if (viewPager2.getOrientation() == 1) {
            itemCount = viewPager2.getAdapter().getItemCount();
            itemCount2 = 1;
        } else {
            itemCount2 = viewPager2.getAdapter().getItemCount();
            itemCount = 1;
        }
        accessibilityNodeInfoCompat.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(itemCount, itemCount2, 0));
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        if (adapter == null || (itemCount3 = adapter.getItemCount()) == 0 || !viewPager2.s) {
            return;
        }
        if (viewPager2.f20169e > 0) {
            accessibilityNodeInfoCompat.a(8192);
        }
        if (viewPager2.f20169e < itemCount3 - 1) {
            accessibilityNodeInfoCompat.a(4096);
        }
        accessibilityNodeInfoCompat.m(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredWidth = this.f20174k.getMeasuredWidth();
        int measuredHeight = this.f20174k.getMeasuredHeight();
        int paddingLeft = getPaddingLeft();
        Rect rect = this.f20167b;
        rect.left = paddingLeft;
        rect.right = (i4 - i2) - getPaddingRight();
        rect.top = getPaddingTop();
        rect.bottom = (i5 - i3) - getPaddingBottom();
        Rect rect2 = this.f20168c;
        Gravity.apply(8388659, measuredWidth, measuredHeight, rect, rect2);
        this.f20174k.layout(rect2.left, rect2.top, rect2.right, rect2.bottom);
        if (this.f20170f) {
            f();
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        measureChild(this.f20174k, i2, i3);
        int measuredWidth = this.f20174k.getMeasuredWidth();
        int measuredHeight = this.f20174k.getMeasuredHeight();
        int measuredState = this.f20174k.getMeasuredState();
        int paddingRight = getPaddingRight() + getPaddingLeft() + measuredWidth;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + measuredHeight;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i2, measuredState), View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i3, measuredState << 16));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f20172i = savedState.f20187c;
        this.f20173j = savedState.d;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f20186b = this.f20174k.getId();
        int i2 = this.f20172i;
        if (i2 == -1) {
            i2 = this.f20169e;
        }
        savedState.f20187c = i2;
        Parcelable parcelable = this.f20173j;
        if (parcelable != null) {
            savedState.d = parcelable;
            return savedState;
        }
        Object adapter = this.f20174k.getAdapter();
        if (adapter instanceof StatefulAdapter) {
            savedState.d = ((StatefulAdapter) adapter).saveState();
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public final void onViewAdded(View view) {
        throw new IllegalStateException("ViewPager2 does not support direct child views");
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i2, Bundle bundle) {
        this.u.getClass();
        if (i2 != 8192 && i2 != 4096) {
            return super.performAccessibilityAction(i2, bundle);
        }
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.u;
        pageAwareAccessibilityProvider.getClass();
        ViewPager2 viewPager2 = ViewPager2.this;
        if (i2 != 8192 && i2 != 4096) {
            r81.b();
            return false;
        }
        int currentItem = i2 == 8192 ? viewPager2.getCurrentItem() - 1 : viewPager2.getCurrentItem() + 1;
        if (viewPager2.s) {
            viewPager2.d(currentItem);
        }
        return true;
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.f20174k.getAdapter();
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider = this.u;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(pageAwareAccessibilityProvider.f20180c);
        } else {
            pageAwareAccessibilityProvider.getClass();
        }
        RecyclerView.AdapterDataObserver adapterDataObserver = this.g;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(adapterDataObserver);
        }
        this.f20174k.setAdapter(adapter);
        this.f20169e = 0;
        c();
        PageAwareAccessibilityProvider pageAwareAccessibilityProvider2 = this.u;
        pageAwareAccessibilityProvider2.a();
        if (adapter != null) {
            adapter.registerAdapterDataObserver(pageAwareAccessibilityProvider2.f20180c);
        }
        if (adapter != null) {
            adapter.registerAdapterDataObserver(adapterDataObserver);
        }
    }

    public void setCurrentItem(int i2) {
        ScrollEventAdapter scrollEventAdapter = this.o.f20152a;
        d(i2);
    }

    @Override // android.view.View
    public void setLayoutDirection(int i2) {
        super.setLayoutDirection(i2);
        this.u.a();
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1 && i2 != -1) {
            md.n("Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0");
        } else {
            this.t = i2;
            this.f20174k.requestLayout();
        }
    }

    public void setOrientation(int i2) {
        this.f20171h.m1(i2);
        this.u.a();
    }

    public void setPageTransformer(PageTransformer pageTransformer) {
        boolean z = this.r;
        if (pageTransformer != null) {
            if (!z) {
                this.q = this.f20174k.getItemAnimator();
                this.r = true;
            }
            this.f20174k.setItemAnimator(null);
        } else if (z) {
            this.f20174k.setItemAnimator(this.q);
            this.q = null;
            this.r = false;
        }
        PageTransformerAdapter pageTransformerAdapter = this.p;
        if (pageTransformer == pageTransformerAdapter.f20154b) {
            return;
        }
        pageTransformerAdapter.f20154b = pageTransformer;
        if (pageTransformer == null) {
            return;
        }
        ScrollEventAdapter scrollEventAdapter = this.m;
        scrollEventAdapter.e();
        ScrollEventAdapter.ScrollEventValues scrollEventValues = scrollEventAdapter.g;
        double d = ((double) scrollEventValues.f20164a) + ((double) scrollEventValues.f20165b);
        int i2 = (int) d;
        float f2 = (float) (d - ((double) i2));
        this.p.b(i2, Math.round(getPageSize() * f2), f2);
    }

    public void setUserInputEnabled(boolean z) {
        this.s = z;
        this.u.a();
    }

    public static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i2, int i3, int i4) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i3, Object obj) {
            onChanged();
        }
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f20186b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f20187c;
        public Parcelable d;

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f20186b);
            parcel.writeInt(this.f20187c);
            parcel.writeParcelable(this.d, i2);
        }

        /* JADX INFO: renamed from: androidx.viewpager2.widget.ViewPager2$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState(parcel, null);
                savedState.f20186b = parcel.readInt();
                savedState.f20187c = parcel.readInt();
                savedState.d = parcel.readParcelable(null);
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState(parcel, classLoader);
                savedState.f20186b = parcel.readInt();
                savedState.f20187c = parcel.readInt();
                savedState.d = parcel.readParcelable(classLoader);
                return savedState;
            }
        }
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20167b = new Rect();
        this.f20168c = new Rect();
        this.d = new CompositeOnPageChangeCallback();
        this.f20170f = false;
        this.g = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f20170f = true;
                viewPager2.m.l = true;
            }
        };
        this.f20172i = -1;
        this.q = null;
        this.r = false;
        this.s = true;
        this.t = -1;
        a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f20167b = new Rect();
        this.f20168c = new Rect();
        this.d = new CompositeOnPageChangeCallback();
        this.f20170f = false;
        this.g = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f20170f = true;
                viewPager2.m.l = true;
            }
        };
        this.f20172i = -1;
        this.q = null;
        this.r = false;
        this.s = true;
        this.t = -1;
        a(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f20167b = new Rect();
        this.f20168c = new Rect();
        this.d = new CompositeOnPageChangeCallback();
        this.f20170f = false;
        this.g = new DataSetChangeObserver() { // from class: androidx.viewpager2.widget.ViewPager2.1
            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public final void onChanged() {
                ViewPager2 viewPager2 = ViewPager2.this;
                viewPager2.f20170f = true;
                viewPager2.m.l = true;
            }
        };
        this.f20172i = -1;
        this.q = null;
        this.r = false;
        this.s = true;
        this.t = -1;
        a(context, attributeSet);
    }
}
