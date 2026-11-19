package com.vuitton.android.domain.usecase.connectivity.horizon;

import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.horizon.GetHorizonSpeakerTutorialUseCase", f = "GetHorizonSpeakerTutorialUseCase.kt", l = {13, 13}, m = "run", v = 2)
final class GetHorizonSpeakerTutorialUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public HorizonSpeakerRepository f49784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49785c;
    public final /* synthetic */ GetHorizonSpeakerTutorialUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49786e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetHorizonSpeakerTutorialUseCase$run$1(GetHorizonSpeakerTutorialUseCase getHorizonSpeakerTutorialUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getHorizonSpeakerTutorialUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49785c = obj;
        this.f49786e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
