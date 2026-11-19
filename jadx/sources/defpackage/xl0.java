package defpackage;

import android.content.Intent;
import android.net.Uri;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.helper.LVConnectHelper;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkRoomHelper;
import com.vuitton.android.presentation.screen.pdp.PdpActivity;
import com.vuitton.android.presentation.screen.pdp.PdpDestinations;
import com.vuitton.android.presentation.screen.pdp.PdpDestinationsKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xl0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpActivity f81153c;

    public /* synthetic */ xl0(PdpActivity pdpActivity, int i2) {
        this.f81152b = i2;
        this.f81153c = pdpActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f81152b;
        PdpActivity pdpActivity = this.f81153c;
        switch (i2) {
            case 0:
                PdpActivity.Companion companion = PdpActivity.D;
                pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToAICompanionPage.f61103a, pdpActivity));
                pdpActivity.overridePendingTransition(0, 0);
                return Unit.f71739a;
            case 1:
                PdpActivity.Companion companion2 = PdpActivity.D;
                List<LPDevice> devices = LPDeviceManager.getInstance().getDevices();
                devices.getClass();
                pdpActivity.startActivity(TrunkRoomHelper.b(devices).isEmpty() ? PdpDestinationsKt.a(PdpDestinations.ToTrunkSpeakerSectionToPage.f61116a, pdpActivity) : PdpDestinationsKt.a(PdpDestinations.ToWifiDeviceToPage.f61122a, pdpActivity));
                return Unit.f71739a;
            case 2:
                PdpActivity.Companion companion3 = PdpActivity.D;
                LVConnectHelper.a(pdpActivity);
                return Unit.f71739a;
            case 3:
                PdpActivity.Companion companion4 = PdpActivity.D;
                pdpActivity.I().G();
                pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToCatalogAfterStoreModePage.f61106a, pdpActivity));
                return Unit.f71739a;
            case 4:
                PdpActivity.Companion companion5 = PdpActivity.D;
                pdpActivity.startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + pdpActivity.getPackageName())));
                return Unit.f71739a;
            case 5:
                PdpActivity.Companion companion6 = PdpActivity.D;
                pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToPrivacyPolicyPage.f61110a, pdpActivity));
                return Unit.f71739a;
            case 6:
                PdpActivity.Companion companion7 = PdpActivity.D;
                ((PermissionsViewModel) pdpActivity.q.getF71699b()).A6(true);
                return Unit.f71739a;
            case 7:
                PdpActivity.Companion companion8 = PdpActivity.D;
                ((PermissionsViewModel) pdpActivity.q.getF71699b()).aa((2 & 1) == 0, new ul0(8));
                return Unit.f71739a;
            case 8:
                ChatLifecycleObserver chatLifecycleObserver = pdpActivity.u;
                if (chatLifecycleObserver != null) {
                    if (chatLifecycleObserver == null) {
                        Intrinsics.h("chatLifecycleObserver");
                        throw null;
                    }
                    chatLifecycleObserver.c(pdpActivity);
                }
                return Unit.f71739a;
            case 9:
                PdpActivity.Companion companion9 = PdpActivity.D;
                ProductUiModel productUiModel = ((PdpViewState) pdpActivity.I().getY0().getValue()).f61566b;
                String str = productUiModel != null ? productUiModel.t0 : null;
                if (str != null) {
                    ShareUtilsKt.c(pdpActivity, str, null, 28);
                }
                return Unit.f71739a;
            case 10:
                PdpActivity.Companion companion10 = PdpActivity.D;
                if (pdpActivity.I().N7()) {
                    pdpActivity.startActivity(PdpDestinationsKt.a(PdpDestinations.ToShadeFinderPage.f61114a, pdpActivity));
                } else {
                    pdpActivity.I().d5(LegalConsentContextUiModel.SHADE_FINDER);
                }
                return Unit.f71739a;
            default:
                PdpActivity.Companion companion11 = PdpActivity.D;
                pdpActivity.I().F0();
                return Unit.f71739a;
        }
    }
}
