package defpackage;

import androidx.compose.material3.SheetDefaultsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fw0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69223c;
    public final /* synthetic */ float d;

    public /* synthetic */ fw0(float f2, MutableState mutableState) {
        this.f69222b = 2;
        this.d = f2;
        this.f69223c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        float fU1;
        int i2 = this.f69222b;
        Object obj = this.f69223c;
        float f2 = this.d;
        switch (i2) {
            case 0:
                float f3 = SheetDefaultsKt.f7201a;
                fU1 = ((Density) obj).u1(f2);
                break;
            case 1:
                float f4 = SheetDefaultsKt.f7201a;
                fU1 = ((Density) obj).u1(f2);
                break;
            default:
                MutableState mutableState = (MutableState) obj;
                if (Dp.a(((Dp) mutableState.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM) > 0) {
                    f2 = ((Dp) mutableState.getF10755b()).f11006b;
                }
                return new Dp(f2);
        }
        return Float.valueOf(fU1);
    }

    public /* synthetic */ fw0(Density density, float f2, int i2) {
        this.f69222b = i2;
        this.f69223c = density;
        this.d = f2;
    }
}
