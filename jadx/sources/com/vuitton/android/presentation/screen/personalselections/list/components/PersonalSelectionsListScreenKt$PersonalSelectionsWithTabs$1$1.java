package com.vuitton.android.presentation.screen.personalselections.list.components;

import androidx.compose.foundation.pager.PagerState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1", f = "PersonalSelectionsListScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerState f62618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f62619c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1(PagerState pagerState, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f62618b = pagerState;
        this.f62619c = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1(this.f62618b, this.f62619c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsListScreenKt$PersonalSelectionsWithTabs$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f62619c.invoke(this.f62618b.k() == 0 ? PersonalSelectionsListTrackingUiModel.InStoreScreen.f62640a : PersonalSelectionsListTrackingUiModel.AdvisorCurationScreen.f62637a);
        return Unit.f71739a;
    }
}
