package com.vuitton.android.domain.usecase.privacy.consent;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase", f = "SetConsentsUseCase.kt", l = {19, 20, 22}, m = "run", v = 2)
final class SetConsentsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f50279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SetConsentsUseCase f50280c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetConsentsUseCase$run$1(SetConsentsUseCase setConsentsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50280c = setConsentsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50279b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f50280c.a(null, this);
    }
}
