package defpackage;

import androidx.activity.result.ActivityResultCaller;
import com.lightup.sdk.device.devicemanagement.LightupDevice;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.vuitton.android.presentation.screen.connectivity.lightup.LightUpActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.helper.LVLightUpHelper;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpScanFragmentInterface;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.KeepAllMonitoringManager;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManager$WhenMappings;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.LVLightUpMonitoringManagerKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.manager.SneakerMonitoringManager;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class s90 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LightUpActivity f79754c;
    public final /* synthetic */ LightupDevice d;

    public /* synthetic */ s90(LightUpActivity lightUpActivity, LightupDevice lightupDevice, int i2) {
        this.f79753b = i2;
        this.f79754c = lightUpActivity;
        this.d = lightupDevice;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79753b;
        LightupDevice lightupDevice = this.d;
        LightUpActivity lightUpActivity = this.f79754c;
        switch (i2) {
            case 0:
                LightUpActivity.Companion companion = LightUpActivity.t;
                LightUpDetailFragment lightUpDetailFragmentQ = lightUpActivity.Q();
                if (lightUpDetailFragmentQ == null || !lightUpDetailFragmentQ.isAdded() || lightUpDetailFragmentQ.isHidden()) {
                    return;
                }
                lightupDevice.getClass();
                LightupDeviceType type = lightupDevice.getType();
                type.getClass();
                LVLightUpDeviceType lVLightUpDeviceTypeA = LVLightUpMonitoringManagerKt.a(type);
                int i3 = lVLightUpDeviceTypeA == null ? -1 : LVLightUpMonitoringManager$WhenMappings.f56161b[lVLightUpDeviceTypeA.ordinal()];
                if (i3 == 1) {
                    KeepAllMonitoringManager.f56158c = lightupDevice;
                } else if (i3 == 2) {
                    SneakerMonitoringManager.f56165c = lightupDevice;
                }
                lightUpDetailFragmentQ.k0();
                return;
            default:
                LightUpActivity.Companion companion2 = LightUpActivity.t;
                List<ActivityResultCaller> listM = lightUpActivity.getSupportFragmentManager().M();
                listM.getClass();
                for (ActivityResultCaller activityResultCaller : listM) {
                    if (activityResultCaller instanceof LightUpScanFragmentInterface) {
                        LightUpScanFragmentInterface lightUpScanFragmentInterface = (LightUpScanFragmentInterface) activityResultCaller;
                        LightupDeviceType lightupDeviceType = LVLightUpHelper.f56151a;
                        if (lightupDeviceType == null) {
                            Intrinsics.h("lightUpDeviceType");
                            throw null;
                        }
                        lightUpScanFragmentInterface.h(lightupDevice, lightupDeviceType);
                    }
                }
                return;
        }
    }
}
