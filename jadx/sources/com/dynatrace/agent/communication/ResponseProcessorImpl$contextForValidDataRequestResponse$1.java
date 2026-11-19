package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.ResponseProcessorImpl", f = "ResponseProcessorImpl.kt", l = {182}, m = "contextForValidDataRequestResponse")
final class ResponseProcessorImpl$contextForValidDataRequestResponse$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerDataUpdate f26575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f26576c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ResponseProcessorImpl f26577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26578f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResponseProcessorImpl$contextForValidDataRequestResponse$1(ResponseProcessorImpl responseProcessorImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26577e = responseProcessorImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f26578f |= Integer.MIN_VALUE;
        return ResponseProcessorImpl.d(this.f26577e, null, null, false, this);
    }
}
