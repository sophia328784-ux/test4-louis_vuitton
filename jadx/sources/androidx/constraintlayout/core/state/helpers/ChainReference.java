package androidx.constraintlayout.core.state.helpers;

import androidx.constraintlayout.core.state.HelperReference;
import androidx.constraintlayout.core.state.State;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ChainReference extends HelperReference {
    public float n0;
    public final HashMap o0;
    public final HashMap p0;
    public final HashMap q0;
    public HashMap r0;
    public HashMap s0;
    public State.Chain t0;

    public ChainReference(State state, State.Helper helper) {
        super(state, helper);
        this.n0 = 0.5f;
        this.o0 = new HashMap();
        this.p0 = new HashMap();
        this.q0 = new HashMap();
        this.t0 = State.Chain.SPREAD;
    }

    public final float t(String str) {
        HashMap map = this.s0;
        return (map == null || !map.containsKey(str)) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((Float) this.s0.get(str)).floatValue();
    }

    public final float u(String str) {
        HashMap map = this.q0;
        return map.containsKey(str) ? ((Float) map.get(str)).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public final float v(String str) {
        HashMap map = this.r0;
        return (map == null || !map.containsKey(str)) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : ((Float) this.r0.get(str)).floatValue();
    }

    public final float w(String str) {
        HashMap map = this.p0;
        return map.containsKey(str) ? ((Float) map.get(str)).floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }
}
