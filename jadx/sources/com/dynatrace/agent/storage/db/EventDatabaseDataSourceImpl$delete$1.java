package com.dynatrace.agent.storage.db;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.db.EventDatabaseDataSourceImpl", f = "EventDatabaseDataSourceImpl.kt", l = {Sink.ORIENTATION_90}, m = "delete")
final class EventDatabaseDataSourceImpl$delete$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26901b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EventDatabaseDataSourceImpl f26902c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventDatabaseDataSourceImpl$delete$1(EventDatabaseDataSourceImpl eventDatabaseDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26902c = eventDatabaseDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26901b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f26902c.g(null, this);
    }
}
