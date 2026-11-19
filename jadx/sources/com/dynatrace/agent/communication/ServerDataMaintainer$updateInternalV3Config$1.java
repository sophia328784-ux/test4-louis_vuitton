package com.dynatrace.agent.communication;

import com.dynatrace.android.agent.conf.ServerConfiguration;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ServerDataMaintainer", f = "ServerDataMaintainer.kt", l = {131, 121}, m = "updateInternalV3Config")
final class ServerDataMaintainer$updateInternalV3Config$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerDataMaintainer f26609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ServerConfiguration f26610c;
    public Ref$BooleanRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MutexImpl f26611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f26612f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ServerDataMaintainer f26613h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f26614i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerDataMaintainer$updateInternalV3Config$1(ServerDataMaintainer serverDataMaintainer, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26613h = serverDataMaintainer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f26614i |= Integer.MIN_VALUE;
        return this.f26613h.a(null, false, this);
    }
}
