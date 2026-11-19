package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConnectedObjectsConfigRepositoryImpl", f = "ConnectedObjectsConfigRepositoryImpl.kt", l = {EACTags.CARDHOLDER_NATIONALITY}, m = "persistConnectedObjectsConfig-gIAlu-s", v = 2)
final class ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigRepositoryImpl f47624c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1(ConnectedObjectsConfigRepositoryImpl connectedObjectsConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47624c = connectedObjectsConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47623b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f47624c.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
