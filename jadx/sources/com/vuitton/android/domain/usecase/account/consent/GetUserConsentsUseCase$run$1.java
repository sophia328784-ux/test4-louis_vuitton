package com.vuitton.android.domain.usecase.account.consent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.consent.GetUserConsentsUseCase", f = "GetUserConsentsUseCase.kt", l = {10}, m = "run", v = 2)
final class GetUserConsentsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49095b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GetUserConsentsUseCase f49096c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetUserConsentsUseCase$run$1(GetUserConsentsUseCase getUserConsentsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49096c = getUserConsentsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49095b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49096c.a(this);
    }
}
