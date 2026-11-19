package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AlignHorizontallyReference extends HelperReference {
    public final float n0;

    public AlignHorizontallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.n0 = 0.5f;
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        Iterator it = this.m0.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceB = this.k0.b(it.next());
            constraintReferenceB.g();
            Object obj = this.N;
            if (obj != null) {
                constraintReferenceB.o(obj);
            } else {
                Object obj2 = this.O;
                if (obj2 != null) {
                    constraintReferenceB.d0 = State.Constraint.START_TO_END;
                    constraintReferenceB.O = obj2;
                } else {
                    constraintReferenceB.o(0);
                }
            }
            Object obj3 = this.P;
            if (obj3 != null) {
                constraintReferenceB.d0 = State.Constraint.END_TO_START;
                constraintReferenceB.P = obj3;
            } else {
                Object obj4 = this.Q;
                if (obj4 != null) {
                    constraintReferenceB.i(obj4);
                } else {
                    constraintReferenceB.i(0);
                }
            }
            float f2 = this.n0;
            if (f2 != 0.5f) {
                constraintReferenceB.f11422h = f2;
            }
        }
    }
}
