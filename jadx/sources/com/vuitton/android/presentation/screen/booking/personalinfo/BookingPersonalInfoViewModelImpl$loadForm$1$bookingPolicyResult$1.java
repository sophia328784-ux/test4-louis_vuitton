package com.vuitton.android.presentation.screen.booking.personalinfo;

import com.vuitton.foundation.model.domain.model.booking.BookingExternalContent;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1", f = "BookingPersonalInfoViewModelImpl.kt", l = {126}, m = "invokeSuspend", v = 2)
final class BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super BookingExternalContent>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModelImpl f54685c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f54685c = bookingPersonalInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1(this.f54685c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54684b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f54684b = 1;
            Object objYc = BookingPersonalInfoViewModelImpl.yc(this.f54685c, this);
            return objYc == coroutineSingletons ? coroutineSingletons : objYc;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            return obj;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
