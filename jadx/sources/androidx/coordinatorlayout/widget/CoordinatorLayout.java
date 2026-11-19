package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.collection.SimpleArrayMap;
import androidx.coordinatorlayout.R$styleable;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pools$SynchronizedPool;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.R;
import defpackage.bm;
import defpackage.ct0;
import defpackage.md;
import defpackage.r81;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {
    public static final String u;
    public static final Class[] v;
    public static final ThreadLocal w;
    public static final Comparator x;
    public static final Pools$SynchronizedPool y;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f11841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DirectedAcyclicGraph f11842c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f11843e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f11844f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f11845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11846i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f11847j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public View f11848k;
    public View l;
    public OnPreDrawListener m;
    public boolean n;
    public WindowInsetsCompat o;
    public boolean p;
    public Drawable q;
    public ViewGroup.OnHierarchyChangeListener r;
    public OnApplyWindowInsetsListener s;
    public final NestedScrollingParentHelper t;

    public interface AttachedBehavior {
        Behavior getBehavior();
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface DefaultBehavior {
        Class value();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface DispatchChangeEvent {
    }

    public class HierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {
        public HierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
            coordinatorLayout.q(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = coordinatorLayout.r;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public class OnPreDrawListener implements ViewTreeObserver.OnPreDrawListener {
        public OnPreDrawListener() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            CoordinatorLayout.this.q(0);
            return true;
        }
    }

    public static class ViewElevationComparator implements Comparator<View> {
        @Override // java.util.Comparator
        public final int compare(View view, View view2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            float z = view.getZ();
            float z2 = view2.getZ();
            if (z > z2) {
                return -1;
            }
            return z < z2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        u = r0 != null ? r0.getName() : null;
        x = new ViewElevationComparator();
        v = new Class[]{Context.class, AttributeSet.class};
        w = new ThreadLocal();
        y = new Pools$SynchronizedPool(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i2) {
        CoordinatorLayout coordinatorLayout;
        Context context2;
        super(context, attributeSet, i2);
        this.f11841b = new ArrayList();
        this.f11842c = new DirectedAcyclicGraph();
        this.d = new ArrayList();
        this.f11843e = new int[2];
        this.f11844f = new int[2];
        this.g = new int[2];
        this.t = new NestedScrollingParentHelper(this);
        int[] iArr = R$styleable.f11839a;
        TypedArray typedArrayObtainStyledAttributes = i2 == 0 ? context.obtainStyledAttributes(attributeSet, iArr, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        if (i2 == 0) {
            coordinatorLayout = this;
            context2 = context;
            ViewCompat.s(coordinatorLayout, context2, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
        } else {
            coordinatorLayout = this;
            context2 = context;
            ViewCompat.s(coordinatorLayout, context2, iArr, attributeSet, typedArrayObtainStyledAttributes, i2, 0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context2.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            coordinatorLayout.f11847j = intArray;
            float f2 = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i3 = 0; i3 < length; i3++) {
                int[] iArr2 = coordinatorLayout.f11847j;
                iArr2[i3] = (int) (iArr2[i3] * f2);
            }
        }
        coordinatorLayout.q = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        coordinatorLayout.z();
        super.setOnHierarchyChangeListener(coordinatorLayout.new HierarchyChangeListener());
        if (coordinatorLayout.getImportantForAccessibility() == 0) {
            coordinatorLayout.setImportantForAccessibility(1);
        }
    }

    public static Rect a() {
        Rect rect = (Rect) y.acquire();
        return rect == null ? new Rect() : rect;
    }

    private int getFullContentHeight() {
        int height = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            height += childAt.getHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        }
        return height;
    }

    public static void h(int i2, Rect rect, Rect rect2, LayoutParams layoutParams, int i3, int i4) {
        int iWidth;
        int iHeight;
        int i5 = layoutParams.f11853c;
        if (i5 == 0) {
            i5 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, i2);
        int i6 = layoutParams.d;
        if ((i6 & 7) == 0) {
            i6 |= 8388611;
        }
        if ((i6 & 112) == 0) {
            i6 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i6, i2);
        int i7 = absoluteGravity & 7;
        int i8 = absoluteGravity & 112;
        int i9 = absoluteGravity2 & 7;
        int i10 = absoluteGravity2 & 112;
        if (i9 != 1) {
            iWidth = i9 != 5 ? rect.left : rect.right;
        } else {
            iWidth = rect.left + (rect.width() / 2);
        }
        if (i10 != 16) {
            iHeight = i10 != 80 ? rect.top : rect.bottom;
        } else {
            iHeight = rect.top + (rect.height() / 2);
        }
        if (i7 == 1) {
            iWidth -= i3 / 2;
        } else if (i7 != 5) {
            iWidth -= i3;
        }
        if (i8 == 16) {
            iHeight -= i4 / 2;
        } else if (i8 != 80) {
            iHeight -= i4;
        }
        rect2.set(iWidth, iHeight, i3 + iWidth, i4 + iHeight);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LayoutParams i(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f11852b) {
            if (view instanceof AttachedBehavior) {
                layoutParams.b(((AttachedBehavior) view).getBehavior());
                layoutParams.f11852b = true;
                return layoutParams;
            }
            DefaultBehavior defaultBehavior = null;
            for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                defaultBehavior = (DefaultBehavior) superclass.getAnnotation(DefaultBehavior.class);
                if (defaultBehavior != null) {
                    break;
                }
            }
            if (defaultBehavior != null) {
                try {
                    layoutParams.b((Behavior) defaultBehavior.value().getDeclaredConstructor(null).newInstance(null));
                } catch (Exception unused) {
                    defaultBehavior.value().getClass();
                }
            }
            layoutParams.f11852b = true;
        }
        return layoutParams;
    }

    public static void x(int i2, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.f11857i;
        if (i3 != i2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            view.offsetLeftAndRight(i2 - i3);
            layoutParams.f11857i = i2;
        }
    }

    public static void y(int i2, View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.f11858j;
        if (i3 != i2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            view.offsetTopAndBottom(i2 - i3);
            layoutParams.f11858j = i2;
        }
    }

    public final void b(LayoutParams layoutParams, Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(iMax, iMax2, i2 + iMax, i3 + iMax2);
    }

    public final void c(View view) {
        ArrayList arrayList = (ArrayList) this.f11842c.f11862b.get(view);
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            View view2 = (View) arrayList.get(i2);
            Behavior behavior = ((LayoutParams) view2.getLayoutParams()).f11851a;
            if (behavior != null) {
                behavior.h(this, view2, view);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public final void d(View view, Rect rect, boolean z) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            f(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean zDispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        if (!zDispatchKeyEvent && keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 19) {
                return keyEvent.isAltPressed() ? p(-getHeight()) : p(-((int) (getHeight() * 0.2f)));
            }
            if (keyCode == 20) {
                return keyEvent.isAltPressed() ? p(getHeight()) : p((int) (getHeight() * 0.2f));
            }
            if (keyCode == 62) {
                return keyEvent.isShiftPressed() ? p(-getFullContentHeight()) : p(getFullContentHeight() - getHeight());
            }
            if (keyCode == 92) {
                return p(-getHeight());
            }
            if (keyCode == 93) {
                return p(getHeight());
            }
            if (keyCode == 122) {
                return p(-getFullContentHeight());
            }
            if (keyCode == 123) {
                return p(getFullContentHeight() - getHeight());
            }
        }
        return zDispatchKeyEvent;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j2) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).f11851a;
        if (behavior != null) {
            behavior.getClass();
        }
        return super.drawChild(canvas, view, j2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.q;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    public final List e(View view) {
        SimpleArrayMap simpleArrayMap = this.f11842c.f11862b;
        int i2 = simpleArrayMap.d;
        ArrayList arrayList = null;
        for (int i3 = 0; i3 < i2; i3++) {
            ArrayList arrayList2 = (ArrayList) simpleArrayMap.k(i3);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(simpleArrayMap.g(i3));
            }
        }
        return arrayList == null ? Collections.EMPTY_LIST : arrayList;
    }

    public final void f(View view, Rect rect) {
        ThreadLocal threadLocal = ViewGroupUtils.f11864a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = ViewGroupUtils.f11864a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        ViewGroupUtils.a(this, view, matrix);
        ThreadLocal threadLocal3 = ViewGroupUtils.f11865b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(int i2, View view) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.t;
        if (i2 == 1) {
            nestedScrollingParentHelper.f12180b = 0;
        } else {
            nestedScrollingParentHelper.f12179a = 0;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.a(i2)) {
                Behavior behavior = layoutParams.f11851a;
                if (behavior != null) {
                    behavior.u(this, childAt, view, i2);
                }
                if (i2 == 0) {
                    layoutParams.m = false;
                } else if (i2 == 1) {
                    layoutParams.n = false;
                }
                layoutParams.o = false;
            }
        }
        this.l = null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public final List<View> getDependencySortedChildren() {
        v();
        return Collections.unmodifiableList(this.f11841b);
    }

    public final WindowInsetsCompat getLastWindowInsets() {
        return this.o;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.t;
        return nestedScrollingParentHelper.f12180b | nestedScrollingParentHelper.f12179a;
    }

    public Drawable getStatusBarBackground() {
        return this.q;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void j(View view, View view2, int i2, int i3) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.t;
        if (i3 == 1) {
            nestedScrollingParentHelper.f12180b = i2;
        } else {
            nestedScrollingParentHelper.f12179a = i2;
        }
        this.l = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ((LayoutParams) getChildAt(i4).getLayoutParams()).getClass();
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i2, int i3, int[] iArr, int i4) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i4) && (behavior = layoutParams.f11851a) != null) {
                    int[] iArr2 = this.f11843e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.o(this, childAt, view, i2, i3, iArr2, i4);
                    iMax = i2 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i3 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z) {
            q(1);
        }
    }

    public final boolean l(View view, int i2, int i3) {
        Pools$SynchronizedPool pools$SynchronizedPool = y;
        Rect rectA = a();
        f(view, rectA);
        try {
            return rectA.contains(i2, i3);
        } finally {
            rectA.setEmpty();
            pools$SynchronizedPool.release(rectA);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void m(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        Behavior behavior;
        int childCount = getChildCount();
        int iMax = 0;
        int iMax2 = 0;
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(i6) && (behavior = layoutParams.f11851a) != null) {
                    int[] iArr2 = this.f11843e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.p(this, childAt, i3, i4, i5, iArr2);
                    iMax = i4 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i5 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z) {
            q(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i2, int i3, int i4, int i5, int i6) {
        m(view, i2, i3, i4, i5, 0, this.f11844f);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean o(View view, View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behavior = layoutParams.f11851a;
                if (behavior != null) {
                    boolean zT = behavior.t(this, childAt, view, view2, i2, i3);
                    z |= zT;
                    if (i3 == 0) {
                        layoutParams.m = zT;
                    } else if (i3 == 1) {
                        layoutParams.n = zT;
                    }
                } else if (i3 == 0) {
                    layoutParams.m = false;
                } else if (i3 == 1) {
                    layoutParams.n = false;
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        w();
        if (this.n) {
            if (this.m == null) {
                this.m = new OnPreDrawListener();
            }
            getViewTreeObserver().addOnPreDrawListener(this.m);
        }
        if (this.o == null) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            if (getFitsSystemWindows()) {
                requestApplyInsets();
            }
        }
        this.f11846i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        w();
        if (this.n && this.m != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.m);
        }
        View view = this.l;
        if (view != null) {
            g(0, view);
        }
        this.f11846i = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.p || this.q == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.o;
        int iJ = windowInsetsCompat != null ? windowInsetsCompat.j() : 0;
        if (iJ > 0) {
            this.q.setBounds(0, 0, getWidth(), iJ);
            this.q.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            w();
        }
        boolean zU = u(motionEvent, 0);
        if (actionMasked != 1 && actionMasked != 3) {
            return zU;
        }
        this.f11848k = null;
        w();
        return zU;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Behavior behavior;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f11841b;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            View view = (View) arrayList.get(i6);
            if (view.getVisibility() != 8 && ((behavior = ((LayoutParams) view.getLayoutParams()).f11851a) == null || !behavior.l(this, view, layoutDirection))) {
                r(layoutDirection, view);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:61:0x0102  */
    /* JADX WARN: Code duplicated, block: B:70:0x0122 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:71:0x0124  */
    /* JADX WARN: Code duplicated, block: B:79:0x013b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0143  */
    /* JADX WARN: Code duplicated, block: B:82:0x016d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0175  */
    /* JADX WARN: Code duplicated, block: B:88:0x019c  */
    /* JADX WARN: Code duplicated, block: B:89:0x019f  */
    @Override // android.view.View
    public final void onMeasure(int i2, int i3) {
        boolean z;
        boolean z2;
        int i4;
        ArrayList arrayList;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        Behavior behavior;
        int i5;
        View view;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        boolean z3;
        boolean zM;
        int i12;
        int i13;
        int absoluteGravity;
        CoordinatorLayout coordinatorLayout = this;
        coordinatorLayout.v();
        int childCount = coordinatorLayout.getChildCount();
        int i14 = 0;
        loop0: while (true) {
            if (i14 >= childCount) {
                z = false;
                break;
            }
            View childAt = coordinatorLayout.getChildAt(i14);
            SimpleArrayMap simpleArrayMap = coordinatorLayout.f11842c.f11862b;
            int i15 = simpleArrayMap.d;
            for (int i16 = 0; i16 < i15; i16++) {
                ArrayList arrayList2 = (ArrayList) simpleArrayMap.k(i16);
                if (arrayList2 != null && arrayList2.contains(childAt)) {
                    z = true;
                    break loop0;
                }
            }
            i14++;
        }
        if (z != coordinatorLayout.n) {
            boolean z4 = coordinatorLayout.f11846i;
            if (z) {
                if (z4) {
                    if (coordinatorLayout.m == null) {
                        coordinatorLayout.m = coordinatorLayout.new OnPreDrawListener();
                    }
                    coordinatorLayout.getViewTreeObserver().addOnPreDrawListener(coordinatorLayout.m);
                }
                coordinatorLayout.n = true;
            } else {
                if (z4 && coordinatorLayout.m != null) {
                    coordinatorLayout.getViewTreeObserver().removeOnPreDrawListener(coordinatorLayout.m);
                }
                coordinatorLayout.n = false;
            }
        }
        int paddingLeft = coordinatorLayout.getPaddingLeft();
        int paddingTop = coordinatorLayout.getPaddingTop();
        int paddingRight = coordinatorLayout.getPaddingRight();
        int paddingBottom = coordinatorLayout.getPaddingBottom();
        int layoutDirection = coordinatorLayout.getLayoutDirection();
        boolean z5 = layoutDirection == 1;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int i17 = paddingLeft + paddingRight;
        int i18 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = coordinatorLayout.getSuggestedMinimumWidth();
        int suggestedMinimumHeight = coordinatorLayout.getSuggestedMinimumHeight();
        if (coordinatorLayout.o != null) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            if (coordinatorLayout.getFitsSystemWindows()) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        ArrayList arrayList3 = coordinatorLayout.f11841b;
        int size3 = arrayList3.size();
        int i19 = 0;
        int iCombineMeasuredStates = 0;
        while (i19 < size3) {
            View view2 = (View) arrayList3.get(i19);
            int i20 = suggestedMinimumWidth;
            if (view2.getVisibility() == 8) {
                arrayList = arrayList3;
                i6 = size3;
                i11 = i19;
                i9 = paddingRight;
                suggestedMinimumWidth = i20;
                z3 = false;
                i7 = paddingLeft;
            } else {
                LayoutParams layoutParams = (LayoutParams) view2.getLayoutParams();
                int i21 = layoutParams.f11854e;
                if (i21 < 0 || mode == 0) {
                    i4 = suggestedMinimumHeight;
                    arrayList = arrayList3;
                } else {
                    i4 = suggestedMinimumHeight;
                    int[] iArr = coordinatorLayout.f11847j;
                    if (iArr == null) {
                        coordinatorLayout.toString();
                        arrayList = arrayList3;
                    } else {
                        arrayList = arrayList3;
                        if (i21 < 0 || i21 >= iArr.length) {
                            coordinatorLayout.toString();
                        } else {
                            i12 = iArr[i21];
                        }
                        i13 = layoutParams.f11853c;
                        if (i13 == 0) {
                            i13 = 8388661;
                        }
                        absoluteGravity = Gravity.getAbsoluteGravity(i13, layoutDirection) & 7;
                        if (!(absoluteGravity == 3 || z5) || (absoluteGravity == 5 && z5)) {
                            iMax = Math.max(0, (size - paddingRight) - i12);
                        } else if ((absoluteGravity != 5 && !z5) || (absoluteGravity == 3 && z5)) {
                            iMax = Math.max(0, i12 - paddingLeft);
                        }
                        if (z2) {
                            WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                            if (view2.getFitsSystemWindows()) {
                                iMakeMeasureSpec = i2;
                                iMakeMeasureSpec2 = i3;
                            } else {
                                int i22 = coordinatorLayout.o.i() + coordinatorLayout.o.h();
                                int iG = coordinatorLayout.o.g() + coordinatorLayout.o.j();
                                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - i22, mode);
                                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iG, mode2);
                            }
                        } else {
                            iMakeMeasureSpec = i2;
                            iMakeMeasureSpec2 = i3;
                        }
                        behavior = layoutParams.f11851a;
                        if (behavior != null) {
                            int i23 = iMax;
                            int i24 = iMakeMeasureSpec;
                            i6 = size3;
                            i7 = paddingLeft;
                            i8 = i20;
                            int i25 = i4;
                            i9 = paddingRight;
                            i10 = i25;
                            z3 = false;
                            i11 = i19;
                            int i26 = iMakeMeasureSpec2;
                            zM = behavior.m(this, view2, i24, i23, i26);
                            view = view2;
                            iMakeMeasureSpec = i24;
                            iMax = i23;
                            i5 = i26;
                            if (zM) {
                                coordinatorLayout = this;
                            }
                            int iMax2 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                            int iMax3 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                            suggestedMinimumWidth = iMax2;
                            suggestedMinimumHeight = iMax3;
                        } else {
                            int i27 = size3;
                            i5 = iMakeMeasureSpec2;
                            view = view2;
                            i6 = i27;
                            i7 = paddingLeft;
                            i8 = i20;
                            int i28 = i4;
                            i9 = paddingRight;
                            i10 = i28;
                            i11 = i19;
                            z3 = false;
                        }
                        coordinatorLayout = this;
                        coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, iMax, i5, 0);
                        int iMax4 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                        int iMax5 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax4;
                        suggestedMinimumHeight = iMax5;
                    }
                    i12 = 0;
                    i13 = layoutParams.f11853c;
                    if (i13 == 0) {
                        i13 = 8388661;
                    }
                    absoluteGravity = Gravity.getAbsoluteGravity(i13, layoutDirection) & 7;
                    if (absoluteGravity == 3) {
                        if (absoluteGravity != 5) {
                        }
                    } else if (absoluteGravity != 5) {
                    }
                    if (z2) {
                        WeakHashMap weakHashMap3 = ViewCompat.f12200a;
                        if (view2.getFitsSystemWindows()) {
                            int i29 = coordinatorLayout.o.i() + coordinatorLayout.o.h();
                            int iG2 = coordinatorLayout.o.g() + coordinatorLayout.o.j();
                            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - i29, mode);
                            iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iG2, mode2);
                        } else {
                            iMakeMeasureSpec = i2;
                            iMakeMeasureSpec2 = i3;
                        }
                    } else {
                        iMakeMeasureSpec = i2;
                        iMakeMeasureSpec2 = i3;
                    }
                    behavior = layoutParams.f11851a;
                    if (behavior != null) {
                        int i210 = iMax;
                        int i211 = iMakeMeasureSpec;
                        i6 = size3;
                        i7 = paddingLeft;
                        i8 = i20;
                        int i212 = i4;
                        i9 = paddingRight;
                        i10 = i212;
                        z3 = false;
                        i11 = i19;
                        int i213 = iMakeMeasureSpec2;
                        zM = behavior.m(this, view2, i211, i210, i213);
                        view = view2;
                        iMakeMeasureSpec = i211;
                        iMax = i210;
                        i5 = i213;
                        if (zM) {
                            coordinatorLayout = this;
                        }
                        int iMax6 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                        int iMax7 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        suggestedMinimumWidth = iMax6;
                        suggestedMinimumHeight = iMax7;
                    } else {
                        int i214 = size3;
                        i5 = iMakeMeasureSpec2;
                        view = view2;
                        i6 = i214;
                        i7 = paddingLeft;
                        i8 = i20;
                        int i215 = i4;
                        i9 = paddingRight;
                        i10 = i215;
                        i11 = i19;
                        z3 = false;
                    }
                    coordinatorLayout = this;
                    coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, iMax, i5, 0);
                    int iMax8 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    int iMax9 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax8;
                    suggestedMinimumHeight = iMax9;
                }
                iMax = 0;
                if (z2) {
                    WeakHashMap weakHashMap4 = ViewCompat.f12200a;
                    if (view2.getFitsSystemWindows()) {
                        int i216 = coordinatorLayout.o.i() + coordinatorLayout.o.h();
                        int iG3 = coordinatorLayout.o.g() + coordinatorLayout.o.j();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - i216, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iG3, mode2);
                    } else {
                        iMakeMeasureSpec = i2;
                        iMakeMeasureSpec2 = i3;
                    }
                } else {
                    iMakeMeasureSpec = i2;
                    iMakeMeasureSpec2 = i3;
                }
                behavior = layoutParams.f11851a;
                if (behavior != null) {
                    int i217 = iMax;
                    int i218 = iMakeMeasureSpec;
                    i6 = size3;
                    i7 = paddingLeft;
                    i8 = i20;
                    int i219 = i4;
                    i9 = paddingRight;
                    i10 = i219;
                    z3 = false;
                    i11 = i19;
                    int i2110 = iMakeMeasureSpec2;
                    zM = behavior.m(this, view2, i218, i217, i2110);
                    view = view2;
                    iMakeMeasureSpec = i218;
                    iMax = i217;
                    i5 = i2110;
                    if (zM) {
                        coordinatorLayout = this;
                    }
                    int iMax10 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    int iMax11 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    suggestedMinimumWidth = iMax10;
                    suggestedMinimumHeight = iMax11;
                } else {
                    int i2111 = size3;
                    i5 = iMakeMeasureSpec2;
                    view = view2;
                    i6 = i2111;
                    i7 = paddingLeft;
                    i8 = i20;
                    int i2112 = i4;
                    i9 = paddingRight;
                    i10 = i2112;
                    i11 = i19;
                    z3 = false;
                }
                coordinatorLayout = this;
                coordinatorLayout.measureChildWithMargins(view, iMakeMeasureSpec, iMax, i5, 0);
                int iMax12 = Math.max(i8, view.getMeasuredWidth() + i17 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                int iMax13 = Math.max(i10, view.getMeasuredHeight() + i18 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                suggestedMinimumWidth = iMax12;
                suggestedMinimumHeight = iMax13;
            }
            i19 = i11 + 1;
            size3 = i6;
            paddingLeft = i7;
            paddingRight = i9;
            arrayList3 = arrayList;
        }
        int i30 = iCombineMeasuredStates;
        coordinatorLayout.setMeasuredDimension(View.resolveSizeAndState(suggestedMinimumWidth, i2, (-16777216) & i30), View.resolveSizeAndState(suggestedMinimumHeight, i3, i30 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0)) {
                    Behavior behavior = layoutParams.f11851a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean zN = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.a(0) && (behavior = layoutParams.f11851a) != null) {
                    zN |= behavior.n(view);
                }
            }
        }
        return zN;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        k(view, i2, i3, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        n(view, i2, i3, i4, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        j(view, view2, i2, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        SparseArray sparseArray = savedState.d;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = i(childAt).f11851a;
            if (id != -1 && behavior != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                behavior.r(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableS;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).f11851a;
            if (id != -1 && behavior != null && (parcelableS = behavior.s(childAt)) != null) {
                sparseArray.append(id, parcelableS);
            }
        }
        savedState.d = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        return o(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        g(0, view);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zU;
        int actionMasked = motionEvent.getActionMasked();
        View view = this.f11848k;
        boolean z = false;
        if (view != null) {
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).f11851a;
            zU = behavior != null ? behavior.v(this, this.f11848k, motionEvent) : false;
        } else {
            zU = u(motionEvent, 1);
            if (actionMasked != 0 && zU) {
                z = true;
            }
        }
        if (this.f11848k == null || actionMasked == 3) {
            zU |= super.onTouchEvent(motionEvent);
        } else if (z) {
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.setAction(3);
            super.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return zU;
        }
        this.f11848k = null;
        w();
        return zU;
    }

    public final boolean p(int i2) {
        View view;
        View focusedChild = this;
        while (true) {
            if (focusedChild == null) {
                view = null;
                break;
            }
            if (focusedChild.isFocused()) {
                view = focusedChild;
                break;
            }
            focusedChild = focusedChild instanceof ViewGroup ? ((ViewGroup) focusedChild).getFocusedChild() : null;
        }
        o(this, view, 2, 1);
        k(view, 0, i2, this.g, 1);
        int[] iArr = this.g;
        int i3 = iArr[1];
        iArr[0] = 0;
        iArr[1] = 0;
        m(view, 0, i3, 0, i2, 1, iArr);
        g(1, view);
        return iArr[1] > 0;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00dc  */
    public final void q(int i2) {
        int i3;
        Rect rect;
        int i4;
        ArrayList arrayList;
        boolean zH;
        boolean z;
        boolean z2;
        int width;
        int i5;
        int i6;
        int i7;
        int height;
        int i8;
        int i9;
        int i10;
        int i11;
        View view;
        LayoutParams layoutParams;
        Behavior behavior;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList2 = this.f11841b;
        int size = arrayList2.size();
        Rect rectA = a();
        Rect rectA2 = a();
        Rect rectA3 = a();
        int i12 = 0;
        while (true) {
            Pools$SynchronizedPool pools$SynchronizedPool = y;
            if (i12 >= size) {
                Rect rect2 = rectA3;
                rectA.setEmpty();
                pools$SynchronizedPool.release(rectA);
                rectA2.setEmpty();
                pools$SynchronizedPool.release(rectA2);
                rect2.setEmpty();
                pools$SynchronizedPool.release(rect2);
                return;
            }
            View view2 = (View) arrayList2.get(i12);
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            if (i2 != 0 || view2.getVisibility() != 8) {
                int i13 = 0;
                while (i13 < i12) {
                    if (layoutParams2.l == ((View) arrayList2.get(i13))) {
                        LayoutParams layoutParams3 = (LayoutParams) view2.getLayoutParams();
                        if (layoutParams3.f11859k != null) {
                            Rect rectA4 = a();
                            Rect rectA5 = a();
                            LayoutParams layoutParams4 = layoutParams2;
                            Rect rectA6 = a();
                            f(layoutParams3.f11859k, rectA4);
                            d(view2, rectA5, false);
                            int measuredWidth = view2.getMeasuredWidth();
                            View view3 = view2;
                            int measuredHeight = view3.getMeasuredHeight();
                            i11 = i13;
                            layoutDirection = layoutDirection;
                            layoutParams = layoutParams4;
                            view = view3;
                            h(layoutDirection, rectA4, rectA6, layoutParams3, measuredWidth, measuredHeight);
                            boolean z3 = (rectA6.left == rectA5.left && rectA6.top == rectA5.top) ? false : true;
                            b(layoutParams3, rectA6, measuredWidth, measuredHeight);
                            int i14 = rectA6.left - rectA5.left;
                            int i15 = rectA6.top - rectA5.top;
                            if (i14 != 0) {
                                WeakHashMap weakHashMap = ViewCompat.f12200a;
                                view.offsetLeftAndRight(i14);
                            }
                            if (i15 != 0) {
                                WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                                view.offsetTopAndBottom(i15);
                            }
                            if (z3 && (behavior = layoutParams3.f11851a) != null) {
                                behavior.h(this, view, layoutParams3.f11859k);
                            }
                            rectA4.setEmpty();
                            pools$SynchronizedPool.release(rectA4);
                            rectA5.setEmpty();
                            pools$SynchronizedPool.release(rectA5);
                            rectA6.setEmpty();
                            pools$SynchronizedPool.release(rectA6);
                        } else {
                            i11 = i13;
                            view = view2;
                            layoutParams = layoutParams2;
                        }
                    } else {
                        i11 = i13;
                        view = view2;
                        layoutParams = layoutParams2;
                    }
                    i13 = i11 + 1;
                    layoutParams2 = layoutParams;
                    view2 = view;
                    arrayList2 = arrayList2;
                    size = size;
                    i12 = i12;
                    rectA3 = rectA3;
                }
                ArrayList arrayList3 = arrayList2;
                int i16 = size;
                Rect rect3 = rectA3;
                i3 = i12;
                View view4 = view2;
                LayoutParams layoutParams5 = layoutParams2;
                d(view4, rectA2, true);
                if (layoutParams5.g != 0 && !rectA2.isEmpty()) {
                    int absoluteGravity = Gravity.getAbsoluteGravity(layoutParams5.g, layoutDirection);
                    int i17 = absoluteGravity & 112;
                    if (i17 == 48) {
                        rectA.top = Math.max(rectA.top, rectA2.bottom);
                    } else if (i17 == 80) {
                        rectA.bottom = Math.max(rectA.bottom, getHeight() - rectA2.top);
                    }
                    int i18 = absoluteGravity & 7;
                    if (i18 == 3) {
                        rectA.left = Math.max(rectA.left, rectA2.right);
                    } else if (i18 == 5) {
                        rectA.right = Math.max(rectA.right, getWidth() - rectA2.left);
                    }
                }
                if (layoutParams5.f11856h != 0 && view4.getVisibility() == 0 && view4.isLaidOut() && view4.getWidth() > 0 && view4.getHeight() > 0) {
                    LayoutParams layoutParams6 = (LayoutParams) view4.getLayoutParams();
                    Behavior behavior2 = layoutParams6.f11851a;
                    Rect rectA7 = a();
                    Rect rectA8 = a();
                    rectA8.set(view4.getLeft(), view4.getTop(), view4.getRight(), view4.getBottom());
                    if (behavior2 == null || !behavior2.e(view4, rectA7)) {
                        rectA7.set(rectA8);
                    } else if (!rectA8.contains(rectA7)) {
                        bm.g("Rect should be within the child's bounds. Rect:", rectA7.toShortString(), " | Bounds:", rectA8.toShortString());
                        return;
                    }
                    rectA8.setEmpty();
                    pools$SynchronizedPool.release(rectA8);
                    if (rectA7.isEmpty()) {
                        rectA7.setEmpty();
                        pools$SynchronizedPool.release(rectA7);
                    } else {
                        int absoluteGravity2 = Gravity.getAbsoluteGravity(layoutParams6.f11856h, layoutDirection);
                        if ((absoluteGravity2 & 48) != 48 || (i9 = (rectA7.top - ((ViewGroup.MarginLayoutParams) layoutParams6).topMargin) - layoutParams6.f11858j) >= (i10 = rectA.top)) {
                            z = false;
                        } else {
                            y(i10 - i9, view4);
                            z = true;
                        }
                        if ((absoluteGravity2 & 80) == 80 && (height = ((getHeight() - rectA7.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams6).bottomMargin) + layoutParams6.f11858j) < (i8 = rectA.bottom)) {
                            y(height - i8, view4);
                            z = true;
                        }
                        if (!z) {
                            y(0, view4);
                        }
                        if ((absoluteGravity2 & 3) != 3 || (i6 = (rectA7.left - ((ViewGroup.MarginLayoutParams) layoutParams6).leftMargin) - layoutParams6.f11857i) >= (i7 = rectA.left)) {
                            z2 = false;
                        } else {
                            x(i7 - i6, view4);
                            z2 = true;
                        }
                        if ((absoluteGravity2 & 5) == 5 && (width = ((getWidth() - rectA7.right) - ((ViewGroup.MarginLayoutParams) layoutParams6).rightMargin) + layoutParams6.f11857i) < (i5 = rectA.right)) {
                            x(width - i5, view4);
                            z2 = true;
                        }
                        if (!z2) {
                            x(0, view4);
                        }
                        rectA7.setEmpty();
                        pools$SynchronizedPool.release(rectA7);
                    }
                }
                if (i2 != 2) {
                    rect = rect3;
                    rect.set(((LayoutParams) view4.getLayoutParams()).p);
                    if (rect.equals(rectA2)) {
                        arrayList = arrayList3;
                        i4 = i16;
                    } else {
                        ((LayoutParams) view4.getLayoutParams()).p.set(rectA2);
                    }
                } else {
                    rect = rect3;
                }
                int i19 = i3 + 1;
                i4 = i16;
                while (true) {
                    arrayList = arrayList3;
                    if (i19 >= i4) {
                        break;
                    }
                    View view5 = (View) arrayList.get(i19);
                    LayoutParams layoutParams7 = (LayoutParams) view5.getLayoutParams();
                    Behavior behavior3 = layoutParams7.f11851a;
                    if (behavior3 != null && behavior3.f(view5, view4)) {
                        if (i2 == 0 && layoutParams7.o) {
                            layoutParams7.o = false;
                        } else {
                            if (i2 != 2) {
                                zH = behavior3.h(this, view5, view4);
                            } else {
                                behavior3.i(this, view4);
                                zH = true;
                            }
                            if (i2 == 1) {
                                layoutParams7.o = zH;
                            }
                        }
                    }
                    i19++;
                    arrayList3 = arrayList;
                }
            } else {
                arrayList = arrayList2;
                i4 = size;
                rect = rectA3;
                i3 = i12;
            }
            i12 = i3 + 1;
            rectA3 = rect;
            size = i4;
            arrayList2 = arrayList;
        }
    }

    public final void r(int i2, View view) {
        int i3;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        View view2 = layoutParams.f11859k;
        if (view2 == null && layoutParams.f11855f != -1) {
            md.k("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
            return;
        }
        Pools$SynchronizedPool pools$SynchronizedPool = y;
        if (view2 != null) {
            Rect rectA = a();
            Rect rectA2 = a();
            try {
                f(view2, rectA);
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                h(i2, rectA, rectA2, layoutParams2, measuredWidth, measuredHeight);
                b(layoutParams2, rectA2, measuredWidth, measuredHeight);
                view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                return;
            } finally {
                rectA.setEmpty();
                pools$SynchronizedPool.release(rectA);
                rectA2.setEmpty();
                pools$SynchronizedPool.release(rectA2);
            }
        }
        int i4 = layoutParams.f11854e;
        if (i4 < 0) {
            LayoutParams layoutParams3 = (LayoutParams) view.getLayoutParams();
            Rect rectA3 = a();
            rectA3.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams3).bottomMargin);
            if (this.o != null) {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    rectA3.left = this.o.h() + rectA3.left;
                    rectA3.top = this.o.j() + rectA3.top;
                    rectA3.right -= this.o.i();
                    rectA3.bottom -= this.o.g();
                }
            }
            Rect rectA4 = a();
            int i5 = layoutParams3.f11853c;
            if ((i5 & 7) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            Gravity.apply(i5, view.getMeasuredWidth(), view.getMeasuredHeight(), rectA3, rectA4, i2);
            view.layout(rectA4.left, rectA4.top, rectA4.right, rectA4.bottom);
            rectA3.setEmpty();
            pools$SynchronizedPool.release(rectA3);
            rectA4.setEmpty();
            pools$SynchronizedPool.release(rectA4);
            return;
        }
        LayoutParams layoutParams4 = (LayoutParams) view.getLayoutParams();
        int i6 = layoutParams4.f11853c;
        if (i6 == 0) {
            i6 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, i2);
        int i7 = absoluteGravity & 7;
        int i8 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i2 == 1) {
            i4 = width - i4;
        }
        int i9 = 0;
        int[] iArr = this.f11847j;
        if (iArr != null && i4 >= 0 && i4 < iArr.length) {
            i3 = iArr[i4];
        } else {
            toString();
            i3 = 0;
        }
        int i10 = i3 - measuredWidth2;
        if (i7 == 1) {
            i10 += measuredWidth2 / 2;
        } else if (i7 == 5) {
            i10 += measuredWidth2;
        }
        if (i8 == 16) {
            i9 = measuredHeight2 / 2;
        } else if (i8 == 80) {
            i9 = measuredHeight2;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams4).leftMargin, Math.min(i10, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) layoutParams4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams4).topMargin, Math.min(i9, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) layoutParams4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).f11851a;
        if (behavior == null || !behavior.q(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f11845h) {
            return;
        }
        if (this.f11848k == null) {
            int childCount = getChildCount();
            MotionEvent motionEventObtain = null;
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).f11851a;
                if (behavior != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
                    }
                    behavior.k(this, childAt, motionEventObtain);
                }
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
        }
        w();
        this.f11845h = true;
    }

    public final void s(View view, int i2, int i3, int i4) {
        measureChildWithMargins(view, i2, i3, i4, 0);
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        z();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.r = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.q = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.q.setState(getDrawableState());
                }
                this.q.setLayoutDirection(getLayoutDirection());
                this.q.setVisible(getVisibility() == 0, false);
                this.q.setCallback(this);
            }
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i2) {
        setStatusBarBackground(new ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) {
        setStatusBarBackground(i2 != 0 ? ContextCompat.getDrawable(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.q;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.q.setVisible(z, false);
    }

    public final boolean t(Behavior behavior, View view, MotionEvent motionEvent, int i2) {
        if (i2 == 0) {
            return behavior.k(this, view, motionEvent);
        }
        if (i2 == 1) {
            return behavior.v(this, view, motionEvent);
        }
        ct0.c();
        return false;
    }

    public final boolean u(MotionEvent motionEvent, int i2) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.d;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i3) : i3));
        }
        Comparator comparator = x;
        if (comparator != null) {
            Collections.sort(arrayList, comparator);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zT = false;
        for (int i4 = 0; i4 < size; i4++) {
            View view = (View) arrayList.get(i4);
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).f11851a;
            if (zT && actionMasked != 0) {
                if (behavior != null) {
                    if (motionEventObtain == null) {
                        motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction(3);
                    }
                    t(behavior, view, motionEventObtain, i2);
                }
            } else if (!zT && behavior != null && (zT = t(behavior, view, motionEvent, i2))) {
                this.f11848k = view;
                if (actionMasked != 3 && actionMasked != 1) {
                    for (int i5 = 0; i5 < i4; i5++) {
                        View view2 = (View) arrayList.get(i5);
                        Behavior behavior2 = ((LayoutParams) view2.getLayoutParams()).f11851a;
                        if (behavior2 != null) {
                            if (motionEventObtain == null) {
                                motionEventObtain = MotionEvent.obtain(motionEvent);
                                motionEventObtain.setAction(3);
                            }
                            t(behavior2, view2, motionEventObtain, i2);
                        }
                    }
                }
            }
        }
        arrayList.clear();
        if (motionEventObtain != null) {
            motionEventObtain.recycle();
        }
        return zT;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x0076 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0078  */
    /* JADX WARN: Code duplicated, block: B:34:0x007e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0089  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:38:0x008d
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:272)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:237)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:80)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:111)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeEndlessLoop(LoopRegionMaker.java:590)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:82)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:117)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:109)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:162)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:92)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    public final void v() {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.v():void");
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q;
    }

    public final void w() {
        View view = this.f11848k;
        if (view != null) {
            Behavior behavior = ((LayoutParams) view.getLayoutParams()).f11851a;
            if (behavior != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0);
                behavior.v(this, this.f11848k, motionEventObtain);
                motionEventObtain.recycle();
            }
            this.f11848k = null;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) getChildAt(i2).getLayoutParams()).getClass();
        }
        this.f11845h = false;
    }

    public final void z() {
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (!getFitsSystemWindows()) {
            ViewCompat.x(this, null);
            return;
        }
        if (this.s == null) {
            this.s = new OnApplyWindowInsetsListener() { // from class: androidx.coordinatorlayout.widget.CoordinatorLayout.1
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                    CoordinatorLayout coordinatorLayout = CoordinatorLayout.this;
                    if (!Objects.equals(coordinatorLayout.o, windowInsetsCompat)) {
                        coordinatorLayout.o = windowInsetsCompat;
                        boolean z = windowInsetsCompat.j() > 0;
                        coordinatorLayout.p = z;
                        coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
                        if (!windowInsetsCompat.n()) {
                            int childCount = coordinatorLayout.getChildCount();
                            for (int i2 = 0; i2 < childCount; i2++) {
                                View childAt = coordinatorLayout.getChildAt(i2);
                                WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                                if (childAt.getFitsSystemWindows() && ((LayoutParams) childAt.getLayoutParams()).f11851a != null && windowInsetsCompat.n()) {
                                    break;
                                }
                            }
                        }
                        coordinatorLayout.requestLayout();
                    }
                    return windowInsetsCompat;
                }
            };
        }
        ViewCompat.x(this, this.s);
        setSystemUiVisibility(Sink.Video.MAX_DIMENSION_HIGH);
    }

    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        public boolean e(View view, Rect rect) {
            return false;
        }

        public boolean f(View view, View view2) {
            return false;
        }

        public void g(LayoutParams layoutParams) {
        }

        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public void i(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void j() {
        }

        public boolean k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean l(CoordinatorLayout coordinatorLayout, View view, int i2) {
            return false;
        }

        public boolean m(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4) {
            return false;
        }

        public boolean n(View view) {
            return false;
        }

        public void o(CoordinatorLayout coordinatorLayout, View view, View view2, int i2, int i3, int[] iArr, int i4) {
        }

        public void p(CoordinatorLayout coordinatorLayout, View view, int i2, int i3, int i4, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
        }

        public boolean q(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            return false;
        }

        public void r(View view, Parcelable parcelable) {
        }

        public Parcelable s(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean t(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i2, int i3) {
            return false;
        }

        public void u(CoordinatorLayout coordinatorLayout, View view, View view2, int i2) {
        }

        public boolean v(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public SparseArray d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i2 = parcel.readInt();
            int[] iArr = new int[i2];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.d = new SparseArray(i2);
            for (int i3 = 0; i3 < i2; i3++) {
                this.d.append(iArr[i3], parcelableArray[i3]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            SparseArray sparseArray = this.d;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i3 = 0; i3 < size; i3++) {
                iArr[i3] = this.d.keyAt(i3);
                parcelableArr[i3] = (Parcelable) this.d.valueAt(i3);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i2);
        }

        /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$1, reason: invalid class name */
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

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    public CoordinatorLayout(Context context) {
        this(context, null);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Behavior f11851a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f11852b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11853c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11854e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f11855f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f11856h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11857i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11858j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public View f11859k;
        public View l;
        public boolean m;
        public boolean n;
        public boolean o;
        public final Rect p;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11852b = false;
            this.f11853c = 0;
            this.d = 0;
            this.f11854e = -1;
            this.f11855f = -1;
            this.g = 0;
            this.f11856h = 0;
            this.p = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11840b);
            this.f11853c = typedArrayObtainStyledAttributes.getInteger(0, 0);
            this.f11855f = typedArrayObtainStyledAttributes.getResourceId(1, -1);
            this.d = typedArrayObtainStyledAttributes.getInteger(2, 0);
            this.f11854e = typedArrayObtainStyledAttributes.getInteger(6, -1);
            this.g = typedArrayObtainStyledAttributes.getInt(5, 0);
            this.f11856h = typedArrayObtainStyledAttributes.getInt(4, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(3);
            this.f11852b = zHasValue;
            if (zHasValue) {
                String string = typedArrayObtainStyledAttributes.getString(3);
                String str = CoordinatorLayout.u;
                Behavior behavior = null;
                if (!TextUtils.isEmpty(string)) {
                    if (string.startsWith(FileUtils.HIDDEN_PREFIX)) {
                        string = context.getPackageName() + string;
                    } else if (string.indexOf(46) < 0) {
                        String str2 = CoordinatorLayout.u;
                        if (!TextUtils.isEmpty(str2)) {
                            string = str2 + JwtParser.SEPARATOR_CHAR + string;
                        }
                    }
                    try {
                        ThreadLocal threadLocal = CoordinatorLayout.w;
                        Map map = (Map) threadLocal.get();
                        if (map == null) {
                            map = new HashMap();
                            threadLocal.set(map);
                        }
                        Constructor<?> constructor = (Constructor) map.get(string);
                        if (constructor == null) {
                            constructor = Class.forName(string, false, context.getClassLoader()).getConstructor(CoordinatorLayout.v);
                            constructor.setAccessible(true);
                            map.put(string, constructor);
                        }
                        behavior = (Behavior) constructor.newInstance(context, attributeSet);
                    } catch (Exception e2) {
                        r81.g("Could not inflate Behavior subclass ".concat(string), e2);
                        throw null;
                    }
                }
                this.f11851a = behavior;
            }
            typedArrayObtainStyledAttributes.recycle();
            Behavior behavior2 = this.f11851a;
            if (behavior2 != null) {
                behavior2.g(this);
            }
        }

        public final boolean a(int i2) {
            if (i2 == 0) {
                return this.m;
            }
            if (i2 != 1) {
                return false;
            }
            return this.n;
        }

        public final void b(Behavior behavior) {
            Behavior behavior2 = this.f11851a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.j();
                }
                this.f11851a = behavior;
                this.f11852b = true;
                if (behavior != null) {
                    behavior.g(this);
                }
            }
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f11852b = false;
            this.f11853c = 0;
            this.d = 0;
            this.f11854e = -1;
            this.f11855f = -1;
            this.g = 0;
            this.f11856h = 0;
            this.p = new Rect();
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f11852b = false;
            this.f11853c = 0;
            this.d = 0;
            this.f11854e = -1;
            this.f11855f = -1;
            this.g = 0;
            this.f11856h = 0;
            this.p = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f11852b = false;
            this.f11853c = 0;
            this.d = 0;
            this.f11854e = -1;
            this.f11855f = -1;
            this.g = 0;
            this.f11856h = 0;
            this.p = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11852b = false;
            this.f11853c = 0;
            this.d = 0;
            this.f11854e = -1;
            this.f11855f = -1;
            this.g = 0;
            this.f11856h = 0;
            this.p = new Rect();
        }
    }
}
