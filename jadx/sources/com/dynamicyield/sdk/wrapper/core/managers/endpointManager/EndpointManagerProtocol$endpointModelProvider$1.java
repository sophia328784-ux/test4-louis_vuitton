package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.managers.config.ExperienceConfig;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.EncodingManager;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EndpointPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Session;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.User;
import com.dynamicyield.sdk.wrapper.core.models.exception.EncodingPayloadException;
import java.util.List;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol$endpointModelProvider$1", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProvider;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EndpointManagerProtocol$endpointModelProvider$1 implements EndpointModelProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ EndpointManagerProtocol f25871a;

    public EndpointManagerProtocol$endpointModelProvider$1(EndpointManagerProtocol endpointManagerProtocol) {
        this.f25871a = endpointManagerProtocol;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider
    public final ExperienceConfig a() {
        return this.f25871a.getF25891a().a();
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider
    public final User b(String str, String str2) {
        return this.f25871a.getF25891a().b(str, str2);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider
    public final String c(EndpointPayload endpointPayload) throws EncodingPayloadException {
        try {
            EncodingManager f25892b = this.f25871a.getF25892b();
            f25892b.f25939a.a("encodeToString value: " + endpointPayload, null);
            try {
                Json json = f25892b.f25940b;
                json.getClass();
                return json.c(EndpointPayload.INSTANCE.serializer(), endpointPayload);
            } catch (Exception e2) {
                f25892b.f25939a.a("got exception: " + e2, LogLevel.ERROR);
                throw e2;
            }
        } catch (Exception e3) {
            throw new EncodingPayloadException(e3);
        }
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider
    public final List d(String str) {
        return this.f25871a.b(str);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProvider
    public final Session getSession() {
        return this.f25871a.getF25891a().getSession();
    }
}
