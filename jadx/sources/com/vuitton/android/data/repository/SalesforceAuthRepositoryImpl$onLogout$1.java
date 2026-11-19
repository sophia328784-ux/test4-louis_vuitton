package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SalesforceAuthRepositoryImpl", f = "SalesforceAuthRepositoryImpl.kt", l = {EACTags.HISTORICAL_BYTES, 84, 88}, m = "onLogout-IoAF18A", v = 2)
final class SalesforceAuthRepositoryImpl$onLogout$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SalesforceAuthRepositoryImpl f47963c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SalesforceAuthRepositoryImpl$onLogout$1(SalesforceAuthRepositoryImpl salesforceAuthRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47963c = salesforceAuthRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47962b = obj;
        this.d |= Integer.MIN_VALUE;
        int i2 = SalesforceAuthRepositoryImpl.f47947i;
        Object objF = this.f47963c.f(this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
