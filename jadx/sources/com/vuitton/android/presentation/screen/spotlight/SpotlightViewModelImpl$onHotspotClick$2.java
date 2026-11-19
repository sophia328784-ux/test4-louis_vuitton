package com.vuitton.android.presentation.screen.spotlight;

import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
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
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$onHotspotClick$2", f = "SpotlightViewModelImpl.kt", l = {232}, m = "invokeSuspend", v = 2)
final class SpotlightViewModelImpl$onHotspotClick$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SpotlightViewModelImpl f64548c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightViewModelImpl$onHotspotClick$2(Continuation continuation, SpotlightViewModelImpl spotlightViewModelImpl) {
        super(2, continuation);
        this.f64548c = spotlightViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SpotlightViewModelImpl$onHotspotClick$2(continuation, this.f64548c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightViewModelImpl$onHotspotClick$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64547b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f64547b = 1;
            if (DelayKt.b(200L, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        MutableStateFlow mutableStateFlow = this.f64548c.u;
        mutableStateFlow.setValue(SpotlightContainerStateUiModel.a((SpotlightContainerStateUiModel) mutableStateFlow.getValue(), false, false, false, true, false, true, false, true, false, false, false, 1537));
        return Unit.f71739a;
    }
}
