package com.vuitton.android.presentation.screen.booking.pass;

import com.vuitton.android.domain.usecase.booking.GetBookingPassUseCase;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModelMapperKt;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassUiModel;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassViewState;
import com.vuitton.foundation.model.domain.model.booking.BookingInfo;
import com.vuitton.foundation.model.domain.model.booking.BookingPass;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl$getBookingPass$1", f = "BookingPassViewModelImpl.kt", l = {38}, m = "invokeSuspend", v = 2)
final class BookingPassViewModelImpl$getBookingPass$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54641b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPassViewModelImpl f54642c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPassViewModelImpl$getBookingPass$1(BookingPassViewModelImpl bookingPassViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f54642c = bookingPassViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingPassViewModelImpl$getBookingPass$1(this.f54642c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingPassViewModelImpl$getBookingPass$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        BookingPassViewModelImpl bookingPassViewModelImpl = this.f54642c;
        MutableStateFlow mutableStateFlow = bookingPassViewModelImpl.f54640c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54641b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetBookingPassUseCase getBookingPassUseCase = bookingPassViewModelImpl.f54639b;
            String str = bookingPassViewModelImpl.f54638a;
            this.f54641b = 1;
            objA = getBookingPassUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            BookingPass bookingPass = (BookingPass) objA;
            bookingPass.getClass();
            String str2 = bookingPass.f66751a;
            String str3 = bookingPass.f66752b;
            String str4 = bookingPass.f66753c.f67108a;
            List list = bookingPass.d;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BookingUiModelMapperKt.b((BookingInfo) it.next()));
            }
            mutableStateFlow.setValue(new BookingPassViewState.Success(new BookingPassUiModel(str2, str3, str4, arrayList, bookingPass.f66754e.f67108a)));
        }
        if (Result.a(objA) != null) {
            mutableStateFlow.setValue(BookingPassViewState.Error.f54649a);
        }
        return Unit.f71739a;
    }
}
