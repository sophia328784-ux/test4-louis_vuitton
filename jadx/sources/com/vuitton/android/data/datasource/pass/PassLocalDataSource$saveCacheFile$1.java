package com.vuitton.android.data.datasource.pass;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource", f = "PassLocalDataSource.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "saveCacheFile-0E7RQCE", v = 2)
final class PassLocalDataSource$saveCacheFile$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44208c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$saveCacheFile$1(PassLocalDataSource passLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44208c = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44207b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f44208c.e(null, null, this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
