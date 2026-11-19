package defpackage;

import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qg implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModel f79087c;

    public /* synthetic */ qg(PrebookSummaryViewModel prebookSummaryViewModel, int i2) {
        this.f79086b = i2;
        this.f79087c = prebookSummaryViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79086b;
        PrebookSummaryViewModel prebookSummaryViewModel = this.f79087c;
        switch (i2) {
            case 0:
                prebookSummaryViewModel.S3(BookingSummaryTrackingUiModel.ContinueEvent.f54807a);
                prebookSummaryViewModel.E7();
                break;
            default:
                prebookSummaryViewModel.S3(BookingSummaryTrackingUiModel.CloseAbortedEvent.f54804a);
                prebookSummaryViewModel.A5(null);
                break;
        }
        return Unit.f71739a;
    }
}
