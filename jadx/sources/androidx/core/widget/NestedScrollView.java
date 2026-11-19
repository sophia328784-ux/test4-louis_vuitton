package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ScrollFeedbackProviderCompat;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import defpackage.a;
import defpackage.md;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements NestedScrollingParent3, NestedScrollingChild3, ScrollingView {
    public static final float E = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final AccessibilityDelegate F = new AccessibilityDelegate();
    public static final int[] G = {R.attr.fillViewport};
    public final NestedScrollingChildHelper A;
    public float B;
    public OnScrollChangeListener C;
    public final DifferentialMotionFlingController D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f12335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f12336c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OverScroller f12337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EdgeEffect f12338f;
    public final EdgeEffect g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ScrollFeedbackProviderCompat f12339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f12341j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f12342k;
    public View l;
    public boolean m;
    public VelocityTracker n;
    public boolean o;
    public boolean p;
    public final int q;
    public final int r;
    public final int s;
    public int t;
    public final int[] u;
    public final int[] v;
    public int w;
    public int x;
    public SavedState y;
    public final NestedScrollingParentHelper z;

    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int scrollRange;
            this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityNodeInfoCompat.i(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            accessibilityNodeInfoCompat.m(true);
            if (nestedScrollView.getScrollY() > 0) {
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12273i);
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.n);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.f12272h);
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.p);
            }
        }

        /* JADX WARN: Code duplicated, block: B:26:0x006a  */
        /* JADX WARN: Code duplicated, block: B:28:0x0087  */
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final boolean g(View view, int i2, Bundle bundle) {
            int iMin;
            if (super.g(view, i2, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (nestedScrollView.isEnabled()) {
                int height = nestedScrollView.getHeight();
                Rect rect = new Rect();
                if (nestedScrollView.getMatrix().isIdentity() && nestedScrollView.getGlobalVisibleRect(rect)) {
                    height = rect.height();
                }
                if (i2 == 4096) {
                    iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                    if (iMin != nestedScrollView.getScrollY()) {
                        nestedScrollView.v(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), true);
                        return true;
                    }
                } else if (i2 == 8192 || i2 == 16908344) {
                    int iMax = Math.max(nestedScrollView.getScrollY() - ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax != nestedScrollView.getScrollY()) {
                        nestedScrollView.v(0 - nestedScrollView.getScrollX(), iMax - nestedScrollView.getScrollY(), true);
                        return true;
                    }
                } else if (i2 == 16908346) {
                    iMin = Math.min(nestedScrollView.getScrollY() + ((height - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
                    if (iMin != nestedScrollView.getScrollY()) {
                        nestedScrollView.v(0 - nestedScrollView.getScrollX(), iMin - nestedScrollView.getScrollY(), true);
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static final class Api35Impl {
        public static void a(NestedScrollView nestedScrollView, float f2) {
            try {
                nestedScrollView.setFrameContentVelocity(f2);
            } catch (LinkageError unused) {
            }
        }
    }

    public class DifferentialMotionFlingTargetImpl implements DifferentialMotionFlingTarget {
        public DifferentialMotionFlingTargetImpl() {
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final boolean a(float f2) {
            if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                return false;
            }
            c();
            NestedScrollView.this.e((int) f2);
            return true;
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final float b() {
            return -NestedScrollView.this.getVerticalScrollFactorCompat();
        }

        @Override // androidx.core.view.DifferentialMotionFlingTarget
        public final void c() {
            NestedScrollView.this.f12337e.abortAnimation();
        }
    }

    public interface OnScrollChangeListener {
    }

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12344b;

        /* JADX INFO: renamed from: androidx.core.widget.NestedScrollView$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState(parcel);
                savedState.f12344b = parcel.readInt();
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" scrollPosition=");
            return a.i(this.f12344b, "}", sb);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeInt(this.f12344b);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.d = new Rect();
        this.f12341j = true;
        this.f12342k = false;
        this.l = null;
        this.m = false;
        this.p = true;
        this.t = -1;
        this.u = new int[2];
        this.v = new int[2];
        this.D = new DifferentialMotionFlingController(getContext(), new DifferentialMotionFlingTargetImpl());
        int i3 = Build.VERSION.SDK_INT;
        this.f12338f = i3 >= 31 ? EdgeEffectCompat.Api31Impl.a(context, attributeSet) : new EdgeEffect(context);
        this.g = i3 >= 31 ? EdgeEffectCompat.Api31Impl.a(context, attributeSet) : new EdgeEffect(context);
        this.f12335b = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.f12337e = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.q = viewConfiguration.getScaledTouchSlop();
        this.r = viewConfiguration.getScaledMinimumFlingVelocity();
        this.s = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, G, i2, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.z = new NestedScrollingParentHelper(this);
        this.A = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        ViewCompat.t(this, F);
    }

    private ScrollFeedbackProviderCompat getScrollFeedbackProvider() {
        if (this.f12339h == null) {
            this.f12339h = new ScrollFeedbackProviderCompat(this);
        }
        return this.f12339h;
    }

    public static boolean h(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && h((View) parent, nestedScrollView);
    }

    public final boolean a(int i2) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View view = viewFindFocus;
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i2);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !i(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i2 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i2 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            t(maxScrollAmount, -1, null, 0, 1, true);
        } else {
            Rect rect = this.d;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            t(b(rect), -1, null, 0, 1, true);
            viewFindNextFocus.requestFocus(i2);
        }
        if (view != null && view.isFocused() && !i(view, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
        } else {
            md.k("ScrollView can host only one direct child");
        }
    }

    public final int b(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i2 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i3 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i2 - verticalFadingEdgeLength : i2;
        int i4 = rect.bottom;
        if (i4 > i3 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i3, (childAt.getBottom() + layoutParams.bottomMargin) - i2);
        }
        if (rect.top >= scrollY || i4 >= i3) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i3 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public final boolean c(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return this.A.c(i2, i3, iArr, null, i4);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0080  */
    /* JADX WARN: Code duplicated, block: B:23:0x008d  */
    /* JADX WARN: Code duplicated, block: B:24:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:40:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00ef  */
    @Override // android.view.View
    public final void computeScroll() {
        int iRound;
        int[] iArr;
        int i2;
        int scrollRange;
        int i3;
        int overScrollMode;
        OverScroller overScroller = this.f12337e;
        if (overScroller.isFinished()) {
            return;
        }
        overScroller.computeScrollOffset();
        int currY = overScroller.getCurrY();
        int i4 = currY - this.x;
        int height = getHeight();
        EdgeEffect edgeEffect = this.f12338f;
        EdgeEffect edgeEffect2 = this.g;
        if (i4 <= 0 || EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (i4 < 0 && EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float f2 = height;
                iRound = Math.round(EdgeEffectCompat.b(edgeEffect2, (i4 * 4.0f) / f2, 0.5f) * (f2 / 4.0f));
                if (iRound != i4) {
                    edgeEffect2.finish();
                }
            }
            this.x = currY;
            iArr = this.v;
            iArr[1] = 0;
            c(0, i4, iArr, null, 1);
            i2 = i4 - iArr[1];
            scrollRange = getScrollRange();
            if (Build.VERSION.SDK_INT >= 35) {
                Api35Impl.a(this, Math.abs(overScroller.getCurrVelocity()));
            }
            if (i2 != 0) {
                int scrollY = getScrollY();
                q(i2, getScrollX(), scrollY, scrollRange);
                int scrollY2 = getScrollY() - scrollY;
                int i5 = i2 - scrollY2;
                iArr[1] = 0;
                i3 = 1;
                this.A.d(0, scrollY2, 0, i5, this.u, 1, iArr);
                i2 = i5 - iArr[1];
            } else {
                i3 = 1;
            }
            if (i2 != 0) {
                overScrollMode = getOverScrollMode();
                if (overScrollMode != 0 || (overScrollMode == i3 && scrollRange > 0)) {
                    if (i2 < 0) {
                        if (edgeEffect.isFinished()) {
                            edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                        }
                    } else if (edgeEffect2.isFinished()) {
                        edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                }
                overScroller.abortAnimation();
                x(i3);
            }
            if (overScroller.isFinished()) {
                x(i3);
            } else {
                postInvalidateOnAnimation();
            }
        }
        iRound = Math.round(EdgeEffectCompat.b(edgeEffect, ((-i4) * 4.0f) / height, 0.5f) * ((-height) / 4.0f));
        if (iRound != i4) {
            edgeEffect.finish();
        }
        i4 -= iRound;
        this.x = currY;
        iArr = this.v;
        iArr[1] = 0;
        c(0, i4, iArr, null, 1);
        i2 = i4 - iArr[1];
        scrollRange = getScrollRange();
        if (Build.VERSION.SDK_INT >= 35) {
            Api35Impl.a(this, Math.abs(overScroller.getCurrVelocity()));
        }
        if (i2 != 0) {
            int scrollY3 = getScrollY();
            q(i2, getScrollX(), scrollY3, scrollRange);
            int scrollY4 = getScrollY() - scrollY3;
            int i6 = i2 - scrollY4;
            iArr[1] = 0;
            i3 = 1;
            this.A.d(0, scrollY4, 0, i6, this.u, 1, iArr);
            i2 = i6 - iArr[1];
        } else {
            i3 = 1;
        }
        if (i2 != 0) {
            overScrollMode = getOverScrollMode();
            if (overScrollMode != 0) {
                if (i2 < 0) {
                    if (edgeEffect.isFinished()) {
                        edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                    }
                } else if (edgeEffect2.isFinished()) {
                    edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (i2 < 0) {
                if (edgeEffect.isFinished()) {
                    edgeEffect.onAbsorb((int) overScroller.getCurrVelocity());
                }
            } else if (edgeEffect2.isFinished()) {
                edgeEffect2.onAbsorb((int) overScroller.getCurrVelocity());
            }
            overScroller.abortAnimation();
            x(i3);
        }
        if (overScroller.isFinished()) {
            postInvalidateOnAnimation();
        } else {
            x(i3);
        }
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > iMax ? (scrollY - iMax) + bottom : bottom;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x0098  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ab  */
    public final boolean d(KeyEvent keyEvent) {
        View viewFindFocus;
        View viewFindNextFocus;
        this.d.setEmpty();
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() == 0) {
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 19) {
                        return keyEvent.isAltPressed() ? f(33) : a(33);
                    }
                    if (keyCode == 20) {
                        return keyEvent.isAltPressed() ? f(130) : a(130);
                    }
                    if (keyCode == 62) {
                        r(keyEvent.isShiftPressed() ? 33 : 130);
                        return false;
                    }
                    if (keyCode == 92) {
                        return f(33);
                    }
                    if (keyCode == 93) {
                        return f(130);
                    }
                    if (keyCode == 122) {
                        r(33);
                        return false;
                    }
                    if (keyCode == 123) {
                        r(130);
                        return false;
                    }
                }
            } else if (isFocused() && keyEvent.getKeyCode() != 4) {
                viewFindFocus = findFocus();
                if (viewFindFocus == this) {
                    viewFindFocus = null;
                }
                viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
                if (viewFindNextFocus == null && viewFindNextFocus != this && viewFindNextFocus.requestFocus(130)) {
                    return true;
                }
            }
        } else if (isFocused()) {
            viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            if (viewFindNextFocus == null) {
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || d(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.A.a(f2, f3, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f2, float f3) {
        return this.A.b(f2, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.A.c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.A.d(i2, i3, i4, i5, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f12338f;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (getClipToPadding()) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            } else {
                paddingLeft = 0;
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.g;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (getClipToPadding()) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (getClipToPadding()) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    public final void e(int i2) {
        if (getChildCount() > 0) {
            this.f12337e.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            this.A.h(2, 1);
            this.x = getScrollY();
            postInvalidateOnAnimation();
            if (Build.VERSION.SDK_INT >= 35) {
                Api35Impl.a(this, Math.abs(this.f12337e.getCurrVelocity()));
            }
        }
    }

    public final boolean f(int i2) {
        int childCount;
        boolean z = i2 == 130;
        int height = getHeight();
        Rect rect = this.d;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return s(i2, rect.top, rect.bottom);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void g(int i2, View view) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.z;
        if (i2 == 1) {
            nestedScrollingParentHelper.f12180b = 0;
        } else {
            nestedScrollingParentHelper.f12179a = 0;
        }
        x(i2);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.z;
        return nestedScrollingParentHelper.f12180b | nestedScrollingParentHelper.f12179a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.B == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                md.k("Expected theme to define listPreferredItemHeight.");
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            this.B = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.B;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.A.f(0);
    }

    public final boolean i(View view, int i2, int i3) {
        Rect rect = this.d;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i2 >= getScrollY() && rect.top - i2 <= getScrollY() + i3;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.A.d;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void j(View view, View view2, int i2, int i3) {
        NestedScrollingParentHelper nestedScrollingParentHelper = this.z;
        if (i3 == 1) {
            nestedScrollingParentHelper.f12180b = i2;
        } else {
            nestedScrollingParentHelper.f12179a = i2;
        }
        this.A.h(2, i3);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void k(View view, int i2, int i3, int[] iArr, int i4) {
        c(i2, i3, iArr, null, i4);
    }

    public final void l(int i2, int i3, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.A.d(0, scrollY2, 0, i2 - scrollY2, null, i3, iArr);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public final void m(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        l(i5, i6, iArr);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final void n(View view, int i2, int i3, int i4, int i5, int i6) {
        l(i5, i6, null);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public final boolean o(View view, View view2, int i2, int i3) {
        return (i2 & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f12342k = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i2;
        int width;
        float axisValue;
        if (motionEvent.getAction() == 8 && !this.m) {
            if (MotionEventCompat.a(motionEvent, 2)) {
                axisValue = motionEvent.getAxisValue(9);
                i2 = 9;
                width = (int) motionEvent.getX();
            } else if (MotionEventCompat.a(motionEvent, 4194304)) {
                float axisValue2 = motionEvent.getAxisValue(26);
                width = getWidth() / 2;
                i2 = 26;
                axisValue = axisValue2;
            } else {
                i2 = 0;
                width = 0;
                axisValue = 0.0f;
            }
            if (axisValue != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                t(-((int) (getVerticalScrollFactorCompat() * axisValue)), i2, motionEvent, width, 1, MotionEventCompat.a(motionEvent, 8194));
                if (i2 == 0) {
                    return true;
                }
                this.D.a(motionEvent, i2);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x006b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0073  */
    /* JADX WARN: Code duplicated, block: B:39:0x008f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:70:0x0113  */
    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        VelocityTracker velocityTracker2;
        int iFindPointerIndex;
        int action = motionEvent.getAction();
        boolean z = true;
        if (action == 2 && this.m) {
            return true;
        }
        int i2 = action & 255;
        if (i2 == 0) {
            int y = (int) motionEvent.getY();
            int x = (int) motionEvent.getX();
            int childCount = getChildCount();
            OverScroller overScroller = this.f12337e;
            if (childCount > 0) {
                int scrollY = getScrollY();
                View childAt = getChildAt(0);
                if (y < childAt.getTop() - scrollY || y >= childAt.getBottom() - scrollY || x < childAt.getLeft() || x >= childAt.getRight()) {
                    if (!w(motionEvent) && overScroller.isFinished()) {
                        z = false;
                    }
                    this.m = z;
                    velocityTracker = this.n;
                    if (velocityTracker != null) {
                        velocityTracker.recycle();
                        this.n = null;
                    }
                } else {
                    this.f12340i = y;
                    this.t = motionEvent.getPointerId(0);
                    VelocityTracker velocityTracker3 = this.n;
                    if (velocityTracker3 == null) {
                        this.n = VelocityTracker.obtain();
                    } else {
                        velocityTracker3.clear();
                    }
                    this.n.addMovement(motionEvent);
                    overScroller.computeScrollOffset();
                    if (!w(motionEvent) && overScroller.isFinished()) {
                        z = false;
                    }
                    this.m = z;
                    this.A.h(2, 0);
                }
            } else {
                if (!w(motionEvent)) {
                    z = false;
                }
                this.m = z;
                velocityTracker = this.n;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.n = null;
                }
            }
        } else if (i2 == 1) {
            this.m = false;
            this.t = -1;
            velocityTracker2 = this.n;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.n = null;
            }
            if (this.f12337e.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            x(0);
        } else if (i2 == 2) {
            int i3 = this.t;
            if (i3 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i3)) != -1) {
                int y2 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y2 - this.f12340i) > this.q && (2 & getNestedScrollAxes()) == 0) {
                    this.m = true;
                    this.f12340i = y2;
                    if (this.n == null) {
                        this.n = VelocityTracker.obtain();
                    }
                    this.n.addMovement(motionEvent);
                    this.w = 0;
                    ViewParent parent = getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                    }
                }
            }
        } else if (i2 == 3) {
            this.m = false;
            this.t = -1;
            velocityTracker2 = this.n;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.n = null;
            }
            if (this.f12337e.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                postInvalidateOnAnimation();
            }
            x(0);
        } else if (i2 == 6) {
            p(motionEvent);
        }
        return this.m;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int measuredHeight;
        super.onLayout(z, i2, i3, i4, i5);
        int i6 = 0;
        this.f12341j = false;
        View view = this.l;
        if (view != null && h(view, this)) {
            View view2 = this.l;
            Rect rect = this.d;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iB = b(rect);
            if (iB != 0) {
                scrollBy(0, iB);
            }
        }
        this.l = null;
        if (!this.f12342k) {
            if (this.y != null) {
                scrollTo(getScrollX(), this.y.f12344b);
                this.y = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i6 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i6 != scrollY) {
                scrollTo(getScrollX(), i6);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f12342k = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.o && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, true);
        e((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f2, float f3) {
        return this.A.b(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        c(i2, i3, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        l(i5, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i2) {
        j(view, view2, i2, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i2, int i3, boolean z, boolean z2) {
        super.scrollTo(i2, i3);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i2) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        if (viewFindNextFocus != null && i(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i2, rect);
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
        super.onRestoreInstanceState(savedState.getSuperState());
        this.y = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f12344b = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !i(viewFindFocus, 0, i5)) {
            return;
        }
        Rect rect = this.d;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        int iB = b(rect);
        if (iB != 0) {
            if (this.p) {
                v(0, iB, false);
            } else {
                scrollBy(0, iB);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i2) {
        return o(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        g(0, view);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0106  */
    /* JADX WARN: Code duplicated, block: B:52:0x010e  */
    /* JADX WARN: Code duplicated, block: B:54:0x0116  */
    /* JADX WARN: Code duplicated, block: B:56:0x011c  */
    /* JADX WARN: Code duplicated, block: B:59:0x0123  */
    /* JADX WARN: Code duplicated, block: B:60:0x0125  */
    /* JADX WARN: Code duplicated, block: B:63:0x012a  */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        float fB;
        int iRound;
        int i2;
        int iAbs;
        int i3;
        ViewParent parent2;
        if (this.n == null) {
            this.n = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.w = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f2 = this.w;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        motionEventObtain.offsetLocation(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2);
        NestedScrollingChildHelper nestedScrollingChildHelper = this.A;
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f12338f;
            EdgeEffect edgeEffect2 = this.g;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.n;
                velocityTracker.computeCurrentVelocity(1000, this.s);
                int yVelocity = (int) velocityTracker.getYVelocity(this.t);
                if (Math.abs(yVelocity) >= this.r) {
                    if (EdgeEffectCompat.a(edgeEffect) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        if (u(edgeEffect, yVelocity)) {
                            edgeEffect.onAbsorb(yVelocity);
                        } else {
                            e(-yVelocity);
                        }
                    } else if (EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        int i4 = -yVelocity;
                        if (u(edgeEffect2, i4)) {
                            edgeEffect2.onAbsorb(i4);
                        } else {
                            e(i4);
                        }
                    } else {
                        int i5 = -yVelocity;
                        float f4 = i5;
                        if (!nestedScrollingChildHelper.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4)) {
                            dispatchNestedFling(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, true);
                            e(i5);
                        }
                    }
                } else if (this.f12337e.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.t = -1;
                this.m = false;
                VelocityTracker velocityTracker2 = this.n;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.n = null;
                }
                x(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.t);
                if (iFindPointerIndex != -1) {
                    int y = (int) motionEvent.getY(iFindPointerIndex);
                    int i6 = this.f12340i - y;
                    float x = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i6 / getHeight();
                    if (EdgeEffectCompat.a(edgeEffect) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        fB = -EdgeEffectCompat.b(edgeEffect, -height, x);
                        if (EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            edgeEffect.onRelease();
                        }
                    } else if (EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        fB = EdgeEffectCompat.b(edgeEffect2, height, 1.0f - x);
                        if (EdgeEffectCompat.a(edgeEffect2) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            edgeEffect2.onRelease();
                        }
                    } else {
                        iRound = Math.round(f3 * getHeight());
                        if (iRound != 0) {
                            invalidate();
                        }
                        i2 = i6 - iRound;
                        if (!this.m) {
                            iAbs = Math.abs(i2);
                            i3 = this.q;
                            if (iAbs > i3) {
                                parent2 = getParent();
                                if (parent2 != null) {
                                    parent2.requestDisallowInterceptTouchEvent(true);
                                }
                                this.m = true;
                                if (i2 > 0) {
                                    i2 -= i3;
                                } else {
                                    i2 += i3;
                                }
                            }
                        }
                        if (this.m) {
                            int iT = t(i2, 1, motionEvent, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                            this.f12340i = y - iT;
                            this.w += iT;
                        }
                    }
                    f3 = fB;
                    iRound = Math.round(f3 * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    i2 = i6 - iRound;
                    if (!this.m) {
                        iAbs = Math.abs(i2);
                        i3 = this.q;
                        if (iAbs > i3) {
                            parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            this.m = true;
                            if (i2 > 0) {
                                i2 -= i3;
                            } else {
                                i2 += i3;
                            }
                        }
                    }
                    if (this.m) {
                        int iT2 = t(i2, 1, motionEvent, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                        this.f12340i = y - iT2;
                        this.w += iT2;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.m && getChildCount() > 0) {
                    if (this.f12337e.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                        postInvalidateOnAnimation();
                    }
                }
                this.t = -1;
                this.m = false;
                VelocityTracker velocityTracker3 = this.n;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.n = null;
                }
                x(0);
                edgeEffect.onRelease();
                edgeEffect2.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f12340i = (int) motionEvent.getY(actionIndex);
                this.t = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                p(motionEvent);
                this.f12340i = (int) motionEvent.getY(motionEvent.findPointerIndex(this.t));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.m && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            OverScroller overScroller = this.f12337e;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                x(1);
            }
            int y2 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f12340i = y2;
            this.t = pointerId;
            nestedScrollingChildHelper.h(2, 0);
        }
        VelocityTracker velocityTracker4 = this.n;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.t) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.f12340i = (int) motionEvent.getY(i2);
            this.t = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.n;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i2, int i3, int i4, int i5) {
        int i6;
        boolean z;
        int i7;
        boolean z2;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i8 = i4 + i2;
        if (i3 <= 0 && i3 >= 0) {
            i6 = i3;
            z = false;
        } else {
            i6 = 0;
            z = true;
        }
        if (i8 <= i5) {
            if (i8 < 0) {
                i7 = 0;
            } else {
                i7 = i8;
                z2 = false;
            }
            if (z2 && !this.A.f(1)) {
                this.f12337e.springBack(i6, i7, 0, 0, 0, getScrollRange());
            }
            super.scrollTo(i6, i7);
            return !z || z2;
        }
        i7 = i5;
        z2 = true;
        if (z2) {
            this.f12337e.springBack(i6, i7, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i6, i7);
        if (z) {
        }
    }

    public final void r(int i2) {
        boolean z = i2 == 130;
        int height = getHeight();
        Rect rect = this.d;
        if (z) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i3 = rect.top;
        int i4 = height + i3;
        rect.bottom = i4;
        s(i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f12341j) {
            this.l = view2;
        } else {
            Rect rect = this.d;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iB = b(rect);
            if (iB != 0) {
                scrollBy(0, iB);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iB = b(rect);
        boolean z2 = iB != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iB);
                return z2;
            }
            v(0, iB, false);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        VelocityTracker velocityTracker;
        if (z && (velocityTracker = this.n) != null) {
            velocityTracker.recycle();
            this.n = null;
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f12341j = true;
        super.requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0068  */
    public final boolean s(int i2, int i3, int i4) {
        boolean z;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z2 = i2 == 33;
        ArrayList<View> focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z3 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = focusables.get(i6);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i3 < bottom && top < i4) {
                boolean z4 = i3 < top && bottom < i4;
                if (view == null) {
                    view = view2;
                    z3 = z4;
                } else {
                    boolean z5 = (z2 && top < view.getTop()) || (!z2 && bottom > view.getBottom());
                    if (z3) {
                        if (z4 && z5) {
                            view = view2;
                        }
                    } else if (z4) {
                        view = view2;
                        z3 = true;
                    } else if (z5) {
                        view = view2;
                    }
                }
            }
        }
        View view3 = view == null ? this : view;
        if (i3 < scrollY || i4 > i5) {
            t(z2 ? i3 - scrollY : i4 - i5, -1, null, 0, 1, true);
            z = true;
        } else {
            z = false;
        }
        if (view3 != findFocus()) {
            view3.requestFocus(i2);
        }
        return z;
    }

    @Override // android.view.View
    public final void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i2 < 0) {
                i2 = 0;
            } else if (width + i2 > width2) {
                i2 = width2 - width;
            }
            if (height >= height2 || i3 < 0) {
                i3 = 0;
            } else if (height + i3 > height2) {
                i3 = height2 - height;
            }
            if (i2 == getScrollX() && i3 == getScrollY()) {
                return;
            }
            super.scrollTo(i2, i3);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.o) {
            this.o = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.A.g(z);
    }

    public void setOnScrollChangeListener(OnScrollChangeListener onScrollChangeListener) {
        this.C = onScrollChangeListener;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.p = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i2) {
        return this.A.h(i2, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        x(0);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0112  */
    /* JADX WARN: Code duplicated, block: B:59:0x0123  */
    public final int t(int i2, int i3, MotionEvent motionEvent, int i4, int i5, boolean z) {
        int i6;
        int i7;
        boolean z2;
        boolean z3;
        VelocityTracker velocityTracker;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.A;
        if (i5 == 1) {
            nestedScrollingChildHelper.h(2, i5);
        }
        boolean zC = this.A.c(0, i2, this.v, this.u, i5);
        int[] iArr = this.u;
        int[] iArr2 = this.v;
        if (zC) {
            i6 = i2 - iArr2[1];
            i7 = iArr[1];
        } else {
            i6 = i2;
            i7 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z4 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z;
        boolean z5 = q(i6, 0, scrollY, scrollRange) && !nestedScrollingChildHelper.f(i5);
        int scrollY2 = getScrollY() - scrollY;
        if (motionEvent != null && scrollY2 != 0) {
            getScrollFeedbackProvider().b(motionEvent.getDeviceId(), motionEvent.getSource(), i3, scrollY2);
        }
        iArr2[1] = 0;
        this.A.d(0, scrollY2, 0, i6 - scrollY2, this.u, i5, iArr2);
        int i8 = i7 + iArr[1];
        int i9 = i6 - iArr2[1];
        int i10 = scrollY + i9;
        EdgeEffect edgeEffect = this.g;
        EdgeEffect edgeEffect2 = this.f12338f;
        if (i10 >= 0) {
            if (i10 > scrollRange && z4) {
                EdgeEffectCompat.b(edgeEffect, i9 / getHeight(), 1.0f - (i4 / getWidth()));
                if (motionEvent != null) {
                    z2 = false;
                    getScrollFeedbackProvider().a(motionEvent.getDeviceId(), motionEvent.getSource(), i3, false);
                } else {
                    z2 = false;
                }
                if (!edgeEffect2.isFinished()) {
                    edgeEffect2.onRelease();
                }
            }
            if (edgeEffect2.isFinished() || !edgeEffect.isFinished()) {
                postInvalidateOnAnimation();
                z3 = z2;
            } else {
                z3 = z5;
            }
            if (z3 && i5 == 0 && (velocityTracker = this.n) != null) {
                velocityTracker.clear();
            }
            if (i5 == 1) {
                x(i5);
                edgeEffect2.onRelease();
                edgeEffect.onRelease();
            }
            return i8;
        }
        if (z4) {
            EdgeEffectCompat.b(edgeEffect2, (-i9) / getHeight(), i4 / getWidth());
            if (motionEvent != null) {
                getScrollFeedbackProvider().a(motionEvent.getDeviceId(), motionEvent.getSource(), i3, true);
            }
            if (!edgeEffect.isFinished()) {
                edgeEffect.onRelease();
            }
        }
        z2 = false;
        if (edgeEffect2.isFinished()) {
            postInvalidateOnAnimation();
            z3 = z2;
        } else {
            postInvalidateOnAnimation();
            z3 = z2;
        }
        if (z3) {
            velocityTracker.clear();
        }
        if (i5 == 1) {
            x(i5);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i8;
    }

    public final boolean u(EdgeEffect edgeEffect, int i2) {
        if (i2 > 0) {
            return true;
        }
        float fA = EdgeEffectCompat.a(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i2) * 0.35f;
        float f2 = this.f12335b * 0.015f;
        double dLog = Math.log(fAbs / f2);
        double d = E;
        return ((float) (Math.exp((d / (d - 1.0d)) * dLog) * ((double) f2))) < fA;
    }

    public final void v(int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f12336c > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iMax = Math.max(0, Math.min(i3 + scrollY, Math.max(0, height - height2))) - scrollY;
            this.f12337e.startScroll(getScrollX(), scrollY, 0, iMax, 250);
            if (z) {
                this.A.h(2, 1);
            } else {
                x(1);
            }
            this.x = getScrollY();
            postInvalidateOnAnimation();
        } else {
            OverScroller overScroller = this.f12337e;
            if (!overScroller.isFinished()) {
                overScroller.abortAnimation();
                x(1);
            }
            scrollBy(i2, i3);
        }
        this.f12336c = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean w(MotionEvent motionEvent) {
        boolean z;
        EdgeEffect edgeEffect = this.f12338f;
        if (EdgeEffectCompat.a(edgeEffect) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            EdgeEffectCompat.b(edgeEffect, Call.Parameters.DEFAULT_CAMERA_ZOOM, motionEvent.getX() / getWidth());
            z = true;
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.g;
        if (EdgeEffectCompat.a(edgeEffect2) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return z;
        }
        EdgeEffectCompat.b(edgeEffect2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void x(int i2) {
        this.A.i(i2);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
        } else {
            md.k("ScrollView can host only one direct child");
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
        } else {
            md.k("ScrollView can host only one direct child");
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
        } else {
            md.k("ScrollView can host only one direct child");
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.nestedScrollViewStyle);
    }

    public NestedScrollView(Context context) {
        this(context, null);
    }
}
