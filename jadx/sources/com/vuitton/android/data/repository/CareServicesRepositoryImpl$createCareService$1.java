package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.careservices.CreateCareServiceParam;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesRepositoryImpl", f = "CareServicesRepositoryImpl.kt", l = {39, EACTags.CURRENCY_CODE}, m = "createCareService-BWLJW6A", v = 2)
final class CareServicesRepositoryImpl$createCareService$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AppConfig f47452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CreateCareServiceParam f47453c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CareServicesRepositoryImpl f47454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47455f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesRepositoryImpl$createCareService$1(CareServicesRepositoryImpl careServicesRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47454e = careServicesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f47455f |= Integer.MIN_VALUE;
        Object objD = this.f47454e.d(null, null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
