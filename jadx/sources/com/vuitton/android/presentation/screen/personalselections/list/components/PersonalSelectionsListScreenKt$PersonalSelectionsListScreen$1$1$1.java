package com.vuitton.android.presentation.screen.personalselections.list.components;

import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSelectionsListTrackingUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1", f = "PersonalSelectionsListScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f62616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsListTrackingUiModel f62617c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1(Function1 function1, PersonalSelectionsListTrackingUiModel personalSelectionsListTrackingUiModel, Continuation continuation) {
        super(2, continuation);
        this.f62616b = function1;
        this.f62617c = personalSelectionsListTrackingUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1(this.f62616b, this.f62617c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f62616b.invoke(this.f62617c);
        return Unit.f71739a;
    }
}
