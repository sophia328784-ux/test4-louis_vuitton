package com.dynatrace.agent.communication;

import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ServerDataListenerImpl", f = "ServerDataListenerImpl.kt", l = {61}, m = "onConfigurationUpdate")
final class ServerDataListenerImpl$onConfigurationUpdate$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerDataListenerImpl f26600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerConfigurationV4 f26601c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ServerDataListenerImpl f26602e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26603f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerDataListenerImpl$onConfigurationUpdate$1(ServerDataListenerImpl serverDataListenerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26602e = serverDataListenerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f26603f |= Integer.MIN_VALUE;
        return this.f26602e.b(null, null, this);
    }
}
