package com.dynatrace.agent.communication.network.datasource;

import com.dynatrace.agent.communication.LocalServerData;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;", "", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "endPointInfo", "Lcom/dynatrace/agent/communication/LocalServerData;", "serverData", "Lcom/dynatrace/agent/communication/network/model/RetryInfo;", "retryInfo", "", "serverId", "<init>", "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndPointInfo f26632a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalServerData f26633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RetryInfo f26634c;
    public final Integer d;

    public ConfigRequest(EndPointInfo endPointInfo, LocalServerData localServerData, RetryInfo retryInfo, Integer num) {
        endPointInfo.getClass();
        localServerData.getClass();
        this.f26632a = endPointInfo;
        this.f26633b = localServerData;
        this.f26634c = retryInfo;
        this.d = num;
    }

    public /* synthetic */ ConfigRequest(EndPointInfo endPointInfo, LocalServerData localServerData, RetryInfo retryInfo, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(endPointInfo, localServerData, retryInfo, (i2 & 8) != 0 ? null : num);
    }
}
