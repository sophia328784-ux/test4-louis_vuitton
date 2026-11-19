package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.lightup.GetKeepAllFaqUseCase", f = "GetKeepAllFaqUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetKeepAllFaqUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LightUpRepository f49795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49796c;
    public final /* synthetic */ GetKeepAllFaqUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49797e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetKeepAllFaqUseCase$run$1(GetKeepAllFaqUseCase getKeepAllFaqUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getKeepAllFaqUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49796c = obj;
        this.f49797e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
