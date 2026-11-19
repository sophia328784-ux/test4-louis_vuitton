package com.vuitton.android.domain.usecase.analytics.tools;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase", f = "InitializePrivacyRelatedToolsUseCase.kt", l = {11, 12, 13}, m = "run", v = 2)
final class InitializePrivacyRelatedToolsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InitializePrivacyRelatedToolsUseCase f49212c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializePrivacyRelatedToolsUseCase$run$1(InitializePrivacyRelatedToolsUseCase initializePrivacyRelatedToolsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49212c = initializePrivacyRelatedToolsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49211b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49212c.a(this);
    }
}
