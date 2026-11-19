package defpackage;

import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mm0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpTracker f76324c;
    public final /* synthetic */ ProductUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76325e;

    public /* synthetic */ mm0(PdpTracker pdpTracker, ProductUiModel productUiModel, Function0 function0, int i2) {
        this.f76323b = i2;
        this.f76324c = pdpTracker;
        this.d = productUiModel;
        this.f76325e = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76323b;
        Function0 function0 = this.f76325e;
        ProductUiModel productUiModel = this.d;
        PdpTracker pdpTracker = this.f76324c;
        switch (i2) {
            case 0:
                String str = productUiModel.f61735b;
                pdpTracker.getClass();
                str.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnTryOnClickedEvent(str, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
            default:
                String str2 = productUiModel.f61735b;
                pdpTracker.getClass();
                str2.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnContextualSizeEntryClickedEvent(str2, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
