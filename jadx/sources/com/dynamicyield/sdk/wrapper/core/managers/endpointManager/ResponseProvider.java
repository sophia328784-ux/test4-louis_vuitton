package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.DecodingManager;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Response;
import com.dynamicyield.sdk.wrapper.core.models.common.DYResult;
import com.dynamicyield.sdk.wrapper.core.models.exception.InitializeException;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;", "T", "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;", "R", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface ResponseProvider<T extends Response, R extends DYResult> {
    DYResult a(ResultStatus resultStatus, List list, Exception exc, RawNetworkData rawNetworkData);

    void b(String str, DecodingManager decodingManager);

    DYResult c(InitializeException initializeException);

    boolean d();

    List getCookies();

    boolean hasBody();
}
