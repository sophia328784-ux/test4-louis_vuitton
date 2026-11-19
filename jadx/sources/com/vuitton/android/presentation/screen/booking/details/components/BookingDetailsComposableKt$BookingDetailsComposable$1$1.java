package com.vuitton.android.presentation.screen.booking.details.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.booking.list.models.ExperienceBottomSheet;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsComposableKt$BookingDetailsComposable$1$1", f = "BookingDetailsComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class BookingDetailsComposableKt$BookingDetailsComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f54406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f54407c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingDetailsComposableKt$BookingDetailsComposable$1$1(MutableState mutableState, LVModalBottomSheetState lVModalBottomSheetState, Continuation continuation) {
        super(2, continuation);
        this.f54406b = lVModalBottomSheetState;
        this.f54407c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingDetailsComposableKt$BookingDetailsComposable$1$1(this.f54407c, this.f54406b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingDetailsComposableKt$BookingDetailsComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ExperienceBottomSheet experienceBottomSheet = (ExperienceBottomSheet) this.f54407c.getF10755b();
        LVModalBottomSheetState lVModalBottomSheetState = this.f54406b;
        if (experienceBottomSheet != null) {
            lVModalBottomSheetState.e();
        } else {
            lVModalBottomSheetState.b(new k40(28));
        }
        return Unit.f71739a;
    }
}
