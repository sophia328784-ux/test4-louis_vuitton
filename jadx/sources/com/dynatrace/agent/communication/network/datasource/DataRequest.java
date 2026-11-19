package com.dynatrace.agent.communication.network.datasource;

import com.dynatrace.agent.communication.LocalServerData;
import com.dynatrace.agent.communication.network.model.RetryInfo;
import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/communication/network/datasource/DataRequest;", "", "Lcom/dynatrace/agent/storage/db/EndPointInfo;", "endPointInfo", "", "body", "", "isPriority", "Lcom/dynatrace/agent/communication/LocalServerData;", "serverData", "Lcom/dynatrace/agent/communication/network/model/RetryInfo;", "retryInfo", "", "serverId", "<init>", "(Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;ZLcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/communication/network/model/RetryInfo;Ljava/lang/Integer;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DataRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndPointInfo f26635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26637c;
    public final LocalServerData d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RetryInfo f26638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f26639f;

    public DataRequest(EndPointInfo endPointInfo, String str, boolean z, LocalServerData localServerData, RetryInfo retryInfo, Integer num) {
        endPointInfo.getClass();
        str.getClass();
        localServerData.getClass();
        this.f26635a = endPointInfo;
        this.f26636b = str;
        this.f26637c = z;
        this.d = localServerData;
        this.f26638e = retryInfo;
        this.f26639f = num;
    }

    public /* synthetic */ DataRequest(EndPointInfo endPointInfo, String str, boolean z, LocalServerData localServerData, RetryInfo retryInfo, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(endPointInfo, str, z, localServerData, retryInfo, (i2 & 32) != 0 ? null : num);
    }
}
