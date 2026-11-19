package com.vuitton.android.presentation.screen.personalselections.detail.instore.components;

import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.PersonalSelectionActions;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.instore.components.PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1", f = "PersonalSelectionsInStoreComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function1 f62544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppsFlyerUiTracker f62545c;
    public final /* synthetic */ PersonalSelectionsInStoreViewState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1(Function1 function1, AppsFlyerUiTracker appsFlyerUiTracker, PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState, Continuation continuation) {
        super(2, continuation);
        this.f62544b = function1;
        this.f62545c = appsFlyerUiTracker;
        this.d = personalSelectionsInStoreViewState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1(this.f62544b, this.f62545c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsInStoreComposableKt$PersonalSelectionsInStoreComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        this.f62544b.invoke(PersonalSelectionsInStoreTrackingUiModel.InStoreSelectionScreen.f62551a);
        PersonalSelectionActions personalSelectionActions = PersonalSelectionActions.OPENED;
        String str = ((PersonalSelectionsInStoreViewState.Success) this.d).f62561f.f62587a;
        String str2 = AppsFlyerUiTracker.f65809b;
        this.f62545c.f(personalSelectionActions, null, null, str);
        return Unit.f71739a;
    }
}
