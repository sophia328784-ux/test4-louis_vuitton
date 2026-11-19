package defpackage;

import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.tracking.MostPurchasedWithTrackingUiModel;
import com.vuitton.android.presentation.tracking.MostPurchasedWithTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gx implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f69505c;

    public /* synthetic */ gx(FeedTracker feedTracker, int i2) {
        this.f69504b = i2;
        this.f69505c = feedTracker;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69504b;
        FeedTracker feedTracker = this.f69505c;
        switch (i2) {
            case 0:
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OpenMyLVEvent.f57972a));
                break;
            case 1:
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OnSwipeOnOngoingOrdersEvent.f57970a));
                break;
            default:
                feedTracker.f57933a.a(MostPurchasedWithTrackingUiModelKt.a(MostPurchasedWithTrackingUiModel.Swiped.f65826a));
                break;
        }
        return Unit.f71739a;
    }
}
