package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.network.datasource.DataRequest;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl", f = "CommunicationManagerImpl.kt", l = {240, 246, 248}, m = "dispatchData")
final class CommunicationManagerImpl$dispatchData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CommunicationManagerImpl f26531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26532c;
    public DataRequest d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f26533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f26534f;
    public final /* synthetic */ CommunicationManagerImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f26535h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$dispatchData$1(CommunicationManagerImpl communicationManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = communicationManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26534f = obj;
        this.f26535h |= Integer.MIN_VALUE;
        return CommunicationManagerImpl.e(this.g, this);
    }
}
