package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl", f = "SalesforceAuthRepositoryImpl.kt", l = {39}, m = "logout-IoAF18A", v = 2)
final class SalesforceAuthRepositoryImpl$logout$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SalesforceAuthRepositoryImpl f47959c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceAuthRepositoryImpl$logout$1(SalesforceAuthRepositoryImpl salesforceAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47959c = salesforceAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47958b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47959c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
