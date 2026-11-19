package com.vuitton.android.domain.usecase.authentication.oauth;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.authentication.oauth.GetSlasTokenOrNullUseCase", f = "GetSlasTokenOrNullUseCase.kt", l = {8}, m = "run", v = 2)
final class GetSlasTokenOrNullUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetSlasTokenOrNullUseCase f49376c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetSlasTokenOrNullUseCase$run$1(GetSlasTokenOrNullUseCase getSlasTokenOrNullUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49376c = getSlasTokenOrNullUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49375b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49376c.a(this);
    }
}
