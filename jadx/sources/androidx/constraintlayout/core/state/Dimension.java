package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.widgets.ConstraintWidget;

/* JADX INFO: loaded from: classes.dex */
public class Dimension {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f11437h = new String("FIXED_DIMENSION");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f11438i = new String("WRAP_DIMENSION");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f11439j = new String("SPREAD_DIMENSION");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f11440k = new String("PARENT_DIMENSION");
    public static final String l = new String("PERCENT_DIMENSION");
    public static final String m = new String("RATIO_DIMENSION");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11445f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f11441a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11442b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f11443c = 1.0f;
    public int d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f11444e = null;
    public boolean g = false;

    public Dimension(String str) {
        this.f11445f = str;
    }

    public static Dimension b(int i2) {
        Dimension dimension = new Dimension(f11437h);
        dimension.f11445f = null;
        dimension.d = i2;
        return dimension;
    }

    public static Dimension c(String str) {
        Dimension dimension = new Dimension();
        dimension.f11441a = 0;
        dimension.f11442b = Integer.MAX_VALUE;
        dimension.f11443c = 1.0f;
        dimension.d = 0;
        dimension.f11444e = null;
        dimension.f11445f = str;
        dimension.g = true;
        return dimension;
    }

    public final void a(ConstraintWidget constraintWidget, int i2) {
        String str = this.f11444e;
        if (str != null) {
            constraintWidget.O(str);
        }
        boolean z = this.g;
        String str2 = f11440k;
        int i3 = 2;
        String str3 = l;
        String str4 = f11438i;
        if (i2 == 0) {
            if (z) {
                constraintWidget.S(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                String str5 = this.f11445f;
                if (str5 == str4) {
                    i3 = 1;
                } else if (str5 != str3) {
                    i3 = 0;
                }
                constraintWidget.T(i3, this.f11441a, this.f11442b, this.f11443c);
                return;
            }
            int i4 = this.f11441a;
            if (i4 > 0) {
                if (i4 < 0) {
                    constraintWidget.f0 = 0;
                } else {
                    constraintWidget.f0 = i4;
                }
            }
            int i5 = this.f11442b;
            if (i5 < Integer.MAX_VALUE) {
                constraintWidget.E[0] = i5;
            }
            String str6 = this.f11445f;
            if (str6 == str4) {
                constraintWidget.S(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
                return;
            }
            if (str6 == str2) {
                constraintWidget.S(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                return;
            } else {
                if (str6 == null) {
                    constraintWidget.S(ConstraintWidget.DimensionBehaviour.FIXED);
                    constraintWidget.W(this.d);
                    return;
                }
                return;
            }
        }
        if (z) {
            constraintWidget.U(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
            String str7 = this.f11445f;
            if (str7 == str4) {
                i3 = 1;
            } else if (str7 != str3) {
                i3 = 0;
            }
            constraintWidget.V(i3, this.f11441a, this.f11442b, this.f11443c);
            return;
        }
        int i6 = this.f11441a;
        if (i6 > 0) {
            if (i6 < 0) {
                constraintWidget.g0 = 0;
            } else {
                constraintWidget.g0 = i6;
            }
        }
        int i7 = this.f11442b;
        if (i7 < Integer.MAX_VALUE) {
            constraintWidget.E[1] = i7;
        }
        String str8 = this.f11445f;
        if (str8 == str4) {
            constraintWidget.U(ConstraintWidget.DimensionBehaviour.WRAP_CONTENT);
            return;
        }
        if (str8 == str2) {
            constraintWidget.U(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
        } else if (str8 == null) {
            constraintWidget.U(ConstraintWidget.DimensionBehaviour.FIXED);
            constraintWidget.R(this.d);
        }
    }
}
