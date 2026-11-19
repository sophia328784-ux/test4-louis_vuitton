package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.CareServicesRepositoryImpl", f = "CareServicesRepositoryImpl.kt", l = {EACTags.HISTORICAL_BYTES, 85}, m = "getCareServiceById-D2EVcyA", v = 2)
final class CareServicesRepositoryImpl$getCareServiceById$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AppConfig f47456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47457c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CareServicesRepositoryImpl f47458e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47459f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesRepositoryImpl$getCareServiceById$1(CareServicesRepositoryImpl careServicesRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47458e = careServicesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f47459f |= Integer.MIN_VALUE;
        Object objA = this.f47458e.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
