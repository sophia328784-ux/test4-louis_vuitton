package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.managers.config.ExperienceConfig;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Session;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.User;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface EndpointManagerProvider {
    ExperienceConfig a();

    User b(String str, String str2);

    boolean c(List list);

    RawNetworkData d(EndpointModelProtocol endpointModelProtocol);

    boolean e();

    Session getSession();
}
