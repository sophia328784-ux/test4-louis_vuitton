package com.vuitton.android.domain.usecase.account;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.account.ResetLoginDetailsUseCase", f = "ResetLoginDetailsUseCase.kt", l = {14, 16}, m = "run", v = 2)
final class ResetLoginDetailsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f49058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49059c;
    public final /* synthetic */ ResetLoginDetailsUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49060e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResetLoginDetailsUseCase$run$1(ResetLoginDetailsUseCase resetLoginDetailsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = resetLoginDetailsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49059c = obj;
        this.f49060e |= Integer.MIN_VALUE;
        return this.d.a(false, this);
    }
}
