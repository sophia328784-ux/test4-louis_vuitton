package com.vuitton.android.domain.usecase.account;

import com.vuitton.android.domain.repository.AccountRepository;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.GetProfileUseCase", f = "GetProfileUseCase.kt", l = {21, 19}, m = "run", v = 2)
final class GetProfileUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AccountRepository f49043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49044c;
    public final /* synthetic */ GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49045e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetProfileUseCase$run$1(GetProfileUseCase getProfileUseCase, Continuation continuation) {
        super(continuation);
        this.d = getProfileUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49044c = obj;
        this.f49045e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
