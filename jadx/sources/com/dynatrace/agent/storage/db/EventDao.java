package com.dynatrace.agent.storage.db;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\ba\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/db/EventDao;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface EventDao {
    Object a(List list, Continuation continuation);

    Object b(List list, Continuation continuation);

    Object c(long j2, long j3, Continuation continuation);

    Object d(EventRecord eventRecord, Continuation continuation);

    Object e(Continuation continuation);

    Object f(boolean z, int i2, Continuation continuation);

    Object g(List list, Continuation continuation);
}
