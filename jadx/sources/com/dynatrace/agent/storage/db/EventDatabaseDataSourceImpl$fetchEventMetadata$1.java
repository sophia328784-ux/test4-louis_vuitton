package com.dynatrace.agent.storage.db;

import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.db.EventDatabaseDataSourceImpl", f = "EventDatabaseDataSourceImpl.kt", l = {EACTags.CARDHOLDER_NATIONALITY}, m = "fetchEventMetadata")
final class EventDatabaseDataSourceImpl$fetchEventMetadata$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f26909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26910c;
    public EmptyList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f26911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ EventDatabaseDataSourceImpl f26912f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventDatabaseDataSourceImpl$fetchEventMetadata$1(EventDatabaseDataSourceImpl eventDatabaseDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26912f = eventDatabaseDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26911e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f26912f.e(false, 0, this);
    }
}
