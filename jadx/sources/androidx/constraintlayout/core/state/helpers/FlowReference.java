package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.widgets.Flow;
import androidx.constraintlayout.core.widgets.HelperWidget;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class FlowReference extends HelperReference {
    public int A0;
    public int B0;
    public int C0;
    public int D0;
    public int E0;
    public int F0;
    public int G0;
    public int H0;
    public float I0;
    public float J0;
    public float K0;
    public float L0;
    public Flow n0;
    public HashMap o0;
    public HashMap p0;
    public HashMap q0;
    public int r0;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public int y0;
    public int z0;

    public FlowReference(State state, State.Helper helper) {
        super(state, helper);
        this.r0 = 0;
        this.s0 = -1;
        this.t0 = -1;
        this.u0 = -1;
        this.v0 = -1;
        this.w0 = -1;
        this.x0 = -1;
        this.y0 = 2;
        this.z0 = 2;
        this.A0 = 0;
        this.B0 = 0;
        this.C0 = 0;
        this.D0 = 0;
        this.E0 = 0;
        this.F0 = 0;
        this.G0 = -1;
        this.H0 = 0;
        this.I0 = 0.5f;
        this.J0 = 0.5f;
        this.K0 = 0.5f;
        this.L0 = 0.5f;
        if (helper == State.Helper.VERTICAL_FLOW) {
            this.H0 = 1;
        }
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        s();
        a(this.n0);
        Flow flow = this.n0;
        flow.b1 = this.H0;
        flow.Z0 = this.r0;
        int i2 = this.G0;
        if (i2 != -1) {
            flow.a1 = i2;
        }
        int i3 = this.C0;
        if (i3 != 0) {
            flow.C0 = i3;
        }
        int i4 = this.E0;
        if (i4 != 0) {
            flow.y0 = i4;
        }
        int i5 = this.D0;
        if (i5 != 0) {
            flow.D0 = i5;
        }
        int i6 = this.F0;
        if (i6 != 0) {
            flow.z0 = i6;
        }
        int i7 = this.B0;
        if (i7 != 0) {
            flow.V0 = i7;
        }
        int i8 = this.A0;
        if (i8 != 0) {
            flow.W0 = i8;
        }
        float f2 = this.f11422h;
        if (f2 != 0.5f) {
            flow.P0 = f2;
        }
        float f3 = this.K0;
        if (f3 != 0.5f) {
            flow.R0 = f3;
        }
        float f4 = this.L0;
        if (f4 != 0.5f) {
            flow.T0 = f4;
        }
        float f5 = this.f11423i;
        if (f5 != 0.5f) {
            flow.Q0 = f5;
        }
        float f6 = this.I0;
        if (f6 != 0.5f) {
            flow.S0 = f6;
        }
        float f7 = this.J0;
        if (f7 != 0.5f) {
            flow.U0 = f7;
        }
        int i9 = this.z0;
        if (i9 != 2) {
            flow.X0 = i9;
        }
        int i10 = this.y0;
        if (i10 != 2) {
            flow.Y0 = i10;
        }
        int i11 = this.s0;
        if (i11 != -1) {
            flow.K0 = i11;
        }
        int i12 = this.t0;
        if (i12 != -1) {
            flow.M0 = i12;
        }
        int i13 = this.u0;
        if (i13 != -1) {
            flow.O0 = i13;
        }
        int i14 = this.v0;
        if (i14 != -1) {
            flow.J0 = i14;
        }
        int i15 = this.w0;
        if (i15 != -1) {
            flow.L0 = i15;
        }
        int i16 = this.x0;
        if (i16 != -1) {
            flow.N0 = i16;
        }
        r();
    }

    @Override // androidx.constraintlayout.core.state.HelperReference
    public final HelperWidget s() {
        if (this.n0 == null) {
            this.n0 = new Flow();
        }
        return this.n0;
    }
}
