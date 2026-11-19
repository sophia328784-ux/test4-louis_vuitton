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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EmptyResponseProvider;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Response;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;", "<init>", "()V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EmptyResponseProvider implements ResponseProvider<Response, DYResult> {
    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final DYResult a(ResultStatus resultStatus, List list, Exception exc, RawNetworkData rawNetworkData) {
        resultStatus.getClass();
        return new DYResult(resultStatus, list, exc, rawNetworkData);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final void b(String str, DecodingManager decodingManager) {
        decodingManager.getClass();
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final DYResult c(InitializeException initializeException) {
        return new DYResult(ResultStatus.ERROR, null, initializeException, null, 10, null);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final boolean d() {
        return false;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final List getCookies() {
        return null;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final boolean hasBody() {
        return false;
    }
}
