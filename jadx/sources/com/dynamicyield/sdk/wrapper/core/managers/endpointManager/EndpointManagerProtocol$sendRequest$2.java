package com.dynamicyield.sdk.wrapper.core.managers.endpointManager;

import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.endpointModel.EndpointModelProtocol;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.managers.network.RawNetworkData;
import com.dynamicyield.sdk.wrapper.core.models.common.DYResult;
import com.dynamicyield.sdk.wrapper.core.models.common.Warning;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0002*\u00020\u0003H\n"}, d2 = {"<anonymous>", "R", "Lcom/dynamicyield/sdk/wrapper/core/models/common/DYResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "com.dynamicyield.sdk.wrapper.core.managers.endpointManager.EndpointManagerProtocol$sendRequest$2", f = "EndpointManagerProtocol.kt", l = {}, m = "invokeSuspend")
final class EndpointManagerProtocol$sendRequest$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<DYResult>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EndpointManagerProtocol f25872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EndpointModelProtocol f25873c;
    public final /* synthetic */ ResponseProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f25874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f25875f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EndpointManagerProtocol$sendRequest$2(EndpointManagerProtocol endpointManagerProtocol, EndpointModelProtocol endpointModelProtocol, ResponseProvider responseProvider, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Continuation continuation) {
        super(2, continuation);
        this.f25872b = endpointManagerProtocol;
        this.f25873c = endpointModelProtocol;
        this.d = responseProvider;
        this.f25874e = ref$ObjectRef;
        this.f25875f = ref$ObjectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EndpointManagerProtocol$sendRequest$2(this.f25872b, this.f25873c, this.d, this.f25874e, this.f25875f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EndpointManagerProtocol$sendRequest$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0065  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RawNetworkData rawNetworkDataD;
        boolean z;
        Ref$ObjectRef ref$ObjectRef = this.f25875f;
        EndpointModelProtocol endpointModelProtocol = this.f25873c;
        Ref$ObjectRef ref$ObjectRef2 = this.f25874e;
        EndpointManagerProtocol endpointManagerProtocol = this.f25872b;
        ResponseProvider responseProvider = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        try {
            rawNetworkDataD = endpointManagerProtocol.getF25891a().d(endpointModelProtocol);
            try {
                boolean z2 = rawNetworkDataD.f25934c;
                String str = rawNetworkDataD.d;
                if (!z2) {
                    z = false;
                } else {
                    if (responseProvider.hasBody()) {
                        endpointManagerProtocol.getD().a("Decoding response for body: " + rawNetworkDataD + ".body", null);
                        responseProvider.b(str, endpointManagerProtocol.getF25893c());
                    }
                    if (!responseProvider.d() || (responseProvider.getCookies() != null && endpointManagerProtocol.getF25891a().c(responseProvider.getCookies()))) {
                        z = false;
                    } else {
                        z = true;
                    }
                }
                List listB = z2 ? endpointModelProtocol.b(str) : null;
                ref$ObjectRef2.f71921b = listB;
                if (z) {
                    List list = listB;
                    if (list == null) {
                        list = EmptyList.f71768b;
                    }
                    ref$ObjectRef2.f71921b = CollectionsKt.X(new Warning(null, "Failed to write dy-id & session id to local app storage", 1, null), list);
                }
                ref$ObjectRef.f71921b = endpointModelProtocol.d(endpointModelProtocol.getUrl(), new Integer(rawNetworkDataD.f25932a), rawNetworkDataD.f25933b, str);
            } catch (Exception e2) {
                e = e2;
                ref$ObjectRef.f71921b = e;
            }
        } catch (Exception e3) {
            e = e3;
            rawNetworkDataD = null;
        }
        ResultStatus resultStatusC = endpointModelProtocol.c(rawNetworkDataD != null ? new Integer(rawNetworkDataD.f25932a) : null, (List) ref$ObjectRef2.f71921b, (Exception) ref$ObjectRef.f71921b);
        endpointManagerProtocol.getD().a("endpoint request success: status is: " + resultStatusC + ", warnings are: " + ref$ObjectRef2.f71921b, LogLevel.INFO);
        return responseProvider.a(resultStatusC, (List) ref$ObjectRef2.f71921b, (Exception) ref$ObjectRef.f71921b, rawNetworkDataD);
    }
}
