package com.vuitton.android.presentation.screen.booking.summary.components;

import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.booking.summary.models.BookingSummaryTrackingUiModel;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt$BookingSummaryComposable$1$1", f = "BookingSummaryComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class BookingSummaryComposableKt$BookingSummaryComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModel f54769b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingSummaryComposableKt$BookingSummaryComposable$1$1(PrebookSummaryViewModel prebookSummaryViewModel, Continuation continuation) {
        super(2, continuation);
        this.f54769b = prebookSummaryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingSummaryComposableKt$BookingSummaryComposable$1$1(this.f54769b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingSummaryComposableKt$BookingSummaryComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f54769b.S3(BookingSummaryTrackingUiModel.SummaryScreen.f54812a);
        return Unit.f71739a;
    }
}
