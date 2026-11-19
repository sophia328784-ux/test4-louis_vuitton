package com.vuitton.android.data.datasource.careservice;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSourceImpl", f = "CareServicesBffRemoteDataSourceImpl.kt", l = {EACTags.ADDRESS}, m = "accept-FjMe0-8", v = 2)
final class CareServicesBffRemoteDataSourceImpl$accept$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f43868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CareServicesBffRemoteDataSourceImpl f43869c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CareServicesBffRemoteDataSourceImpl$accept$1(CareServicesBffRemoteDataSourceImpl careServicesBffRemoteDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f43869c = careServicesBffRemoteDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43868b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f43869c.f(null, null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
