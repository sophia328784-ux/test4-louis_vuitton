package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import androidx.constraintlayout.core.utils.GridCore;
import androidx.constraintlayout.core.widgets.HelperWidget;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class GridReference extends HelperReference {
    public String A0;
    public int B0;
    public GridCore n0;
    public int o0;
    public int p0;
    public int q0;
    public int r0;
    public int s0;
    public int t0;
    public int u0;
    public float v0;
    public float w0;
    public String x0;
    public String y0;
    public String z0;

    public GridReference(State state, State.Helper helper) {
        super(state, helper);
        this.o0 = 0;
        this.p0 = 0;
        this.q0 = 0;
        this.r0 = 0;
        if (helper == State.Helper.ROW) {
            this.t0 = 1;
        } else if (helper == State.Helper.COLUMN) {
            this.u0 = 1;
        }
    }

    @Override // androidx.constraintlayout.core.state.HelperReference, androidx.constraintlayout.core.state.ConstraintReference, androidx.constraintlayout.core.state.Reference
    public final void apply() {
        s();
        GridCore gridCore = this.n0;
        int i2 = this.s0;
        gridCore.getClass();
        if ((i2 == 0 || i2 == 1) && gridCore.W0 != i2) {
            gridCore.W0 = i2;
        }
        int i3 = this.t0;
        if (i3 != 0) {
            GridCore gridCore2 = this.n0;
            if (i3 > 50) {
                gridCore2.getClass();
            } else if (gridCore2.N0 != i3) {
                gridCore2.N0 = i3;
                gridCore2.n0();
                gridCore2.j0();
            }
        }
        int i4 = this.u0;
        if (i4 != 0) {
            GridCore gridCore3 = this.n0;
            if (i4 > 50) {
                gridCore3.getClass();
            } else if (gridCore3.P0 != i4) {
                gridCore3.P0 = i4;
                gridCore3.n0();
                gridCore3.j0();
            }
        }
        float f2 = this.v0;
        if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            GridCore gridCore4 = this.n0;
            if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                gridCore4.getClass();
            } else if (gridCore4.Q0 != f2) {
                gridCore4.Q0 = f2;
            }
        }
        float f3 = this.w0;
        if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            GridCore gridCore5 = this.n0;
            if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                gridCore5.getClass();
            } else if (gridCore5.R0 != f3) {
                gridCore5.R0 = f3;
            }
        }
        String str = this.x0;
        if (str != null && !str.isEmpty()) {
            GridCore gridCore6 = this.n0;
            String str2 = this.x0;
            String str3 = gridCore6.S0;
            if (str3 == null || !str3.equals(str2)) {
                gridCore6.S0 = str2;
            }
        }
        String str4 = this.y0;
        if (str4 != null && !str4.isEmpty()) {
            GridCore gridCore7 = this.n0;
            String str5 = this.y0;
            String str6 = gridCore7.T0;
            if (str6 == null || !str6.equals(str5)) {
                gridCore7.T0 = str5;
            }
        }
        String str7 = this.z0;
        if (str7 != null && !str7.isEmpty()) {
            GridCore gridCore8 = this.n0;
            String str8 = this.z0;
            String str9 = gridCore8.U0;
            if (str9 == null || !str9.equals(str8.toString())) {
                gridCore8.L0 = false;
                gridCore8.U0 = str8.toString();
            }
        }
        String str10 = this.A0;
        if (str10 != null && !str10.isEmpty()) {
            GridCore gridCore9 = this.n0;
            String str11 = this.A0;
            String str12 = gridCore9.V0;
            if (str12 == null || !str12.equals(str11)) {
                gridCore9.L0 = false;
                gridCore9.V0 = str11;
            }
        }
        GridCore gridCore10 = this.n0;
        gridCore10.b1 = this.B0;
        int i5 = this.o0;
        gridCore10.A0 = i5;
        gridCore10.C0 = i5;
        gridCore10.D0 = i5;
        gridCore10.B0 = this.p0;
        gridCore10.y0 = this.q0;
        gridCore10.z0 = this.r0;
        r();
    }

    @Override // androidx.constraintlayout.core.state.HelperReference
    public final HelperWidget s() {
        if (this.n0 == null) {
            this.n0 = new GridCore();
        }
        return this.n0;
    }
}
