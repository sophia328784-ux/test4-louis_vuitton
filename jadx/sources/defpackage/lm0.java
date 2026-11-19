package defpackage;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lm0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76059c;
    public final /* synthetic */ PdpTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ProductUiModel f76060e;

    public /* synthetic */ lm0(Function1 function1, PdpTracker pdpTracker, ProductUiModel productUiModel, int i2) {
        this.f76058b = i2;
        this.f76059c = function1;
        this.d = pdpTracker;
        this.f76060e = productUiModel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76058b;
        ProductUiModel productUiModel = this.f76060e;
        PdpTracker pdpTracker = this.d;
        Function1 function1 = this.f76059c;
        ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
        String str = (String) obj2;
        switch (i2) {
            case 0:
                contributionLinkUiModel.getClass();
                str.getClass();
                function1.invoke(contributionLinkUiModel);
                String str2 = productUiModel.f61735b;
                pdpTracker.getClass();
                str2.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnHighlightedContentClickedEvent(str2, str, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                break;
            default:
                contributionLinkUiModel.getClass();
                str.getClass();
                function1.invoke(contributionLinkUiModel);
                String str3 = productUiModel.f61735b;
                pdpTracker.getClass();
                str3.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnEditorialContentItemClickedEvent(str3, str, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                break;
        }
        return Unit.f71739a;
    }
}
