package defpackage;

import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class jf implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f71373c;

    public /* synthetic */ jf(BookingListViewModelImpl bookingListViewModelImpl, int i2) {
        this.f71372b = i2;
        this.f71373c = bookingListViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f71372b;
        BookingListViewModelImpl bookingListViewModelImpl = this.f71373c;
        switch (i2) {
            case 0:
                bookingListViewModelImpl.Ac(null);
                break;
            default:
                MutableStateFlow mutableStateFlow = bookingListViewModelImpl.v;
                if (((Boolean) mutableStateFlow.getValue()).booleanValue()) {
                    bookingListViewModelImpl.O8();
                    mutableStateFlow.setValue(Boolean.FALSE);
                }
                break;
        }
        return Unit.f71739a;
    }
}
