package com.dynatrace.agent;

import android.os.Build;
import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.agent.exitreason.ExitReasonProcessor;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.preference.EndPointInfoDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.util.Utility;
import defpackage.lh0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Sink;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.OneAgentStartupImpl$init$1", f = "OneAgentStartupImpl.kt", l = {EACTags.MESSAGE_REFERENCE, 72, 87, 88, 89, Sink.ORIENTATION_90, 98}, m = "invokeSuspend")
final class OneAgentStartupImpl$init$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServerConfigurationV4 f26489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f26490c;
    public final /* synthetic */ OneAgentStartupImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ServerConfiguration f26491e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentStartupImpl$init$1(OneAgentStartupImpl oneAgentStartupImpl, ServerConfiguration serverConfiguration, Continuation continuation) {
        super(2, continuation);
        this.d = oneAgentStartupImpl;
        this.f26491e = serverConfiguration;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OneAgentStartupImpl$init$1(this.d, this.f26491e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OneAgentStartupImpl$init$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0059 A[PHI: r5
      0x0059: PHI (r5v9 java.lang.Object) = (r5v8 java.lang.Object), (r5v0 java.lang.Object) binds: [B:17:0x0055, B:11:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0090  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:29:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:32:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:35:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:37:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:40:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:46:0x0122  */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0059, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x00fe, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        EndPointInfo endPointInfo;
        EventDatabaseDataSource eventDatabaseDataSource;
        ServerConfigurationDataSource serverConfigurationDataSource;
        EndPointInfoDataSource endPointInfoDataSource;
        EndPointInfoDataSource endPointInfoDataSource2;
        EndPointInfo endPointInfo2;
        ServerConfigurationV4 f27010b;
        int i2;
        ExitReasonProcessor exitReasonProcessor;
        ServerConfigurationV4 serverConfigurationV4;
        SessionInformationMetrics sessionInformationMetricsA;
        OneAgentStartupImpl oneAgentStartupImpl;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (this.f26490c) {
            case 0:
                ResultKt.b(obj);
                this.d.f26486i.a();
                ServerConfigurationDataSource serverConfigurationDataSource2 = this.d.d;
                this.f26490c = 1;
                if (serverConfigurationDataSource2.d(this) != coroutineSingletons) {
                    EndPointInfoDataSource endPointInfoDataSource3 = this.d.f26483e;
                    this.f26490c = 2;
                    obj = endPointInfoDataSource3.a(this);
                    if (obj != coroutineSingletons) {
                        endPointInfo = (EndPointInfo) obj;
                        Utility.b("initialize OneAgent, serverConfiguration: " + this.f26491e + ", localEndPoint: " + endPointInfo + ", activeEndPoint: " + this.d.f26484f);
                        if (!Intrinsics.c(endPointInfo.f26894a, this.d.f26484f.f26894a) && Intrinsics.c(endPointInfo.f26895b, this.d.f26484f.f26895b)) {
                            f27010b = this.d.d.getF27010b();
                            i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 30) {
                                exitReasonProcessor = this.d.f26481b;
                                this.f26489b = f27010b;
                                this.f26490c = 7;
                                if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                    serverConfigurationV4 = f27010b;
                                    f27010b = serverConfigurationV4;
                                }
                            } else {
                                Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                            }
                            sessionInformationMetricsA = this.d.f26487j.a();
                            oneAgentStartupImpl = this.d;
                            if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                                TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
                                TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                                TracestateHeader.f26756b = f27010b.g;
                            }
                            this.d.f26485h.a(new lh0(f27010b, 0));
                            return Unit.f71739a;
                        }
                        Utility.b("initialize OneAgent, clear data because of different endpoint");
                        eventDatabaseDataSource = this.d.f26482c;
                        this.f26490c = 3;
                        if (eventDatabaseDataSource.d(this) != coroutineSingletons) {
                            serverConfigurationDataSource = this.d.d;
                            this.f26490c = 4;
                            if (serverConfigurationDataSource.c(this) != coroutineSingletons) {
                                endPointInfoDataSource = this.d.f26483e;
                                this.f26490c = 5;
                                if (endPointInfoDataSource.c(this) != coroutineSingletons) {
                                    OneAgentStartupImpl oneAgentStartupImpl2 = this.d;
                                    endPointInfoDataSource2 = oneAgentStartupImpl2.f26483e;
                                    endPointInfo2 = oneAgentStartupImpl2.f26484f;
                                    this.f26490c = 6;
                                    if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                                        f27010b = this.d.d.getF27010b();
                                        i2 = Build.VERSION.SDK_INT;
                                        if (i2 >= 30) {
                                            exitReasonProcessor = this.d.f26481b;
                                            this.f26489b = f27010b;
                                            this.f26490c = 7;
                                            if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                                serverConfigurationV4 = f27010b;
                                                f27010b = serverConfigurationV4;
                                            }
                                        } else {
                                            Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                                        }
                                        sessionInformationMetricsA = this.d.f26487j.a();
                                        oneAgentStartupImpl = this.d;
                                        if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                                            TracestateHeader.TracestateContext tracestateContext2 = TracestateHeader.f26755a;
                                            TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                                            TracestateHeader.f26756b = f27010b.g;
                                        }
                                        this.d.f26485h.a(new lh0(f27010b, 0));
                                        return Unit.f71739a;
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 1:
                ResultKt.b(obj);
                EndPointInfoDataSource endPointInfoDataSource4 = this.d.f26483e;
                this.f26490c = 2;
                obj = endPointInfoDataSource4.a(this);
                if (obj != coroutineSingletons) {
                    endPointInfo = (EndPointInfo) obj;
                    Utility.b("initialize OneAgent, serverConfiguration: " + this.f26491e + ", localEndPoint: " + endPointInfo + ", activeEndPoint: " + this.d.f26484f);
                    if (!Intrinsics.c(endPointInfo.f26894a, this.d.f26484f.f26894a)) {
                    }
                    Utility.b("initialize OneAgent, clear data because of different endpoint");
                    eventDatabaseDataSource = this.d.f26482c;
                    this.f26490c = 3;
                    if (eventDatabaseDataSource.d(this) != coroutineSingletons) {
                        serverConfigurationDataSource = this.d.d;
                        this.f26490c = 4;
                        if (serverConfigurationDataSource.c(this) != coroutineSingletons) {
                            endPointInfoDataSource = this.d.f26483e;
                            this.f26490c = 5;
                            if (endPointInfoDataSource.c(this) != coroutineSingletons) {
                                OneAgentStartupImpl oneAgentStartupImpl3 = this.d;
                                endPointInfoDataSource2 = oneAgentStartupImpl3.f26483e;
                                endPointInfo2 = oneAgentStartupImpl3.f26484f;
                                this.f26490c = 6;
                                if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                                    f27010b = this.d.d.getF27010b();
                                    i2 = Build.VERSION.SDK_INT;
                                    if (i2 >= 30) {
                                        exitReasonProcessor = this.d.f26481b;
                                        this.f26489b = f27010b;
                                        this.f26490c = 7;
                                        if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                            serverConfigurationV4 = f27010b;
                                            f27010b = serverConfigurationV4;
                                        }
                                    } else {
                                        Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                                    }
                                    sessionInformationMetricsA = this.d.f26487j.a();
                                    oneAgentStartupImpl = this.d;
                                    if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                                        TracestateHeader.TracestateContext tracestateContext3 = TracestateHeader.f26755a;
                                        TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                                        TracestateHeader.f26756b = f27010b.g;
                                    }
                                    this.d.f26485h.a(new lh0(f27010b, 0));
                                    return Unit.f71739a;
                                }
                            }
                        }
                    }
                    break;
                }
                return coroutineSingletons;
            case 2:
                ResultKt.b(obj);
                endPointInfo = (EndPointInfo) obj;
                Utility.b("initialize OneAgent, serverConfiguration: " + this.f26491e + ", localEndPoint: " + endPointInfo + ", activeEndPoint: " + this.d.f26484f);
                if (!Intrinsics.c(endPointInfo.f26894a, this.d.f26484f.f26894a)) {
                    break;
                }
                Utility.b("initialize OneAgent, clear data because of different endpoint");
                eventDatabaseDataSource = this.d.f26482c;
                this.f26490c = 3;
                if (eventDatabaseDataSource.d(this) != coroutineSingletons) {
                    serverConfigurationDataSource = this.d.d;
                    this.f26490c = 4;
                    if (serverConfigurationDataSource.c(this) != coroutineSingletons) {
                        endPointInfoDataSource = this.d.f26483e;
                        this.f26490c = 5;
                        if (endPointInfoDataSource.c(this) != coroutineSingletons) {
                            OneAgentStartupImpl oneAgentStartupImpl4 = this.d;
                            endPointInfoDataSource2 = oneAgentStartupImpl4.f26483e;
                            endPointInfo2 = oneAgentStartupImpl4.f26484f;
                            this.f26490c = 6;
                            if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                                f27010b = this.d.d.getF27010b();
                                i2 = Build.VERSION.SDK_INT;
                                if (i2 >= 30) {
                                    exitReasonProcessor = this.d.f26481b;
                                    this.f26489b = f27010b;
                                    this.f26490c = 7;
                                    if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                        serverConfigurationV4 = f27010b;
                                        f27010b = serverConfigurationV4;
                                    }
                                } else {
                                    Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                                }
                                sessionInformationMetricsA = this.d.f26487j.a();
                                oneAgentStartupImpl = this.d;
                                if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                                    TracestateHeader.TracestateContext tracestateContext4 = TracestateHeader.f26755a;
                                    TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                                    TracestateHeader.f26756b = f27010b.g;
                                }
                                this.d.f26485h.a(new lh0(f27010b, 0));
                                return Unit.f71739a;
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 3:
                ResultKt.b(obj);
                serverConfigurationDataSource = this.d.d;
                this.f26490c = 4;
                if (serverConfigurationDataSource.c(this) != coroutineSingletons) {
                    endPointInfoDataSource = this.d.f26483e;
                    this.f26490c = 5;
                    if (endPointInfoDataSource.c(this) != coroutineSingletons) {
                        OneAgentStartupImpl oneAgentStartupImpl5 = this.d;
                        endPointInfoDataSource2 = oneAgentStartupImpl5.f26483e;
                        endPointInfo2 = oneAgentStartupImpl5.f26484f;
                        this.f26490c = 6;
                        if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                            f27010b = this.d.d.getF27010b();
                            i2 = Build.VERSION.SDK_INT;
                            if (i2 >= 30) {
                                exitReasonProcessor = this.d.f26481b;
                                this.f26489b = f27010b;
                                this.f26490c = 7;
                                if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                    serverConfigurationV4 = f27010b;
                                    f27010b = serverConfigurationV4;
                                }
                            } else {
                                Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                            }
                            sessionInformationMetricsA = this.d.f26487j.a();
                            oneAgentStartupImpl = this.d;
                            if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                                TracestateHeader.TracestateContext tracestateContext5 = TracestateHeader.f26755a;
                                TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                                TracestateHeader.f26756b = f27010b.g;
                            }
                            this.d.f26485h.a(new lh0(f27010b, 0));
                            return Unit.f71739a;
                        }
                    }
                }
                return coroutineSingletons;
            case 4:
                ResultKt.b(obj);
                endPointInfoDataSource = this.d.f26483e;
                this.f26490c = 5;
                if (endPointInfoDataSource.c(this) != coroutineSingletons) {
                    OneAgentStartupImpl oneAgentStartupImpl6 = this.d;
                    endPointInfoDataSource2 = oneAgentStartupImpl6.f26483e;
                    endPointInfo2 = oneAgentStartupImpl6.f26484f;
                    this.f26490c = 6;
                    if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                        f27010b = this.d.d.getF27010b();
                        i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 30) {
                            exitReasonProcessor = this.d.f26481b;
                            this.f26489b = f27010b;
                            this.f26490c = 7;
                            if (exitReasonProcessor.a(this) != coroutineSingletons) {
                                serverConfigurationV4 = f27010b;
                                f27010b = serverConfigurationV4;
                            }
                        } else {
                            Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                        }
                        sessionInformationMetricsA = this.d.f26487j.a();
                        oneAgentStartupImpl = this.d;
                        if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                            TracestateHeader.TracestateContext tracestateContext6 = TracestateHeader.f26755a;
                            TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                            TracestateHeader.f26756b = f27010b.g;
                        }
                        this.d.f26485h.a(new lh0(f27010b, 0));
                        return Unit.f71739a;
                    }
                }
                return coroutineSingletons;
            case 5:
                ResultKt.b(obj);
                OneAgentStartupImpl oneAgentStartupImpl7 = this.d;
                endPointInfoDataSource2 = oneAgentStartupImpl7.f26483e;
                endPointInfo2 = oneAgentStartupImpl7.f26484f;
                this.f26490c = 6;
                if (endPointInfoDataSource2.b(endPointInfo2, this) != coroutineSingletons) {
                    f27010b = this.d.d.getF27010b();
                    i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30) {
                        exitReasonProcessor = this.d.f26481b;
                        this.f26489b = f27010b;
                        this.f26490c = 7;
                        if (exitReasonProcessor.a(this) != coroutineSingletons) {
                            serverConfigurationV4 = f27010b;
                            f27010b = serverConfigurationV4;
                        }
                    } else {
                        Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                    }
                    sessionInformationMetricsA = this.d.f26487j.a();
                    oneAgentStartupImpl = this.d;
                    if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                        TracestateHeader.TracestateContext tracestateContext7 = TracestateHeader.f26755a;
                        TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                        TracestateHeader.f26756b = f27010b.g;
                    }
                    this.d.f26485h.a(new lh0(f27010b, 0));
                    return Unit.f71739a;
                }
                return coroutineSingletons;
            case 6:
                ResultKt.b(obj);
                f27010b = this.d.d.getF27010b();
                i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30) {
                    exitReasonProcessor = this.d.f26481b;
                    this.f26489b = f27010b;
                    this.f26490c = 7;
                    if (exitReasonProcessor.a(this) != coroutineSingletons) {
                        serverConfigurationV4 = f27010b;
                        f27010b = serverConfigurationV4;
                    }
                    return coroutineSingletons;
                }
                Utility.b("ANR and native crash reporting deactivated for API level " + i2);
                sessionInformationMetricsA = this.d.f26487j.a();
                oneAgentStartupImpl = this.d;
                if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                    TracestateHeader.TracestateContext tracestateContext8 = TracestateHeader.f26755a;
                    TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                    TracestateHeader.f26756b = f27010b.g;
                }
                this.d.f26485h.a(new lh0(f27010b, 0));
                return Unit.f71739a;
            case 7:
                serverConfigurationV4 = this.f26489b;
                ResultKt.b(obj);
                f27010b = serverConfigurationV4;
                sessionInformationMetricsA = this.d.f26487j.a();
                oneAgentStartupImpl = this.d;
                if (!Intrinsics.c(sessionInformationMetricsA, SessionInformationMetrics.f26882h)) {
                    TracestateHeader.TracestateContext tracestateContext9 = TracestateHeader.f26755a;
                    TracestateHeader.d(f27010b.f27047f, sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b, oneAgentStartupImpl.f26488k.f26429b);
                    TracestateHeader.f26756b = f27010b.g;
                }
                this.d.f26485h.a(new lh0(f27010b, 0));
                return Unit.f71739a;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
