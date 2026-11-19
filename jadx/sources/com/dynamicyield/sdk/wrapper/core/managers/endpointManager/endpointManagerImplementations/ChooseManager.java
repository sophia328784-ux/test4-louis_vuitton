package com.dynamicyield.sdk.wrapper.core.managers.endpointManager.endpointManagerImplementations;

import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.ChooseResponseProvider;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol$endpointModelProvider$1;
import com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProvider;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.endpointModelImplementations.ChooseModel;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.DecodingManager;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.EncodingManager;
import com.dynamicyield.sdk.wrapper.core.models.choose.payload.ChooseOptions;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeAndMessageWarnings;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeWarning;
import com.dynamicyield.sdk.wrapper.core.models.common.Warning;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.Page;
import com.dynamicyield.sdk.wrapper.core.models.exception.DecodingException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/endpointManagerImplementations/ChooseManager;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;", "Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;", "endpointManagerProvider", "<init>", "(Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProvider;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChooseManager implements EndpointManagerProtocol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final EndpointManagerProvider f25879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EncodingManager f25880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DecodingManager f25881c;
    public final DYLogger d;

    public ChooseManager(EndpointManagerProvider endpointManagerProvider) {
        endpointManagerProvider.getClass();
        this.f25879a = endpointManagerProvider;
        this.f25880b = new EncodingManager();
        this.f25881c = new DecodingManager();
        this.d = new DYLogger("Choose Manager", null, 2, null);
    }

    public static Object f(ChooseManager chooseManager, List list, Page page, ChooseOptions chooseOptions, ContinuationImpl continuationImpl, int i2) {
        List list2 = (i2 & 1) != 0 ? null : list;
        ChooseOptions chooseOptions2 = (i2 & 256) != 0 ? null : chooseOptions;
        chooseManager.d.a("Choosing variations for page " + page.f26230b, null);
        return EndpointManagerProtocol.DefaultImpls.a(chooseManager, new ChooseModel(new EndpointManagerProtocol$endpointModelProvider$1(chooseManager), list2, page, null, null, null, null, null, null, chooseOptions2, null, null, null, null, null, false, false, 98304, null), new ChooseResponseProvider(), chooseManager.f25879a.e(), continuationImpl);
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
                    DecodingManager decodingManager = this.f25881c;
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
        return this.f25879a;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: d, reason: from getter */
    public final EncodingManager getF25892b() {
        return this.f25880b;
    }

    @Override // com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol
    /* JADX INFO: renamed from: e, reason: from getter */
    public final DecodingManager getF25893c() {
        return this.f25881c;
    }
}
