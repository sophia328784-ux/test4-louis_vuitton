package com.dynatrace.agent.communication.preprocessing;

import com.dynatrace.agent.communication.RetryManager;
import com.dynatrace.agent.communication.mapper.DbRecordsToRequestBodyMapper;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/preprocessing/ToDataRequestMapper;", "", "Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;", "requestBodyMapper", "Lcom/dynatrace/agent/communication/RetryManager;", "retryManager", "<init>", "(Lcom/dynatrace/agent/communication/mapper/DbRecordsToRequestBodyMapper;Lcom/dynatrace/agent/communication/RetryManager;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ToDataRequestMapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DbRecordsToRequestBodyMapper f26682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RetryManager f26683b;

    public ToDataRequestMapper(DbRecordsToRequestBodyMapper dbRecordsToRequestBodyMapper, RetryManager retryManager) {
        dbRecordsToRequestBodyMapper.getClass();
        retryManager.getClass();
        this.f26682a = dbRecordsToRequestBodyMapper;
        this.f26683b = retryManager;
    }
}
