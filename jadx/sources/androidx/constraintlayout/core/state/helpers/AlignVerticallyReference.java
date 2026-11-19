package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class AlignVerticallyReference extends HelperReference {
    public final float n0;

    public AlignVerticallyReference(State state) {
        super(state, State.Helper.ALIGN_VERTICALLY);
        this.n0 = 0.5f;
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        Iterator it = this.m0.iterator();
        while (it.hasNext()) {
            ConstraintReference constraintReferenceB = this.k0.b(it.next());
            constraintReferenceB.h();
            Object obj = this.R;
            if (obj != null) {
                constraintReferenceB.p(obj);
            } else {
                Object obj2 = this.S;
                if (obj2 != null) {
                    constraintReferenceB.d0 = State.Constraint.TOP_TO_BOTTOM;
                    constraintReferenceB.S = obj2;
                } else {
                    constraintReferenceB.p(0);
                }
            }
            Object obj3 = this.U;
            if (obj3 != null) {
                constraintReferenceB.d0 = State.Constraint.BOTTOM_TO_TOP;
                constraintReferenceB.U = obj3;
            } else {
                Object obj4 = this.V;
                if (obj4 != null) {
                    constraintReferenceB.e(obj4);
                } else {
                    constraintReferenceB.e(0);
                }
            }
            float f2 = this.n0;
            if (f2 != 0.5f) {
                constraintReferenceB.f11423i = f2;
            }
        }
    }
}
