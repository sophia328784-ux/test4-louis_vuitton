package com.dynatrace.agent.common.connectivity;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import defpackage.md;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Lcom/dynatrace/agent/common/connectivity/NetworkState;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1", f = "NetworkConnectivityCheckerImpl.kt", l = {122}, m = "invokeSuspend")
final class NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1 extends SuspendLambda implements Function2<ProducerScope<? super NetworkState>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26504b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f26505c;
    public final /* synthetic */ NetworkConnectivityCheckerImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1(NetworkConnectivityCheckerImpl networkConnectivityCheckerImpl, Continuation continuation) {
        super(2, continuation);
        this.d = networkConnectivityCheckerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1 networkConnectivityCheckerImpl$registerNetworkCallbackFlow$1 = new NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1(this.d, continuation);
        networkConnectivityCheckerImpl$registerNetworkCallbackFlow$1.f26505c = obj;
        return networkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f26504b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final ProducerScope producerScope = (ProducerScope) this.f26505c;
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                    NetworkType networkType;
                    network.getClass();
                    networkCapabilities.getClass();
                    boolean zHasCapability = networkCapabilities.hasCapability(16);
                    if (networkCapabilities.hasTransport(1)) {
                        networkType = NetworkType.WIFI;
                    } else if (networkCapabilities.hasTransport(0)) {
                        networkType = NetworkType.CELLULAR;
                    } else {
                        networkType = networkCapabilities.hasTransport(3) ? NetworkType.ETHERNET : NetworkType.OTHER;
                    }
                    producerScope.b(new NetworkState(zHasCapability, networkType));
                }
            };
            NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addCapability(12).addCapability(16).build();
            NetworkConnectivityCheckerImpl networkConnectivityCheckerImpl = this.d;
            ConnectivityManager connectivityManager = networkConnectivityCheckerImpl.f26502b;
            if (connectivityManager != null) {
                connectivityManager.registerNetworkCallback(networkRequestBuild, networkCallback);
            }
            t30 t30Var = new t30(networkConnectivityCheckerImpl, networkCallback, 23);
            this.f26504b = 1;
            if (ProduceKt.a(producerScope, t30Var, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
