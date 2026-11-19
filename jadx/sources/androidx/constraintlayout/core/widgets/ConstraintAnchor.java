package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.analyzer.Grouping;
import androidx.constraintlayout.core.widgets.analyzer.WidgetGroup;
import defpackage.md;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintAnchor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f11481b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f11482c;
    public final ConstraintWidget d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Type f11483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ConstraintAnchor f11484f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public SolverVariable f11486i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public HashSet f11480a = null;
    public int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f11485h = Integer.MIN_VALUE;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BASELINE;
        public static final Type BOTTOM;
        public static final Type CENTER;
        public static final Type CENTER_X;
        public static final Type CENTER_Y;
        public static final Type LEFT;
        public static final Type NONE;
        public static final Type RIGHT;
        public static final Type TOP;

        static {
            Type type = new Type("NONE", 0);
            NONE = type;
            Type type2 = new Type("LEFT", 1);
            LEFT = type2;
            Type type3 = new Type("TOP", 2);
            TOP = type3;
            Type type4 = new Type("RIGHT", 3);
            RIGHT = type4;
            Type type5 = new Type("BOTTOM", 4);
            BOTTOM = type5;
            Type type6 = new Type("BASELINE", 5);
            BASELINE = type6;
            Type type7 = new Type("CENTER", 6);
            CENTER = type7;
            Type type8 = new Type("CENTER_X", 7);
            CENTER_X = type8;
            Type type9 = new Type("CENTER_Y", 8);
            CENTER_Y = type9;
            $VALUES = new Type[]{type, type2, type3, type4, type5, type6, type7, type8, type9};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.d = constraintWidget;
        this.f11483e = type;
    }

    public final void a(ConstraintAnchor constraintAnchor, int i2) {
        b(constraintAnchor, i2, Integer.MIN_VALUE, false);
    }

    public final boolean b(ConstraintAnchor constraintAnchor, int i2, int i3, boolean z) {
        if (constraintAnchor == null) {
            j();
            return true;
        }
        if (!z && !i(constraintAnchor)) {
            return false;
        }
        this.f11484f = constraintAnchor;
        if (constraintAnchor.f11480a == null) {
            constraintAnchor.f11480a = new HashSet();
        }
        HashSet hashSet = this.f11484f.f11480a;
        if (hashSet != null) {
            hashSet.add(this);
        }
        this.g = i2;
        this.f11485h = i3;
        return true;
    }

    public final void c(int i2, WidgetGroup widgetGroup, ArrayList arrayList) {
        HashSet hashSet = this.f11480a;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                Grouping.a(((ConstraintAnchor) it.next()).d, i2, arrayList, widgetGroup);
            }
        }
    }

    public final int d() {
        if (this.f11482c) {
            return this.f11481b;
        }
        return 0;
    }

    public final int e() {
        ConstraintAnchor constraintAnchor;
        if (this.d.k0 == 8) {
            return 0;
        }
        int i2 = this.f11485h;
        return (i2 == Integer.MIN_VALUE || (constraintAnchor = this.f11484f) == null || constraintAnchor.d.k0 != 8) ? this.g : i2;
    }

    public final ConstraintAnchor f() {
        Type type = this.f11483e;
        int iOrdinal = type.ordinal();
        ConstraintWidget constraintWidget = this.d;
        switch (iOrdinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return constraintWidget.N;
            case 2:
                return constraintWidget.O;
            case 3:
                return constraintWidget.L;
            case 4:
                return constraintWidget.M;
            default:
                md.h(type.name());
                return null;
        }
    }

    public final boolean g() {
        HashSet hashSet = this.f11480a;
        if (hashSet == null) {
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConstraintAnchor) it.next()).f().h()) {
                return true;
            }
        }
        return false;
    }

    public final boolean h() {
        return this.f11484f != null;
    }

    public final boolean i(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        ConstraintWidget constraintWidget = constraintAnchor.d;
        Type type = constraintAnchor.f11483e;
        Type type2 = this.f11483e;
        if (type == type2) {
            return type2 != Type.BASELINE || (constraintWidget.G && this.d.G);
        }
        switch (type2.ordinal()) {
            case 0:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z = type == Type.LEFT || type == Type.RIGHT;
                if (constraintWidget instanceof Guideline) {
                    return z || type == Type.CENTER_X;
                }
                return z;
            case 2:
            case 4:
                boolean z2 = type == Type.TOP || type == Type.BOTTOM;
                if (constraintWidget instanceof Guideline) {
                    return z2 || type == Type.CENTER_Y;
                }
                return z2;
            case 5:
                return (type == Type.LEFT || type == Type.RIGHT) ? false : true;
            case 6:
                return (type == Type.BASELINE || type == Type.CENTER_X || type == Type.CENTER_Y) ? false : true;
            default:
                md.h(type2.name());
                return false;
        }
    }

    public final void j() {
        HashSet hashSet;
        ConstraintAnchor constraintAnchor = this.f11484f;
        if (constraintAnchor != null && (hashSet = constraintAnchor.f11480a) != null) {
            hashSet.remove(this);
            if (this.f11484f.f11480a.size() == 0) {
                this.f11484f.f11480a = null;
            }
        }
        this.f11480a = null;
        this.f11484f = null;
        this.g = 0;
        this.f11485h = Integer.MIN_VALUE;
        this.f11482c = false;
        this.f11481b = 0;
    }

    public final void k() {
        SolverVariable solverVariable = this.f11486i;
        if (solverVariable == null) {
            this.f11486i = new SolverVariable(SolverVariable.Type.UNRESTRICTED, (String) null);
        } else {
            solverVariable.c();
        }
    }

    public final void l(int i2) {
        this.f11481b = i2;
        this.f11482c = true;
    }

    public final String toString() {
        return this.d.m0 + ":" + this.f11483e.toString();
    }
}
