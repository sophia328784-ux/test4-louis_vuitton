package com.vuitton.android.domain.usecase.app;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.app.ResetAppDataUseCase", f = "ResetAppDataUseCase.kt", l = {12, 13}, m = "run", v = 2)
final class ResetAppDataUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f49246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49247c;
    public final /* synthetic */ ResetAppDataUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49248e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResetAppDataUseCase$run$1(ResetAppDataUseCase resetAppDataUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = resetAppDataUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49247c = obj;
        this.f49248e |= Integer.MIN_VALUE;
        return this.d.a(false, this);
    }
}
