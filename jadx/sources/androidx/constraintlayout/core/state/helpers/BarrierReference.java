package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.ConstraintReference;
import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.Barrier;
import androidx.constraintlayout.core.widgets.HelperWidget;

/* JADX INFO: loaded from: classes.dex */
public class BarrierReference extends HelperReference {
    public State.Direction n0;
    public int o0;
    public Barrier p0;

    /* JADX INFO: renamed from: androidx.constraintlayout.core.state.helpers.BarrierReference$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f11463a;

        static {
            int[] iArr = new int[State.Direction.values().length];
            f11463a = iArr;
            try {
                iArr[State.Direction.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11463a[State.Direction.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11463a[State.Direction.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f11463a[State.Direction.END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f11463a[State.Direction.TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f11463a[State.Direction.BOTTOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public BarrierReference(State state) {
        super(state, State.Helper.BARRIER);
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        s();
        int i2 = AnonymousClass1.f11463a[this.n0.ordinal()];
        int i3 = 3;
        if (i2 == 3 || i2 == 4) {
            i3 = 1;
        } else if (i2 == 5) {
            i3 = 2;
        } else if (i2 != 6) {
            i3 = 0;
        }
        Barrier barrier = this.p0;
        barrier.y0 = i3;
        barrier.A0 = this.o0;
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference
    public final ConstraintReference k(int i2) {
        this.o0 = i2;
        return this;
    }

    @Override // androidx.constraintlayout.core.state.ConstraintReference
    public final ConstraintReference l(Float f2) {
        this.o0 = this.k0.c(f2);
        return this;
    }

    @Override // androidx.constraintlayout.core.state.HelperReference
    public final HelperWidget s() {
        if (this.p0 == null) {
            this.p0 = new Barrier();
        }
        return this.p0;
    }
}
