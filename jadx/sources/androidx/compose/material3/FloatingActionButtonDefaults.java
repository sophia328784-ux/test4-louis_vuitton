package androidx.compose.material3;

import androidx.compose.material3.tokens.FabPrimaryContainerTokens;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/FloatingActionButtonDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class FloatingActionButtonDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f6965a = 0;

    static {
        Dp.Companion companion = Dp.f11004c;
    }

    public static FloatingActionButtonElevation a(int i2) {
        int i3 = i2 & 1;
        float f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        float f3 = i3 != 0 ? FabPrimaryContainerTokens.f7783b : 0.0f;
        float f4 = (i2 & 2) != 0 ? FabPrimaryContainerTokens.f7785e : 0.0f;
        float f5 = (i2 & 4) != 0 ? FabPrimaryContainerTokens.f7784c : 0.0f;
        if ((i2 & 8) != 0) {
            f2 = FabPrimaryContainerTokens.d;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return new FloatingActionButtonElevation(f3, f4, f5, f2, null);
    }
}
