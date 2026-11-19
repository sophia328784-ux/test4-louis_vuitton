package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl", f = "ServerConfigurationDataSourceImpl.kt", l = {99}, m = "preloadServerConfiguration")
final class ServerConfigurationDataSourceImpl$preloadServerConfiguration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerConfigurationDataSourceImpl f27025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerConfigurationDataSourceImpl f27026c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ServerConfigurationDataSourceImpl f27027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f27028f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerConfigurationDataSourceImpl$preloadServerConfiguration$1(ServerConfigurationDataSourceImpl serverConfigurationDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f27027e = serverConfigurationDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f27028f |= Integer.MIN_VALUE;
        return this.f27027e.d(this);
    }
}
