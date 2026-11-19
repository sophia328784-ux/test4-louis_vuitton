package com.vuitton.android.domain.usecase.account;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.GetUserIdentifierUseCase", f = "GetUserIdentifierUseCase.kt", l = {12, 12}, m = "run", v = 2)
final class GetUserIdentifierUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetUserIdentifierUseCase f49048c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetUserIdentifierUseCase$run$1(GetUserIdentifierUseCase getUserIdentifierUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49048c = getUserIdentifierUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49047b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49048c.a(this);
    }
}
