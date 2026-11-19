package com.vuitton.android.presentation.screen.booking.summary.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.booking.summary.models.SummaryBottomSheet;
import defpackage.k40;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.summary.components.BookingSummaryComposableKt$BookingSummaryComposable$2$1", f = "BookingSummaryComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class BookingSummaryComposableKt$BookingSummaryComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f54770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f54771c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingSummaryComposableKt$BookingSummaryComposable$2$1(MutableState mutableState, LVModalBottomSheetState lVModalBottomSheetState, Continuation continuation) {
        super(2, continuation);
        this.f54770b = lVModalBottomSheetState;
        this.f54771c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingSummaryComposableKt$BookingSummaryComposable$2$1(this.f54771c, this.f54770b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingSummaryComposableKt$BookingSummaryComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SummaryBottomSheet summaryBottomSheet = (SummaryBottomSheet) this.f54771c.getF10755b();
        LVModalBottomSheetState lVModalBottomSheetState = this.f54770b;
        if (summaryBottomSheet != null) {
            lVModalBottomSheetState.e();
        } else {
            lVModalBottomSheetState.b(new k40(28));
        }
        return Unit.f71739a;
    }
}
