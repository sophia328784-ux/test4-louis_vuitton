package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.lightup.GetSneakerFaqUseCase", f = "GetSneakerFaqUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetSneakerFaqUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LightUpRepository f49807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49808c;
    public final /* synthetic */ GetSneakerFaqUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49809e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSneakerFaqUseCase$run$1(GetSneakerFaqUseCase getSneakerFaqUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getSneakerFaqUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49808c = obj;
        this.f49809e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
