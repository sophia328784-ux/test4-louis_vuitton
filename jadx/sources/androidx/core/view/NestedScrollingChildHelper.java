package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class NestedScrollingChildHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewParent f12175a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ViewParent f12176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f12177c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f12178e;

    public NestedScrollingChildHelper(View view) {
        this.f12177c = view;
    }

    public final boolean a(float f2, float f3, boolean z) {
        ViewParent viewParentE;
        if (this.d && (viewParentE = e(0)) != null) {
            try {
                return viewParentE.onNestedFling(this.f12177c, f2, f3, z);
            } catch (AbstractMethodError unused) {
                Objects.toString(viewParentE);
            }
        }
        return false;
    }

    public final boolean b(float f2, float f3) {
        ViewParent viewParentE;
        if (this.d && (viewParentE = e(0)) != null) {
            try {
                return viewParentE.onNestedPreFling(this.f12177c, f2, f3);
            } catch (AbstractMethodError unused) {
                Objects.toString(viewParentE);
            }
        }
        return false;
    }

    public final boolean c(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        ViewParent viewParentE;
        int i5;
        int i6;
        if (!this.d || (viewParentE = e(i4)) == null) {
            return false;
        }
        if (i2 == 0 && i3 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        View view = this.f12177c;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            i5 = iArr2[0];
            i6 = iArr2[1];
        } else {
            i5 = 0;
            i6 = 0;
        }
        if (iArr == null) {
            if (this.f12178e == null) {
                this.f12178e = new int[2];
            }
            iArr = this.f12178e;
        }
        int[] iArr3 = iArr;
        iArr3[0] = 0;
        iArr3[1] = 0;
        boolean z = viewParentE instanceof NestedScrollingParent2;
        View view2 = this.f12177c;
        if (z) {
            ((NestedScrollingParent2) viewParentE).k(view2, i2, i3, iArr3, i4);
        } else if (i4 == 0) {
            try {
                viewParentE.onNestedPreScroll(view2, i2, i3, iArr3);
            } catch (AbstractMethodError unused) {
                Objects.toString(viewParentE);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i5;
            iArr2[1] = iArr2[1] - i6;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean d(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        ViewParent viewParentE;
        int i7;
        int i8;
        int[] iArr3;
        if (this.d && (viewParentE = e(i6)) != null) {
            if (i2 != 0 || i3 != 0 || i4 != 0 || i5 != 0) {
                View view = this.f12177c;
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    i7 = iArr[0];
                    i8 = iArr[1];
                } else {
                    i7 = 0;
                    i8 = 0;
                }
                if (iArr2 == null) {
                    if (this.f12178e == null) {
                        this.f12178e = new int[2];
                    }
                    int[] iArr4 = this.f12178e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                boolean z = viewParentE instanceof NestedScrollingParent3;
                View view2 = this.f12177c;
                if (z) {
                    ((NestedScrollingParent3) viewParentE).m(view2, i2, i3, i4, i5, i6, iArr3);
                } else {
                    iArr3[0] = iArr3[0] + i4;
                    iArr3[1] = iArr3[1] + i5;
                    if (viewParentE instanceof NestedScrollingParent2) {
                        ((NestedScrollingParent2) viewParentE).n(view2, i2, i3, i4, i5, i6);
                    } else if (i6 == 0) {
                        try {
                            viewParentE.onNestedScroll(view2, i2, i3, i4, i5);
                        } catch (AbstractMethodError unused) {
                            Objects.toString(viewParentE);
                        }
                    }
                }
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i7;
                    iArr[1] = iArr[1] - i8;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public final ViewParent e(int i2) {
        if (i2 == 0) {
            return this.f12175a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f12176b;
    }

    public final boolean f(int i2) {
        return e(i2) != null;
    }

    public final void g(boolean z) {
        if (this.d) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            this.f12177c.stopNestedScroll();
        }
        this.d = z;
    }

    public final boolean h(int i2, int i3) {
        boolean zOnStartNestedScroll;
        if (!f(i3)) {
            if (this.d) {
                View view = this.f12177c;
                View view2 = view;
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    boolean z = parent instanceof NestedScrollingParent2;
                    if (z) {
                        zOnStartNestedScroll = ((NestedScrollingParent2) parent).o(view2, view, i2, i3);
                    } else if (i3 == 0) {
                        try {
                            zOnStartNestedScroll = parent.onStartNestedScroll(view2, view, i2);
                        } catch (AbstractMethodError unused) {
                            Objects.toString(parent);
                            zOnStartNestedScroll = false;
                        }
                    } else {
                        zOnStartNestedScroll = false;
                    }
                    if (zOnStartNestedScroll) {
                        if (i3 == 0) {
                            this.f12175a = parent;
                        } else if (i3 == 1) {
                            this.f12176b = parent;
                        }
                        if (z) {
                            ((NestedScrollingParent2) parent).j(view2, view, i2, i3);
                        } else if (i3 == 0) {
                            try {
                                parent.onNestedScrollAccepted(view2, view, i2);
                            } catch (AbstractMethodError unused2) {
                                Objects.toString(parent);
                            }
                        }
                    } else {
                        if (parent instanceof View) {
                            view2 = (View) parent;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final void i(int i2) {
        ViewParent viewParentE = e(i2);
        if (viewParentE != null) {
            boolean z = viewParentE instanceof NestedScrollingParent2;
            View view = this.f12177c;
            if (z) {
                ((NestedScrollingParent2) viewParentE).g(i2, view);
            } else if (i2 == 0) {
                try {
                    viewParentE.onStopNestedScroll(view);
                } catch (AbstractMethodError unused) {
                    Objects.toString(viewParentE);
                }
            }
            if (i2 == 0) {
                this.f12175a = null;
            } else {
                if (i2 != 1) {
                    return;
                }
                this.f12176b = null;
            }
        }
    }
}
