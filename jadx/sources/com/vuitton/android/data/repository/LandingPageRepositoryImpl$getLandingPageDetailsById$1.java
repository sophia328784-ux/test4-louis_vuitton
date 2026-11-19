package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LandingPageRepositoryImpl", f = "LandingPageRepositoryImpl.kt", l = {13}, m = "getLandingPageDetailsById-gIAlu-s", v = 2)
final class LandingPageRepositoryImpl$getLandingPageDetailsById$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LandingPageRepositoryImpl f47744c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LandingPageRepositoryImpl$getLandingPageDetailsById$1(LandingPageRepositoryImpl landingPageRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47744c = landingPageRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47743b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47744c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
