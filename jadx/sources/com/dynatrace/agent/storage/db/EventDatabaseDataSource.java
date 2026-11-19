package com.dynatrace.agent.storage.db;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface EventDatabaseDataSource {
    Object a(EventRecord eventRecord, ContinuationImpl continuationImpl);

    Object b(ArrayList arrayList, ContinuationImpl continuationImpl);

    Object c(long j2, long j3, ContinuationImpl continuationImpl);

    Object d(ContinuationImpl continuationImpl);

    Object e(boolean z, int i2, ContinuationImpl continuationImpl);

    Object f(ArrayList arrayList, ContinuationImpl continuationImpl);

    Object g(List list, ContinuationImpl continuationImpl);
}
