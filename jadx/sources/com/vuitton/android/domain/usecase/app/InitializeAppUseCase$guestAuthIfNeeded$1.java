package com.vuitton.android.domain.usecase.app;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.app.InitializeAppUseCase", f = "InitializeAppUseCase.kt", l = {86, 87, 89}, m = "guestAuthIfNeeded", v = 2)
final class InitializeAppUseCase$guestAuthIfNeeded$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49240b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InitializeAppUseCase f49241c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeAppUseCase$guestAuthIfNeeded$1(InitializeAppUseCase initializeAppUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49241c = initializeAppUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49240b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49241c.a(this);
    }
}
