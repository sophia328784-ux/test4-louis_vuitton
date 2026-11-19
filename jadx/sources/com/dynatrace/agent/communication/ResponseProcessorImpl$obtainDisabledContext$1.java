package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ResponseProcessorImpl", f = "ResponseProcessorImpl.kt", l = {268}, m = "obtainDisabledContext-bz6L7rs")
final class ResponseProcessorImpl$obtainDisabledContext$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f26585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CommunicationState f26586c;
    public EndPointInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RetryManager f26587e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ServerDataUpdate f26588f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ResponseProcessorImpl f26589h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f26590i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseProcessorImpl$obtainDisabledContext$1(ResponseProcessorImpl responseProcessorImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26589h = responseProcessorImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f26590i |= Integer.MIN_VALUE;
        return this.f26589h.h(0L, null, null, null, null, this);
    }
}
