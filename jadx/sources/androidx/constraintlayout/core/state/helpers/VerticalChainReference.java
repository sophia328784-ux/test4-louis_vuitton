package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class VerticalChainReference extends ChainReference {

    /* JADX INFO: renamed from: androidx.constraintlayout.core.state.helpers.VerticalChainReference$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11470a;

        static {
            int[] iArr = new int[State.Chain.values().length];
            f11470a = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11470a[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11470a[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalChainReference(State state) {
        super(state, State.Helper.VERTICAL_CHAIN);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        State state;
        ArrayList arrayList = this.m0;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            state = this.k0;
            if (!zHasNext) {
                break;
            } else {
                state.b(it.next()).h();
            }
        }
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        for (Object obj : arrayList) {
            ConstraintReference constraintReferenceB = state.b(obj);
            if (constraintReference2 == null) {
                Object obj2 = this.R;
                if (obj2 != null) {
                    constraintReferenceB.p(obj2);
                    constraintReferenceB.k(this.n).m(this.t);
                } else {
                    Object obj3 = this.S;
                    if (obj3 != null) {
                        constraintReferenceB.d0 = State.Constraint.TOP_TO_BOTTOM;
                        constraintReferenceB.S = obj3;
                        constraintReferenceB.k(this.n).m(this.t);
                    } else {
                        String string = constraintReferenceB.f11417a.toString();
                        constraintReferenceB.p(0);
                        constraintReferenceB.l(Float.valueOf(w(string))).n(Float.valueOf(v(string)));
                    }
                }
                constraintReference2 = constraintReferenceB;
            }
            if (constraintReference != null) {
                String string2 = constraintReference.f11417a.toString();
                String string3 = constraintReferenceB.f11417a.toString();
                Object obj4 = constraintReferenceB.f11417a;
                constraintReference.d0 = State.Constraint.BOTTOM_TO_TOP;
                constraintReference.U = obj4;
                constraintReference.l(Float.valueOf(u(string2))).n(Float.valueOf(t(string2)));
                Object obj5 = constraintReference.f11417a;
                constraintReferenceB.d0 = State.Constraint.TOP_TO_BOTTOM;
                constraintReferenceB.S = obj5;
                constraintReferenceB.l(Float.valueOf(w(string3))).n(Float.valueOf(v(string3)));
            }
            String string4 = obj.toString();
            HashMap map = this.o0;
            float fFloatValue = map.containsKey(string4) ? ((Float) map.get(string4)).floatValue() : -1.0f;
            if (fFloatValue != -1.0f) {
                constraintReferenceB.g = fFloatValue;
            }
            constraintReference = constraintReferenceB;
        }
        if (constraintReference != null) {
            Object obj6 = this.U;
            if (obj6 != null) {
                constraintReference.d0 = State.Constraint.BOTTOM_TO_TOP;
                constraintReference.U = obj6;
                constraintReference.k(this.o).m(this.u);
            } else {
                Object obj7 = this.V;
                if (obj7 != null) {
                    constraintReference.e(obj7);
                    constraintReference.k(this.o).m(this.u);
                } else {
                    String string5 = constraintReference.f11417a.toString();
                    constraintReference.e(0);
                    constraintReference.l(Float.valueOf(u(string5))).n(Float.valueOf(t(string5)));
                }
            }
        }
        if (constraintReference2 == null) {
            return;
        }
        float f2 = this.n0;
        if (f2 != 0.5f) {
            constraintReference2.f11423i = f2;
        }
        int i2 = AnonymousClass1.f11470a[this.t0.ordinal()];
        if (i2 == 1) {
            constraintReference2.f11420e = 0;
        } else if (i2 == 2) {
            constraintReference2.f11420e = 1;
        } else {
            if (i2 != 3) {
                return;
            }
            constraintReference2.f11420e = 2;
        }
    }
}
