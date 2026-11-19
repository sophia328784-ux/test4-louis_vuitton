package com.vuitton.android.presentation.screen.booking.list;

import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingListViewState;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function5;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingListViewState;", "isLoading", "", "hasError", "onGoingsList", "", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;", "additionalList", "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl$listViewState$1", f = "BookingListViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
public final class BookingListViewModelImpl$listViewState$1 extends SuspendLambda implements Function5<Boolean, Boolean, List<? extends BookingUiModel>, List<? extends BookingAdditionalUiModel>, Continuation<? super BookingListViewState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ boolean f54585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ boolean f54586c;
    public /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ List f54587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f54588f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingListViewModelImpl$listViewState$1(BookingListViewModelImpl bookingListViewModelImpl, Continuation continuation) {
        super(5, continuation);
        this.f54588f = bookingListViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        boolean zBooleanValue2 = ((Boolean) obj2).booleanValue();
        BookingListViewModelImpl$listViewState$1 bookingListViewModelImpl$listViewState$1 = new BookingListViewModelImpl$listViewState$1(this.f54588f, (Continuation) obj5);
        bookingListViewModelImpl$listViewState$1.f54585b = zBooleanValue;
        bookingListViewModelImpl$listViewState$1.f54586c = zBooleanValue2;
        bookingListViewModelImpl$listViewState$1.d = (List) obj3;
        bookingListViewModelImpl$listViewState$1.f54587e = (List) obj4;
        return bookingListViewModelImpl$listViewState$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z = this.f54585b;
        boolean z2 = this.f54586c;
        List list = this.d;
        List list2 = this.f54587e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return new BookingListViewState(this.f54588f.f54577i, z, z2, list, list2);
    }
}
