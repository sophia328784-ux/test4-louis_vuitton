package com.vuitton.android.presentation.screen.booking.pass;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.booking.GetBookingPassUseCase;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import dagger.assisted.Assisted;
import dagger.assisted.AssistedFactory;
import dagger.assisted.AssistedInject;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u001b\b\u0007\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModel;", "", "bookingId", "Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;", "getBookingPassUseCase", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/domain/usecase/booking/GetBookingPassUseCase;)V", "Factory", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingPassViewModelImpl extends ViewModel implements BookingPassViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetBookingPassUseCase f54639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f54640c;
    public final StateFlow d;

    @AssistedFactory
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Factory {
        BookingPassViewModelImpl a(String str);
    }

    @AssistedInject
    public BookingPassViewModelImpl(@Assisted String str, GetBookingPassUseCase getBookingPassUseCase) {
        str.getClass();
        getBookingPassUseCase.getClass();
        this.f54638a = str;
        this.f54639b = getBookingPassUseCase;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(BookingPassViewState.Loading.f54650a);
        this.f54640c = mutableStateFlowA;
        this.d = FlowKt.b(mutableStateFlowA);
        ba();
    }

    @Override // com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModel
    public final void ba() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new BookingPassViewModelImpl$getBookingPass$1(this, null), 3);
    }
}
