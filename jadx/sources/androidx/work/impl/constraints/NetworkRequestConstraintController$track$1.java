package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.NetworkRequest;
import android.os.Build;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.utils.NetworkTypeCompatKt$WhenMappings;
import defpackage.ee0;
import defpackage.k60;
import defpackage.md;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Landroidx/work/impl/constraints/ConstraintsState;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1", f = "WorkConstraintsTracker.kt", l = {191}, m = "invokeSuspend")
final class NetworkRequestConstraintController$track$1 extends SuspendLambda implements Function2<ProducerScope<? super ConstraintsState>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f20426c;
    public final /* synthetic */ Constraints d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NetworkRequestConstraintController f20427e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkRequestConstraintController$track$1(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, Continuation continuation) {
        super(2, continuation);
        this.d = constraints;
        this.f20427e = networkRequestConstraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        NetworkRequestConstraintController$track$1 networkRequestConstraintController$track$1 = new NetworkRequestConstraintController$track$1(this.d, this.f20427e, continuation);
        networkRequestConstraintController$track$1.f20426c = obj;
        return networkRequestConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NetworkRequestConstraintController$track$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Exception {
        Function0 function0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f20425b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ProducerScope producerScope = (ProducerScope) this.f20426c;
            NetworkRequest networkRequestA = this.d.a();
            if (networkRequestA == null) {
                NetworkType networkType = this.d.f20226a;
                networkType.getClass();
                if (networkType == NetworkType.NOT_REQUIRED) {
                    networkRequestA = null;
                } else {
                    NetworkRequest.Builder builderRemoveCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
                    if (Build.VERSION.SDK_INT < 30 || networkType != NetworkType.TEMPORARILY_UNMETERED) {
                        int i3 = NetworkTypeCompatKt$WhenMappings.f20550a[networkType.ordinal()];
                        if (i3 == 1) {
                            builderRemoveCapability = builderRemoveCapability.addTransportType(0);
                        } else if (i3 == 2) {
                            builderRemoveCapability = builderRemoveCapability.addCapability(11);
                        } else if (i3 == 3) {
                            builderRemoveCapability = builderRemoveCapability.addCapability(18);
                        }
                        networkRequestA = builderRemoveCapability.build();
                    } else {
                        networkRequestA = builderRemoveCapability.addCapability(25).build();
                    }
                }
            }
            if (networkRequestA == null) {
                ((ChannelCoroutine) producerScope.j()).l(null);
                return Unit.f71739a;
            }
            final k60 k60Var = new k60(BuildersKt.c(producerScope, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.f20427e, producerScope, null), 3), producerScope, 29);
            if (Build.VERSION.SDK_INT >= 30) {
                SharedNetworkCallback sharedNetworkCallback = SharedNetworkCallback.f20430a;
                final ConnectivityManager connectivityManager = this.f20427e.f20423a;
                sharedNetworkCallback.getClass();
                connectivityManager.getClass();
                synchronized (SharedNetworkCallback.f20431b) {
                    try {
                        LinkedHashMap linkedHashMap = SharedNetworkCallback.f20432c;
                        boolean zIsEmpty = linkedHashMap.isEmpty();
                        linkedHashMap.put(k60Var, networkRequestA);
                        if (zIsEmpty) {
                            Logger loggerA = Logger.a();
                            int i4 = WorkConstraintsTrackerKt.f20440a;
                            loggerA.getClass();
                            connectivityManager.registerDefaultNetworkCallback(sharedNetworkCallback);
                        } else if (SharedNetworkCallback.f20433e && SharedNetworkCallback.f20434f != null) {
                            Logger loggerA2 = Logger.a();
                            int i5 = WorkConstraintsTrackerKt.f20440a;
                            loggerA2.getClass();
                            k60Var.invoke(SharedNetworkCallback.a(networkRequestA, SharedNetworkCallback.d) ? ConstraintsState.ConstraintsMet.f20419a : new ConstraintsState.ConstraintsNotMet(7));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                function0 = new Function0() { // from class: androidx.work.impl.constraints.b
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        k60 k60Var2 = k60Var;
                        ConnectivityManager connectivityManager2 = connectivityManager;
                        synchronized (SharedNetworkCallback.f20431b) {
                            LinkedHashMap linkedHashMap2 = SharedNetworkCallback.f20432c;
                            linkedHashMap2.remove(k60Var2);
                            if (linkedHashMap2.isEmpty()) {
                                Logger loggerA3 = Logger.a();
                                int i6 = WorkConstraintsTrackerKt.f20440a;
                                loggerA3.getClass();
                                connectivityManager2.unregisterNetworkCallback(SharedNetworkCallback.f20430a);
                                SharedNetworkCallback.f20434f = null;
                                SharedNetworkCallback.d = null;
                                SharedNetworkCallback.f20433e = false;
                            }
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                IndividualNetworkCallback.Companion companion = IndividualNetworkCallback.f20421b;
                final ConnectivityManager connectivityManager2 = this.f20427e.f20423a;
                companion.getClass();
                connectivityManager2.getClass();
                final IndividualNetworkCallback individualNetworkCallback = new IndividualNetworkCallback(k60Var, null);
                final Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
                try {
                    Logger loggerA3 = Logger.a();
                    int i6 = WorkConstraintsTrackerKt.f20440a;
                    loggerA3.getClass();
                    connectivityManager2.registerNetworkCallback(networkRequestA, individualNetworkCallback);
                    ref$BooleanRef.f71917b = true;
                } catch (RuntimeException e2) {
                    if (!StringsKt.p(e2.getClass().getName(), "TooManyRequestsException", false)) {
                        throw e2;
                    }
                    Logger loggerA4 = Logger.a();
                    int i7 = WorkConstraintsTrackerKt.f20440a;
                    loggerA4.getClass();
                    k60Var.invoke(new ConstraintsState.ConstraintsNotMet(7));
                }
                function0 = new Function0() { // from class: androidx.work.impl.constraints.a
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        if (ref$BooleanRef.f71917b) {
                            Logger loggerA5 = Logger.a();
                            int i8 = WorkConstraintsTrackerKt.f20440a;
                            loggerA5.getClass();
                            connectivityManager2.unregisterNetworkCallback(individualNetworkCallback);
                        }
                        return Unit.f71739a;
                    }
                };
            }
            ee0 ee0Var = new ee0(function0, 5);
            this.f20425b = 1;
            if (ProduceKt.a(producerScope, ee0Var, this) == coroutineSingletons) {
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
