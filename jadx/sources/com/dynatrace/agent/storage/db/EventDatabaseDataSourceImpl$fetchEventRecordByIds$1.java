package com.dynatrace.agent.storage.db;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.db.EventDatabaseDataSourceImpl", f = "EventDatabaseDataSourceImpl.kt", l = {EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "fetchEventRecordByIds")
final class EventDatabaseDataSourceImpl$fetchEventRecordByIds$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f26913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EmptyList f26914c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ EventDatabaseDataSourceImpl f26915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f26916f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventDatabaseDataSourceImpl$fetchEventRecordByIds$1(EventDatabaseDataSourceImpl eventDatabaseDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26915e = eventDatabaseDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f26916f |= Integer.MIN_VALUE;
        return this.f26915e.f(null, this);
    }
}
