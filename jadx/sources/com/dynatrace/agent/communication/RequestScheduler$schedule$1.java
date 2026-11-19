package com.dynatrace.agent.communication;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.RequestScheduler", f = "RequestScheduler.kt", l = {35}, m = "schedule-KLykuaI")
final class RequestScheduler$schedule$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RequestScheduler f26566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26567c;
    public long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f26568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RequestScheduler f26569f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestScheduler$schedule$1(RequestScheduler requestScheduler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26569f = requestScheduler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26568e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f26569f.a(0L, null, this);
    }
}
