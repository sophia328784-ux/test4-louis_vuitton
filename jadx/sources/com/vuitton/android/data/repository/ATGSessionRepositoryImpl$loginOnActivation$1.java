package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ATGSessionRepositoryImpl", f = "ATGSessionRepositoryImpl.kt", l = {17}, m = "loginOnActivation-gIAlu-s", v = 2)
final class ATGSessionRepositoryImpl$loginOnActivation$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ATGSessionRepositoryImpl f47126c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ATGSessionRepositoryImpl$loginOnActivation$1(ATGSessionRepositoryImpl aTGSessionRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47126c = aTGSessionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47125b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f47126c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
