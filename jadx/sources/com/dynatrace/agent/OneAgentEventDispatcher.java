package com.dynatrace.agent;

import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.api.AgentState;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.events.EventFlowGovernor;
import com.dynatrace.agent.events.EventThrottler;
import com.dynatrace.agent.events.enrichment.AttributeAggregator;
import com.dynatrace.agent.events.enrichment.EnrichedJsonContainer;
import com.dynatrace.agent.events.enrichment.EnrichmentAttribute;
import com.dynatrace.agent.events.enrichment.EnrichmentContext;
import com.dynatrace.agent.events.enrichment.EnrichmentPipelineKt;
import com.dynatrace.agent.events.enrichment.JsonObjectExtensionsKt;
import com.dynatrace.agent.events.enrichment.ProtectedAttributesSupplier;
import com.dynatrace.agent.events.enrichment.SessionInformationSupplier;
import com.dynatrace.agent.events.enrichment.SourceViewContextSupplier;
import com.dynatrace.agent.events.enrichment.TimeMetrics;
import com.dynatrace.agent.events.enrichment.TimeMetricsSupplierKt;
import com.dynatrace.agent.events.enrichment.ViewContextSupplier;
import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.agent.events.enrichment.sanitation.SanitationContext;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.db.EventDatabaseDataSource;
import com.dynatrace.agent.storage.db.EventRecord;
import com.dynatrace.agent.storage.memory.DynamicConfigDataSource;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.ViewContext;
import com.dynatrace.agent.view.ViewContextHistory;
import com.dynatrace.agent.view.ViewSummarizer;
import com.dynatrace.android.agent.util.Utility;
import defpackage.pq0;
import defpackage.t30;
import defpackage.v40;
import defpackage.x60;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.internal.ws.RealWebSocket;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Lcom/dynatrace/agent/OneAgentEventDispatcher;", "Lcom/dynatrace/agent/RumEventDispatcher;", "Lcom/dynatrace/agent/OneAgentConfiguration;", "oneAgentConfiguration", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;", "eventDatabase", "Lcom/dynatrace/agent/metrics/MetricsRepository;", "metricsRepository", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lcom/dynatrace/agent/view/ViewSummarizer;", "viewSummarizer", "Lcom/dynatrace/agent/view/ViewContextHistory;", "viewContextHistory", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;", "dynamicConfigDataSource", "Lcom/dynatrace/agent/events/EventThrottler;", "eventThrottler", "Lcom/dynatrace/agent/events/EventFlowGovernor;", "eventFlowGovernor", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "<init>", "(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/view/ViewSummarizer;Lcom/dynatrace/agent/view/ViewContextHistory;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/storage/memory/DynamicConfigDataSource;Lcom/dynatrace/agent/events/EventThrottler;Lcom/dynatrace/agent/events/EventFlowGovernor;Lcom/dynatrace/agent/di/SessionInformationProvider;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentEventDispatcher implements RumEventDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OneAgentConfiguration f26435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f26436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EventDatabaseDataSource f26437c;
    public final MetricsRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f26438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewSummarizer f26439f;
    public final ViewContextHistory g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ServerConfigurationDataSource f26440h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DynamicConfigDataSource f26441i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final EventThrottler f26442j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final EventFlowGovernor f26443k;
    public final SessionInformationProvider l;
    public UserActionController m;
    public final ConcurrentLinkedQueue n;

    public OneAgentEventDispatcher(OneAgentConfiguration oneAgentConfiguration, TimeProvider timeProvider, EventDatabaseDataSource eventDatabaseDataSource, MetricsRepository metricsRepository, CoroutineScope coroutineScope, ViewSummarizer viewSummarizer, ViewContextHistory viewContextHistory, ServerConfigurationDataSource serverConfigurationDataSource, DynamicConfigDataSource dynamicConfigDataSource, EventThrottler eventThrottler, EventFlowGovernor eventFlowGovernor, SessionInformationProvider sessionInformationProvider) {
        oneAgentConfiguration.getClass();
        timeProvider.getClass();
        eventDatabaseDataSource.getClass();
        metricsRepository.getClass();
        coroutineScope.getClass();
        viewSummarizer.getClass();
        viewContextHistory.getClass();
        serverConfigurationDataSource.getClass();
        dynamicConfigDataSource.getClass();
        eventThrottler.getClass();
        eventFlowGovernor.getClass();
        sessionInformationProvider.getClass();
        this.f26435a = oneAgentConfiguration;
        this.f26436b = timeProvider;
        this.f26437c = eventDatabaseDataSource;
        this.d = metricsRepository;
        this.f26438e = coroutineScope;
        this.f26439f = viewSummarizer;
        this.g = viewContextHistory;
        this.f26440h = serverConfigurationDataSource;
        this.f26441i = dynamicConfigDataSource;
        this.f26442j = eventThrottler;
        this.f26443k = eventFlowGovernor;
        this.l = sessionInformationProvider;
        this.n = new ConcurrentLinkedQueue();
    }

    /* JADX WARN: Code duplicated, block: B:84:0x0207  */
    public static void g(final OneAgentEventDispatcher oneAgentEventDispatcher, JSONObject jSONObject, final long j2, List list, List list2, SessionInformationMetrics sessionInformationMetrics, x60 x60Var, EnrichmentContext enrichmentContext, int i2) throws JSONException {
        ViewSummarizer viewSummarizer;
        Object objPrevious;
        ArrayList arrayList;
        JSONObject jSONObject2;
        EnrichedJsonContainer enrichedJsonContainerA;
        JSONObject jSONObject3;
        CharSequence charSequenceSubSequence;
        Iterator it;
        Long l;
        Function0 t30Var = (i2 & 32) != 0 ? new t30(oneAgentEventDispatcher, sessionInformationMetrics, 28) : x60Var;
        EnrichmentContext enrichmentContext2 = (i2 & 64) != 0 ? null : enrichmentContext;
        ViewSummarizer viewSummarizer2 = oneAgentEventDispatcher.f26439f;
        ServerConfigurationV4 f27010b = oneAgentEventDispatcher.f26440h.getF27010b();
        AgentState f26930a = oneAgentEventDispatcher.f26441i.getF26930a();
        if (f27010b.d && (f26930a instanceof AgentState.Enabled) && !((AgentState.Enabled) f26930a).f26620a) {
            UserActionController userActionController = oneAgentEventDispatcher.m;
            if (userActionController != null) {
                jSONObject.getClass();
                ReentrantLock reentrantLock = userActionController.f27079f;
                reentrantLock.lock();
                try {
                    userActionController.f27081i.f(jSONObject);
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            ViewContext viewContext = viewSummarizer2.f27234b;
            long jOptLong = jSONObject.optLong("start_time", j2);
            ArrayDeque arrayDeque = oneAgentEventDispatcher.g.f27220a;
            ListIterator<E> listIterator = arrayDeque.listIterator(arrayDeque.getF74615i());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    viewSummarizer = viewSummarizer2;
                    objPrevious = null;
                    break;
                }
                objPrevious = listIterator.previous();
                ViewContextHistory.Entry entry = (ViewContextHistory.Entry) objPrevious;
                viewSummarizer = viewSummarizer2;
                if (entry.f27221a <= jOptLong && ((l = entry.f27223c) == null || l.longValue() >= jOptLong)) {
                    break;
                } else {
                    viewSummarizer2 = viewSummarizer;
                }
            }
            ViewContextHistory.Entry entry2 = (ViewContextHistory.Entry) objPrevious;
            ViewContext viewContext2 = entry2 != null ? entry2.f27222b : null;
            ListBuilder listBuilderV = CollectionsKt.v();
            listBuilderV.addAll((Collection) t30Var.mo47invoke());
            listBuilderV.addAll(list);
            if (viewContext != null) {
                listBuilderV.add(new ViewContextSupplier(viewContext));
            }
            if (viewContext2 != null) {
                if (!Intrinsics.c(viewContext2.f27217a, viewContext != null ? viewContext.f27217a : null)) {
                    listBuilderV.add(new SourceViewContextSupplier(viewContext2));
                }
            }
            AttributeAggregator attributeAggregator = new AttributeAggregator(CollectionsKt.r(listBuilderV));
            ListBuilder listBuilderV2 = CollectionsKt.v();
            OneAgentConfiguration oneAgentConfiguration = oneAgentEventDispatcher.f26435a;
            listBuilderV2.add(new ProtectedAttributesSupplier(oneAgentConfiguration.f26429b, oneAgentConfiguration.f26428a));
            listBuilderV2.addAll(list2);
            AttributeAggregator attributeAggregator2 = new AttributeAggregator(CollectionsKt.r(listBuilderV2));
            ConcurrentLinkedQueue concurrentLinkedQueue = oneAgentEventDispatcher.n;
            concurrentLinkedQueue.getClass();
            Utility.b("rum event: " + jSONObject);
            TreeMap treeMapA = attributeAggregator.a();
            JSONObject jSONObjectB = JsonObjectExtensionsKt.b(jSONObject);
            JSONArray jSONArrayOptJSONArray = jSONObjectB.optJSONArray("dt.support.api.overridden_fields");
            if (jSONArrayOptJSONArray == null) {
                arrayList = new ArrayList();
            } else {
                ArrayList arrayList2 = new ArrayList();
                int length = jSONArrayOptJSONArray.length();
                int i3 = 0;
                while (i3 < length) {
                    if (jSONArrayOptJSONArray.get(i3) instanceof String) {
                        String string = jSONArrayOptJSONArray.getString(i3);
                        string.getClass();
                        arrayList2.add(new EnrichmentAttribute(string, "unknown"));
                    } else {
                        Utility.b("dropped existing overridden_key because it was no String: " + jSONArrayOptJSONArray.get(i3));
                    }
                    i3++;
                    treeMapA = treeMapA;
                }
                arrayList = arrayList2;
            }
            TreeMap treeMap = treeMapA;
            jSONObjectB.remove("dt.support.api.overridden_fields");
            Iterator it2 = treeMap.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry3 = (Map.Entry) it2.next();
                String str = (String) entry3.getKey();
                EnrichmentAttribute enrichmentAttribute = (EnrichmentAttribute) entry3.getValue();
                Object objOpt = jSONObjectB.opt(str);
                if (objOpt != null) {
                    Object obj = enrichmentAttribute.f26767b;
                    String str2 = enrichmentAttribute.f26766a;
                    if (objOpt.equals(obj)) {
                        it = it2;
                        jSONObjectB.put(str, enrichmentAttribute.f26767b);
                    } else {
                        it = it2;
                        Utility.b("auto-enrichment value overwritten: " + enrichmentAttribute + " is overwritten with custom value: " + objOpt);
                        if (JsonAttributeSanitationKt.f26789b.contains(str)) {
                            Iterator it3 = arrayList.iterator();
                            int i4 = 0;
                            while (true) {
                                if (!it3.hasNext()) {
                                    i4 = -1;
                                    break;
                                } else if (Intrinsics.c(((EnrichmentAttribute) it3.next()).f26766a, str2)) {
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                            if (i4 >= 0) {
                                Utility.b("key '" + str2 + "' already in overridden keys list. Replacing it.");
                                arrayList.set(i4, enrichmentAttribute);
                            } else {
                                arrayList.add(enrichmentAttribute);
                            }
                        }
                    }
                } else {
                    it = it2;
                    jSONObjectB.put(str, enrichmentAttribute.f26767b);
                }
                it2 = it;
            }
            EnrichedJsonContainer enrichedJsonContainer = new EnrichedJsonContainer(jSONObjectB, arrayList);
            Iterator it4 = attributeAggregator2.a().entrySet().iterator();
            while (true) {
                boolean zHasNext = it4.hasNext();
                jSONObject2 = enrichedJsonContainer.f26764a;
                if (!zHasNext) {
                    break;
                }
                Map.Entry entry4 = (Map.Entry) it4.next();
                String str3 = (String) entry4.getKey();
                EnrichmentAttribute enrichmentAttribute2 = (EnrichmentAttribute) entry4.getValue();
                if (jSONObject2.has(str3)) {
                    Utility.b("protected attribute integration: encountered key '" + str3 + "' which is protected and will be overwritten with " + enrichmentAttribute2);
                }
                jSONObject2.put(str3, enrichmentAttribute2.f26767b);
            }
            jSONObject2.getClass();
            List list3 = enrichedJsonContainer.f26765b;
            list3.getClass();
            EnrichedJsonContainer enrichedJsonContainer2 = new EnrichedJsonContainer(jSONObject2, list3);
            Regex regex = JsonAttributeSanitationKt.f26788a;
            JSONObject jSONObject4 = enrichedJsonContainer2.f26764a;
            Iterator<String> itKeys = jSONObject4.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!Intrinsics.c(next, "exception.stack_trace")) {
                    Object obj2 = jSONObject4.get(next);
                    if (obj2 instanceof String) {
                        String str4 = (String) obj2;
                        if (str4.length() > 5000) {
                            StringBuilder sbR = pq0.r("sanitation: value of key '", next, "' is too long and thus is trimmed; original length: ");
                            sbR.append(str4.length());
                            sbR.append("; ");
                            Utility.b(sbR.toString());
                            jSONObject4.put(next, StringsKt.V(5000, str4));
                        }
                    }
                }
            }
            Utility.b("rum event after basic enrichment: overridden attributes: " + list3 + "; event: " + jSONObject2);
            if (enrichmentContext2 instanceof WebContext) {
                WebContext webContext = (WebContext) enrichmentContext2;
                JSONObject jSONObject5 = webContext.f26778a;
                if (jSONObject5 == null) {
                    Utility.b("rum event modification: dropping event because enrichment context has no fields");
                    enrichedJsonContainerA = null;
                } else {
                    boolean z = webContext.f26779b;
                    JSONObject jSONObjectB2 = JsonObjectExtensionsKt.b(jSONObject4);
                    JsonObjectExtensionsKt.f(jSONObjectB2, jSONObject5, EmptyList.f71768b);
                    enrichedJsonContainerA = EnrichmentPipelineKt.a(EnrichmentPipelineKt.b(enrichedJsonContainer2, jSONObjectB2, z, false), concurrentLinkedQueue);
                }
            } else {
                if (enrichmentContext2 != null) {
                    v40.g();
                    return;
                }
                enrichedJsonContainerA = EnrichmentPipelineKt.a(enrichedJsonContainer2, concurrentLinkedQueue);
            }
            if (enrichedJsonContainerA == null) {
                jSONObject3 = null;
            } else {
                jSONObject3 = enrichedJsonContainerA.f26764a;
                List list4 = enrichedJsonContainerA.f26765b;
                Utility.b("rum event after modifications: overridden attributes: " + list4 + "; event: " + jSONObject3);
                if (jSONObject3.remove("dt.support.api.overridden_fields") != null) {
                    Utility.b("protected attribute integration: encountered key 'dt.support.api.overridden_fields' which is protected and will be removed");
                }
                if (!list4.isEmpty()) {
                    List list5 = list4;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list5, 10));
                    Iterator it5 = list5.iterator();
                    while (it5.hasNext()) {
                        arrayList3.add(((EnrichmentAttribute) it5.next()).f26766a);
                    }
                    JSONObject jSONObjectPut = jSONObject3.put("dt.support.api.overridden_fields", new JSONArray((Collection) arrayList3));
                    jSONObjectPut.getClass();
                    jSONObject3 = jSONObjectPut;
                }
                if (JsonObjectExtensionsKt.d(jSONObject3) && !JsonObjectExtensionsKt.c("characteristics.has_event_properties", jSONObject3)) {
                    jSONObject3.put("characteristics.has_event_properties", true);
                } else if (JsonObjectExtensionsKt.c("characteristics.has_event_properties", jSONObject3) && !JsonObjectExtensionsKt.d(jSONObject3)) {
                    jSONObject3.remove("characteristics.has_event_properties");
                }
                Utility.b("rum event after full enrichment: " + jSONObject3);
            }
            if (jSONObject3 == null) {
                Utility.b("event has been dropped during enrichment");
                return;
            }
            viewSummarizer.d.a(jSONObject3);
            EventThrottler eventThrottler = oneAgentEventDispatcher.f26442j;
            eventThrottler.getClass();
            ReentrantLock reentrantLock2 = eventThrottler.f26739h;
            reentrantLock2.lock();
            try {
                boolean zE = eventThrottler.e(EventThrottler.c(eventThrottler.f26741j, jSONObject3));
                reentrantLock2.unlock();
                if (!zE) {
                    Utility.b("event is dropped by throttling");
                    return;
                }
                Function2 function2 = new Function2() { // from class: com.dynatrace.agent.a
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        int iIntValue = ((Integer) obj3).intValue();
                        String str5 = (String) obj4;
                        str5.getClass();
                        Utility.b("event is accepted with size " + iIntValue + " bytes");
                        EventRecord eventRecord = new EventRecord(0L, str5, j2, false, iIntValue, 1, null);
                        OneAgentEventDispatcher oneAgentEventDispatcher2 = this.f26499b;
                        BuildersKt.c(oneAgentEventDispatcher2.f26438e, null, null, new OneAgentEventDispatcher$storeEvent$1(oneAgentEventDispatcher2, eventRecord, null), 3);
                        return Unit.f71739a;
                    }
                };
                if (!JsonObjectExtensionsKt.c("characteristics.has_crash", jSONObject3) && !JsonObjectExtensionsKt.c("characteristics.has_anr", jSONObject3) && !JsonObjectExtensionsKt.c("characteristics.has_exception", jSONObject3)) {
                    String string2 = jSONObject3.toString();
                    string2.getClass();
                    byte[] bytes = string2.getBytes(Charsets.UTF_8);
                    bytes.getClass();
                    int length2 = bytes.length;
                    long j3 = ((long) f27010b.f27045c) * RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                    if (length2 <= j3) {
                        function2.invoke(Integer.valueOf(length2), string2);
                        return;
                    }
                    Utility.b("event is dropped because it is too big: " + length2 + " bytes (max: " + j3 + " bytes)");
                    return;
                }
                Charset charset = Charsets.UTF_8;
                byte[] bytes2 = "{\"data_version\":1,\"data\":{\"events\":[".getBytes(charset);
                bytes2.getClass();
                int length3 = bytes2.length;
                byte[] bytes3 = "]}}".getBytes(charset);
                bytes3.getClass();
                int length4 = (f27010b.f27044b * 1024) - (length3 + bytes3.length);
                if (jSONObject3.has("exception.message")) {
                    String string3 = jSONObject3.getString("exception.message");
                    if (string3.length() > 5000) {
                        jSONObject3.put("exception.message", StringsKt.V(5000, string3));
                        Utility.b("trimmed exception message to 5000 characters");
                    }
                }
                String string4 = jSONObject3.toString();
                string4.getClass();
                byte[] bytes4 = string4.getBytes(charset);
                bytes4.getClass();
                int length5 = bytes4.length;
                if (!jSONObject3.has("exception.stack_trace")) {
                    Utility.b("encountered crash/anr/exception event without stacktrace, dropping event");
                    return;
                }
                if (length5 <= length4) {
                    function2.invoke(Integer.valueOf(length5), string4);
                    return;
                }
                int i5 = length5 - length4;
                String string5 = jSONObject3.getString("exception.stack_trace");
                string5.getClass();
                byte[] bytes5 = string5.getBytes(charset);
                bytes5.getClass();
                int length6 = bytes5.length;
                String str5 = new String(ArraysKt.o(bytes5, 0, length6 - i5), charset);
                int length7 = str5.length() - 1;
                if (length7 < 0) {
                    charSequenceSubSequence = "";
                    break;
                }
                while (true) {
                    int i6 = length7 - 1;
                    if (str5.charAt(length7) != 65533) {
                        charSequenceSubSequence = str5.subSequence(0, length7 + 1);
                        break;
                    } else {
                        if (i6 < 0) {
                            charSequenceSubSequence = "";
                            break;
                        }
                        length7 = i6;
                    }
                }
                String string6 = charSequenceSubSequence.toString();
                jSONObject3.put("exception.stack_trace", string6);
                StringBuilder sb = new StringBuilder("trimmed stacktrace to a length of ");
                Charset charset2 = Charsets.UTF_8;
                byte[] bytes6 = string6.getBytes(charset2);
                bytes6.getClass();
                sb.append(bytes6.length);
                sb.append(" bytes (original: ");
                sb.append(length6);
                sb.append(" bytes)");
                Utility.b(sb.toString());
                String string7 = jSONObject3.toString();
                string7.getClass();
                byte[] bytes7 = string7.getBytes(charset2);
                bytes7.getClass();
                function2.invoke(Integer.valueOf(bytes7.length), string7);
            } catch (Throwable th2) {
                reentrantLock2.unlock();
                throw th2;
            }
        }
    }

    public static boolean h(SessionInformationMetrics sessionInformationMetrics) {
        if (!Intrinsics.c(sessionInformationMetrics, SessionInformationMetrics.f26882h)) {
            return false;
        }
        Utility.b("session is null, discarding event");
        return true;
    }

    @Override // com.dynatrace.agent.RumEventDispatcher
    public final void a(long j2, SessionInformationMetrics sessionInformationMetrics, JSONObject jSONObject, boolean z) throws JSONException {
        sessionInformationMetrics.getClass();
        if (h(sessionInformationMetrics)) {
            return;
        }
        jSONObject.put("start_time", j2);
        jSONObject.put("duration", 0L);
        if (z) {
            jSONObject.put("characteristics.is_api_reported", true);
        } else {
            jSONObject.remove("characteristics.is_api_reported");
        }
        this.f26443k.a(new OneAgentEventDispatcher$dispatchEvent$1(this, jSONObject, j2, sessionInformationMetrics, null));
    }

    @Override // com.dynatrace.agent.RumEventDispatcher
    public final void b(JSONObject jSONObject, long j2, SessionInformationMetrics sessionInformationMetrics, MetricsData metricsData) throws JSONException {
        jSONObject.getClass();
        if (h(sessionInformationMetrics)) {
            return;
        }
        jSONObject.put("start_time", j2);
        jSONObject.put("duration", 0);
        jSONObject.remove("characteristics.is_api_reported");
        this.f26443k.a(new OneAgentEventDispatcher$dispatchEvent$4(this, jSONObject, j2, sessionInformationMetrics, metricsData, null));
    }

    @Override // com.dynatrace.agent.RumEventDispatcher
    public final void c(JSONObject jSONObject, long j2, long j3, SessionInformationMetrics sessionInformationMetrics, WebContext webContext) throws JSONException {
        jSONObject.put("start_time", j2);
        jSONObject.put("duration", j3);
        jSONObject.remove("characteristics.is_api_reported");
        this.f26443k.a(new OneAgentEventDispatcher$dispatchEvent$2(this, jSONObject, j2, sessionInformationMetrics, webContext, null));
    }

    @Override // com.dynatrace.agent.RumEventDispatcher
    public final void d(JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics) {
        EventJsonPreparer$ValidationResult valid;
        jSONObject.getClass();
        sessionInformationMetrics.getClass();
        if (h(sessionInformationMetrics)) {
            return;
        }
        Object objOpt = jSONObject.opt("start_time");
        if ((objOpt instanceof Long) || (objOpt instanceof Integer)) {
            Object objOpt2 = jSONObject.opt("duration");
            if ((objOpt2 instanceof Long) || (objOpt2 instanceof Integer)) {
                valid = new EventJsonPreparer$ValidationResult.Valid(((Number) objOpt).longValue());
            } else {
                valid = new EventJsonPreparer$ValidationResult.Invalid("The given JSON event must have a valid duration! json: " + jSONObject);
            }
        } else {
            valid = new EventJsonPreparer$ValidationResult.Invalid("The given JSON event must have a valid start_time! json: " + jSONObject);
        }
        if (valid instanceof EventJsonPreparer$ValidationResult.Invalid) {
            Utility.b(((EventJsonPreparer$ValidationResult.Invalid) valid).f26426a);
        } else if (!(valid instanceof EventJsonPreparer$ValidationResult.Valid)) {
            v40.g();
        } else {
            this.f26443k.a(new OneAgentEventDispatcher$dispatchEvent$3(this, jSONObject, (EventJsonPreparer$ValidationResult.Valid) valid, sessionInformationMetrics, null));
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x008b  */
    /* JADX WARN: Code duplicated, block: B:19:0x0095  */
    /* JADX WARN: Code duplicated, block: B:22:0x009e  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a4  */
    public final void e(JSONObject jSONObject, JSONObject jSONObject2, SessionInformationMetrics sessionInformationMetrics) throws JSONException {
        TimeMetrics timeMetrics;
        TimeMetrics timeMetrics2;
        boolean zHas;
        long j2;
        jSONObject.getClass();
        jSONObject2.getClass();
        sessionInformationMetrics.getClass();
        OneAgentEventDispatcher$dispatchEventWithRestrictions$1 oneAgentEventDispatcher$dispatchEventWithRestrictions$1 = OneAgentEventDispatcher$dispatchEventWithRestrictions$1.f26458b;
        if (h(sessionInformationMetrics)) {
            return;
        }
        SanitationContext sanitationContext = (SanitationContext) oneAgentEventDispatcher$dispatchEventWithRestrictions$1.invoke(jSONObject);
        JSONObject jSONObject3 = sanitationContext.f26797a;
        jSONObject3.getClass();
        if (JsonObjectExtensionsKt.d(jSONObject3)) {
            jSONObject3.put("characteristics.has_event_properties", true);
        }
        JsonObjectExtensionsKt.f(jSONObject3, jSONObject2, EmptyList.f71768b);
        boolean zA = TimeMetricsSupplierKt.a("duration", jSONObject3);
        TimeProvider timeProvider = this.f26436b;
        if (!zA) {
            if (jSONObject3.has("duration")) {
                long jA = timeProvider.a();
                Duration.Companion companion = Duration.INSTANCE;
                timeMetrics2 = new TimeMetrics(jA, DurationKt.g(-1, DurationUnit.MILLISECONDS), null);
            } else {
                long jA2 = timeProvider.a();
                Duration.INSTANCE.getClass();
                timeMetrics = new TimeMetrics(jA2, 0L, null);
            }
            zHas = jSONObject3.has("duration");
            j2 = timeMetrics.f26774a;
            if (zHas) {
                jSONObject3.put("start_time", j2 - jSONObject3.getLong("duration"));
            } else {
                jSONObject3.put("start_time", j2);
            }
            if (TimeMetricsSupplierKt.a("start_time", jSONObject3)) {
                Utility.b("event is dropped because 'start_time' has invalid type or value");
            } else {
                this.f26443k.a(new OneAgentEventDispatcher$dispatchEventWithStrategy$3(this, sanitationContext, j2, timeMetrics, sessionInformationMetrics, null));
            }
        }
        jSONObject3.put("duration", 0L);
        jSONObject3.put("dt.support.api.has_dropped_properties", true);
        long jA3 = timeProvider.a();
        Duration.INSTANCE.getClass();
        timeMetrics2 = new TimeMetrics(jA3, 0L, null);
        timeMetrics = timeMetrics2;
        zHas = jSONObject3.has("duration");
        j2 = timeMetrics.f26774a;
        if (zHas) {
            jSONObject3.put("start_time", j2 - jSONObject3.getLong("duration"));
        } else {
            jSONObject3.put("start_time", j2);
        }
        if (TimeMetricsSupplierKt.a("start_time", jSONObject3)) {
            Utility.b("event is dropped because 'start_time' has invalid type or value");
        } else {
            this.f26443k.a(new OneAgentEventDispatcher$dispatchEventWithStrategy$3(this, sanitationContext, j2, timeMetrics, sessionInformationMetrics, null));
        }
    }

    public final void f(JSONObject jSONObject, SessionInformationMetrics sessionInformationMetrics) throws JSONException {
        jSONObject.getClass();
        if (sessionInformationMetrics == null) {
            sessionInformationMetrics = this.l.a();
        }
        SessionInformationMetrics sessionInformationMetrics2 = sessionInformationMetrics;
        if (h(sessionInformationMetrics2)) {
            return;
        }
        g(this, jSONObject, jSONObject.getLong("start_time"), EmptyList.f71768b, CollectionsKt.O(new SessionInformationSupplier(sessionInformationMetrics2)), sessionInformationMetrics2, null, null, 96);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public OneAgentEventDispatcher(OneAgentConfiguration oneAgentConfiguration, TimeProvider timeProvider, EventDatabaseDataSource eventDatabaseDataSource, MetricsRepository metricsRepository, CoroutineScope coroutineScope, ViewSummarizer viewSummarizer, ViewContextHistory viewContextHistory, ServerConfigurationDataSource serverConfigurationDataSource, DynamicConfigDataSource dynamicConfigDataSource, EventThrottler eventThrottler, EventFlowGovernor eventFlowGovernor, SessionInformationProvider sessionInformationProvider, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        CoroutineScope coroutineScopeA;
        if ((i2 & 16) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineScopeA = CoroutineScopeKt.a(DefaultIoScheduler.f75161b);
        } else {
            coroutineScopeA = coroutineScope;
        }
        this(oneAgentConfiguration, timeProvider, eventDatabaseDataSource, metricsRepository, coroutineScopeA, viewSummarizer, viewContextHistory, serverConfigurationDataSource, dynamicConfigDataSource, eventThrottler, eventFlowGovernor, sessionInformationProvider);
    }
}
