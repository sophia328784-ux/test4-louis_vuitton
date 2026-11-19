package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl", f = "ServerConfigurationDataSourceImpl.kt", l = {137}, m = "resetServerConfiguration")
final class ServerConfigurationDataSourceImpl$resetServerConfiguration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerConfigurationDataSourceImpl f27033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f27034c;
    public final /* synthetic */ ServerConfigurationDataSourceImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27035e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerConfigurationDataSourceImpl$resetServerConfiguration$1(ServerConfigurationDataSourceImpl serverConfigurationDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = serverConfigurationDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f27034c = obj;
        this.f27035e |= Integer.MIN_VALUE;
        return this.d.c(this);
    }
}
