package com.vuitton.android.domain.usecase.connectivity.trunkspeaker;

import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerVideoUseCase", f = "GetTrunkSpeakerVideoUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetTrunkSpeakerVideoUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrunkSpeakerRepository f49824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49825c;
    public final /* synthetic */ GetTrunkSpeakerVideoUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49826e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTrunkSpeakerVideoUseCase$run$1(GetTrunkSpeakerVideoUseCase getTrunkSpeakerVideoUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getTrunkSpeakerVideoUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49825c = obj;
        this.f49826e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
