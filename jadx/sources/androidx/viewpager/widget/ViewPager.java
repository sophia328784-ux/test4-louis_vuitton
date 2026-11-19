package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import defpackage.a;
import defpackage.cj;
import defpackage.d20;
import defpackage.md;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ViewPager extends ViewGroup {
    public int A;
    public int B;
    public int C;
    public float D;
    public float E;
    public float F;
    public float G;
    public int H;
    public VelocityTracker I;
    public int J;
    public int K;
    public int L;
    public int M;
    public EdgeEffect N;
    public EdgeEffect O;
    public boolean P;
    public boolean Q;
    public int R;
    public ArrayList S;
    public OnPageChangeListener T;
    public ArrayList V;
    public final Runnable W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f20129c;
    public final ItemInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f20130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public PagerAdapter f20131f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f20132h;
    public int h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Parcelable f20133i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ClassLoader f20134j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Scroller f20135k;
    public boolean l;
    public PagerObserver m;
    public int n;
    public Drawable o;
    public int p;
    public int q;
    public float r;
    public float s;
    public int t;
    public boolean u;
    public boolean v;
    public boolean w;
    public int x;
    public boolean y;
    public boolean z;
    public static final int[] t0 = {R.attr.layout_gravity};
    public static final Comparator b1 = new AnonymousClass1();
    public static final Interpolator c1 = new AnonymousClass2();

    /* JADX INFO: renamed from: androidx.viewpager.widget.ViewPager$1, reason: invalid class name */
    public static class AnonymousClass1 implements Comparator<ItemInfo> {
        @Override // java.util.Comparator
        public final int compare(ItemInfo itemInfo, ItemInfo itemInfo2) {
            return itemInfo.f20139b - itemInfo2.f20139b;
        }
    }

    /* JADX INFO: renamed from: androidx.viewpager.widget.ViewPager$2, reason: invalid class name */
    public static class AnonymousClass2 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface DecorView {
    }

    public static class ItemInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Object f20138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f20139b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f20140c;
        public float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f20141e;
    }

    public class MyAccessibilityDelegate extends AccessibilityDelegateCompat {
        public MyAccessibilityDelegate() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            accessibilityEvent.setScrollable(viewPager.f20131f != null);
            if (accessibilityEvent.getEventType() != 4096 || viewPager.f20131f == null) {
                return;
            }
            accessibilityEvent.setItemCount(2);
            accessibilityEvent.setFromIndex(viewPager.g);
            accessibilityEvent.setToIndex(viewPager.g);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
            accessibilityNodeInfoCompat.i(ViewPager.class.getName());
            ViewPager viewPager = ViewPager.this;
            accessibilityNodeInfoCompat.m(viewPager.f20131f != null);
            if (viewPager.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.a(4096);
            }
            if (viewPager.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.a(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i2, Bundle bundle) {
            if (super.g(view, i2, bundle)) {
                return true;
            }
            ViewPager viewPager = ViewPager.this;
            if (i2 == 4096) {
                if (!viewPager.canScrollHorizontally(1)) {
                    return false;
                }
                viewPager.setCurrentItem(viewPager.g + 1);
                return true;
            }
            if (i2 != 8192 || !viewPager.canScrollHorizontally(-1)) {
                return false;
            }
            viewPager.setCurrentItem(viewPager.g - 1);
            return true;
        }
    }

    public interface OnAdapterChangeListener {
        void a(ViewPager viewPager, PagerAdapter pagerAdapter);
    }

    public interface OnPageChangeListener {
        void a(float f2, int i2);

        void b(int i2);

        void c(int i2);
    }

    public interface PageTransformer {
    }

    public class PagerObserver extends DataSetObserver {
        public PagerObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ViewPager.this.e();
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ViewPager.this.e();
        }
    }

    public ViewPager(Context context) {
        super(context);
        this.f20129c = new ArrayList();
        this.d = new ItemInfo();
        this.f20130e = new Rect();
        this.f20132h = -1;
        this.f20133i = null;
        this.f20134j = null;
        this.r = -3.4028235E38f;
        this.s = Float.MAX_VALUE;
        this.x = 1;
        this.H = -1;
        this.P = true;
        this.W = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.q();
            }
        };
        this.h0 = 0;
        k();
    }

    public static boolean c(int i2, int i3, int i4, View view, boolean z) {
        int i5;
        if (!(view instanceof ViewGroup)) {
            return z ? false : false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int scrollX = view.getScrollX();
        int scrollY = view.getScrollY();
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            int i6 = i3 + scrollX;
            if (i6 < childAt.getLeft() || i6 >= childAt.getRight() || (i5 = i4 + scrollY) < childAt.getTop() || i5 >= childAt.getBottom() || !c(i2, i6 - childAt.getLeft(), i5 - childAt.getTop(), childAt, true)) {
            }
        }
        if (z || !view.canScrollHorizontally(-i2)) {
        }
        return true;
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.v != z) {
            this.v = z;
        }
    }

    public final ItemInfo a(int i2, int i3) {
        ItemInfo itemInfo = new ItemInfo();
        itemInfo.f20139b = i2;
        itemInfo.f20138a = this.f20131f.d(this, i2);
        this.f20131f.getClass();
        itemInfo.d = 1.0f;
        ArrayList arrayList = this.f20129c;
        if (i3 < 0 || i3 >= arrayList.size()) {
            arrayList.add(itemInfo);
            return itemInfo;
        }
        arrayList.add(i3, itemInfo);
        return itemInfo;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i2, int i3) {
        ItemInfo itemInfoH;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0 && (itemInfoH = h(childAt)) != null && itemInfoH.f20139b == this.g) {
                    childAt.addFocusables(arrayList, i2, i3);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i3 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList arrayList) {
        ItemInfo itemInfoH;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (itemInfoH = h(childAt)) != null && itemInfoH.f20139b == this.g) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = new LayoutParams();
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z = layoutParams2.f20142a | (view.getClass().getAnnotation(DecorView.class) != null);
        layoutParams2.f20142a = z;
        if (!this.u) {
            super.addView(view, i2, layoutParams);
        } else if (z) {
            md.k("Cannot add pager decor view during layout");
        } else {
            layoutParams2.d = true;
            addViewInLayout(view, i2, layoutParams);
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0095  */
    public final boolean b(int i2) {
        boolean zRequestFocus;
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
            break;
        }
        if (viewFindFocus != null) {
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    }
                    viewFindFocus = null;
                    break;
                }
                if (parent == this) {
                    break;
                }
                parent = parent.getParent();
            }
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i2);
        boolean z = true;
        boolean zN = false;
        if (viewFindNextFocus != null && viewFindNextFocus != viewFindFocus) {
            Rect rect = this.f20130e;
            if (i2 == 17) {
                int i3 = g(viewFindNextFocus, rect).left;
                int i4 = g(viewFindFocus, rect).left;
                if (viewFindFocus == null || i3 < i4) {
                    zRequestFocus = viewFindNextFocus.requestFocus();
                } else {
                    int i5 = this.g;
                    if (i5 > 0) {
                        this.w = false;
                        v(i5 - 1, 0, true, false);
                    } else {
                        z = false;
                    }
                    zN = z;
                }
            } else if (i2 == 66) {
                zRequestFocus = (viewFindFocus == null || g(viewFindNextFocus, rect).left > g(viewFindFocus, rect).left) ? viewFindNextFocus.requestFocus() : n();
            }
            zN = zRequestFocus;
        } else if (i2 == 17 || i2 == 1) {
            int i6 = this.g;
            if (i6 > 0) {
                this.w = false;
                v(i6 - 1, 0, true, false);
            } else {
                z = false;
            }
            zN = z;
        } else if (i2 == 66 || i2 == 2) {
            zN = n();
        }
        if (zN) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i2));
        }
        return zN;
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i2) {
        if (this.f20131f == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i2 < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.r));
        }
        return i2 > 0 && scrollX < ((int) (((float) clientWidth) * this.s));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.l = true;
        if (this.f20135k.isFinished() || !this.f20135k.computeScrollOffset()) {
            d(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f20135k.getCurrX();
        int currY = this.f20135k.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!o(currX)) {
                this.f20135k.abortAnimation();
                scrollTo(0, currY);
            }
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        postInvalidateOnAnimation();
    }

    public final void d(boolean z) {
        boolean z2 = this.h0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f20135k.isFinished()) {
                this.f20135k.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f20135k.getCurrX();
                int currY = this.f20135k.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        o(currX);
                    }
                }
            }
        }
        this.w = false;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f20129c;
            if (i2 >= arrayList.size()) {
                break;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
            if (itemInfo.f20140c) {
                itemInfo.f20140c = false;
                z2 = true;
            }
            i2++;
        }
        if (z2) {
            Runnable runnable = this.W;
            if (!z) {
                runnable.run();
            } else {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                postOnAnimation(runnable);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0061  */
    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zB;
        if (!super.dispatchKeyEvent(keyEvent)) {
            if (keyEvent.getAction() != 0) {
                zB = false;
            } else {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode != 21) {
                    if (keyCode == 22) {
                        zB = keyEvent.hasModifiers(2) ? n() : b(66);
                    } else if (keyCode != 61) {
                        zB = false;
                    } else if (keyEvent.hasNoModifiers()) {
                        zB = b(2);
                    } else if (keyEvent.hasModifiers(1)) {
                        zB = b(1);
                    } else {
                        zB = false;
                    }
                } else if (keyEvent.hasModifiers(2)) {
                    int i2 = this.g;
                    if (i2 > 0) {
                        this.w = false;
                        v(i2 - 1, 0, true, false);
                        zB = true;
                    } else {
                        zB = false;
                    }
                } else {
                    zB = b(17);
                }
            }
            if (!zB) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ItemInfo itemInfoH;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (itemInfoH = h(childAt)) != null && itemInfoH.f20139b == this.g && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean zDraw = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && this.f20131f != null)) {
            if (!this.N.isFinished()) {
                int iSave = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate(getPaddingTop() + (-height), this.r * width);
                this.N.setSize(height, width);
                zDraw = this.N.draw(canvas);
                canvas.restoreToCount(iSave);
            }
            if (!this.O.isFinished()) {
                int iSave2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.s + 1.0f)) * width2);
                this.O.setSize(height2, width2);
                zDraw |= this.O.draw(canvas);
                canvas.restoreToCount(iSave2);
            }
        } else {
            this.N.finish();
            this.O.finish();
        }
        if (zDraw) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.o;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    public final void e() {
        this.f20131f.getClass();
        this.f20128b = 2;
        ArrayList arrayList = this.f20129c;
        boolean z = arrayList.size() < (this.x * 2) + 1 && arrayList.size() < 2;
        int i2 = this.g;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i3);
            PagerAdapter pagerAdapter = this.f20131f;
            Object obj = itemInfo.f20138a;
            pagerAdapter.getClass();
        }
        Collections.sort(arrayList, b1);
        if (z) {
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i4).getLayoutParams();
                if (!layoutParams.f20142a) {
                    layoutParams.f20144c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
            }
            v(i2, 0, false, true);
            requestLayout();
        }
    }

    public final void f(int i2) {
        OnPageChangeListener onPageChangeListener = this.T;
        if (onPageChangeListener != null) {
            onPageChangeListener.c(i2);
        }
        ArrayList arrayList = this.S;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.S.get(i3);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.c(i2);
                }
            }
        }
    }

    public final Rect g(View view, Rect rect) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public PagerAdapter getAdapter() {
        return this.f20131f;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i2, int i3) {
        throw null;
    }

    public int getCurrentItem() {
        return this.g;
    }

    public int getOffscreenPageLimit() {
        return this.x;
    }

    public int getPageMargin() {
        return this.n;
    }

    public final ItemInfo h(View view) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f20129c;
            if (i2 >= arrayList.size()) {
                return null;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
            if (this.f20131f.e(view, itemInfo.f20138a)) {
                return itemInfo;
            }
            i2++;
        }
    }

    public final ItemInfo i() {
        ItemInfo itemInfo;
        int i2;
        int clientWidth = getClientWidth();
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f3 = clientWidth > 0 ? this.n / clientWidth : 0.0f;
        int i3 = 0;
        boolean z = true;
        ItemInfo itemInfo2 = null;
        int i4 = -1;
        float f4 = 0.0f;
        while (true) {
            ArrayList arrayList = this.f20129c;
            if (i3 >= arrayList.size()) {
                break;
            }
            ItemInfo itemInfo3 = (ItemInfo) arrayList.get(i3);
            if (z || itemInfo3.f20139b == (i2 = i4 + 1)) {
                itemInfo = itemInfo3;
            } else {
                float f5 = f2 + f4 + f3;
                ItemInfo itemInfo4 = this.d;
                itemInfo4.f20141e = f5;
                itemInfo4.f20139b = i2;
                this.f20131f.getClass();
                itemInfo4.d = 1.0f;
                i3--;
                itemInfo = itemInfo4;
            }
            f2 = itemInfo.f20141e;
            float f6 = itemInfo.d + f2 + f3;
            if (!z && scrollX < f2) {
                break;
            }
            if (scrollX < f6 || i3 == arrayList.size() - 1) {
                return itemInfo;
            }
            int i5 = itemInfo.f20139b;
            float f7 = itemInfo.d;
            i3++;
            ItemInfo itemInfo5 = itemInfo;
            i4 = i5;
            f4 = f7;
            itemInfo2 = itemInfo5;
            z = false;
        }
        return itemInfo2;
    }

    public final ItemInfo j(int i2) {
        int i3 = 0;
        while (true) {
            ArrayList arrayList = this.f20129c;
            if (i3 >= arrayList.size()) {
                return null;
            }
            ItemInfo itemInfo = (ItemInfo) arrayList.get(i3);
            if (itemInfo.f20139b == i2) {
                return itemInfo;
            }
            i3++;
        }
    }

    public final void k() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f20135k = new Scroller(context, c1);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.C = viewConfiguration.getScaledPagingTouchSlop();
        this.J = (int) (400.0f * f2);
        this.K = viewConfiguration.getScaledMaximumFlingVelocity();
        this.N = new EdgeEffect(context);
        this.O = new EdgeEffect(context);
        this.L = (int) (25.0f * f2);
        this.M = (int) (2.0f * f2);
        this.A = (int) (f2 * 16.0f);
        ViewCompat.t(this, new MyAccessibilityDelegate());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        ViewCompat.x(this, new OnApplyWindowInsetsListener() { // from class: androidx.viewpager.widget.ViewPager.4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Rect f20136b = new Rect();

            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat windowInsetsCompatO = ViewCompat.o(view, windowInsetsCompat);
                if (windowInsetsCompatO.n()) {
                    return windowInsetsCompatO;
                }
                int iH = windowInsetsCompatO.h();
                Rect rect = this.f20136b;
                rect.left = iH;
                rect.top = windowInsetsCompatO.j();
                rect.right = windowInsetsCompatO.i();
                rect.bottom = windowInsetsCompatO.g();
                ViewPager viewPager = ViewPager.this;
                int childCount = viewPager.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    WindowInsetsCompat windowInsetsCompatD = ViewCompat.d(viewPager.getChildAt(i2), windowInsetsCompatO);
                    rect.left = Math.min(windowInsetsCompatD.h(), rect.left);
                    rect.top = Math.min(windowInsetsCompatD.j(), rect.top);
                    rect.right = Math.min(windowInsetsCompatD.i(), rect.right);
                    rect.bottom = Math.min(windowInsetsCompatD.g(), rect.bottom);
                }
                return windowInsetsCompatO.p(rect.left, rect.top, rect.right, rect.bottom);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0065  */
    public final void l(int i2, int i3, float f2) {
        int iMax;
        int width;
        int left;
        if (this.R > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width2 = getWidth();
            int childCount = getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f20142a) {
                    int i5 = layoutParams.f20143b & 7;
                    if (i5 != 1) {
                        if (i5 == 3) {
                            width = childAt.getWidth() + paddingLeft;
                        } else if (i5 != 5) {
                            width = paddingLeft;
                        } else {
                            iMax = (width2 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        left = (paddingLeft + scrollX) - childAt.getLeft();
                        if (left != 0) {
                            childAt.offsetLeftAndRight(left);
                        }
                        paddingLeft = width;
                    } else {
                        iMax = Math.max((width2 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i6 = iMax;
                    width = paddingLeft;
                    paddingLeft = i6;
                    left = (paddingLeft + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                    paddingLeft = width;
                }
            }
        }
        OnPageChangeListener onPageChangeListener = this.T;
        if (onPageChangeListener != null) {
            onPageChangeListener.a(f2, i2);
        }
        ArrayList arrayList = this.S;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i7 = 0; i7 < size; i7++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.S.get(i7);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.a(f2, i2);
                }
            }
        }
        this.Q = true;
    }

    public final void m(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.H) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.D = motionEvent.getX(i2);
            this.H = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.I;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean n() {
        int i2;
        if (this.f20131f == null || (i2 = this.g) >= 1) {
            return false;
        }
        this.w = false;
        v(i2 + 1, 0, true, false);
        return true;
    }

    public final boolean o(int i2) {
        if (this.f20129c.size() == 0) {
            if (!this.P) {
                this.Q = false;
                l(0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                if (!this.Q) {
                    md.k("onPageScrolled did not call superclass implementation");
                    return false;
                }
            }
            return false;
        }
        ItemInfo itemInfoI = i();
        int clientWidth = getClientWidth();
        int i3 = this.n;
        int i4 = clientWidth + i3;
        float f2 = clientWidth;
        int i5 = itemInfoI.f20139b;
        float f3 = ((i2 / f2) - itemInfoI.f20141e) / (itemInfoI.d + (i3 / f2));
        this.Q = false;
        l(i5, (int) (i4 * f3), f3);
        if (this.Q) {
            return true;
        }
        md.k("onPageScrolled did not call superclass implementation");
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.P = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.W);
        Scroller scroller = this.f20135k;
        if (scroller != null && !scroller.isFinished()) {
            this.f20135k.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i2;
        float f2;
        super.onDraw(canvas);
        if (this.n <= 0 || this.o == null) {
            return;
        }
        ArrayList arrayList = this.f20129c;
        if (arrayList.size() <= 0 || this.f20131f == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f3 = width;
        float f4 = this.n / f3;
        int i3 = 0;
        ItemInfo itemInfo = (ItemInfo) arrayList.get(0);
        float f5 = itemInfo.f20141e;
        int size = arrayList.size();
        int i4 = itemInfo.f20139b;
        int i5 = ((ItemInfo) arrayList.get(size - 1)).f20139b;
        while (i4 < i5) {
            while (true) {
                i2 = itemInfo.f20139b;
                if (i4 <= i2 || i3 >= size) {
                    break;
                }
                i3++;
                itemInfo = (ItemInfo) arrayList.get(i3);
            }
            if (i4 == i2) {
                float f6 = itemInfo.f20141e;
                float f7 = itemInfo.d;
                f2 = (f6 + f7) * f3;
                f5 = f6 + f7 + f4;
            } else {
                this.f20131f.getClass();
                f2 = (f5 + 1.0f) * f3;
                f5 = 1.0f + f4 + f5;
            }
            if (this.n + f2 > scrollX) {
                this.o.setBounds(Math.round(f2), this.p, Math.round(this.n + f2), this.q);
                this.o.draw(canvas);
            }
            if (f2 > scrollX + width) {
                return;
            }
            i4++;
            arrayList = arrayList;
            scrollX = scrollX;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            t();
            return false;
        }
        if (action != 0) {
            if (this.y) {
                return true;
            }
            if (this.z) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.F = x;
            this.D = x;
            float y = motionEvent.getY();
            this.G = y;
            this.E = y;
            this.H = motionEvent.getPointerId(0);
            this.z = false;
            this.l = true;
            this.f20135k.computeScrollOffset();
            if (this.h0 != 2 || Math.abs(this.f20135k.getFinalX() - this.f20135k.getCurrX()) <= this.M) {
                d(false);
                this.y = false;
            } else {
                this.f20135k.abortAnimation();
                this.w = false;
                q();
                this.y = true;
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                setScrollState(1);
            }
        } else if (action == 2) {
            int i2 = this.H;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                float x2 = motionEvent.getX(iFindPointerIndex);
                float f2 = x2 - this.D;
                float fAbs = Math.abs(f2);
                float y2 = motionEvent.getY(iFindPointerIndex);
                float fAbs2 = Math.abs(y2 - this.G);
                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float f3 = this.D;
                    if ((f3 >= this.B || f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) && ((f3 <= getWidth() - this.B || f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) && c((int) f2, (int) x2, (int) y2, this, false))) {
                        this.D = x2;
                        this.E = y2;
                        this.z = true;
                        return false;
                    }
                }
                float f4 = this.C;
                if (fAbs > f4 && fAbs * 0.5f > fAbs2) {
                    this.y = true;
                    ViewParent parent2 = getParent();
                    if (parent2 != null) {
                        parent2.requestDisallowInterceptTouchEvent(true);
                    }
                    setScrollState(1);
                    float f5 = this.F;
                    float f6 = this.C;
                    this.D = f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? f5 + f6 : f5 - f6;
                    this.E = y2;
                    setScrollingCacheEnabled(true);
                } else if (fAbs2 > f4) {
                    this.z = true;
                }
                if (this.y && p(x2)) {
                    WeakHashMap weakHashMap = ViewCompat.f12200a;
                    postInvalidateOnAnimation();
                }
            }
        } else if (action == 6) {
            m(motionEvent);
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        return this.y;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0072  */
    /* JADX WARN: Code duplicated, block: B:24:0x0076  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        ItemInfo itemInfoH;
        int iMax;
        int measuredWidth;
        int iMax2;
        int measuredHeight;
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f20142a) {
                    int i10 = layoutParams.f20143b;
                    int i11 = i10 & 7;
                    int i12 = i10 & 112;
                    if (i11 != 1) {
                        if (i11 == 3) {
                            measuredWidth = childAt.getMeasuredWidth() + paddingLeft;
                        } else if (i11 != 5) {
                            measuredWidth = paddingLeft;
                        } else {
                            iMax = (i6 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                        }
                        if (i12 != 16) {
                            if (i12 != 48) {
                                measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                            } else if (i12 != 80) {
                                measuredHeight = paddingTop;
                            } else {
                                iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                                paddingBottom += childAt.getMeasuredHeight();
                            }
                            int i13 = paddingLeft + scrollX;
                            childAt.layout(i13, paddingTop, childAt.getMeasuredWidth() + i13, childAt.getMeasuredHeight() + paddingTop);
                            i8++;
                            paddingTop = measuredHeight;
                            paddingLeft = measuredWidth;
                        } else {
                            iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                        }
                        int i14 = iMax2;
                        measuredHeight = paddingTop;
                        paddingTop = i14;
                        int i15 = paddingLeft + scrollX;
                        childAt.layout(i15, paddingTop, childAt.getMeasuredWidth() + i15, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax = Math.max((i6 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                    }
                    int i16 = iMax;
                    measuredWidth = paddingLeft;
                    paddingLeft = i16;
                    if (i12 != 16) {
                        if (i12 != 48) {
                            measuredHeight = childAt.getMeasuredHeight() + paddingTop;
                        } else if (i12 != 80) {
                            measuredHeight = paddingTop;
                        } else {
                            iMax2 = (i7 - paddingBottom) - childAt.getMeasuredHeight();
                            paddingBottom += childAt.getMeasuredHeight();
                        }
                        int i17 = paddingLeft + scrollX;
                        childAt.layout(i17, paddingTop, childAt.getMeasuredWidth() + i17, childAt.getMeasuredHeight() + paddingTop);
                        i8++;
                        paddingTop = measuredHeight;
                        paddingLeft = measuredWidth;
                    } else {
                        iMax2 = Math.max((i7 - childAt.getMeasuredHeight()) / 2, paddingTop);
                    }
                    int i18 = iMax2;
                    measuredHeight = paddingTop;
                    paddingTop = i18;
                    int i19 = paddingLeft + scrollX;
                    childAt.layout(i19, paddingTop, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + paddingTop);
                    i8++;
                    paddingTop = measuredHeight;
                    paddingLeft = measuredWidth;
                }
            }
        }
        int i20 = (i6 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                if (!layoutParams2.f20142a && (itemInfoH = h(childAt2)) != null) {
                    float f2 = i20;
                    int i22 = ((int) (itemInfoH.f20141e * f2)) + paddingLeft;
                    if (layoutParams2.d) {
                        layoutParams2.d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * layoutParams2.f20144c), 1073741824), View.MeasureSpec.makeMeasureSpec((i7 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.p = paddingTop;
        this.q = i7 - paddingBottom;
        this.R = i8;
        if (this.P) {
            z2 = false;
            u(this.g, 0, false, false);
        } else {
            z2 = false;
        }
        this.P = z2;
    }

    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        int i4;
        setMeasuredDimension(View.getDefaultSize(0, i2), View.getDefaultSize(0, i3));
        int measuredWidth = getMeasuredWidth();
        this.B = Math.min(measuredWidth / 10, this.A);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            boolean z = true;
            int i6 = 1073741824;
            if (i5 >= childCount) {
                break;
            }
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.f20142a) {
                int i7 = layoutParams2.f20143b;
                int i8 = i7 & 7;
                int i9 = i7 & 112;
                boolean z2 = i9 == 48 || i9 == 80;
                if (i8 != 3 && i8 != 5) {
                    z = false;
                }
                int i10 = Integer.MIN_VALUE;
                if (z2) {
                    i4 = Integer.MIN_VALUE;
                    i10 = 1073741824;
                } else {
                    i4 = z ? 1073741824 : Integer.MIN_VALUE;
                }
                int i11 = ((ViewGroup.LayoutParams) layoutParams2).width;
                if (i11 != -2) {
                    if (i11 == -1) {
                        i11 = paddingLeft;
                    }
                    i10 = 1073741824;
                } else {
                    i11 = paddingLeft;
                }
                int i12 = ((ViewGroup.LayoutParams) layoutParams2).height;
                if (i12 == -2) {
                    i12 = measuredHeight;
                    i6 = i4;
                } else if (i12 == -1) {
                    i12 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i11, i10), View.MeasureSpec.makeMeasureSpec(i12, i6));
                if (z2) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i5++;
        }
        View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.t = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.u = true;
        q();
        this.u = false;
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = getChildAt(i13);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.f20142a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * layoutParams.f20144c), 1073741824), this.t);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int i5;
        ItemInfo itemInfoH;
        int childCount = getChildCount();
        if ((i2 & 2) != 0) {
            i4 = childCount;
            i3 = 0;
            i5 = 1;
        } else {
            i3 = childCount - 1;
            i4 = -1;
            i5 = -1;
        }
        while (i3 != i4) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0 && (itemInfoH = h(childAt)) != null && itemInfoH.f20139b == this.g && childAt.requestFocus(i2, rect)) {
                return true;
            }
            i3 += i5;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        ClassLoader classLoader = savedState.f20148f;
        super.onRestoreInstanceState(savedState.f12555b);
        PagerAdapter pagerAdapter = this.f20131f;
        if (pagerAdapter != null) {
            pagerAdapter.f(savedState.f20147e, classLoader);
            v(savedState.d, 0, false, true);
        } else {
            this.f20132h = savedState.d;
            this.f20133i = savedState.f20147e;
            this.f20134j = classLoader;
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.g;
        PagerAdapter pagerAdapter = this.f20131f;
        if (pagerAdapter != null) {
            savedState.f20147e = pagerAdapter.g();
        }
        return savedState;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            int i6 = this.n;
            s(i2, i4, i6, i6);
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00d4  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zT = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || this.f20131f == null) {
            return false;
        }
        if (this.I == null) {
            this.I = VelocityTracker.obtain();
        }
        this.I.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f20135k.abortAnimation();
            this.w = false;
            q();
            float x = motionEvent.getX();
            this.F = x;
            this.D = x;
            float y = motionEvent.getY();
            this.G = y;
            this.E = y;
            this.H = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action != 2) {
                if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.D = motionEvent.getX(actionIndex);
                        this.H = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        m(motionEvent);
                        this.D = motionEvent.getX(motionEvent.findPointerIndex(this.H));
                    }
                } else if (this.y) {
                    u(this.g, 0, true, false);
                    zT = t();
                }
            } else if (!this.y) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.H);
                if (iFindPointerIndex == -1) {
                    zT = t();
                } else {
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float fAbs = Math.abs(x2 - this.D);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y2 - this.E);
                    if (fAbs > this.C && fAbs > fAbs2) {
                        this.y = true;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        float f2 = this.F;
                        float f3 = x2 - f2;
                        int i2 = this.C;
                        this.D = f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM ? f2 + i2 : f2 - i2;
                        this.E = y2;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                    if (this.y) {
                        zT = p(motionEvent.getX(motionEvent.findPointerIndex(this.H)));
                    }
                }
            } else if (this.y) {
                zT = p(motionEvent.getX(motionEvent.findPointerIndex(this.H)));
            }
        } else if (this.y) {
            VelocityTracker velocityTracker = this.I;
            velocityTracker.computeCurrentVelocity(1000, this.K);
            int xVelocity = (int) velocityTracker.getXVelocity(this.H);
            this.w = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            ItemInfo itemInfoI = i();
            float f4 = clientWidth;
            float f5 = this.n / f4;
            int iMax = itemInfoI.f20139b;
            float f6 = ((scrollX / f4) - itemInfoI.f20141e) / (itemInfoI.d + f5);
            if (Math.abs((int) (motionEvent.getX(motionEvent.findPointerIndex(this.H)) - this.F)) <= this.L || Math.abs(xVelocity) <= this.J) {
                iMax += (int) (f6 + (iMax >= this.g ? 0.4f : 0.6f));
            } else if (xVelocity <= 0) {
                iMax++;
            }
            ArrayList arrayList = this.f20129c;
            if (arrayList.size() > 0) {
                iMax = Math.max(((ItemInfo) arrayList.get(0)).f20139b, Math.min(iMax, ((ItemInfo) cj.c(1, arrayList)).f20139b));
            }
            v(iMax, xVelocity, true, true);
            zT = t();
        }
        if (zT) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            postInvalidateOnAnimation();
        }
        return true;
    }

    public final boolean p(float f2) {
        boolean z;
        boolean z2;
        float f3 = this.D - f2;
        this.D = f2;
        float scrollX = getScrollX() + f3;
        float clientWidth = getClientWidth();
        float f4 = this.r * clientWidth;
        float f5 = this.s * clientWidth;
        ArrayList arrayList = this.f20129c;
        boolean z3 = false;
        ItemInfo itemInfo = (ItemInfo) arrayList.get(0);
        ItemInfo itemInfo2 = (ItemInfo) cj.c(1, arrayList);
        if (itemInfo.f20139b != 0) {
            f4 = itemInfo.f20141e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        int i2 = itemInfo2.f20139b;
        this.f20131f.getClass();
        if (i2 != 1) {
            f5 = itemInfo2.f20141e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f4) {
            if (z) {
                this.N.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z2) {
                this.O.onPull(Math.abs(scrollX - f5) / clientWidth);
                z3 = true;
            }
            scrollX = f5;
        }
        int i3 = (int) scrollX;
        this.D = (scrollX - i3) + this.D;
        scrollTo(i3, getScrollY());
        o(i3);
        return z3;
    }

    public final void q() {
        r(this.g);
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00c1 A[PHI: r7 r11 r14
      0x00c1: PHI (r7v15 int) = (r7v14 int), (r7v3 int), (r7v17 int) binds: [B:59:0x00e4, B:56:0x00d0, B:48:0x00b8] A[DONT_GENERATE, DONT_INLINE]
      0x00c1: PHI (r11v34 int) = (r11v1 int), (r11v33 int), (r11v36 int) binds: [B:59:0x00e4, B:56:0x00d0, B:48:0x00b8] A[DONT_GENERATE, DONT_INLINE]
      0x00c1: PHI (r14v13 float) = (r14v11 float), (r14v12 float), (r14v3 float) binds: [B:59:0x00e4, B:56:0x00d0, B:48:0x00b8] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:85:0x0141 A[PHI: r3 r13
      0x0141: PHI (r3v23 float) = (r3v21 float), (r3v22 float), (r3v20 float) binds: [B:93:0x0168, B:90:0x0152, B:83:0x0138] A[DONT_GENERATE, DONT_INLINE]
      0x0141: PHI (r13v23 int) = (r13v21 int), (r13v22 int), (r13v20 int) binds: [B:93:0x0168, B:90:0x0152, B:83:0x0138] A[DONT_GENERATE, DONT_INLINE]] */
    public final void r(int i2) {
        ItemInfo itemInfoJ;
        String hexString;
        ArrayList arrayList;
        ItemInfo itemInfoA;
        ItemInfo itemInfoH;
        ItemInfo itemInfoH2;
        int i3;
        int i4;
        ItemInfo itemInfo;
        ItemInfo itemInfo2;
        int i5 = this.g;
        if (i5 != i2) {
            itemInfoJ = j(i5);
            this.g = i2;
        } else {
            itemInfoJ = null;
        }
        if (this.f20131f == null || this.w || getWindowToken() == null) {
            return;
        }
        this.f20131f.i(this);
        int i6 = this.x;
        int iMax = Math.max(0, this.g - i6);
        this.f20131f.getClass();
        int iMin = Math.min(1, this.g + i6);
        if (2 != this.f20128b) {
            try {
                hexString = getResources().getResourceName(getId());
            } catch (Resources.NotFoundException unused) {
                hexString = Integer.toHexString(getId());
            }
            StringBuilder sb = new StringBuilder("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ");
            sb.append(this.f20128b);
            sb.append(", found: 2 Pager id: ");
            sb.append(hexString);
            sb.append(" Pager class: ");
            sb.append(getClass());
            d20.k(sb, " Problematic adapter: ", this.f20131f.getClass());
            return;
        }
        int i7 = 0;
        while (true) {
            arrayList = this.f20129c;
            if (i7 < arrayList.size()) {
                itemInfoA = (ItemInfo) arrayList.get(i7);
                int i8 = itemInfoA.f20139b;
                int i9 = this.g;
                if (i8 >= i9) {
                    if (i8 != i9) {
                        break;
                    } else {
                        break;
                    }
                }
                i7++;
            }
            itemInfoA = null;
            break;
        }
        if (itemInfoA == null) {
            itemInfoA = a(this.g, i7);
        }
        int i10 = i7 - 1;
        ItemInfo itemInfo3 = i10 >= 0 ? (ItemInfo) arrayList.get(i10) : null;
        int clientWidth = getClientWidth();
        float paddingLeft = clientWidth <= 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : (getPaddingLeft() / clientWidth) + (2.0f - itemInfoA.d);
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        for (int i11 = this.g - 1; i11 >= 0; i11--) {
            if (f2 >= paddingLeft && i11 < iMax) {
                if (itemInfo3 == null) {
                    break;
                }
                if (i11 == itemInfo3.f20139b && !itemInfo3.f20140c) {
                    arrayList.remove(i10);
                    this.f20131f.a(i11, itemInfo3.f20138a);
                    i10--;
                    i7--;
                    if (i10 >= 0) {
                        itemInfo3 = (ItemInfo) arrayList.get(i10);
                    } else {
                        itemInfo3 = null;
                    }
                }
            } else if (itemInfo3 == null || i11 != itemInfo3.f20139b) {
                f2 += a(i11, i10 + 1).d;
                i7++;
                if (i10 >= 0) {
                    itemInfo3 = (ItemInfo) arrayList.get(i10);
                } else {
                    itemInfo3 = null;
                }
            } else {
                f2 += itemInfo3.d;
                i10--;
                if (i10 >= 0) {
                    itemInfo3 = (ItemInfo) arrayList.get(i10);
                } else {
                    itemInfo3 = null;
                }
            }
        }
        float f3 = itemInfoA.d;
        int i12 = i7 + 1;
        if (f3 < r14) {
            ItemInfo itemInfo4 = i12 < arrayList.size() ? (ItemInfo) arrayList.get(i12) : null;
            float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
            int i13 = i12;
            for (int i14 = this.g + 1; i14 < 2; i14++) {
                if (f3 >= paddingRight && i14 > iMin) {
                    if (itemInfo4 == null) {
                        break;
                    }
                    if (i14 == itemInfo4.f20139b && !itemInfo4.f20140c) {
                        arrayList.remove(i13);
                        this.f20131f.a(i14, itemInfo4.f20138a);
                        if (i13 < arrayList.size()) {
                            itemInfo4 = (ItemInfo) arrayList.get(i13);
                        } else {
                            itemInfo4 = null;
                        }
                    }
                } else if (itemInfo4 == null || i14 != itemInfo4.f20139b) {
                    ItemInfo itemInfoA2 = a(i14, i13);
                    i13++;
                    f3 += itemInfoA2.d;
                    if (i13 < arrayList.size()) {
                        itemInfo4 = (ItemInfo) arrayList.get(i13);
                    } else {
                        itemInfo4 = null;
                    }
                } else {
                    f3 += itemInfo4.d;
                    i13++;
                    if (i13 < arrayList.size()) {
                        itemInfo4 = (ItemInfo) arrayList.get(i13);
                    } else {
                        itemInfo4 = null;
                    }
                }
            }
        }
        this.f20131f.getClass();
        int clientWidth2 = getClientWidth();
        float f4 = clientWidth2 > 0 ? this.n / clientWidth2 : 0.0f;
        if (itemInfoJ != null) {
            int i15 = itemInfoJ.f20139b;
            int i16 = itemInfoA.f20139b;
            if (i15 < i16) {
                float f5 = itemInfoJ.f20141e + itemInfoJ.d + f4;
                int i17 = i15 + 1;
                int i18 = 0;
                while (i17 <= itemInfoA.f20139b && i18 < arrayList.size()) {
                    Object obj = arrayList.get(i18);
                    while (true) {
                        itemInfo2 = (ItemInfo) obj;
                        if (i17 <= itemInfo2.f20139b || i18 >= arrayList.size() - 1) {
                            break;
                        }
                        i18++;
                        obj = arrayList.get(i18);
                    }
                    while (i17 < itemInfo2.f20139b) {
                        this.f20131f.getClass();
                        f5 += 1.0f + f4;
                        i17++;
                    }
                    itemInfo2.f20141e = f5;
                    f5 += itemInfo2.d + f4;
                    i17++;
                }
            } else if (i15 > i16) {
                int size = arrayList.size() - 1;
                float f6 = itemInfoJ.f20141e;
                int i19 = i15 - 1;
                while (i19 >= itemInfoA.f20139b && size >= 0) {
                    Object obj2 = arrayList.get(size);
                    while (true) {
                        itemInfo = (ItemInfo) obj2;
                        if (i19 >= itemInfo.f20139b || size <= 0) {
                            break;
                        }
                        size--;
                        obj2 = arrayList.get(size);
                    }
                    while (i19 > itemInfo.f20139b) {
                        this.f20131f.getClass();
                        f6 -= 1.0f + f4;
                        i19--;
                    }
                    f6 -= itemInfo.d + f4;
                    itemInfo.f20141e = f6;
                    i19--;
                }
            }
        }
        int size2 = arrayList.size();
        float f7 = itemInfoA.f20141e;
        int i20 = itemInfoA.f20139b;
        int i21 = i20 - 1;
        this.r = i20 == 0 ? f7 : -3.4028235E38f;
        this.s = i20 == 1 ? (itemInfoA.d + f7) - 1.0f : Float.MAX_VALUE;
        int i22 = i7 - 1;
        while (i22 >= 0) {
            ItemInfo itemInfo5 = (ItemInfo) arrayList.get(i22);
            while (true) {
                i4 = itemInfo5.f20139b;
                if (i21 <= i4) {
                    break;
                }
                i21--;
                this.f20131f.getClass();
                f7 -= 1.0f + f4;
            }
            f7 -= itemInfo5.d + f4;
            itemInfo5.f20141e = f7;
            if (i4 == 0) {
                this.r = f7;
            }
            i22--;
            i21--;
        }
        float f8 = itemInfoA.f20141e + itemInfoA.d + f4;
        int i23 = itemInfoA.f20139b + 1;
        while (i12 < size2) {
            ItemInfo itemInfo6 = (ItemInfo) arrayList.get(i12);
            while (true) {
                i3 = itemInfo6.f20139b;
                if (i23 >= i3) {
                    break;
                }
                i23++;
                this.f20131f.getClass();
                f8 += 1.0f + f4;
            }
            if (i3 == 1) {
                this.s = (itemInfo6.d + f8) - 1.0f;
            }
            itemInfo6.f20141e = f8;
            f8 += itemInfo6.d + f4;
            i12++;
            i23++;
        }
        this.f20131f.h(itemInfoA.f20138a);
        this.f20131f.b();
        int childCount = getChildCount();
        for (int i24 = 0; i24 < childCount; i24++) {
            View childAt = getChildAt(i24);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            layoutParams.getClass();
            if (!layoutParams.f20142a && layoutParams.f20144c == Call.Parameters.DEFAULT_CAMERA_ZOOM && (itemInfoH2 = h(childAt)) != null) {
                layoutParams.f20144c = itemInfoH2.d;
            }
        }
        if (hasFocus()) {
            View viewFindFocus = findFocus();
            if (viewFindFocus == null) {
                itemInfoH = null;
                break;
            }
            while (true) {
                Object parent = viewFindFocus.getParent();
                if (parent == this) {
                    itemInfoH = h(viewFindFocus);
                    break;
                } else {
                    if (parent == null || !(parent instanceof View)) {
                        itemInfoH = null;
                        break;
                    }
                    viewFindFocus = (View) parent;
                }
            }
            if (itemInfoH == null || itemInfoH.f20139b != this.g) {
                for (int i25 = 0; i25 < getChildCount(); i25++) {
                    View childAt2 = getChildAt(i25);
                    ItemInfo itemInfoH3 = h(childAt2);
                    if (itemInfoH3 != null && itemInfoH3.f20139b == this.g && childAt2.requestFocus(2)) {
                        return;
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.u) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public final void s(int i2, int i3, int i4, int i5) {
        if (i3 > 0 && !this.f20129c.isEmpty()) {
            if (!this.f20135k.isFinished()) {
                this.f20135k.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i3 - getPaddingLeft()) - getPaddingRight()) + i5)) * (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)), getScrollY());
                return;
            }
        }
        ItemInfo itemInfoJ = j(this.g);
        int iMin = (int) ((itemInfoJ != null ? Math.min(itemInfoJ.f20141e, this.s) : Call.Parameters.DEFAULT_CAMERA_ZOOM) * ((i2 - getPaddingLeft()) - getPaddingRight()));
        if (iMin != getScrollX()) {
            d(false);
            scrollTo(iMin, getScrollY());
        }
    }

    public void setAdapter(PagerAdapter pagerAdapter) {
        ArrayList arrayList = this.f20129c;
        PagerAdapter pagerAdapter2 = this.f20131f;
        if (pagerAdapter2 != null) {
            synchronized (pagerAdapter2) {
            }
            this.f20131f.i(this);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ItemInfo itemInfo = (ItemInfo) arrayList.get(i2);
                this.f20131f.a(itemInfo.f20139b, itemInfo.f20138a);
            }
            this.f20131f.b();
            arrayList.clear();
            int i3 = 0;
            while (i3 < getChildCount()) {
                if (!((LayoutParams) getChildAt(i3).getLayoutParams()).f20142a) {
                    removeViewAt(i3);
                    i3--;
                }
                i3++;
            }
            this.g = 0;
            scrollTo(0, 0);
        }
        this.f20131f = pagerAdapter;
        this.f20128b = 0;
        if (pagerAdapter != null) {
            if (this.m == null) {
                this.m = new PagerObserver();
            }
            synchronized (this.f20131f) {
            }
            this.w = false;
            boolean z = this.P;
            this.P = true;
            this.f20131f.getClass();
            this.f20128b = 2;
            if (this.f20132h >= 0) {
                this.f20131f.f(this.f20133i, this.f20134j);
                v(this.f20132h, 0, false, true);
                this.f20132h = -1;
                this.f20133i = null;
                this.f20134j = null;
            } else if (z) {
                requestLayout();
            } else {
                q();
            }
        }
        ArrayList arrayList2 = this.V;
        if (arrayList2 == null || arrayList2.isEmpty()) {
            return;
        }
        int size = this.V.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((OnAdapterChangeListener) this.V.get(i4)).a(this, pagerAdapter);
        }
    }

    public void setCurrentItem(int i2) {
        this.w = false;
        v(i2, 0, !this.P, false);
    }

    public void setOffscreenPageLimit(int i2) {
        if (i2 < 1) {
            i2 = 1;
        }
        if (i2 != this.x) {
            this.x = i2;
            q();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.T = onPageChangeListener;
    }

    public void setPageMargin(int i2) {
        int i3 = this.n;
        this.n = i2;
        int width = getWidth();
        s(width, width, i2, i3);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.o = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i2) {
        if (this.h0 == i2) {
            return;
        }
        this.h0 = i2;
        OnPageChangeListener onPageChangeListener = this.T;
        if (onPageChangeListener != null) {
            onPageChangeListener.b(i2);
        }
        ArrayList arrayList = this.S;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                OnPageChangeListener onPageChangeListener2 = (OnPageChangeListener) this.S.get(i3);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.b(i2);
                }
            }
        }
    }

    public final boolean t() {
        this.H = -1;
        this.y = false;
        this.z = false;
        VelocityTracker velocityTracker = this.I;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.I = null;
        }
        this.N.onRelease();
        this.O.onRelease();
        return this.N.isFinished() || this.O.isFinished();
    }

    public final void u(int i2, int i3, boolean z, boolean z2) {
        int iMax;
        int scrollX;
        int iAbs;
        ItemInfo itemInfoJ = j(i2);
        if (itemInfoJ != null) {
            iMax = (int) (Math.max(this.r, Math.min(itemInfoJ.f20141e, this.s)) * getClientWidth());
        } else {
            iMax = 0;
        }
        if (!z) {
            if (z2) {
                f(i2);
            }
            d(false);
            scrollTo(iMax, 0);
            o(iMax);
            return;
        }
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
        } else {
            Scroller scroller = this.f20135k;
            if (scroller == null || scroller.isFinished()) {
                scrollX = getScrollX();
            } else {
                boolean z3 = this.l;
                Scroller scroller2 = this.f20135k;
                scrollX = z3 ? scroller2.getCurrX() : scroller2.getStartX();
                this.f20135k.abortAnimation();
                setScrollingCacheEnabled(false);
            }
            int i4 = scrollX;
            int scrollY = getScrollY();
            int i5 = iMax - i4;
            int i6 = 0 - scrollY;
            if (i5 == 0 && i6 == 0) {
                d(false);
                q();
                setScrollState(0);
            } else {
                setScrollingCacheEnabled(true);
                setScrollState(2);
                int clientWidth = getClientWidth();
                int i7 = clientWidth / 2;
                float f2 = clientWidth;
                float f3 = i7;
                float fSin = (((float) Math.sin((Math.min(1.0f, (Math.abs(i5) * 1.0f) / f2) - 0.5f) * 0.47123894f)) * f3) + f3;
                int iAbs2 = Math.abs(i3);
                if (iAbs2 > 0) {
                    iAbs = Math.round(Math.abs(fSin / iAbs2) * 1000.0f) * 4;
                } else {
                    this.f20131f.getClass();
                    iAbs = (int) (((Math.abs(i5) / ((f2 * 1.0f) + this.n)) + 1.0f) * 100.0f);
                }
                int iMin = Math.min(iAbs, 600);
                this.l = false;
                this.f20135k.startScroll(i4, scrollY, i5, i6, iMin);
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                postInvalidateOnAnimation();
            }
        }
        if (z2) {
            f(i2);
        }
    }

    public final void v(int i2, int i3, boolean z, boolean z2) {
        if (this.f20131f == null) {
            setScrollingCacheEnabled(false);
            return;
        }
        ArrayList arrayList = this.f20129c;
        if (!z2 && this.g == i2 && arrayList.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i2 < 0) {
            i2 = 0;
        } else {
            this.f20131f.getClass();
            if (i2 >= 2) {
                this.f20131f.getClass();
                i2 = 1;
            }
        }
        int i4 = this.x;
        int i5 = this.g;
        if (i2 > i5 + i4 || i2 < i5 - i4) {
            for (int i6 = 0; i6 < arrayList.size(); i6++) {
                ((ItemInfo) arrayList.get(i6)).f20140c = true;
            }
        }
        boolean z3 = this.g != i2;
        if (!this.P) {
            r(i2);
            u(i2, i3, z, z3);
        } else {
            this.g = i2;
            if (z3) {
                f(i2);
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.o;
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Parcelable f20147e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ClassLoader f20148f;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.d = parcel.readInt();
            this.f20147e = parcel.readParcelable(classLoader);
            this.f20148f = classLoader;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("FragmentPager.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" position=");
            return a.i(this.d, "}", sb);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.d);
            parcel.writeParcelable(this.f20147e, i2);
        }

        /* JADX INFO: renamed from: androidx.viewpager.widget.ViewPager$SavedState$1, reason: invalid class name */
        public static class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
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

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams();
    }

    public void setPageMarginDrawable(int i2) {
        setPageMarginDrawable(ContextCompat.getDrawable(getContext(), i2));
    }

    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f20142a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f20143b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f20144c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f20144c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.t0);
            this.f20143b = typedArrayObtainStyledAttributes.getInteger(0, 48);
            typedArrayObtainStyledAttributes.recycle();
        }

        public LayoutParams() {
            super(-1, -1);
            this.f20144c = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f20129c = new ArrayList();
        this.d = new ItemInfo();
        this.f20130e = new Rect();
        this.f20132h = -1;
        this.f20133i = null;
        this.f20134j = null;
        this.r = -3.4028235E38f;
        this.s = Float.MAX_VALUE;
        this.x = 1;
        this.H = -1;
        this.P = true;
        this.W = new Runnable() { // from class: androidx.viewpager.widget.ViewPager.3
            @Override // java.lang.Runnable
            public void run() {
                ViewPager.this.setScrollState(0);
                ViewPager.this.q();
            }
        };
        this.h0 = 0;
        k();
    }
}
