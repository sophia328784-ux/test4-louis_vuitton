package com.vuitton.android.data.datasource.config;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConnectedObjectsConfigLocalDataSource", f = "ConnectedObjectsConfigLocalDataSource.kt", l = {EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "clearConnectedObjectsConfig-IoAF18A", v = 2)
final class ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44038b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigLocalDataSource f44039c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1(ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44039c = connectedObjectsConfigLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44038b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44039c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
