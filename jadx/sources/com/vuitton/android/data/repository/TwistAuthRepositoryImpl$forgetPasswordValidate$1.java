package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TwistAuthRepositoryImpl", f = "TwistAuthRepositoryImpl.kt", l = {300, 306}, m = "forgetPasswordValidate-gIAlu-s", v = 2)
final class TwistAuthRepositoryImpl$forgetPasswordValidate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48105c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f48106e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TwistAuthRepositoryImpl f48107f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwistAuthRepositoryImpl$forgetPasswordValidate$1(TwistAuthRepositoryImpl twistAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f48107f = twistAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f48106e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objC = this.f48107f.c(null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
