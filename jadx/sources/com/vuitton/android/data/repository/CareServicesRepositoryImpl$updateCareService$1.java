package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.careservices.CareServiceUpdate;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesRepositoryImpl", f = "CareServicesRepositoryImpl.kt", l = {100, 103}, m = "updateCareService-mjo7ntc", v = 2)
final class CareServicesRepositoryImpl$updateCareService$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AppConfig f47463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47464c;
    public CareServiceUpdate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CareServicesRepositoryImpl f47466f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesRepositoryImpl$updateCareService$1(CareServicesRepositoryImpl careServicesRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47466f = careServicesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47465e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objC = this.f47466f.c(null, null, null, this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
