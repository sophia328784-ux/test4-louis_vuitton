package com.vuitton.android.data.datasource.dispatch;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource", f = "DispatchLocalStorageDataSource.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "getMigratedLegacyDispatchIdentifier-IoAF18A", v = 2)
final class DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DispatchLocalStorageDataSource f44090c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$1(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44090c = dispatchLocalStorageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44089b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objE = this.f44090c.e(this);
        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : new Result(objE);
    }
}
