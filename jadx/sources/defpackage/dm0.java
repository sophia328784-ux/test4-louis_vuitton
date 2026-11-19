package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dm0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpTracker f68618c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ dm0(PdpTracker pdpTracker, Function0 function0, int i2) {
        this.f68617b = i2;
        this.f68618c = pdpTracker;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68617b;
        Function0 function0 = this.d;
        PdpTracker pdpTracker = this.f68618c;
        switch (i2) {
            case 0:
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.NotifyMeBottomSheetEvent.f61593a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
            case 1:
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCancelProductCustomizationBottomSheetConfirmEvent.f61608a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
            case 2:
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnShareButtonEvent.f61645a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
            case 3:
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnAddToWishlistEvent.f61597a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
            default:
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnBannerArModelClickEvent.f61599a, pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
