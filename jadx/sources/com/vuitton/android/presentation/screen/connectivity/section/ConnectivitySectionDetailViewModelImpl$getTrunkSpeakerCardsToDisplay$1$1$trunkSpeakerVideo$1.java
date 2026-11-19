package com.vuitton.android.presentation.screen.connectivity.section;

import com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerVideoUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1", f = "ConnectivitySectionDetailViewModelImpl.kt", l = {123}, m = "invokeSuspend", v = 2)
final class ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Video>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailViewModelImpl f56302c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1(ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f56302c = connectivitySectionDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1(this.f56302c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivitySectionDetailViewModelImpl$getTrunkSpeakerCardsToDisplay$1$1$trunkSpeakerVideo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56301b;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        GetTrunkSpeakerVideoUseCase getTrunkSpeakerVideoUseCase = this.f56302c.f56273e;
        this.f56301b = 1;
        Object objA = getTrunkSpeakerVideoUseCase.a(this);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }
}
