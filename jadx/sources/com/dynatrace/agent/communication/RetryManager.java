package com.dynatrace.agent.communication;

import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.storage.db.EndPointInfo;
import java.util.LinkedHashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/communication/RetryManager;", "", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RetryManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f26591a = new LinkedHashMap();

    public final RetryInfo a(EndPointInfo endPointInfo, String str) {
        endPointInfo.getClass();
        str.getClass();
        LinkedHashMap linkedHashMap = this.f26591a;
        RetryInfo retryInfo = (RetryInfo) linkedHashMap.get(endPointInfo);
        RetryInfo retryInfo2 = new RetryInfo((retryInfo != null ? retryInfo.f26645a : 0) + 1, str);
        linkedHashMap.put(endPointInfo, retryInfo2);
        return retryInfo2;
    }
}
