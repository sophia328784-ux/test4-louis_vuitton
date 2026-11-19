package com.dynatrace.agent.exitreason;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import com.dynatrace.agent.RumEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.exitreason.convertor.ExitReasonConverter;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.android.agent.util.Utility;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.squareup.wire.ProtoReader;
import defpackage.Tombstone;
import defpackage.Tombstone$Companion$ADAPTER$1;
import defpackage.fc;
import defpackage.iv;
import defpackage.md;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import okio.Okio;
import okio.RealBufferedSource;
import org.json.JSONException;
import org.json.JSONObject;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0017BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;", "", "Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;", "exitReasonEventConvertor", "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;", "exitReasonTimestampDataSource", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "", "retentionTime", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/dynatrace/agent/RumEventDispatcher;", "rumEventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/metrics/MetricsRepository;", "metricsRepository", "", "isNativeCrashReportingEnabled", "isAnrReportingEnabled", "<init>", "(Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;JLandroid/content/Context;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;ZZ)V", "EventWithTimestamp", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExitReasonProcessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExitReasonConverter f26803a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataStoreExitReasonTimestampDataSource f26804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TimeProvider f26805c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f26806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RumEventDispatcher f26807f;
    public final SessionInformationProvider g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MetricsRepository f26808h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f26809i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f26810j;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;", "", "Lorg/json/JSONObject;", MvelScriptManager.VAR_EVENT, "", "timestamp", "<init>", "(Lorg/json/JSONObject;J)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class EventWithTimestamp {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final JSONObject f26811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f26812b;

        public EventWithTimestamp(JSONObject jSONObject, long j2) {
            jSONObject.getClass();
            this.f26811a = jSONObject;
            this.f26812b = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EventWithTimestamp)) {
                return false;
            }
            EventWithTimestamp eventWithTimestamp = (EventWithTimestamp) obj;
            return Intrinsics.c(this.f26811a, eventWithTimestamp.f26811a) && this.f26812b == eventWithTimestamp.f26812b;
        }

        public final int hashCode() {
            return Long.hashCode(this.f26812b) + (this.f26811a.hashCode() * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("EventWithTimestamp(event=");
            sb.append(this.f26811a);
            sb.append(", timestamp=");
            return fc.k(sb, this.f26812b, ')');
        }
    }

    public ExitReasonProcessor(ExitReasonConverter exitReasonConverter, DataStoreExitReasonTimestampDataSource dataStoreExitReasonTimestampDataSource, TimeProvider timeProvider, long j2, Context context, RumEventDispatcher rumEventDispatcher, SessionInformationProvider sessionInformationProvider, MetricsRepository metricsRepository, boolean z, boolean z2) {
        exitReasonConverter.getClass();
        dataStoreExitReasonTimestampDataSource.getClass();
        timeProvider.getClass();
        context.getClass();
        rumEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        metricsRepository.getClass();
        this.f26803a = exitReasonConverter;
        this.f26804b = dataStoreExitReasonTimestampDataSource;
        this.f26805c = timeProvider;
        this.d = j2;
        this.f26806e = context;
        this.f26807f = rumEventDispatcher;
        this.g = sessionInformationProvider;
        this.f26808h = metricsRepository;
        this.f26809i = z;
        this.f26810j = z2;
    }

    public final Object a(Continuation continuation) throws IOException {
        MetricsData metricsData = this.f26808h.f26872i;
        if (metricsData == null) {
            Utility.b("ANR and native crash reporting disabled because we do not have metrics from previous session");
            return Unit.f71739a;
        }
        boolean z = this.g.a().f26885c;
        boolean z2 = (this.f26809i || this.f26810j) && z;
        Object systemService = this.f26806e.getSystemService(ActionFloatingViewItem.f37018a);
        systemService.getClass();
        try {
            List<ApplicationExitInfo> historicalProcessExitReasons = ((ActivityManager) systemService).getHistoricalProcessExitReasons(null, 0, 0);
            if (historicalProcessExitReasons.isEmpty()) {
                Utility.b("there are no exit reasons");
                return Unit.f71739a;
            }
            if (!z2) {
                Utility.b("ANR and native crash reporting disabled because:isNativeCrashReportingEnabled=" + this.f26809i + ", isAnrReportingEnabled=" + this.f26810j + ",isGrailEventsCanBeCaptured=" + z);
                Object objB = this.f26804b.b(this.f26805c.a(), (ContinuationImpl) continuation);
                return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
            }
            if (metricsData.r && metricsData.q) {
                Utility.b("start processing exit reasons");
                Object objB2 = b(historicalProcessExitReasons, metricsData, (ContinuationImpl) continuation);
                return objB2 == CoroutineSingletons.COROUTINE_SUSPENDED ? objB2 : Unit.f71739a;
            }
            Utility.b("ANRs or native crashes are not reported because previous session should not capture it: sessionActive=" + metricsData.r + ", crashReportingOptIn=" + metricsData.q);
            Object objB3 = this.f26804b.b(this.f26805c.a(), (ContinuationImpl) continuation);
            return objB3 == CoroutineSingletons.COROUTINE_SUSPENDED ? objB3 : Unit.f71739a;
        } catch (Exception unused) {
            Utility.a();
            return Unit.f71739a;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x023d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:102:? A[LOOP:0: B:85:0x0204->B:102:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:87:0x020a  */
    public final Object b(List list, MetricsData metricsData, ContinuationImpl continuationImpl) throws IOException {
        ExitReasonProcessor$processExitReasons$1 exitReasonProcessor$processExitReasons$1;
        List list2;
        MetricsData metricsData2;
        ExitReasonProcessor exitReasonProcessor;
        Object obj;
        Iterator it;
        MetricsData metricsData3;
        ExitReasonProcessor exitReasonProcessor2;
        Tombstone tombstone;
        JSONObject jSONObjectA;
        DataStoreExitReasonTimestampDataSource dataStoreExitReasonTimestampDataSource;
        long j2;
        if (continuationImpl instanceof ExitReasonProcessor$processExitReasons$1) {
            exitReasonProcessor$processExitReasons$1 = (ExitReasonProcessor$processExitReasons$1) continuationImpl;
            int i2 = exitReasonProcessor$processExitReasons$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                exitReasonProcessor$processExitReasons$1.g = i2 - Integer.MIN_VALUE;
            } else {
                exitReasonProcessor$processExitReasons$1 = new ExitReasonProcessor$processExitReasons$1(this, continuationImpl);
            }
        } else {
            exitReasonProcessor$processExitReasons$1 = new ExitReasonProcessor$processExitReasons$1(this, continuationImpl);
        }
        Object obj2 = exitReasonProcessor$processExitReasons$1.f26815e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = exitReasonProcessor$processExitReasons$1.g;
        if (i3 == 0) {
            ResultKt.b(obj2);
            exitReasonProcessor$processExitReasons$1.f26813b = this;
            list2 = list;
            exitReasonProcessor$processExitReasons$1.f26814c = list2;
            metricsData2 = metricsData;
            exitReasonProcessor$processExitReasons$1.d = metricsData2;
            exitReasonProcessor$processExitReasons$1.g = 1;
            Object objA = this.f26804b.a(exitReasonProcessor$processExitReasons$1);
            if (objA != coroutineSingletons) {
                exitReasonProcessor = this;
                obj = objA;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            MetricsData metricsData4 = (MetricsData) exitReasonProcessor$processExitReasons$1.d;
            List list3 = (List) exitReasonProcessor$processExitReasons$1.f26814c;
            exitReasonProcessor = exitReasonProcessor$processExitReasons$1.f26813b;
            ResultKt.b(obj2);
            metricsData2 = metricsData4;
            obj = obj2;
            list2 = list3;
        } else {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            it = (Iterator) exitReasonProcessor$processExitReasons$1.d;
            MetricsData metricsData5 = (MetricsData) exitReasonProcessor$processExitReasons$1.f26814c;
            exitReasonProcessor2 = exitReasonProcessor$processExitReasons$1.f26813b;
            ResultKt.b(obj2);
            metricsData3 = metricsData5;
        }
        while (it.hasNext()) {
            EventWithTimestamp eventWithTimestamp = (EventWithTimestamp) it.next();
            exitReasonProcessor2.f26807f.b(eventWithTimestamp.f26811a, eventWithTimestamp.f26812b, new SessionInformationMetrics(metricsData3.n, metricsData3.o, true, true, true, SessionInformationMetrics.DataCollectionLevel.PERFORMANCE), metricsData3);
            dataStoreExitReasonTimestampDataSource = exitReasonProcessor2.f26804b;
            j2 = eventWithTimestamp.f26812b;
            exitReasonProcessor$processExitReasons$1.f26813b = exitReasonProcessor2;
            exitReasonProcessor$processExitReasons$1.f26814c = metricsData3;
            exitReasonProcessor$processExitReasons$1.d = it;
            exitReasonProcessor$processExitReasons$1.g = 2;
            if (dataStoreExitReasonTimestampDataSource.b(j2, exitReasonProcessor$processExitReasons$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.f71739a;
        long jLongValue = ((Number) obj).longValue();
        long jA = exitReasonProcessor.f26805c.a() - exitReasonProcessor.d;
        ArrayList arrayList = new ArrayList();
        for (Object obj3 : list2) {
            ApplicationExitInfo applicationExitInfo = (ApplicationExitInfo) obj3;
            if (applicationExitInfo.getTimestamp() > jLongValue && applicationExitInfo.getTimestamp() > jA) {
                arrayList.add(obj3);
            }
        }
        List listF0 = CollectionsKt.f0(arrayList);
        ArrayList<ApplicationExitInfo> arrayList2 = new ArrayList();
        for (Object obj4 : listF0) {
            int reason = ((ApplicationExitInfo) obj4).getReason();
            if (reason != 5 ? reason != 6 ? false : exitReasonProcessor.f26810j : exitReasonProcessor.f26809i) {
                arrayList2.add(obj4);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (ApplicationExitInfo applicationExitInfo2 : arrayList2) {
            ExitReasonConverter exitReasonConverter = exitReasonProcessor.f26803a;
            int reason2 = applicationExitInfo2.getReason();
            if (reason2 == 5) {
                exitReasonConverter.getClass();
                Utility.b("native crash " + applicationExitInfo2);
                try {
                    InputStream traceInputStream = applicationExitInfo2.getTraceInputStream();
                    if (traceInputStream != null) {
                        Tombstone$Companion$ADAPTER$1 tombstone$Companion$ADAPTER$1 = Tombstone.B;
                        tombstone$Companion$ADAPTER$1.getClass();
                        tombstone = (Tombstone) tombstone$Companion$ADAPTER$1.c(new ProtoReader(new RealBufferedSource(Okio.f(traceInputStream))));
                    } else {
                        tombstone = null;
                    }
                    if (tombstone != null) {
                        jSONObjectA = ExitReasonConverter.b(tombstone, applicationExitInfo2.getDescription());
                    } else {
                        jSONObjectA = ExitReasonConverter.a();
                        jSONObjectA.put("characteristics.has_crash", true);
                        String description = applicationExitInfo2.getDescription();
                        if (description == null) {
                            Utility.b("applicationExitInfo.description is null");
                        } else {
                            jSONObjectA.put("exception.message", description);
                        }
                    }
                } catch (Exception unused) {
                    Utility.b("native crash event cannot be created");
                    jSONObjectA = null;
                }
            } else if (reason2 != 6) {
                jSONObjectA = null;
            } else {
                exitReasonConverter.getClass();
                Utility.b("anr " + applicationExitInfo2);
                try {
                    jSONObjectA = ExitReasonConverter.a();
                    jSONObjectA.put("characteristics.has_anr", true);
                    if (applicationExitInfo2.getDescription() != null) {
                        jSONObjectA.put("exception.message", applicationExitInfo2.getDescription());
                    }
                    InputStream traceInputStream2 = applicationExitInfo2.getTraceInputStream();
                    if (traceInputStream2 != null) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(traceInputStream2, Charsets.UTF_8), 8192);
                        try {
                            String strB = TextStreamsKt.b(bufferedReader);
                            bufferedReader.close();
                            String strP = SequencesKt.p(SequencesKt.r(Regex.c(new Regex("(?ms)^\".*?(?=\\n\\s*(?:DumpLatency|\\s*$))"), strB), new iv(15)), "\n\n");
                            if (strP.length() > 0) {
                                jSONObjectA.put("exception.stack_trace", strP);
                            } else {
                                Utility.b("anr threads don't match pattern");
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(bufferedReader, th);
                                throw th2;
                            }
                        }
                    }
                } catch (JSONException unused2) {
                    Utility.b("anr event cannot be created");
                    jSONObjectA = null;
                }
            }
            EventWithTimestamp eventWithTimestamp2 = jSONObjectA != null ? new EventWithTimestamp(jSONObjectA, applicationExitInfo2.getTimestamp()) : null;
            if (eventWithTimestamp2 != null) {
                arrayList3.add(eventWithTimestamp2);
            }
        }
        it = arrayList3.iterator();
        metricsData3 = metricsData2;
        exitReasonProcessor2 = exitReasonProcessor;
        while (it.hasNext()) {
            EventWithTimestamp eventWithTimestamp3 = (EventWithTimestamp) it.next();
            exitReasonProcessor2.f26807f.b(eventWithTimestamp3.f26811a, eventWithTimestamp3.f26812b, new SessionInformationMetrics(metricsData3.n, metricsData3.o, true, true, true, SessionInformationMetrics.DataCollectionLevel.PERFORMANCE), metricsData3);
            dataStoreExitReasonTimestampDataSource = exitReasonProcessor2.f26804b;
            j2 = eventWithTimestamp3.f26812b;
            exitReasonProcessor$processExitReasons$1.f26813b = exitReasonProcessor2;
            exitReasonProcessor$processExitReasons$1.f26814c = metricsData3;
            exitReasonProcessor$processExitReasons$1.d = it;
            exitReasonProcessor$processExitReasons$1.g = 2;
            if (dataStoreExitReasonTimestampDataSource.b(j2, exitReasonProcessor$processExitReasons$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.f71739a;
    }
}
