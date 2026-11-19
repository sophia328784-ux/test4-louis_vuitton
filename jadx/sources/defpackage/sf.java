package defpackage;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.MyExperiencesTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sf implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f79785c;
    public final /* synthetic */ Function1 d;

    public /* synthetic */ sf(BookingListViewModelImpl bookingListViewModelImpl, Function1 function1, int i2) {
        this.f79784b = i2;
        this.f79785c = bookingListViewModelImpl;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79784b;
        Function1 function1 = this.d;
        BookingListViewModelImpl bookingListViewModelImpl = this.f79785c;
        switch (i2) {
            case 0:
                BookingAdditionalUiModel bookingAdditionalUiModel = (BookingAdditionalUiModel) obj;
                bookingAdditionalUiModel.getClass();
                bookingListViewModelImpl.zc(new MyExperiencesTrackingUiModel.AdditionalExperienceClickEvent(bookingAdditionalUiModel.f54603a));
                function1.invoke(bookingAdditionalUiModel.f54604b);
                break;
            default:
                ContributionLinkUiModel contributionLinkUiModel = (ContributionLinkUiModel) obj;
                contributionLinkUiModel.getClass();
                bookingListViewModelImpl.v.setValue(Boolean.TRUE);
                function1.invoke(contributionLinkUiModel);
                break;
        }
        return Unit.f71739a;
    }
}
