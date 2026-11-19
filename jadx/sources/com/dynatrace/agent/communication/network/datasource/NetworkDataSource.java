package com.dynatrace.agent.communication.network.datasource;

import com.dynatrace.agent.communication.network.response.ResponseResult;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface NetworkDataSource {
    ResponseResult a(ConfigRequest configRequest);

    ResponseResult b(DataRequest dataRequest);
}
