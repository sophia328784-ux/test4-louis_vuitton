package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl", f = "ServerConfigurationDataSourceImpl.kt", l = {113}, m = "setServerConfiguration")
final class ServerConfigurationDataSourceImpl$setServerConfiguration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerConfigurationDataSourceImpl f27037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerConfigurationV4 f27038c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ServerConfigurationDataSourceImpl f27039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27040f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerConfigurationDataSourceImpl$setServerConfiguration$1(ServerConfigurationDataSourceImpl serverConfigurationDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f27039e = serverConfigurationDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f27040f |= Integer.MIN_VALUE;
        return this.f27039e.a(null, this);
    }
}
