package com.vuitton.android.domain.usecase.applink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.applink.CheckAppLinkExcludedUseCase", f = "CheckAppLinkExcludedUseCase.kt", l = {13}, m = "run", v = 2)
final class CheckAppLinkExcludedUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f49255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49256c;
    public final /* synthetic */ CheckAppLinkExcludedUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49257e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckAppLinkExcludedUseCase$run$1(CheckAppLinkExcludedUseCase checkAppLinkExcludedUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = checkAppLinkExcludedUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49256c = obj;
        this.f49257e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
