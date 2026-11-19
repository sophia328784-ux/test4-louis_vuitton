package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.md;
import defpackage.pq0;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Locale;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ScrollEventAdapter extends RecyclerView.OnScrollListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ViewPager2.OnPageChangeCallback f20155a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewPager2 f20156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RecyclerView f20157c;
    public final LinearLayoutManager d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f20158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f20159f;
    public final ScrollEventValues g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f20160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f20161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f20162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f20163k;
    public boolean l;

    public static final class ScrollEventValues {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f20164a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f20165b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f20166c;
    }

    public ScrollEventAdapter(ViewPager2 viewPager2) {
        this.f20156b = viewPager2;
        RecyclerView recyclerView = viewPager2.f20174k;
        this.f20157c = recyclerView;
        this.d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.g = new ScrollEventValues();
        d();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void a(int i2) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        ViewPager2.OnPageChangeCallback onPageChangeCallback2;
        int i3 = this.f20158e;
        if (!(i3 == 1 && this.f20159f == 1) && i2 == 1) {
            this.f20158e = 1;
            int i4 = this.f20161i;
            if (i4 != -1) {
                this.f20160h = i4;
                this.f20161i = -1;
            } else if (this.f20160h == -1) {
                this.f20160h = this.d.V0();
            }
            c(1);
            return;
        }
        if ((i3 == 1 || i3 == 4) && i2 == 2) {
            if (this.f20163k) {
                c(2);
                this.f20162j = true;
                return;
            }
            return;
        }
        ScrollEventValues scrollEventValues = this.g;
        if ((i3 == 1 || i3 == 4) && i2 == 0) {
            e();
            if (!this.f20163k) {
                int i5 = scrollEventValues.f20164a;
                if (i5 != -1 && (onPageChangeCallback2 = this.f20155a) != null) {
                    onPageChangeCallback2.b(i5, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
            } else if (scrollEventValues.f20166c == 0) {
                int i6 = this.f20160h;
                int i7 = scrollEventValues.f20164a;
                if (i6 != i7 && (onPageChangeCallback = this.f20155a) != null) {
                    onPageChangeCallback.c(i7);
                }
            }
            c(0);
            d();
        }
        if (this.f20158e == 2 && i2 == 0 && this.l) {
            e();
            if (scrollEventValues.f20166c == 0) {
                int i8 = this.f20161i;
                int i9 = scrollEventValues.f20164a;
                if (i8 != i9) {
                    if (i9 == -1) {
                        i9 = 0;
                    }
                    ViewPager2.OnPageChangeCallback onPageChangeCallback3 = this.f20155a;
                    if (onPageChangeCallback3 != null) {
                        onPageChangeCallback3.c(i9);
                    }
                }
                c(0);
                d();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002a  */
    /* JADX WARN: Code duplicated, block: B:17:0x002e  */
    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void b(RecyclerView recyclerView, int i2, int i3) {
        int i4;
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        this.f20163k = true;
        e();
        boolean z = this.f20162j;
        ScrollEventValues scrollEventValues = this.g;
        if (z) {
            this.f20162j = false;
            if (i3 <= 0) {
                if (i3 == 0) {
                    if ((i2 < 0) == (this.f20156b.f20171h.f19271b.getLayoutDirection() == 1)) {
                        if (scrollEventValues.f20166c != 0) {
                            i4 = scrollEventValues.f20164a + 1;
                        }
                    }
                }
                i4 = scrollEventValues.f20164a;
            } else if (scrollEventValues.f20166c != 0) {
                i4 = scrollEventValues.f20164a + 1;
            } else {
                i4 = scrollEventValues.f20164a;
            }
            this.f20161i = i4;
            if (this.f20160h != i4 && (onPageChangeCallback = this.f20155a) != null) {
                onPageChangeCallback.c(i4);
            }
        } else if (this.f20158e == 0) {
            int i5 = scrollEventValues.f20164a;
            if (i5 == -1) {
                i5 = 0;
            }
            ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.f20155a;
            if (onPageChangeCallback2 != null) {
                onPageChangeCallback2.c(i5);
            }
        }
        int i6 = scrollEventValues.f20164a;
        if (i6 == -1) {
            i6 = 0;
        }
        float f2 = scrollEventValues.f20165b;
        int i7 = scrollEventValues.f20166c;
        ViewPager2.OnPageChangeCallback onPageChangeCallback3 = this.f20155a;
        if (onPageChangeCallback3 != null) {
            onPageChangeCallback3.b(i6, i7, f2);
        }
        int i8 = scrollEventValues.f20164a;
        int i9 = this.f20161i;
        if ((i8 == i9 || i9 == -1) && scrollEventValues.f20166c == 0 && this.f20159f != 1) {
            c(0);
            d();
        }
    }

    public final void c(int i2) {
        if ((this.f20158e == 3 && this.f20159f == 0) || this.f20159f == i2) {
            return;
        }
        this.f20159f = i2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.f20155a;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.a(i2);
        }
    }

    public final void d() {
        this.f20158e = 0;
        this.f20159f = 0;
        ScrollEventValues scrollEventValues = this.g;
        scrollEventValues.f20164a = -1;
        scrollEventValues.f20165b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        scrollEventValues.f20166c = 0;
        this.f20160h = -1;
        this.f20161i = -1;
        this.f20162j = false;
        this.f20163k = false;
        this.l = false;
    }

    /* JADX WARN: Code duplicated, block: B:61:0x0132  */
    /* JADX WARN: Code duplicated, block: B:65:0x013e  */
    /* JADX WARN: Code duplicated, block: B:67:0x0148 A[LOOP:2: B:64:0x013c->B:67:0x0148, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:82:0x014b A[SYNTHETIC] */
    public final void e() {
        int top;
        int iX;
        int top2;
        int i2;
        int bottom;
        int i3;
        LinearLayoutManager linearLayoutManager = this.d;
        int iV0 = linearLayoutManager.V0();
        ScrollEventValues scrollEventValues = this.g;
        scrollEventValues.f20164a = iV0;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (iV0 == -1) {
            scrollEventValues.f20164a = -1;
            scrollEventValues.f20165b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            scrollEventValues.f20166c = 0;
            return;
        }
        View viewS = linearLayoutManager.s(iV0);
        if (viewS == null) {
            scrollEventValues.f20164a = -1;
            scrollEventValues.f20165b = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            scrollEventValues.f20166c = 0;
            return;
        }
        int i4 = ((RecyclerView.LayoutParams) viewS.getLayoutParams()).f19285b.left;
        int i5 = ((RecyclerView.LayoutParams) viewS.getLayoutParams()).f19285b.right;
        int i6 = ((RecyclerView.LayoutParams) viewS.getLayoutParams()).f19285b.top;
        int i7 = ((RecyclerView.LayoutParams) viewS.getLayoutParams()).f19285b.bottom;
        ViewGroup.LayoutParams layoutParams = viewS.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i4 += marginLayoutParams.leftMargin;
            i5 += marginLayoutParams.rightMargin;
            i6 += marginLayoutParams.topMargin;
            i7 += marginLayoutParams.bottomMargin;
        }
        int height = viewS.getHeight() + i6 + i7;
        int width = viewS.getWidth() + i4 + i5;
        int i8 = linearLayoutManager.p;
        RecyclerView recyclerView = this.f20157c;
        if (i8 == 0) {
            top = (viewS.getLeft() - i4) - recyclerView.getPaddingLeft();
            if (this.f20156b.f20171h.f19271b.getLayoutDirection() == 1) {
                top = -top;
            }
            height = width;
        } else {
            top = (viewS.getTop() - i6) - recyclerView.getPaddingTop();
        }
        int i9 = -top;
        scrollEventValues.f20166c = i9;
        if (i9 >= 0) {
            if (height != 0) {
                f2 = i9 / height;
            }
            scrollEventValues.f20165b = f2;
            return;
        }
        int iX2 = linearLayoutManager.x();
        if (iX2 != 0) {
            boolean z = linearLayoutManager.p == 0;
            int[][] iArr = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, iX2, 2);
            for (int i10 = 0; i10 < iX2; i10++) {
                View viewW = linearLayoutManager.w(i10);
                if (viewW == null) {
                    md.k("null view contained in the view hierarchy");
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = viewW.getLayoutParams();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : AnimateLayoutChangeDetector.f20150a;
                int[] iArr2 = iArr[i10];
                if (z) {
                    top2 = viewW.getLeft();
                    i2 = marginLayoutParams2.leftMargin;
                } else {
                    top2 = viewW.getTop();
                    i2 = marginLayoutParams2.topMargin;
                }
                iArr2[0] = top2 - i2;
                int[] iArr3 = iArr[i10];
                if (z) {
                    bottom = viewW.getRight();
                    i3 = marginLayoutParams2.rightMargin;
                } else {
                    bottom = viewW.getBottom();
                    i3 = marginLayoutParams2.bottomMargin;
                }
                iArr3[1] = bottom + i3;
            }
            Arrays.sort(iArr, new AnimateLayoutChangeDetector.AnonymousClass1());
            int i11 = 1;
            while (true) {
                if (i11 >= iX2) {
                    int[] iArr4 = iArr[0];
                    int i12 = iArr4[1];
                    int i13 = iArr4[0];
                    int i14 = i12 - i13;
                    if (i13 <= 0 && iArr[iX2 - 1][1] >= i14) {
                        if (linearLayoutManager.x() <= 1) {
                        }
                    }
                } else if (iArr[i11 - 1][1] == iArr[i11][0]) {
                    i11++;
                }
                iX = linearLayoutManager.x();
                for (int i15 = 0; i15 < iX; i15++) {
                    if (!AnimateLayoutChangeDetector.a(linearLayoutManager.w(i15))) {
                        md.k("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                        return;
                    }
                }
            }
        } else if (linearLayoutManager.x() <= 1) {
            iX = linearLayoutManager.x();
            while (i15 < iX) {
                if (!AnimateLayoutChangeDetector.a(linearLayoutManager.w(i15))) {
                    md.k("Page(s) contain a ViewGroup with a LayoutTransition (or animateLayoutChanges=\"true\"), which interferes with the scrolling animation. Make sure to call getLayoutTransition().setAnimateParentHierarchy(false) on all ViewGroups with a LayoutTransition before an animation is started.");
                    return;
                }
            }
        }
        Locale locale = Locale.US;
        md.k(pq0.k(scrollEventValues.f20166c, "Page can only be offset by a positive amount, not by "));
    }
}
