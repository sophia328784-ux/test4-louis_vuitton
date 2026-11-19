package com.vuitton.android.domain.usecase.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.HandleAppUpdateUseCase", f = "HandleAppUpdateUseCase.kt", l = {17, 18, 23, 26}, m = "run", v = 2)
final class HandleAppUpdateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49689c;
    public final /* synthetic */ HandleAppUpdateUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49690e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandleAppUpdateUseCase$run$1(HandleAppUpdateUseCase handleAppUpdateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = handleAppUpdateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49689c = obj;
        this.f49690e |= Integer.MIN_VALUE;
        return this.d.a(this);
    }
}
