package com.vuitton.android.domain.usecase.connectivity.earphone;

import com.vuitton.android.domain.repository.EarphoneRepository;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.connectivity.earphone.GetEarphoneSkuListUseCase", f = "GetEarphoneSkuListUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetEarphoneSkuListUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public EarphoneRepository f49764b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49765c;
    public final /* synthetic */ GetEarphoneSkuListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49766e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetEarphoneSkuListUseCase$run$1(GetEarphoneSkuListUseCase getEarphoneSkuListUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = getEarphoneSkuListUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49765c = obj;
        this.f49766e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
