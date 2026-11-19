package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.HelperWidget;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import java.util.ArrayList;
import java.util.HashMap;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {
    public static SharedValues q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SparseArray f11723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f11724c;
    public final ConstraintWidgetContainer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f11725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f11726f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f11728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f11729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ConstraintSet f11730k;
    public ConstraintLayoutStates l;
    public int m;
    public HashMap n;
    public final SparseArray o;
    public final Measurer p;

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11731a;

        static {
            int[] iArr = new int[ConstraintWidget.DimensionBehaviour.values().length];
            f11731a = iArr;
            try {
                iArr[ConstraintWidget.DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11731a[ConstraintWidget.DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11731a[ConstraintWidget.DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11731a[ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public class Measurer implements BasicMeasure.Measurer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConstraintLayout f11742a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11744c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11745e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11746f;
        public int g;

        public Measurer(ConstraintLayout constraintLayout) {
            this.f11742a = constraintLayout;
        }

        public static boolean c(int i2, int i3, int i4) {
            if (i2 == i3) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i4 == size;
            }
            return false;
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void a() {
            ConstraintLayout constraintLayout = this.f11742a;
            ArrayList arrayList = constraintLayout.f11724c;
            int childCount = constraintLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = constraintLayout.getChildAt(i2);
                if (childAt instanceof Placeholder) {
                    Placeholder placeholder = (Placeholder) childAt;
                    if (placeholder.f11817c != null) {
                        LayoutParams layoutParams = (LayoutParams) placeholder.getLayoutParams();
                        LayoutParams layoutParams2 = (LayoutParams) placeholder.f11817c.getLayoutParams();
                        ConstraintWidget constraintWidget = layoutParams2.q0;
                        constraintWidget.k0 = 0;
                        ConstraintWidget constraintWidget2 = layoutParams.q0;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour = constraintWidget2.W[0];
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
                        if (dimensionBehaviour != dimensionBehaviour2) {
                            constraintWidget2.W(constraintWidget.v());
                        }
                        ConstraintWidget constraintWidget3 = layoutParams.q0;
                        if (constraintWidget3.W[1] != dimensionBehaviour2) {
                            constraintWidget3.R(layoutParams2.q0.p());
                        }
                        layoutParams2.q0.k0 = 8;
                    }
                }
            }
            int size = arrayList.size();
            if (size > 0) {
                for (int i3 = 0; i3 < size; i3++) {
                    ((ConstraintHelper) arrayList.get(i3)).getClass();
                }
            }
        }

        @Override // androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measurer
        public final void b(ConstraintWidget constraintWidget, BasicMeasure.Measure measure) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            int baseline;
            int iMax;
            int iMax2;
            boolean z;
            int i2;
            int childMeasureSpec;
            if (constraintWidget == null) {
                return;
            }
            ConstraintAnchor constraintAnchor = constraintWidget.N;
            ConstraintAnchor constraintAnchor2 = constraintWidget.L;
            if (constraintWidget.k0 == 8 && !constraintWidget.H) {
                measure.f11514e = 0;
                measure.f11515f = 0;
                measure.g = 0;
                return;
            }
            if (constraintWidget.X == null) {
                return;
            }
            SharedValues sharedValues = ConstraintLayout.q;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.f11511a;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = measure.f11512b;
            int i3 = measure.f11513c;
            int i4 = measure.d;
            int i5 = this.f11743b + this.f11744c;
            int i6 = this.d;
            View view = (View) constraintWidget.j0;
            int[] iArr = AnonymousClass1.f11731a;
            int i7 = iArr[dimensionBehaviour.ordinal()];
            if (i7 != 1) {
                if (i7 == 2) {
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f11746f, i6, -2);
                } else if (i7 == 3) {
                    int i8 = this.f11746f;
                    int i9 = constraintAnchor2 != null ? constraintAnchor2.g : 0;
                    if (constraintAnchor != null) {
                        i9 += constraintAnchor.g;
                    }
                    childMeasureSpec = ViewGroup.getChildMeasureSpec(i8, i6 + i9, -1);
                } else if (i7 != 4) {
                    iMakeMeasureSpec = 0;
                } else {
                    iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f11746f, i6, -2);
                    boolean z2 = constraintWidget.t == 1;
                    int i10 = measure.f11518j;
                    if (i10 == 1 || i10 == 2) {
                        boolean z3 = view.getMeasuredHeight() == constraintWidget.p();
                        if (measure.f11518j == 2 || !z2 || ((z2 && z3) || (view instanceof Placeholder) || constraintWidget.F())) {
                            childMeasureSpec = View.MeasureSpec.makeMeasureSpec(constraintWidget.v(), 1073741824);
                        }
                    }
                }
                iMakeMeasureSpec = childMeasureSpec;
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            }
            int i11 = iArr[dimensionBehaviour2.ordinal()];
            if (i11 == 1) {
                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
            } else if (i11 == 2) {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i5, -2);
            } else if (i11 == 3) {
                int i12 = this.g;
                int i13 = constraintAnchor2 != null ? constraintWidget.M.g : 0;
                if (constraintAnchor != null) {
                    i13 += constraintWidget.O.g;
                }
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, i5 + i13, -1);
            } else if (i11 != 4) {
                iMakeMeasureSpec2 = 0;
            } else {
                iMakeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.g, i5, -2);
                boolean z4 = constraintWidget.u == 1;
                int i14 = measure.f11518j;
                if (i14 == 1 || i14 == 2) {
                    boolean z5 = view.getMeasuredWidth() == constraintWidget.v();
                    if (measure.f11518j == 2 || !z4 || ((z4 && z5) || (view instanceof Placeholder) || constraintWidget.G())) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(constraintWidget.p(), 1073741824);
                    }
                }
            }
            ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) constraintWidget.X;
            ConstraintLayout constraintLayout = ConstraintLayout.this;
            if (constraintWidgetContainer != null && Optimizer.b(constraintLayout.f11729j, 256) && view.getMeasuredWidth() == constraintWidget.v() && view.getMeasuredWidth() < constraintWidgetContainer.v() && view.getMeasuredHeight() == constraintWidget.p() && view.getMeasuredHeight() < constraintWidgetContainer.p() && view.getBaseline() == constraintWidget.e0 && !constraintWidget.E() && c(constraintWidget.J, iMakeMeasureSpec, constraintWidget.v()) && c(constraintWidget.K, iMakeMeasureSpec2, constraintWidget.p())) {
                measure.f11514e = constraintWidget.v();
                measure.f11515f = constraintWidget.p();
                measure.g = constraintWidget.e0;
                return;
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            boolean z6 = dimensionBehaviour == dimensionBehaviour3;
            boolean z7 = dimensionBehaviour2 == dimensionBehaviour3;
            ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
            boolean z8 = dimensionBehaviour2 == dimensionBehaviour4 || dimensionBehaviour2 == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z9 = dimensionBehaviour == dimensionBehaviour4 || dimensionBehaviour == ConstraintWidget.DimensionBehaviour.FIXED;
            boolean z10 = z6 && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
            boolean z11 = z7 && constraintWidget.a0 > Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (view == null) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i15 = measure.f11518j;
            if (i15 != 1 && i15 != 2 && z6 && constraintWidget.t == 0 && z7 && constraintWidget.u == 0) {
                i2 = -1;
                z = false;
                baseline = 0;
                iMax = 0;
                iMax2 = 0;
            } else {
                if ((view instanceof VirtualLayout) && (constraintWidget instanceof androidx.constraintlayout.core.widgets.VirtualLayout)) {
                    ((VirtualLayout) view).l((androidx.constraintlayout.core.widgets.VirtualLayout) constraintWidget, iMakeMeasureSpec, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                }
                constraintWidget.J = iMakeMeasureSpec;
                constraintWidget.K = iMakeMeasureSpec2;
                constraintWidget.g = false;
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                baseline = view.getBaseline();
                int i16 = constraintWidget.w;
                iMax = i16 > 0 ? Math.max(i16, measuredWidth) : measuredWidth;
                int i17 = constraintWidget.x;
                if (i17 > 0) {
                    iMax = Math.min(i17, iMax);
                }
                int i18 = constraintWidget.z;
                iMax2 = i18 > 0 ? Math.max(i18, measuredHeight) : measuredHeight;
                int i19 = iMakeMeasureSpec2;
                int i20 = constraintWidget.A;
                if (i20 > 0) {
                    iMax2 = Math.min(i20, iMax2);
                }
                if (!Optimizer.b(constraintLayout.f11729j, 1)) {
                    if (z10 && z8) {
                        iMax = (int) ((iMax2 * constraintWidget.a0) + 0.5f);
                    } else if (z11 && z9) {
                        iMax2 = (int) ((iMax / constraintWidget.a0) + 0.5f);
                    }
                }
                if (measuredWidth == iMax && measuredHeight == iMax2) {
                    i2 = -1;
                    z = false;
                } else {
                    if (measuredWidth != iMax) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMax, 1073741824);
                    }
                    int iMakeMeasureSpec3 = measuredHeight != iMax2 ? View.MeasureSpec.makeMeasureSpec(iMax2, 1073741824) : i19;
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec3);
                    constraintWidget.J = iMakeMeasureSpec;
                    constraintWidget.K = iMakeMeasureSpec3;
                    z = false;
                    constraintWidget.g = false;
                    iMax = view.getMeasuredWidth();
                    iMax2 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    i2 = -1;
                }
            }
            boolean z12 = baseline != i2 ? true : z;
            measure.f11517i = (iMax == measure.f11513c && iMax2 == measure.d) ? z : true;
            if (layoutParams.c0) {
                z12 = true;
            }
            if (z12 && baseline != -1 && constraintWidget.e0 != baseline) {
                measure.f11517i = true;
            }
            measure.f11514e = iMax;
            measure.f11515f = iMax2;
            measure.f11516h = z12;
            measure.g = baseline;
        }
    }

    public interface ValueModifier {
    }

    public ConstraintLayout(Context context) {
        super(context);
        this.f11723b = new SparseArray();
        this.f11724c = new ArrayList(4);
        this.d = new ConstraintWidgetContainer();
        this.f11725e = 0;
        this.f11726f = 0;
        this.g = Integer.MAX_VALUE;
        this.f11727h = Integer.MAX_VALUE;
        this.f11728i = true;
        this.f11729j = 257;
        this.f11730k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap();
        this.o = new SparseArray();
        this.p = new Measurer(this);
        e(null, 0, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static SharedValues getSharedValues() {
        if (q == null) {
            q = new SharedValues();
        }
        return q;
    }

    /* JADX WARN: Code duplicated, block: B:78:0x0184  */
    /* JADX WARN: Code duplicated, block: B:81:0x018c  */
    public final void b(boolean z, View view, ConstraintWidget constraintWidget, LayoutParams layoutParams, SparseArray sparseArray) {
        ConstraintWidget constraintWidget2;
        ConstraintWidget constraintWidget3;
        ConstraintWidget constraintWidget4;
        ConstraintWidget constraintWidget5;
        LayoutParams layoutParams2;
        ConstraintWidget constraintWidget6;
        float f2;
        int i2;
        ConstraintWidget constraintWidget7 = constraintWidget;
        layoutParams.a();
        constraintWidget7.k0 = view.getVisibility();
        if (layoutParams.f0) {
            constraintWidget7.H = true;
            constraintWidget7.k0 = 8;
        }
        constraintWidget7.j0 = view;
        if (view instanceof ConstraintHelper) {
            ((ConstraintHelper) view).j(constraintWidget7, this.d.B0);
        }
        if (layoutParams.d0) {
            androidx.constraintlayout.core.widgets.Guideline guideline = (androidx.constraintlayout.core.widgets.Guideline) constraintWidget7;
            int i3 = layoutParams.n0;
            int i4 = layoutParams.o0;
            float f3 = layoutParams.p0;
            if (f3 != -1.0f) {
                if (f3 > -1.0f) {
                    guideline.w0 = f3;
                    guideline.x0 = -1;
                    guideline.y0 = -1;
                    return;
                }
                return;
            }
            if (i3 != -1) {
                if (i3 > -1) {
                    guideline.w0 = -1.0f;
                    guideline.x0 = i3;
                    guideline.y0 = -1;
                    return;
                }
                return;
            }
            if (i4 == -1 || i4 <= -1) {
                return;
            }
            guideline.w0 = -1.0f;
            guideline.x0 = -1;
            guideline.y0 = i4;
            return;
        }
        int i5 = layoutParams.g0;
        int i6 = layoutParams.h0;
        int i7 = layoutParams.i0;
        int i8 = layoutParams.j0;
        int i9 = layoutParams.k0;
        int i10 = layoutParams.l0;
        float f4 = layoutParams.m0;
        int i11 = layoutParams.p;
        if (i11 != -1) {
            ConstraintWidget constraintWidget8 = (ConstraintWidget) sparseArray.get(i11);
            if (constraintWidget8 != null) {
                float f5 = layoutParams.r;
                int i12 = layoutParams.q;
                ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
                constraintWidget.A(type, constraintWidget8, type, i12, 0);
                constraintWidget7 = constraintWidget;
                constraintWidget7.F = f5;
            }
            constraintWidget6 = constraintWidget7;
            layoutParams2 = layoutParams;
        } else {
            if (i5 != -1) {
                ConstraintWidget constraintWidget9 = (ConstraintWidget) sparseArray.get(i5);
                if (constraintWidget9 != null) {
                    ConstraintAnchor.Type type2 = ConstraintAnchor.Type.LEFT;
                    constraintWidget.A(type2, constraintWidget9, type2, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i9);
                }
            } else if (i6 != -1 && (constraintWidget2 = (ConstraintWidget) sparseArray.get(i6)) != null) {
                constraintWidget.A(ConstraintAnchor.Type.LEFT, constraintWidget2, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i9);
            }
            if (i7 != -1) {
                ConstraintWidget constraintWidget10 = (ConstraintWidget) sparseArray.get(i7);
                if (constraintWidget10 != null) {
                    constraintWidget.A(ConstraintAnchor.Type.RIGHT, constraintWidget10, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i10);
                }
            } else if (i8 != -1 && (constraintWidget3 = (ConstraintWidget) sparseArray.get(i8)) != null) {
                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.RIGHT;
                constraintWidget.A(type3, constraintWidget3, type3, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i10);
            }
            int i13 = layoutParams.f11738i;
            if (i13 != -1) {
                ConstraintWidget constraintWidget11 = (ConstraintWidget) sparseArray.get(i13);
                if (constraintWidget11 != null) {
                    ConstraintAnchor.Type type4 = ConstraintAnchor.Type.TOP;
                    constraintWidget.A(type4, constraintWidget11, type4, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.x);
                }
            } else {
                int i14 = layoutParams.f11739j;
                if (i14 != -1 && (constraintWidget4 = (ConstraintWidget) sparseArray.get(i14)) != null) {
                    constraintWidget.A(ConstraintAnchor.Type.TOP, constraintWidget4, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.x);
                }
            }
            int i15 = layoutParams.f11740k;
            if (i15 != -1) {
                ConstraintWidget constraintWidget12 = (ConstraintWidget) sparseArray.get(i15);
                if (constraintWidget12 != null) {
                    constraintWidget.A(ConstraintAnchor.Type.BOTTOM, constraintWidget12, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.z);
                }
            } else {
                int i16 = layoutParams.l;
                if (i16 != -1 && (constraintWidget5 = (ConstraintWidget) sparseArray.get(i16)) != null) {
                    ConstraintAnchor.Type type5 = ConstraintAnchor.Type.BOTTOM;
                    constraintWidget.A(type5, constraintWidget5, type5, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.z);
                }
            }
            int i17 = layoutParams.m;
            if (i17 != -1) {
                layoutParams2 = layoutParams;
                p(constraintWidget, layoutParams2, sparseArray, i17, ConstraintAnchor.Type.BASELINE);
            } else {
                layoutParams2 = layoutParams;
                int i18 = layoutParams2.n;
                if (i18 != -1) {
                    p(constraintWidget, layoutParams2, sparseArray, i18, ConstraintAnchor.Type.TOP);
                } else {
                    int i19 = layoutParams2.o;
                    if (i19 != -1) {
                        p(constraintWidget, layoutParams2, sparseArray, i19, ConstraintAnchor.Type.BOTTOM);
                        constraintWidget6 = constraintWidget;
                    }
                    if (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        constraintWidget6.h0 = f4;
                    }
                    f2 = layoutParams2.F;
                    if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        constraintWidget6.i0 = f2;
                    }
                }
            }
            constraintWidget6 = constraintWidget;
            if (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                constraintWidget6.h0 = f4;
            }
            f2 = layoutParams2.F;
            if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                constraintWidget6.i0 = f2;
            }
        }
        if (z && ((i2 = layoutParams2.T) != -1 || layoutParams2.U != -1)) {
            int i20 = layoutParams2.U;
            constraintWidget6.c0 = i2;
            constraintWidget6.d0 = i20;
        }
        if (layoutParams2.a0) {
            constraintWidget6.S(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget6.W(((ViewGroup.MarginLayoutParams) layoutParams2).width);
            if (((ViewGroup.MarginLayoutParams) layoutParams2).width == -2) {
                constraintWidget6.S(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width == -1) {
            if (layoutParams2.W) {
                constraintWidget6.S(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget6.S(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget6.n(ConstraintAnchor.Type.LEFT).g = ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin;
            constraintWidget6.n(ConstraintAnchor.Type.RIGHT).g = ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin;
        } else {
            constraintWidget6.S(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget6.W(0);
        }
        if (layoutParams2.b0) {
            constraintWidget6.U(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget6.R(((ViewGroup.MarginLayoutParams) layoutParams2).height);
            if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -2) {
                constraintWidget6.U(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).height == -1) {
            if (layoutParams2.X) {
                constraintWidget6.U(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            } else {
                constraintWidget6.U(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
            }
            constraintWidget6.n(ConstraintAnchor.Type.TOP).g = ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin;
            constraintWidget6.n(ConstraintAnchor.Type.BOTTOM).g = ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
        } else {
            constraintWidget6.U(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            constraintWidget6.R(0);
        }
        constraintWidget6.O(layoutParams2.G);
        float f6 = layoutParams2.H;
        float[] fArr = constraintWidget6.p0;
        fArr[0] = f6;
        fArr[1] = layoutParams2.I;
        constraintWidget6.n0 = layoutParams2.J;
        constraintWidget6.o0 = layoutParams2.K;
        int i21 = layoutParams2.Z;
        if (i21 >= 0 && i21 <= 3) {
            constraintWidget6.s = i21;
        }
        constraintWidget6.T(layoutParams2.L, layoutParams2.N, layoutParams2.P, layoutParams2.R);
        constraintWidget6.V(layoutParams2.M, layoutParams2.O, layoutParams2.Q, layoutParams2.S);
    }

    public final View c(int i2) {
        return (View) this.f11723b.get(i2);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final ConstraintWidget d(View view) {
        if (view == this) {
            return this.d;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).q0;
        }
        view.setLayoutParams(new LayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof LayoutParams) {
            return ((LayoutParams) view.getLayoutParams()).q0;
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList arrayList = this.f11724c;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                ((ConstraintHelper) arrayList.get(i2)).getClass();
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i4 = Integer.parseInt(strArrSplit[0]);
                        int i5 = Integer.parseInt(strArrSplit[1]);
                        int i6 = Integer.parseInt(strArrSplit[2]);
                        int i7 = (int) ((i4 / 1080.0f) * width);
                        int i8 = (int) ((i5 / 1920.0f) * height);
                        int i9 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f2 = i7;
                        float f3 = i8;
                        float f4 = i7 + ((int) ((i6 / 1080.0f) * width));
                        canvas.drawLine(f2, f3, f4, f3, paint);
                        float f5 = i8 + i9;
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f2, f5, paint);
                        canvas.drawLine(f2, f5, f2, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f2, f3, f4, f5, paint);
                        canvas.drawLine(f2, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    public final void e(AttributeSet attributeSet, int i2, int i3) {
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        constraintWidgetContainer.j0 = this;
        Measurer measurer = this.p;
        constraintWidgetContainer.A0 = measurer;
        constraintWidgetContainer.y0.f11524f = measurer;
        this.f11723b.put(getId(), this);
        this.f11730k = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.f11819b, i2, i3);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i4 = 0; i4 < indexCount; i4++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i4);
                if (index == 16) {
                    this.f11725e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11725e);
                } else if (index == 17) {
                    this.f11726f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11726f);
                } else if (index == 14) {
                    this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.g);
                } else if (index == 15) {
                    this.f11727h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11727h);
                } else if (index == 113) {
                    this.f11729j = typedArrayObtainStyledAttributes.getInt(index, this.f11729j);
                } else if (index == 56) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            h(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.l = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f11730k = constraintSet;
                        constraintSet.l(resourceId2, getContext());
                    } catch (Resources.NotFoundException unused2) {
                        this.f11730k = null;
                    }
                    this.m = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        constraintWidgetContainer.J0 = this.f11729j;
        LinearSystem.q = constraintWidgetContainer.e0(512);
    }

    public final boolean f() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f11728i = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f11727h;
    }

    public int getMaxWidth() {
        return this.g;
    }

    public int getMinHeight() {
        return this.f11726f;
    }

    public int getMinWidth() {
        return this.f11725e;
    }

    public int getOptimizationLevel() {
        return this.d.J0;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        if (constraintWidgetContainer.l == null) {
            int id2 = getId();
            if (id2 != -1) {
                constraintWidgetContainer.l = getContext().getResources().getResourceEntryName(id2);
            } else {
                constraintWidgetContainer.l = "parent";
            }
        }
        if (constraintWidgetContainer.m0 == null) {
            constraintWidgetContainer.m0 = constraintWidgetContainer.l;
        }
        for (ConstraintWidget constraintWidget : constraintWidgetContainer.w0) {
            View view = (View) constraintWidget.j0;
            if (view != null) {
                if (constraintWidget.l == null && (id = view.getId()) != -1) {
                    constraintWidget.l = getContext().getResources().getResourceEntryName(id);
                }
                if (constraintWidget.m0 == null) {
                    constraintWidget.m0 = constraintWidget.l;
                }
            }
        }
        constraintWidgetContainer.s(sb);
        return sb.toString();
    }

    public void h(int i2) {
        this.l = new ConstraintLayoutStates(getContext(), this, i2);
    }

    public final void i(int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        Measurer measurer = this.p;
        int i6 = measurer.f11745e;
        int iResolveSizeAndState = View.resolveSizeAndState(i4 + measurer.d, i2, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i5 + i6, i3, 0) & 16777215;
        int iMin = Math.min(this.g, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f11727h, iResolveSizeAndState2);
        if (z) {
            iMin |= 16777216;
        }
        if (z2) {
            iMin2 |= 16777216;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ab A[PHI: r11
      0x00ab: PHI (r11v5 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour) = 
      (r11v4 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
      (r11v1 androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour)
     binds: [B:33:0x00b7, B:29:0x00a9] A[DONT_GENERATE, DONT_INLINE]] */
    public final void l(ConstraintWidgetContainer constraintWidgetContainer, int i2, int i3, int i4) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2;
        int iMin;
        int iMax;
        int iMax2;
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        int mode2 = View.MeasureSpec.getMode(i4);
        int size2 = View.MeasureSpec.getSize(i4);
        int iMax3 = Math.max(0, getPaddingTop());
        int iMax4 = Math.max(0, getPaddingBottom());
        int i5 = iMax3 + iMax4;
        int paddingWidth = getPaddingWidth();
        Measurer measurer = this.p;
        measurer.f11743b = iMax3;
        measurer.f11744c = iMax4;
        measurer.d = paddingWidth;
        measurer.f11745e = i5;
        measurer.f11746f = i3;
        measurer.g = i4;
        int iMax5 = Math.max(0, getPaddingStart());
        int iMax6 = Math.max(0, getPaddingEnd());
        if (iMax5 <= 0 && iMax6 <= 0) {
            iMax5 = Math.max(0, getPaddingLeft());
        } else if (f()) {
            iMax5 = iMax6;
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        int i8 = measurer.f11745e;
        int i9 = measurer.d;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.FIXED;
        int childCount = getChildCount();
        if (mode == Integer.MIN_VALUE) {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                iMax = Math.max(0, this.f11725e);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = dimensionBehaviour;
                iMin = iMax;
                dimensionBehaviour2 = dimensionBehaviour4;
            } else {
                dimensionBehaviour2 = dimensionBehaviour;
                iMin = i6;
            }
        } else if (mode != 0) {
            iMin = mode != 1073741824 ? 0 : Math.min(this.g - i9, i6);
            dimensionBehaviour2 = dimensionBehaviour3;
        } else {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                iMax = Math.max(0, this.f11725e);
                ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = dimensionBehaviour;
                iMin = iMax;
                dimensionBehaviour2 = dimensionBehaviour5;
            } else {
                dimensionBehaviour2 = dimensionBehaviour;
                iMin = 0;
            }
        }
        if (mode2 == Integer.MIN_VALUE) {
            dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            iMax2 = childCount == 0 ? Math.max(0, this.f11726f) : i7;
        } else if (mode2 == 0) {
            dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            if (childCount == 0) {
                iMax2 = Math.max(0, this.f11726f);
            } else {
                iMax2 = 0;
            }
        } else if (mode2 != 1073741824) {
            iMax2 = 0;
        } else {
            iMax2 = Math.min(this.f11727h - i8, i7);
        }
        if (iMin != constraintWidgetContainer.v() || iMax2 != constraintWidgetContainer.p()) {
            constraintWidgetContainer.y0.f11522c = true;
        }
        constraintWidgetContainer.c0 = 0;
        constraintWidgetContainer.d0 = 0;
        int i10 = this.g - i9;
        int[] iArr = constraintWidgetContainer.E;
        iArr[0] = i10;
        iArr[1] = this.f11727h - i8;
        constraintWidgetContainer.f0 = 0;
        constraintWidgetContainer.g0 = 0;
        constraintWidgetContainer.S(dimensionBehaviour2);
        constraintWidgetContainer.W(iMin);
        constraintWidgetContainer.U(dimensionBehaviour3);
        constraintWidgetContainer.R(iMax2);
        int i11 = this.f11725e - i9;
        if (i11 < 0) {
            constraintWidgetContainer.f0 = 0;
        } else {
            constraintWidgetContainer.f0 = i11;
        }
        int i12 = this.f11726f - i8;
        if (i12 < 0) {
            constraintWidgetContainer.g0 = 0;
        } else {
            constraintWidgetContainer.g0 = i12;
        }
        constraintWidgetContainer.c0(i2, mode, i6, mode2, i7, iMax5, iMax3);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.q0;
            if ((childAt.getVisibility() != 8 || layoutParams.d0 || layoutParams.e0 || zIsInEditMode) && !layoutParams.f0) {
                int iW = constraintWidget.w();
                int iX = constraintWidget.x();
                int iV = constraintWidget.v() + iW;
                int iP = constraintWidget.p() + iX;
                childAt.layout(iW, iX, iV, iP);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iW, iX, iV, iP);
                }
            }
        }
        ArrayList arrayList = this.f11724c;
        int size = arrayList.size();
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                ((ConstraintHelper) arrayList.get(i7)).getClass();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:111:0x01bc  */
    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        boolean z;
        String str;
        int iF;
        ConstraintWidget constraintWidget;
        boolean z2 = this.f11728i;
        this.f11728i = z2;
        int i4 = 0;
        if (!z2) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).isLayoutRequested()) {
                    this.f11728i = true;
                    break;
                }
            }
        }
        boolean zF = f();
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        constraintWidgetContainer.B0 = zF;
        if (this.f11728i) {
            this.f11728i = false;
            int childCount2 = getChildCount();
            int i6 = 0;
            while (true) {
                if (i6 >= childCount2) {
                    z = false;
                    break;
                } else {
                    if (getChildAt(i6).isLayoutRequested()) {
                        z = true;
                        break;
                    }
                    i6++;
                }
            }
            if (z) {
                boolean zIsInEditMode = isInEditMode();
                int childCount3 = getChildCount();
                for (int i7 = 0; i7 < childCount3; i7++) {
                    ConstraintWidget constraintWidgetD = d(getChildAt(i7));
                    if (constraintWidgetD != null) {
                        constraintWidgetD.H();
                    }
                }
                if (zIsInEditMode) {
                    for (int i8 = 0; i8 < childCount3; i8++) {
                        View childAt = getChildAt(i8);
                        try {
                            String resourceName = getResources().getResourceName(childAt.getId());
                            Integer numValueOf = Integer.valueOf(childAt.getId());
                            if (resourceName != null) {
                                if (this.n == null) {
                                    this.n = new HashMap();
                                }
                                int iIndexOf = resourceName.indexOf("/");
                                this.n.put(iIndexOf != -1 ? resourceName.substring(iIndexOf + 1) : resourceName, numValueOf);
                            }
                            int iIndexOf2 = resourceName.indexOf(47);
                            if (iIndexOf2 != -1) {
                                resourceName = resourceName.substring(iIndexOf2 + 1);
                            }
                            int id = childAt.getId();
                            if (id != 0) {
                                View viewFindViewById = (View) this.f11723b.get(id);
                                if (viewFindViewById == null && (viewFindViewById = findViewById(id)) != null && viewFindViewById != this && viewFindViewById.getParent() == this) {
                                    onViewAdded(viewFindViewById);
                                }
                                constraintWidget = viewFindViewById == this ? constraintWidgetContainer : viewFindViewById == null ? null : ((LayoutParams) viewFindViewById.getLayoutParams()).q0;
                            }
                            constraintWidget.m0 = resourceName;
                        } catch (Resources.NotFoundException unused) {
                        }
                    }
                }
                if (this.m != -1) {
                    for (int i9 = 0; i9 < childCount3; i9++) {
                        View childAt2 = getChildAt(i9);
                        if (childAt2.getId() == this.m && (childAt2 instanceof Constraints)) {
                            this.f11730k = ((Constraints) childAt2).getConstraintSet();
                        }
                    }
                }
                ConstraintSet constraintSet = this.f11730k;
                if (constraintSet != null) {
                    constraintSet.d(this);
                }
                constraintWidgetContainer.w0.clear();
                ArrayList arrayList = this.f11724c;
                int size = arrayList.size();
                if (size > 0) {
                    int i10 = 0;
                    while (i10 < size) {
                        ConstraintHelper constraintHelper = (ConstraintHelper) arrayList.get(i10);
                        HashMap map = constraintHelper.f11722i;
                        if (constraintHelper.isInEditMode()) {
                            constraintHelper.setIds(constraintHelper.f11720f);
                        }
                        HelperWidget helperWidget = constraintHelper.f11719e;
                        if (helperWidget != null) {
                            helperWidget.b();
                            for (int i11 = i4; i11 < constraintHelper.f11718c; i11++) {
                                int i12 = constraintHelper.f11717b[i11];
                                View viewC = c(i12);
                                if (viewC == null && (iF = constraintHelper.f(this, (str = (String) map.get(Integer.valueOf(i12))))) != 0) {
                                    constraintHelper.f11717b[i11] = iF;
                                    map.put(Integer.valueOf(iF), str);
                                    viewC = c(iF);
                                }
                                if (viewC != null) {
                                    constraintHelper.f11719e.a(d(viewC));
                                }
                            }
                            constraintHelper.f11719e.c();
                        }
                        i10++;
                        i4 = 0;
                    }
                }
                for (int i13 = 0; i13 < childCount3; i13++) {
                    View childAt3 = getChildAt(i13);
                    if (childAt3 instanceof Placeholder) {
                        Placeholder placeholder = (Placeholder) childAt3;
                        if (placeholder.f11816b == -1 && !placeholder.isInEditMode()) {
                            placeholder.setVisibility(placeholder.d);
                        }
                        View viewFindViewById2 = findViewById(placeholder.f11816b);
                        placeholder.f11817c = viewFindViewById2;
                        if (viewFindViewById2 != null) {
                            ((LayoutParams) viewFindViewById2.getLayoutParams()).f0 = true;
                            placeholder.f11817c.setVisibility(0);
                            placeholder.setVisibility(0);
                        }
                    }
                }
                SparseArray sparseArray = this.o;
                sparseArray.clear();
                sparseArray.put(0, constraintWidgetContainer);
                sparseArray.put(getId(), constraintWidgetContainer);
                for (int i14 = 0; i14 < childCount3; i14++) {
                    View childAt4 = getChildAt(i14);
                    sparseArray.put(childAt4.getId(), d(childAt4));
                }
                for (int i15 = 0; i15 < childCount3; i15++) {
                    View childAt5 = getChildAt(i15);
                    ConstraintWidget constraintWidgetD2 = d(childAt5);
                    if (constraintWidgetD2 != null) {
                        LayoutParams layoutParams = (LayoutParams) childAt5.getLayoutParams();
                        constraintWidgetContainer.a(constraintWidgetD2);
                        b(zIsInEditMode, childAt5, constraintWidgetD2, layoutParams, sparseArray);
                    }
                }
            }
            if (z) {
                constraintWidgetContainer.x0.c(constraintWidgetContainer);
            }
        }
        constraintWidgetContainer.C0.getClass();
        l(constraintWidgetContainer, this.f11729j, i2, i3);
        i(i2, i3, constraintWidgetContainer.v(), constraintWidgetContainer.p(), constraintWidgetContainer.K0, constraintWidgetContainer.L0);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        ConstraintWidget constraintWidgetD = d(view);
        if ((view instanceof Guideline) && !(constraintWidgetD instanceof androidx.constraintlayout.core.widgets.Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            androidx.constraintlayout.core.widgets.Guideline guideline = new androidx.constraintlayout.core.widgets.Guideline();
            layoutParams.q0 = guideline;
            layoutParams.d0 = true;
            guideline.a0(layoutParams.V);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.k();
            ((LayoutParams) view.getLayoutParams()).e0 = true;
            ArrayList arrayList = this.f11724c;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.f11723b.put(view.getId(), view);
        this.f11728i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f11723b.remove(view.getId());
        ConstraintWidget constraintWidgetD = d(view);
        this.d.w0.remove(constraintWidgetD);
        constraintWidgetD.H();
        this.f11724c.remove(view);
        this.f11728i = true;
    }

    public final void p(ConstraintWidget constraintWidget, LayoutParams layoutParams, SparseArray sparseArray, int i2, ConstraintAnchor.Type type) {
        View view = (View) this.f11723b.get(i2);
        ConstraintWidget constraintWidget2 = (ConstraintWidget) sparseArray.get(i2);
        if (constraintWidget2 == null || view == null || !(view.getLayoutParams() instanceof LayoutParams)) {
            return;
        }
        layoutParams.c0 = true;
        ConstraintAnchor.Type type2 = ConstraintAnchor.Type.BASELINE;
        if (type == type2) {
            LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
            layoutParams2.c0 = true;
            layoutParams2.q0.G = true;
        }
        constraintWidget.n(type2).b(constraintWidget2.n(type), layoutParams.D, layoutParams.C, true);
        constraintWidget.G = true;
        constraintWidget.n(ConstraintAnchor.Type.TOP).j();
        constraintWidget.n(ConstraintAnchor.Type.BOTTOM).j();
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f11728i = true;
        super.requestLayout();
    }

    public void setConstraintSet(ConstraintSet constraintSet) {
        this.f11730k = constraintSet;
    }

    @Override // android.view.View
    public void setId(int i2) {
        int id = getId();
        SparseArray sparseArray = this.f11723b;
        sparseArray.remove(id);
        super.setId(i2);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i2) {
        if (i2 == this.f11727h) {
            return;
        }
        this.f11727h = i2;
        requestLayout();
    }

    public void setMaxWidth(int i2) {
        if (i2 == this.g) {
            return;
        }
        this.g = i2;
        requestLayout();
    }

    public void setMinHeight(int i2) {
        if (i2 == this.f11726f) {
            return;
        }
        this.f11726f = i2;
        requestLayout();
    }

    public void setMinWidth(int i2) {
        if (i2 == this.f11725e) {
            return;
        }
        this.f11725e = i2;
        requestLayout();
    }

    public void setOnConstraintsChanged(ConstraintsChangedListener constraintsChangedListener) {
    }

    public void setOptimizationLevel(int i2) {
        this.f11729j = i2;
        ConstraintWidgetContainer constraintWidgetContainer = this.d;
        constraintWidgetContainer.J0 = i2;
        LinearSystem.q = constraintWidgetContainer.e0(512);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11723b = new SparseArray();
        this.f11724c = new ArrayList(4);
        this.d = new ConstraintWidgetContainer();
        this.f11725e = 0;
        this.f11726f = 0;
        this.g = Integer.MAX_VALUE;
        this.f11727h = Integer.MAX_VALUE;
        this.f11728i = true;
        this.f11729j = 257;
        this.f11730k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap();
        this.o = new SparseArray();
        this.p = new Measurer(this);
        e(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11723b = new SparseArray();
        this.f11724c = new ArrayList(4);
        this.d = new ConstraintWidgetContainer();
        this.f11725e = 0;
        this.f11726f = 0;
        this.g = Integer.MAX_VALUE;
        this.f11727h = Integer.MAX_VALUE;
        this.f11728i = true;
        this.f11729j = 257;
        this.f11730k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap();
        this.o = new SparseArray();
        this.p = new Measurer(this);
        e(attributeSet, i2, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f11723b = new SparseArray();
        this.f11724c = new ArrayList(4);
        this.d = new ConstraintWidgetContainer();
        this.f11725e = 0;
        this.f11726f = 0;
        this.g = Integer.MAX_VALUE;
        this.f11727h = Integer.MAX_VALUE;
        this.f11728i = true;
        this.f11729j = 257;
        this.f11730k = null;
        this.l = null;
        this.m = -1;
        this.n = new HashMap();
        this.o = new SparseArray();
        this.p = new Measurer(this);
        e(attributeSet, i2, i3);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public final int C;
        public final int D;
        public float E;
        public float F;
        public String G;
        public float H;
        public float I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public float R;
        public float S;
        public int T;
        public int U;
        public int V;
        public boolean W;
        public boolean X;
        public String Y;
        public int Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11732a;
        public boolean a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f11733b;
        public boolean b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f11734c;
        public boolean c0;
        public final boolean d;
        public boolean d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11735e;
        public boolean e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f11736f;
        public boolean f0;
        public int g;
        public int g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f11737h;
        public int h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f11738i;
        public int i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f11739j;
        public int j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f11740k;
        public int k0;
        public int l;
        public int l0;
        public int m;
        public float m0;
        public int n;
        public int n0;
        public int o;
        public int o0;
        public int p;
        public float p0;
        public int q;
        public ConstraintWidget q0;
        public float r;
        public int s;
        public int t;
        public int u;
        public int v;
        public final int w;
        public int x;
        public final int y;
        public int z;

        public static class Table {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f11741a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f11741a = sparseIntArray;
                sparseIntArray.append(98, 64);
                sparseIntArray.append(75, 65);
                sparseIntArray.append(84, 8);
                sparseIntArray.append(85, 9);
                sparseIntArray.append(87, 10);
                sparseIntArray.append(88, 11);
                sparseIntArray.append(94, 12);
                sparseIntArray.append(93, 13);
                sparseIntArray.append(65, 14);
                sparseIntArray.append(64, 15);
                sparseIntArray.append(60, 16);
                sparseIntArray.append(62, 52);
                sparseIntArray.append(61, 53);
                sparseIntArray.append(66, 2);
                sparseIntArray.append(68, 3);
                sparseIntArray.append(67, 4);
                sparseIntArray.append(103, 49);
                sparseIntArray.append(104, 50);
                sparseIntArray.append(72, 5);
                sparseIntArray.append(73, 6);
                sparseIntArray.append(74, 7);
                sparseIntArray.append(55, 67);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(89, 17);
                sparseIntArray.append(90, 18);
                sparseIntArray.append(71, 19);
                sparseIntArray.append(70, 20);
                sparseIntArray.append(108, 21);
                sparseIntArray.append(111, 22);
                sparseIntArray.append(109, 23);
                sparseIntArray.append(106, 24);
                sparseIntArray.append(110, 25);
                sparseIntArray.append(107, 26);
                sparseIntArray.append(105, 55);
                sparseIntArray.append(112, 54);
                sparseIntArray.append(80, 29);
                sparseIntArray.append(95, 30);
                sparseIntArray.append(69, 44);
                sparseIntArray.append(82, 45);
                sparseIntArray.append(97, 46);
                sparseIntArray.append(81, 47);
                sparseIntArray.append(96, 48);
                sparseIntArray.append(58, 27);
                sparseIntArray.append(57, 28);
                sparseIntArray.append(99, 31);
                sparseIntArray.append(76, 32);
                sparseIntArray.append(101, 33);
                sparseIntArray.append(100, 34);
                sparseIntArray.append(102, 35);
                sparseIntArray.append(78, 36);
                sparseIntArray.append(77, 37);
                sparseIntArray.append(79, 38);
                sparseIntArray.append(83, 39);
                sparseIntArray.append(92, 40);
                sparseIntArray.append(86, 41);
                sparseIntArray.append(63, 42);
                sparseIntArray.append(59, 43);
                sparseIntArray.append(91, 51);
                sparseIntArray.append(114, 66);
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11732a = -1;
            this.f11733b = -1;
            this.f11734c = -1.0f;
            this.d = true;
            this.f11735e = -1;
            this.f11736f = -1;
            this.g = -1;
            this.f11737h = -1;
            this.f11738i = -1;
            this.f11739j = -1;
            this.f11740k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = 0;
            this.r = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.a0 = true;
            this.b0 = true;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = Integer.MIN_VALUE;
            this.l0 = Integer.MIN_VALUE;
            this.m0 = 0.5f;
            this.q0 = new ConstraintWidget();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f11819b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                int i3 = Table.f11741a.get(index);
                switch (i3) {
                    case 1:
                        this.V = typedArrayObtainStyledAttributes.getInt(index, this.V);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.p);
                        this.p = resourceId;
                        if (resourceId == -1) {
                            this.p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.q);
                        break;
                    case 4:
                        float f2 = typedArrayObtainStyledAttributes.getFloat(index, this.r) % 360.0f;
                        this.r = f2;
                        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            this.r = (360.0f - f2) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f11732a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11732a);
                        break;
                    case 6:
                        this.f11733b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f11733b);
                        break;
                    case 7:
                        this.f11734c = typedArrayObtainStyledAttributes.getFloat(index, this.f11734c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11735e);
                        this.f11735e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f11735e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11736f);
                        this.f11736f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f11736f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.g);
                        this.g = resourceId4;
                        if (resourceId4 == -1) {
                            this.g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11737h);
                        this.f11737h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f11737h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11738i);
                        this.f11738i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f11738i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11739j);
                        this.f11739j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f11739j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f11740k);
                        this.f11740k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f11740k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.l);
                        this.l = resourceId9;
                        if (resourceId9 == -1) {
                            this.l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.m);
                        this.m = resourceId10;
                        if (resourceId10 == -1) {
                            this.m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.s);
                        this.s = resourceId11;
                        if (resourceId11 == -1) {
                            this.s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.t);
                        this.t = resourceId12;
                        if (resourceId12 == -1) {
                            this.t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.u);
                        this.u = resourceId13;
                        if (resourceId13 == -1) {
                            this.u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.v);
                        this.v = resourceId14;
                        if (resourceId14 == -1) {
                            this.v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.w);
                        break;
                    case 22:
                        this.x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.x);
                        break;
                    case 23:
                        this.y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.y);
                        break;
                    case 24:
                        this.z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.z);
                        break;
                    case 25:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                        break;
                    case 27:
                        this.W = typedArrayObtainStyledAttributes.getBoolean(index, this.W);
                        break;
                    case 28:
                        this.X = typedArrayObtainStyledAttributes.getBoolean(index, this.X);
                        break;
                    case 29:
                        this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 30:
                        this.F = typedArrayObtainStyledAttributes.getFloat(index, this.F);
                        break;
                    case 31:
                        this.L = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 32:
                        this.M = typedArrayObtainStyledAttributes.getInt(index, 0);
                        break;
                    case 33:
                        try {
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.P) == -2) {
                                this.P = -2;
                            }
                        }
                        break;
                    case 35:
                        this.R = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, typedArrayObtainStyledAttributes.getFloat(index, this.R));
                        this.L = 2;
                        break;
                    case 36:
                        try {
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.O) == -2) {
                                this.O = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.Q) == -2) {
                                this.Q = -2;
                            }
                        }
                        break;
                    case 38:
                        this.S = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, typedArrayObtainStyledAttributes.getFloat(index, this.S));
                        this.M = 2;
                        break;
                    default:
                        switch (i3) {
                            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                                ConstraintSet.p(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                                this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                                break;
                            case 46:
                                this.I = typedArrayObtainStyledAttributes.getFloat(index, this.I);
                                break;
                            case EACTags.PIN_USAGE_POLICY /* 47 */:
                                this.J = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.K = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.T);
                                break;
                            case 50:
                                this.U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.U);
                                break;
                            case EACTags.TRANSACTION_DATE /* 51 */:
                                this.Y = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case EACTags.CARD_SEQUENCE_NUMBER /* 52 */:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.n);
                                this.n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case EACTags.SEX /* 53 */:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.o);
                                this.o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case EACTags.CURRENCY_EXPONENT /* 54 */:
                                this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case 55:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            default:
                                switch (i3) {
                                    case 64:
                                        ConstraintSet.o(this, typedArrayObtainStyledAttributes, index, 0);
                                        break;
                                    case EACTags.ELEMENT_LIST /* 65 */:
                                        ConstraintSet.o(this, typedArrayObtainStyledAttributes, index, 1);
                                        break;
                                    case EACTags.ADDRESS /* 66 */:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE /* 67 */:
                                        this.d = typedArrayObtainStyledAttributes.getBoolean(index, this.d);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public final void a() {
            this.d0 = false;
            this.a0 = true;
            this.b0 = true;
            int i2 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i2 == -2 && this.W) {
                this.a0 = false;
                if (this.L == 0) {
                    this.L = 1;
                }
            }
            int i3 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i3 == -2 && this.X) {
                this.b0 = false;
                if (this.M == 0) {
                    this.M = 1;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.a0 = false;
                if (i2 == 0 && this.L == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.W = true;
                }
            }
            if (i3 == 0 || i3 == -1) {
                this.b0 = false;
                if (i3 == 0 && this.M == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.X = true;
                }
            }
            if (this.f11734c == -1.0f && this.f11732a == -1 && this.f11733b == -1) {
                return;
            }
            this.d0 = true;
            this.a0 = true;
            this.b0 = true;
            if (!(this.q0 instanceof androidx.constraintlayout.core.widgets.Guideline)) {
                this.q0 = new androidx.constraintlayout.core.widgets.Guideline();
            }
            ((androidx.constraintlayout.core.widgets.Guideline) this.q0).a0(this.V);
        }

        /* JADX WARN: Code duplicated, block: B:16:0x004a  */
        /* JADX WARN: Code duplicated, block: B:19:0x0051  */
        /* JADX WARN: Code duplicated, block: B:22:0x0058  */
        /* JADX WARN: Code duplicated, block: B:25:0x005e  */
        /* JADX WARN: Code duplicated, block: B:28:0x0064  */
        /* JADX WARN: Code duplicated, block: B:37:0x007a  */
        /* JADX WARN: Code duplicated, block: B:38:0x0082 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:39:0x0084  */
        /* JADX WARN: Code duplicated, block: B:40:0x008b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:41:0x008d  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        public final void resolveLayoutDirection(int i2) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i8 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i2);
            boolean z = false;
            boolean z2 = 1 == getLayoutDirection();
            this.i0 = -1;
            this.j0 = -1;
            this.g0 = -1;
            this.h0 = -1;
            this.k0 = this.w;
            this.l0 = this.y;
            float f2 = this.E;
            this.m0 = f2;
            int i9 = this.f11732a;
            this.n0 = i9;
            int i10 = this.f11733b;
            this.o0 = i10;
            float f3 = this.f11734c;
            this.p0 = f3;
            int i11 = this.s;
            if (z2) {
                if (i11 != -1) {
                    this.i0 = i11;
                } else {
                    int i12 = this.t;
                    if (i12 != -1) {
                        this.j0 = i12;
                    } else {
                        i3 = this.u;
                        if (i3 != -1) {
                            this.h0 = i3;
                            z = true;
                        }
                        i4 = this.v;
                        if (i4 != -1) {
                            this.g0 = i4;
                            z = true;
                        }
                        i5 = this.A;
                        if (i5 != Integer.MIN_VALUE) {
                            this.l0 = i5;
                        }
                        i6 = this.B;
                        if (i6 != Integer.MIN_VALUE) {
                            this.k0 = i6;
                        }
                        if (z) {
                            this.m0 = 1.0f - f2;
                        }
                        if (this.d0 && this.V == 1 && this.d) {
                            if (f3 != -1.0f) {
                                this.p0 = 1.0f - f3;
                                this.n0 = -1;
                                this.o0 = -1;
                            } else if (i9 != -1) {
                                this.o0 = i9;
                                this.n0 = -1;
                                this.p0 = -1.0f;
                            } else if (i10 != -1) {
                                this.n0 = i10;
                                this.o0 = -1;
                                this.p0 = -1.0f;
                            }
                        }
                    }
                }
                z = true;
                i3 = this.u;
                if (i3 != -1) {
                    this.h0 = i3;
                    z = true;
                }
                i4 = this.v;
                if (i4 != -1) {
                    this.g0 = i4;
                    z = true;
                }
                i5 = this.A;
                if (i5 != Integer.MIN_VALUE) {
                    this.l0 = i5;
                }
                i6 = this.B;
                if (i6 != Integer.MIN_VALUE) {
                    this.k0 = i6;
                }
                if (z) {
                    this.m0 = 1.0f - f2;
                }
                if (this.d0) {
                    if (f3 != -1.0f) {
                        this.p0 = 1.0f - f3;
                        this.n0 = -1;
                        this.o0 = -1;
                    } else if (i9 != -1) {
                        this.o0 = i9;
                        this.n0 = -1;
                        this.p0 = -1.0f;
                    } else if (i10 != -1) {
                        this.n0 = i10;
                        this.o0 = -1;
                        this.p0 = -1.0f;
                    }
                }
            } else {
                if (i11 != -1) {
                    this.h0 = i11;
                }
                int i13 = this.t;
                if (i13 != -1) {
                    this.g0 = i13;
                }
                int i14 = this.u;
                if (i14 != -1) {
                    this.i0 = i14;
                }
                int i15 = this.v;
                if (i15 != -1) {
                    this.j0 = i15;
                }
                int i16 = this.A;
                if (i16 != Integer.MIN_VALUE) {
                    this.k0 = i16;
                }
                int i17 = this.B;
                if (i17 != Integer.MIN_VALUE) {
                    this.l0 = i17;
                }
            }
            if (this.u == -1 && this.v == -1 && this.t == -1 && i11 == -1) {
                int i18 = this.g;
                if (i18 != -1) {
                    this.i0 = i18;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i8 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i8;
                    }
                } else {
                    int i19 = this.f11737h;
                    if (i19 != -1) {
                        this.j0 = i19;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i8 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i8;
                        }
                    }
                }
                int i20 = this.f11735e;
                if (i20 != -1) {
                    this.g0 = i20;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i7 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i7;
                    return;
                }
                int i21 = this.f11736f;
                if (i21 != -1) {
                    this.h0 = i21;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i7 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i7;
                }
            }
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f11732a = -1;
            this.f11733b = -1;
            this.f11734c = -1.0f;
            this.d = true;
            this.f11735e = -1;
            this.f11736f = -1;
            this.g = -1;
            this.f11737h = -1;
            this.f11738i = -1;
            this.f11739j = -1;
            this.f11740k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = 0;
            this.r = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.a0 = true;
            this.b0 = true;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = Integer.MIN_VALUE;
            this.l0 = Integer.MIN_VALUE;
            this.m0 = 0.5f;
            this.q0 = new ConstraintWidget();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
                ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
                ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
                ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
                setMarginStart(marginLayoutParams.getMarginStart());
                setMarginEnd(marginLayoutParams.getMarginEnd());
            }
            if (layoutParams instanceof LayoutParams) {
                LayoutParams layoutParams2 = (LayoutParams) layoutParams;
                this.f11732a = layoutParams2.f11732a;
                this.f11733b = layoutParams2.f11733b;
                this.f11734c = layoutParams2.f11734c;
                this.d = layoutParams2.d;
                this.f11735e = layoutParams2.f11735e;
                this.f11736f = layoutParams2.f11736f;
                this.g = layoutParams2.g;
                this.f11737h = layoutParams2.f11737h;
                this.f11738i = layoutParams2.f11738i;
                this.f11739j = layoutParams2.f11739j;
                this.f11740k = layoutParams2.f11740k;
                this.l = layoutParams2.l;
                this.m = layoutParams2.m;
                this.n = layoutParams2.n;
                this.o = layoutParams2.o;
                this.p = layoutParams2.p;
                this.q = layoutParams2.q;
                this.r = layoutParams2.r;
                this.s = layoutParams2.s;
                this.t = layoutParams2.t;
                this.u = layoutParams2.u;
                this.v = layoutParams2.v;
                this.w = layoutParams2.w;
                this.x = layoutParams2.x;
                this.y = layoutParams2.y;
                this.z = layoutParams2.z;
                this.A = layoutParams2.A;
                this.B = layoutParams2.B;
                this.C = layoutParams2.C;
                this.D = layoutParams2.D;
                this.E = layoutParams2.E;
                this.F = layoutParams2.F;
                this.G = layoutParams2.G;
                this.H = layoutParams2.H;
                this.I = layoutParams2.I;
                this.J = layoutParams2.J;
                this.K = layoutParams2.K;
                this.W = layoutParams2.W;
                this.X = layoutParams2.X;
                this.L = layoutParams2.L;
                this.M = layoutParams2.M;
                this.N = layoutParams2.N;
                this.P = layoutParams2.P;
                this.O = layoutParams2.O;
                this.Q = layoutParams2.Q;
                this.R = layoutParams2.R;
                this.S = layoutParams2.S;
                this.T = layoutParams2.T;
                this.U = layoutParams2.U;
                this.V = layoutParams2.V;
                this.a0 = layoutParams2.a0;
                this.b0 = layoutParams2.b0;
                this.c0 = layoutParams2.c0;
                this.d0 = layoutParams2.d0;
                this.g0 = layoutParams2.g0;
                this.h0 = layoutParams2.h0;
                this.i0 = layoutParams2.i0;
                this.j0 = layoutParams2.j0;
                this.k0 = layoutParams2.k0;
                this.l0 = layoutParams2.l0;
                this.m0 = layoutParams2.m0;
                this.Y = layoutParams2.Y;
                this.Z = layoutParams2.Z;
                this.q0 = layoutParams2.q0;
            }
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f11732a = -1;
            this.f11733b = -1;
            this.f11734c = -1.0f;
            this.d = true;
            this.f11735e = -1;
            this.f11736f = -1;
            this.g = -1;
            this.f11737h = -1;
            this.f11738i = -1;
            this.f11739j = -1;
            this.f11740k = -1;
            this.l = -1;
            this.m = -1;
            this.n = -1;
            this.o = -1;
            this.p = -1;
            this.q = 0;
            this.r = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.s = -1;
            this.t = -1;
            this.u = -1;
            this.v = -1;
            this.w = Integer.MIN_VALUE;
            this.x = Integer.MIN_VALUE;
            this.y = Integer.MIN_VALUE;
            this.z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.a0 = true;
            this.b0 = true;
            this.c0 = false;
            this.d0 = false;
            this.e0 = false;
            this.f0 = false;
            this.g0 = -1;
            this.h0 = -1;
            this.i0 = -1;
            this.j0 = -1;
            this.k0 = Integer.MIN_VALUE;
            this.l0 = Integer.MIN_VALUE;
            this.m0 = 0.5f;
            this.q0 = new ConstraintWidget();
        }
    }
}
