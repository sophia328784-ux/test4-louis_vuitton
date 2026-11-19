package defpackage;

import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zx implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f81740c;
    public final /* synthetic */ FeedTab d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ EditorialModuleUiModel f81741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f81742f;
    public final /* synthetic */ Function1 g;

    public /* synthetic */ zx(Function1 function1, FeedTracker feedTracker, FeedTab feedTab, EditorialModuleUiModel editorialModuleUiModel, int i2) {
        this.f81739b = 0;
        this.g = function1;
        this.f81740c = feedTracker;
        this.d = feedTab;
        this.f81741e = editorialModuleUiModel;
        this.f81742f = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f81739b;
        Function1 function1 = this.g;
        int i3 = this.f81742f;
        EditorialModuleUiModel editorialModuleUiModel = this.f81741e;
        FeedTab feedTab = this.d;
        FeedTracker feedTracker = this.f81740c;
        ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
        switch (i2) {
            case 0:
                function1.invoke(contributionLinkUiModel);
                String str = ((EditorialModuleUiModel.SlideShowUiModel) editorialModuleUiModel).f50852a;
                feedTracker.getClass();
                feedTab.getClass();
                str.getClass();
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.OnHitSlideShowItemEvent(feedTab, str, i3 + 1)));
                break;
            case 1:
                feedTracker.a(feedTab, "CarouselLargeMultiple", ((EditorialModuleUiModel.CarouselLMultipleUiModel) editorialModuleUiModel).f50818a, i3);
                function1.invoke(contributionLinkUiModel);
                break;
            default:
                feedTracker.a(feedTab, "CarouselLargeSingle", ((EditorialModuleUiModel.CarouselLSingleUiModel) editorialModuleUiModel).f50821a, i3);
                function1.invoke(contributionLinkUiModel);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ zx(FeedTracker feedTracker, FeedTab feedTab, EditorialModuleUiModel editorialModuleUiModel, int i2, Function1 function1, int i3) {
        this.f81739b = i3;
        this.f81740c = feedTracker;
        this.d = feedTab;
        this.f81741e = editorialModuleUiModel;
        this.f81742f = i2;
        this.g = function1;
    }
}
