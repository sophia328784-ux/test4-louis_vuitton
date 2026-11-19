package defpackage;

import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class nf implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModel f76514c;
    public final /* synthetic */ Function0 d;

    public /* synthetic */ nf(PrebookSummaryViewModel prebookSummaryViewModel, Function0 function0, int i2) {
        this.f76513b = i2;
        this.f76514c = prebookSummaryViewModel;
        this.d = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f76513b;
        Function0 function0 = this.d;
        PrebookSummaryViewModel prebookSummaryViewModel = this.f76514c;
        switch (i2) {
            case 0:
                prebookSummaryViewModel.A5(null);
                function0.mo47invoke();
                break;
            default:
                prebookSummaryViewModel.S3(BookingSummaryTrackingUiModel.CloseConfirmedEvent.f54805a);
                prebookSummaryViewModel.Ib();
                function0.mo47invoke();
                break;
        }
        return Unit.f71739a;
    }
}
