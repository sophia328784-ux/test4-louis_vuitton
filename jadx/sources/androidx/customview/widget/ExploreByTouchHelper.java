package androidx.customview.widget;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import defpackage.md;
import defpackage.v7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExploreByTouchHelper extends AccessibilityDelegateCompat {
    public static final Rect o = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    public static final FocusStrategy.BoundsAdapter p = new AnonymousClass1();
    public static final FocusStrategy.CollectionAdapter q = new AnonymousClass2();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AccessibilityManager f12559i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f12560j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MyNodeProvider f12561k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Rect f12556e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Rect f12557f = new Rect();
    public final Rect g = new Rect();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f12558h = new int[2];
    public int l = Integer.MIN_VALUE;
    public int m = Integer.MIN_VALUE;
    public int n = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: androidx.customview.widget.ExploreByTouchHelper$1, reason: invalid class name */
    public class AnonymousClass1 implements FocusStrategy.BoundsAdapter<AccessibilityNodeInfoCompat> {
        @Override // androidx.customview.widget.FocusStrategy.BoundsAdapter
        public final void a(Object obj, Rect rect) {
            ((AccessibilityNodeInfoCompat) obj).f(rect);
        }
    }

    /* JADX INFO: renamed from: androidx.customview.widget.ExploreByTouchHelper$2, reason: invalid class name */
    public class AnonymousClass2 implements FocusStrategy.CollectionAdapter<SparseArrayCompat<AccessibilityNodeInfoCompat>, AccessibilityNodeInfoCompat> {
    }

    public class MyNodeProvider extends AccessibilityNodeProviderCompat {
        public MyNodeProvider() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat b(int i2) {
            return new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain(ExploreByTouchHelper.this.r(i2).f12267a));
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final AccessibilityNodeInfoCompat c(int i2) {
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            int i3 = i2 == 2 ? exploreByTouchHelper.l : exploreByTouchHelper.m;
            if (i3 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i3);
        }

        @Override // androidx.core.view.accessibility.AccessibilityNodeProviderCompat
        public final boolean d(int i2, int i3, Bundle bundle) {
            int i4;
            ExploreByTouchHelper exploreByTouchHelper = ExploreByTouchHelper.this;
            View view = exploreByTouchHelper.f12560j;
            if (i2 == -1) {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                return view.performAccessibilityAction(i3, bundle);
            }
            if (i3 == 1) {
                return exploreByTouchHelper.w(i2);
            }
            if (i3 == 2) {
                return exploreByTouchHelper.j(i2);
            }
            if (i3 != 64) {
                if (i3 != 128) {
                    return exploreByTouchHelper.s(i2, i3, bundle);
                }
                if (exploreByTouchHelper.l != i2) {
                    return false;
                }
                exploreByTouchHelper.l = Integer.MIN_VALUE;
                view.invalidate();
                exploreByTouchHelper.x(i2, 65536);
                return true;
            }
            AccessibilityManager accessibilityManager = exploreByTouchHelper.f12559i;
            if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled() || (i4 = exploreByTouchHelper.l) == i2) {
                return false;
            }
            if (i4 != Integer.MIN_VALUE) {
                exploreByTouchHelper.l = Integer.MIN_VALUE;
                view.invalidate();
                exploreByTouchHelper.x(i4, 65536);
            }
            exploreByTouchHelper.l = i2;
            view.invalidate();
            exploreByTouchHelper.x(i2, 32768);
            return true;
        }
    }

    public ExploreByTouchHelper(View view) {
        if (view == null) {
            md.n("View may not be null");
            throw null;
        }
        this.f12560j = view;
        this.f12559i = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat b(View view) {
        if (this.f12561k == null) {
            this.f12561k = new MyNodeProvider();
        }
        return this.f12561k;
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        this.f12143b.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.f12267a);
        t(accessibilityNodeInfoCompat);
    }

    public final boolean j(int i2) {
        if (this.m != i2) {
            return false;
        }
        this.m = Integer.MIN_VALUE;
        v(i2, false);
        x(i2, 8);
        return true;
    }

    public final AccessibilityEvent k(int i2, int i3) {
        View view = this.f12560j;
        if (i2 == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i3);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i3);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatR = r(i2);
        accessibilityEventObtain2.getText().add(accessibilityNodeInfoCompatR.g());
        AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompatR.f12267a;
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfo.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfo.isChecked());
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            v7.h("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            return null;
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfo.getClassName());
        accessibilityEventObtain2.setSource(view, i2);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final AccessibilityNodeInfoCompat l(int i2) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        accessibilityNodeInfoCompat.i("android.view.View");
        Rect rect = o;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        accessibilityNodeInfoCompat.f12268b = -1;
        View view = this.f12560j;
        accessibilityNodeInfoObtain.setParent(view);
        u(i2, accessibilityNodeInfoCompat);
        if (accessibilityNodeInfoCompat.g() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            v7.h("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
            return null;
        }
        Rect rect2 = this.f12557f;
        accessibilityNodeInfoCompat.f(rect2);
        if (rect2.equals(rect)) {
            v7.h("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
            return null;
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            v7.h("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        if ((actions & 128) != 0) {
            v7.h("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
            return null;
        }
        accessibilityNodeInfoObtain.setPackageName(view.getContext().getPackageName());
        accessibilityNodeInfoCompat.f12269c = i2;
        accessibilityNodeInfoObtain.setSource(view, i2);
        if (this.l == i2) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompat.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompat.a(64);
        }
        boolean z = this.m == i2;
        if (z) {
            accessibilityNodeInfoCompat.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            accessibilityNodeInfoCompat.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z);
        int[] iArr = this.f12558h;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.f12556e;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            accessibilityNodeInfoCompat.f(rect3);
            if (accessibilityNodeInfoCompat.f12268b != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = new AccessibilityNodeInfoCompat(AccessibilityNodeInfo.obtain());
                for (int i3 = accessibilityNodeInfoCompat.f12268b; i3 != -1; i3 = accessibilityNodeInfoCompat2.f12268b) {
                    accessibilityNodeInfoCompat2.f12268b = -1;
                    AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat2.f12267a;
                    accessibilityNodeInfo.setParent(view, -1);
                    accessibilityNodeInfo.setBoundsInParent(rect);
                    u(i3, accessibilityNodeInfoCompat2);
                    accessibilityNodeInfoCompat2.f(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.g;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                AccessibilityNodeInfo accessibilityNodeInfo2 = accessibilityNodeInfoCompat.f12267a;
                accessibilityNodeInfo2.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (parent instanceof View) {
                        View view2 = (View) parent;
                        if (view2.getAlpha() > Call.Parameters.DEFAULT_CAMERA_ZOOM && view2.getVisibility() == 0) {
                            parent = view2.getParent();
                        }
                    }
                    if (parent != null) {
                        accessibilityNodeInfo2.setVisibleToUser(true);
                    }
                }
            }
        }
        return accessibilityNodeInfoCompat;
    }

    public final boolean m(MotionEvent motionEvent) {
        int i2;
        AccessibilityManager accessibilityManager = this.f12559i;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iN = n(motionEvent.getX(), motionEvent.getY());
            int i3 = this.n;
            if (i3 != iN) {
                this.n = iN;
                x(iN, 128);
                x(i3, 256);
            }
            if (iN == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i2 = this.n) == Integer.MIN_VALUE) {
                return false;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.n = Integer.MIN_VALUE;
                x(Integer.MIN_VALUE, 128);
                x(i2, 256);
                return true;
            }
        }
        return true;
    }

    public abstract int n(float f2, float f3);

    public abstract void o(ArrayList arrayList);

    public final void p(int i2) {
        View view;
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.f12559i.isEnabled() || (parent = (view = this.f12560j).getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventK = k(i2, 2048);
        accessibilityEventK.setContentChangeTypes(0);
        parent.requestSendAccessibilityEvent(view, accessibilityEventK);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x014c  */
    public final boolean q(int i2, Rect rect) {
        int i3;
        Object obj;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        SparseArrayCompat sparseArrayCompat = new SparseArrayCompat();
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            sparseArrayCompat.d(((Integer) arrayList.get(i4)).intValue(), l(((Integer) arrayList.get(i4)).intValue()));
        }
        int i5 = this.m;
        int iC = Integer.MIN_VALUE;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = i5 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) sparseArrayCompat.b(i5);
        FocusStrategy.BoundsAdapter boundsAdapter = p;
        FocusStrategy.CollectionAdapter collectionAdapter = q;
        View view = this.f12560j;
        int i6 = -1;
        if (i2 == 1 || i2 == 2) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            boolean z = view.getLayoutDirection() == 1;
            ((AnonymousClass2) collectionAdapter).getClass();
            int iE = sparseArrayCompat.e();
            ArrayList arrayList2 = new ArrayList(iE);
            for (int i7 = 0; i7 < iE; i7++) {
                arrayList2.add((AccessibilityNodeInfoCompat) sparseArrayCompat.f(i7));
            }
            Collections.sort(arrayList2, new FocusStrategy.SequentialComparator(z, boundsAdapter));
            if (i2 == 1) {
                i3 = 0;
                int size = arrayList2.size();
                if (accessibilityNodeInfoCompat2 != null) {
                    size = arrayList2.indexOf(accessibilityNodeInfoCompat2);
                }
                int i8 = size - 1;
                obj = i8 >= 0 ? arrayList2.get(i8) : null;
            } else {
                if (i2 != 2) {
                    md.n("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                    return false;
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (accessibilityNodeInfoCompat2 == null ? -1 : arrayList2.lastIndexOf(accessibilityNodeInfoCompat2)) + 1;
                obj = iLastIndexOf < size2 ? arrayList2.get(iLastIndexOf) : null;
                i3 = 0;
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        } else {
            if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
                md.n("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                return false;
            }
            Rect rect2 = new Rect();
            int i9 = this.m;
            if (i9 != Integer.MIN_VALUE) {
                r(i9).f(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i2 == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i2 == 33) {
                    rect2.set(0, height, width, height);
                } else if (i2 == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i2 != 130) {
                        md.n("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        return false;
                    }
                    rect2.set(0, -1, width, -1);
                }
            }
            Rect rect3 = new Rect(rect2);
            if (i2 == 17) {
                rect3.offset(rect2.width() + 1, 0);
            } else if (i2 == 33) {
                rect3.offset(0, rect2.height() + 1);
            } else if (i2 == 66) {
                rect3.offset(-(rect2.width() + 1), 0);
            } else {
                if (i2 != 130) {
                    md.n("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    return false;
                }
                rect3.offset(0, -(rect2.height() + 1));
            }
            ((AnonymousClass2) collectionAdapter).getClass();
            int iE2 = sparseArrayCompat.e();
            Rect rect4 = new Rect();
            accessibilityNodeInfoCompat = null;
            for (int i10 = 0; i10 < iE2; i10++) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompat3 = (AccessibilityNodeInfoCompat) sparseArrayCompat.f(i10);
                if (accessibilityNodeInfoCompat3 != accessibilityNodeInfoCompat2) {
                    ((AnonymousClass1) boundsAdapter).getClass();
                    accessibilityNodeInfoCompat3.f(rect4);
                    if (FocusStrategy.c(i2, rect2, rect4)) {
                        if (!FocusStrategy.c(i2, rect2, rect3) || FocusStrategy.a(i2, rect2, rect4, rect3)) {
                            rect3.set(rect4);
                            accessibilityNodeInfoCompat = accessibilityNodeInfoCompat3;
                        } else if (!FocusStrategy.a(i2, rect2, rect3, rect4)) {
                            int iD = FocusStrategy.d(i2, rect2, rect4);
                            int iE3 = FocusStrategy.e(i2, rect2, rect4);
                            int i11 = (iE3 * iE3) + (iD * 13 * iD);
                            int iD2 = FocusStrategy.d(i2, rect2, rect3);
                            int iE4 = FocusStrategy.e(i2, rect2, rect3);
                            if (i11 < (iE4 * iE4) + (iD2 * 13 * iD2)) {
                                rect3.set(rect4);
                                accessibilityNodeInfoCompat = accessibilityNodeInfoCompat3;
                            }
                        }
                    }
                }
            }
            i3 = 0;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat4 = accessibilityNodeInfoCompat;
        if (accessibilityNodeInfoCompat4 != null) {
            if (sparseArrayCompat.f3383b) {
                SparseArrayCompatKt.a(sparseArrayCompat);
            }
            int i12 = sparseArrayCompat.f3385e;
            for (int i13 = i3; i13 < i12; i13++) {
                if (sparseArrayCompat.d[i13] == accessibilityNodeInfoCompat4) {
                    i6 = i13;
                    break;
                }
            }
            iC = sparseArrayCompat.c(i6);
        }
        return w(iC);
    }

    public final AccessibilityNodeInfoCompat r(int i2) {
        if (i2 != -1) {
            return l(i2);
        }
        View view = this.f12560j;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(view);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            v7.h("Views cannot have both real and virtual children");
            return null;
        }
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            accessibilityNodeInfoCompat.f12267a.addChild(view, ((Integer) arrayList.get(i3)).intValue());
        }
        return accessibilityNodeInfoCompat;
    }

    public abstract boolean s(int i2, int i3, Bundle bundle);

    public void t(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public abstract void u(int i2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public void v(int i2, boolean z) {
    }

    public final boolean w(int i2) {
        int i3;
        View view = this.f12560j;
        if ((!view.isFocused() && !view.requestFocus()) || (i3 = this.m) == i2) {
            return false;
        }
        if (i3 != Integer.MIN_VALUE) {
            j(i3);
        }
        if (i2 == Integer.MIN_VALUE) {
            return false;
        }
        this.m = i2;
        v(i2, true);
        x(i2, 8);
        return true;
    }

    public final void x(int i2, int i3) {
        View view;
        ViewParent parent;
        if (i2 == Integer.MIN_VALUE || !this.f12559i.isEnabled() || (parent = (view = this.f12560j).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, k(i2, i3));
    }
}
