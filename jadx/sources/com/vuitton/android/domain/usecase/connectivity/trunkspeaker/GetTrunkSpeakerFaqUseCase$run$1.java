package com.vuitton.android.domain.usecase.connectivity.trunkspeaker;

import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerFaqUseCase", f = "GetTrunkSpeakerFaqUseCase.kt", l = {12}, m = "run", v = 2)
final class GetTrunkSpeakerFaqUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrunkSpeakerRepository f49814b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49815c;
    public final /* synthetic */ GetTrunkSpeakerFaqUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49816e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTrunkSpeakerFaqUseCase$run$1(GetTrunkSpeakerFaqUseCase getTrunkSpeakerFaqUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getTrunkSpeakerFaqUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49815c = obj;
        this.f49816e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
