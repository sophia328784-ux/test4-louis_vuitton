package com.vuitton.android.data.repository;

import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConnectedObjectsConfigRepositoryImpl", f = "ConnectedObjectsConfigRepositoryImpl.kt", l = {28, 33, 36}, m = "getConnectedObjectsConfig-0E7RQCE", v = 2)
final class ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f47617b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f47618c;
    public ConnectedObjectsConfigDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigRepositoryImpl f47620f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1(ConnectedObjectsConfigRepositoryImpl connectedObjectsConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47620f = connectedObjectsConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47619e = obj;
        this.g |= Integer.MIN_VALUE;
        Object objB = this.f47620f.b(0L, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
