package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.DecodingManager;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.EncodingManager;
import com.dynamicyield.sdk.wrapper.core.models.exception.InitializeException;
import com.dynamicyield.sdk.wrapper.core.models.exception.MissingActiveConsentException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointManager/EndpointManagerProtocol;", "", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface EndpointManagerProtocol {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static Object a(EndpointManagerProtocol endpointManagerProtocol, EndpointModelProtocol endpointModelProtocol, ResponseProvider responseProvider, boolean z, ContinuationImpl continuationImpl) {
            if (!z) {
                return responseProvider.c(new InitializeException(false));
            }
            endpointManagerProtocol.getD().a("sendRequest", null);
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            if (endpointModelProtocol.f() && endpointManagerProtocol.getF25891a().a().f25868j) {
                Boolean bool = endpointManagerProtocol.getF25891a().a().f25869k;
                Boolean bool2 = Boolean.TRUE;
                if (!Intrinsics.c(bool, bool2) && !Intrinsics.c(endpointManagerProtocol.getF25891a().a().f25862b, bool2)) {
                    endpointManagerProtocol.getD().a("sendRequest: User has not accepted the consent, request will be ignored.", null);
                    return responseProvider.a(ResultStatus.ERROR, null, new MissingActiveConsentException(), null);
                }
            }
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            return BuildersKt.f(DefaultIoScheduler.f75161b, new EndpointManagerProtocol$sendRequest$2(endpointManagerProtocol, endpointModelProtocol, responseProvider, ref$ObjectRef, ref$ObjectRef2, null), continuationImpl);
        }
    }

    /* JADX INFO: renamed from: a */
    DYLogger getD();

    ArrayList b(String str);

    /* JADX INFO: renamed from: c */
    EndpointManagerProvider getF25891a();

    /* JADX INFO: renamed from: d */
    EncodingManager getF25892b();

    /* JADX INFO: renamed from: e */
    DecodingManager getF25893c();
}
