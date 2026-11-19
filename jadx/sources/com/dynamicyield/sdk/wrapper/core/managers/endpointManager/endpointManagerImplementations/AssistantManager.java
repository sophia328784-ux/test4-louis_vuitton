package com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations;

import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.DecodingManager;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.EncodingManager;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeAndMessageWarnings;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeWarning;
import com.dynamicyield.sdk.wrapper.core.models.common.Warning;
import com.dynamicyield.sdk.wrapper.core.models.exception.DecodingException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/AssistantManager;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;", "endpointManagerProvider", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AssistantManager implements EndpointManagerProtocol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndpointManagerProvider f25876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EncodingManager f25877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DecodingManager f25878c;
    public final DYLogger d;

    public AssistantManager(EndpointManagerProvider endpointManagerProvider) {
        endpointManagerProvider.getClass();
        this.f25876a = endpointManagerProvider;
        this.f25877b = new EncodingManager();
        this.f25878c = new DecodingManager();
        this.d = new DYLogger("Assistant Manager", null, 2, null);
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: a, reason: from getter */
    public final DYLogger getD() {
        return this.d;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    public final ArrayList b(String str) throws DecodingException {
        DYLogger dYLogger = this.d;
        dYLogger.a("getWarnings", null);
        if (str != null) {
            try {
                if (str.length() != 0) {
                    DecodingManager decodingManager = this.f25878c;
                    decodingManager.f25937a.a("decodeFromString", null);
                    try {
                        Json json = decodingManager.f25938b;
                        json.getClass();
                        List list = ((CodeAndMessageWarnings) json.b(CodeAndMessageWarnings.INSTANCE.serializer(), str)).f26178a;
                        if (list != null) {
                            List<CodeWarning> list2 = list;
                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                            for (CodeWarning codeWarning : list2) {
                                arrayList.add(new Warning(codeWarning.f26180a, codeWarning.f26181b));
                            }
                            return arrayList;
                        }
                    } catch (Exception e2) {
                        decodingManager.f25937a.a("Got exception: " + e2, LogLevel.ERROR);
                        throw e2;
                    }
                }
            } catch (Exception e3) {
                dYLogger.a("Failed to decode warnings", LogLevel.ERROR);
                throw new DecodingException(e3);
            }
        }
        return null;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: c, reason: from getter */
    public final EndpointManagerProvider getF25891a() {
        return this.f25876a;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: d, reason: from getter */
    public final EncodingManager getF25892b() {
        return this.f25877b;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: e, reason: from getter */
    public final DecodingManager getF25893c() {
        return this.f25878c;
    }
}
