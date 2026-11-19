package com.vuitton.android.domain.usecase.app;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.app.InitializeAppUseCase", f = "InitializeAppUseCase.kt", l = {49, EACTags.TRANSACTION_DATE, EACTags.SEX, 56, EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION, 60, 64, EACTags.DISPLAY_IMAGE, 72, EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY}, m = "run-IoAF18A", v = 2)
final class InitializeAppUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InitializeAppUseCase f49243c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeAppUseCase$run$1(InitializeAppUseCase initializeAppUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49243c = initializeAppUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49242b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f49243c.b(this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
