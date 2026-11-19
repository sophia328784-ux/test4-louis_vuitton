package defpackage;

import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class mx implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76377b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedTracker f76378c;

    public /* synthetic */ mx(FeedTracker feedTracker, int i2) {
        this.f76377b = i2;
        this.f76378c = feedTracker;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76377b;
        FeedTracker feedTracker = this.f76378c;
        int iIntValue = ((Integer) obj).intValue();
        switch (i2) {
            case 0:
                FeedTab feedTab = FeedTab.DISCOVER;
                feedTracker.getClass();
                feedTab.getClass();
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.ScrollPercentageReachedEvent(feedTab, iIntValue)));
                break;
            default:
                FeedTab feedTab2 = FeedTab.FOR_YOU;
                feedTracker.getClass();
                feedTab2.getClass();
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(new FeedTrackingUiModel.ScrollPercentageReachedEvent(feedTab2, iIntValue)));
                break;
        }
        return Unit.f71739a;
    }
}
