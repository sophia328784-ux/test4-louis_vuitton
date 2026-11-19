package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.DecodingManager;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse;
import com.dynamicyield.sdk.wrapper.core.models.common.DYChooseResult;
import com.dynamicyield.sdk.wrapper.core.models.common.DYResult;
import com.dynamicyield.sdk.wrapper.core.models.exception.DecodingChooseResultException;
import com.dynamicyield.sdk.wrapper.core.models.exception.InitializeException;
import java.util.List;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ChooseResponseProvider;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/ResponseProvider;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;", "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYChooseResult;", "<init>", "()V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChooseResponseProvider implements ResponseProvider<ChooseResponse, DYChooseResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ChooseResponse f25870a;

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final DYResult a(ResultStatus resultStatus, List list, Exception exc, RawNetworkData rawNetworkData) {
        resultStatus.getClass();
        ChooseResponse chooseResponse = this.f25870a;
        return new DYChooseResult(chooseResponse != null ? chooseResponse.f26067c : null, resultStatus, list, exc, rawNetworkData);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final void b(String str, DecodingManager decodingManager) throws DecodingChooseResultException {
        decodingManager.getClass();
        DYLogger dYLogger = decodingManager.f25937a;
        ChooseResponse chooseResponse = null;
        if (str != null) {
            try {
                dYLogger.a("decodeFromString", null);
                try {
                    Json json = decodingManager.f25938b;
                    json.getClass();
                    ChooseResponse chooseResponse2 = (ChooseResponse) json.b(ChooseResponse.INSTANCE.serializer(), str);
                    if (chooseResponse2 != null) {
                        chooseResponse = chooseResponse2;
                    }
                } catch (Exception e2) {
                    dYLogger.a("Got exception: " + e2, LogLevel.ERROR);
                    throw e2;
                }
            } catch (Exception e3) {
                throw new DecodingChooseResultException(e3);
            }
        }
        this.f25870a = chooseResponse;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final DYResult c(InitializeException initializeException) {
        return new DYChooseResult(null, ResultStatus.ERROR, null, initializeException, null, 21, null);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final boolean d() {
        return true;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final List getCookies() {
        ChooseResponse chooseResponse = this.f25870a;
        if (chooseResponse != null) {
            return chooseResponse.d;
        }
        return null;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ResponseProvider
    public final boolean hasBody() {
        return true;
    }
}
