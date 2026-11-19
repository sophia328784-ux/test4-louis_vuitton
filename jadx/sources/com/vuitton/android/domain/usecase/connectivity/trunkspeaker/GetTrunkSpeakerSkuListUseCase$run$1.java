package com.vuitton.android.domain.usecase.connectivity.trunkspeaker;

import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.trunkspeaker.GetTrunkSpeakerSkuListUseCase", f = "GetTrunkSpeakerSkuListUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetTrunkSpeakerSkuListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TrunkSpeakerRepository f49819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49820c;
    public final /* synthetic */ GetTrunkSpeakerSkuListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49821e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTrunkSpeakerSkuListUseCase$run$1(GetTrunkSpeakerSkuListUseCase getTrunkSpeakerSkuListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getTrunkSpeakerSkuListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49820c = obj;
        this.f49821e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
