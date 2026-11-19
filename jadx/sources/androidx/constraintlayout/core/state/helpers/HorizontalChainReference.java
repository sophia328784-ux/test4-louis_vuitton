package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.State;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalChainReference extends ChainReference {

    /* JADX INFO: renamed from: androidx.constraintlayout.core.state.helpers.HorizontalChainReference$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11469a;

        static {
            int[] iArr = new int[State.Chain.values().length];
            f11469a = iArr;
            try {
                iArr[State.Chain.SPREAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11469a[State.Chain.SPREAD_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11469a[State.Chain.PACKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public HorizontalChainReference(State state) {
        super(state, State.Helper.HORIZONTAL_CHAIN);
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
                state.b(it.next()).g();
            }
        }
        ConstraintReference constraintReference = null;
        ConstraintReference constraintReference2 = null;
        for (Object obj : arrayList) {
            ConstraintReference constraintReferenceB = state.b(obj);
            if (constraintReference2 == null) {
                Object obj2 = this.N;
                if (obj2 != null) {
                    constraintReferenceB.o(obj2);
                    constraintReferenceB.k(this.l).m(this.r);
                } else {
                    Object obj3 = this.O;
                    if (obj3 != null) {
                        constraintReferenceB.d0 = State.Constraint.START_TO_END;
                        constraintReferenceB.O = obj3;
                        constraintReferenceB.k(this.l).m(this.r);
                    } else {
                        Object obj4 = this.J;
                        if (obj4 != null) {
                            constraintReferenceB.o(obj4);
                            constraintReferenceB.k(this.f11424j).m(this.p);
                        } else {
                            Object obj5 = this.K;
                            if (obj5 != null) {
                                constraintReferenceB.d0 = State.Constraint.START_TO_END;
                                constraintReferenceB.O = obj5;
                                constraintReferenceB.k(this.f11424j).m(this.p);
                            } else {
                                String string = constraintReferenceB.f11417a.toString();
                                constraintReferenceB.o(0);
                                constraintReferenceB.l(Float.valueOf(w(string))).n(Float.valueOf(v(string)));
                            }
                        }
                    }
                }
                constraintReference2 = constraintReferenceB;
            }
            if (constraintReference != null) {
                String string2 = constraintReference.f11417a.toString();
                String string3 = constraintReferenceB.f11417a.toString();
                Object obj6 = constraintReferenceB.f11417a;
                constraintReference.d0 = State.Constraint.END_TO_START;
                constraintReference.P = obj6;
                constraintReference.l(Float.valueOf(u(string2))).n(Float.valueOf(t(string2)));
                Object obj7 = constraintReference.f11417a;
                constraintReferenceB.d0 = State.Constraint.START_TO_END;
                constraintReferenceB.O = obj7;
                constraintReferenceB.l(Float.valueOf(w(string3))).n(Float.valueOf(v(string3)));
            }
            String string4 = obj.toString();
            HashMap map = this.o0;
            float fFloatValue = map.containsKey(string4) ? ((Float) map.get(string4)).floatValue() : -1.0f;
            if (fFloatValue != -1.0f) {
                constraintReferenceB.f11421f = fFloatValue;
            }
            constraintReference = constraintReferenceB;
        }
        if (constraintReference != null) {
            Object obj8 = this.P;
            if (obj8 != null) {
                constraintReference.d0 = State.Constraint.END_TO_START;
                constraintReference.P = obj8;
                constraintReference.k(this.m).m(this.s);
            } else {
                Object obj9 = this.Q;
                if (obj9 != null) {
                    constraintReference.i(obj9);
                    constraintReference.k(this.m).m(this.s);
                } else {
                    Object obj10 = this.L;
                    if (obj10 != null) {
                        constraintReference.d0 = State.Constraint.END_TO_START;
                        constraintReference.P = obj10;
                        constraintReference.k(this.f11425k).m(this.q);
                    } else {
                        Object obj11 = this.M;
                        if (obj11 != null) {
                            constraintReference.i(obj11);
                            constraintReference.k(this.f11425k).m(this.q);
                        } else {
                            String string5 = constraintReference.f11417a.toString();
                            constraintReference.i(0);
                            constraintReference.l(Float.valueOf(u(string5))).n(Float.valueOf(t(string5)));
                        }
                    }
                }
            }
        }
        if (constraintReference2 == null) {
            return;
        }
        float f2 = this.n0;
        if (f2 != 0.5f) {
            constraintReference2.f11422h = f2;
        }
        int i2 = AnonymousClass1.f11469a[this.t0.ordinal()];
        if (i2 == 1) {
            constraintReference2.d = 0;
        } else if (i2 == 2) {
            constraintReference2.d = 1;
        } else {
            if (i2 != 3) {
                return;
            }
            constraintReference2.d = 2;
        }
    }
}
