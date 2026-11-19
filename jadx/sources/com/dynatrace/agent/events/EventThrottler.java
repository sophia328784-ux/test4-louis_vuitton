package com.dynatrace.agent.events;

import com.dynatrace.agent.common.time.TimeProvider;
import defpackage.fc;
import defpackage.zy0;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB?\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler;", "", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "", "maxEventsPerWindow", "windowSizeSeconds", "summaryInterval", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;", "summaryReceiver", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;IIILkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;)V", "EventThrottlerType", "SummaryReceiver", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EventThrottler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f26734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f26736c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f26737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SummaryReceiver f26738f;
    public final LinkedList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ReentrantLock f26739h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile int f26740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f26741j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final EventThrottlerType.EventInvalid f26742k;
    public final LinkedHashSet l;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$SummaryReceiver;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface SummaryReceiver {
        void a(String str);

        void b(String str);
    }

    public EventThrottler(TimeProvider timeProvider, int i2, int i3, int i4, CoroutineScope coroutineScope, SummaryReceiver summaryReceiver) {
        timeProvider.getClass();
        coroutineScope.getClass();
        summaryReceiver.getClass();
        this.f26734a = timeProvider;
        this.f26735b = i2;
        this.f26736c = i3;
        this.d = i4;
        this.f26737e = coroutineScope;
        this.f26738f = summaryReceiver;
        this.g = new LinkedList();
        this.f26739h = new ReentrantLock();
        this.f26741j = CollectionsKt.P(new EventThrottlerType.EventApi(), new EventThrottlerType.EventWrq(), new EventThrottlerType.EventErr(), new EventThrottlerType.EventOth(), new EventThrottlerType.EventBiz(), new EventThrottlerType.EventSfm());
        this.f26742k = new EventThrottlerType.EventInvalid();
        this.l = new LinkedHashSet();
    }

    public static final String b(EventThrottler eventThrottler, List list) {
        List list2 = list;
        final int i2 = 0;
        String strK = CollectionsKt.K(list2, ",", null, null, new Function1() { // from class: com.dynatrace.agent.events.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                EventThrottler.EventThrottlerType eventThrottlerType = (EventThrottler.EventThrottlerType) obj;
                switch (i2) {
                    case 0:
                        eventThrottlerType.getClass();
                        return eventThrottlerType.f26745c + ':' + eventThrottlerType.f26743a;
                    default:
                        eventThrottlerType.getClass();
                        return eventThrottlerType.f26745c + ':' + eventThrottlerType.f26744b;
                }
            }
        }, 30);
        final int i3 = 1;
        String strK2 = CollectionsKt.K(list2, ",", null, null, new Function1() { // from class: com.dynatrace.agent.events.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                EventThrottler.EventThrottlerType eventThrottlerType = (EventThrottler.EventThrottlerType) obj;
                switch (i3) {
                    case 0:
                        eventThrottlerType.getClass();
                        return eventThrottlerType.f26745c + ':' + eventThrottlerType.f26743a;
                    default:
                        eventThrottlerType.getClass();
                        return eventThrottlerType.f26745c + ':' + eventThrottlerType.f26744b;
                }
            }
        }, 30);
        StringBuilder sb = new StringBuilder("Dropped ");
        sb.append(eventThrottler.f26740i);
        sb.append(" events, current limit: ");
        sb.append(eventThrottler.f26735b);
        sb.append(" - type sent: [");
        sb.append(strK);
        sb.append("], dropped: [");
        return fc.l(sb, strK2, ']');
    }

    public static EventThrottlerType c(List list, JSONObject jSONObject) {
        if (jSONObject.optBoolean("characteristics.is_self_monitoring")) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                EventThrottlerType eventThrottlerType = (EventThrottlerType) it.next();
                if (eventThrottlerType instanceof EventThrottlerType.EventSfm) {
                    return eventThrottlerType;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
        }
        if (jSONObject.optBoolean("characteristics.has_request")) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                EventThrottlerType eventThrottlerType2 = (EventThrottlerType) it2.next();
                if (eventThrottlerType2 instanceof EventThrottlerType.EventWrq) {
                    return eventThrottlerType2;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
        }
        if (jSONObject.optBoolean("characteristics.has_error")) {
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                EventThrottlerType eventThrottlerType3 = (EventThrottlerType) it3.next();
                if (eventThrottlerType3 instanceof EventThrottlerType.EventErr) {
                    return eventThrottlerType3;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
        }
        if (jSONObject.optBoolean("characteristics.is_api_reported")) {
            Iterator it4 = list.iterator();
            while (it4.hasNext()) {
                EventThrottlerType eventThrottlerType4 = (EventThrottlerType) it4.next();
                if (eventThrottlerType4 instanceof EventThrottlerType.EventApi) {
                    return eventThrottlerType4;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
        }
        Iterator it5 = list.iterator();
        while (it5.hasNext()) {
            EventThrottlerType eventThrottlerType5 = (EventThrottlerType) it5.next();
            if (eventThrottlerType5 instanceof EventThrottlerType.EventOth) {
                return eventThrottlerType5;
            }
        }
        zy0.c("Collection contains no element matching the predicate.");
        return null;
    }

    public final boolean a(int i2) {
        ReentrantLock reentrantLock = this.f26739h;
        reentrantLock.lock();
        try {
            EventThrottlerType eventThrottlerTypeD = d(i2, this.f26741j);
            if (eventThrottlerTypeD instanceof EventThrottlerType.EventInvalid) {
                LinkedHashSet linkedHashSet = this.l;
                if (linkedHashSet.isEmpty()) {
                    BuildersKt.c(this.f26737e, null, null, new EventThrottler$processInvalidEvent$1(this, null), 3);
                }
                linkedHashSet.add(Integer.valueOf(i2));
            }
            return e(eventThrottlerTypeD);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX WARN: Code duplicated, block: B:71:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:92:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:? A[LOOP:5: B:69:0x00c3->B:93:?, LOOP_END, SYNTHETIC] */
    public final EventThrottlerType d(int i2, List list) {
        Iterator it;
        EventThrottlerType eventThrottlerType;
        if (i2 != 1) {
            if (i2 != 6) {
                if (i2 == 30) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        EventThrottlerType eventThrottlerType2 = (EventThrottlerType) it2.next();
                        if (eventThrottlerType2 instanceof EventThrottlerType.EventWrq) {
                            return eventThrottlerType2;
                        }
                    }
                    zy0.c("Collection contains no element matching the predicate.");
                    return null;
                }
                if (i2 != 40 && i2 != 50) {
                    if (i2 != 60) {
                        if (i2 == 90) {
                            Iterator it3 = list.iterator();
                            while (it3.hasNext()) {
                                EventThrottlerType eventThrottlerType3 = (EventThrottlerType) it3.next();
                                if (eventThrottlerType3 instanceof EventThrottlerType.EventSfm) {
                                    return eventThrottlerType3;
                                }
                            }
                            zy0.c("Collection contains no element matching the predicate.");
                            return null;
                        }
                        if (i2 != 42 && i2 != 43) {
                            if (i2 != 97) {
                                if (i2 == 98) {
                                    Iterator it4 = list.iterator();
                                    while (it4.hasNext()) {
                                        EventThrottlerType eventThrottlerType4 = (EventThrottlerType) it4.next();
                                        if (eventThrottlerType4 instanceof EventThrottlerType.EventBiz) {
                                            return eventThrottlerType4;
                                        }
                                    }
                                    zy0.c("Collection contains no element matching the predicate.");
                                    return null;
                                }
                                switch (i2) {
                                    default:
                                        switch (i2) {
                                            case 19:
                                                break;
                                            case 20:
                                            case 21:
                                            case 22:
                                                break;
                                            default:
                                                return this.f26742k;
                                        }
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                        it = list.iterator();
                                        while (it.hasNext()) {
                                            eventThrottlerType = (EventThrottlerType) it.next();
                                            if (eventThrottlerType instanceof EventThrottlerType.EventApi) {
                                                return eventThrottlerType;
                                            }
                                        }
                                        zy0.c("Collection contains no element matching the predicate.");
                                        return null;
                                }
                            }
                        }
                    }
                }
                Iterator it5 = list.iterator();
                while (it5.hasNext()) {
                    EventThrottlerType eventThrottlerType5 = (EventThrottlerType) it5.next();
                    if (eventThrottlerType5 instanceof EventThrottlerType.EventErr) {
                        return eventThrottlerType5;
                    }
                }
                zy0.c("Collection contains no element matching the predicate.");
                return null;
            }
            Iterator it6 = list.iterator();
            while (it6.hasNext()) {
                EventThrottlerType eventThrottlerType6 = (EventThrottlerType) it6.next();
                if (eventThrottlerType6 instanceof EventThrottlerType.EventOth) {
                    return eventThrottlerType6;
                }
            }
            zy0.c("Collection contains no element matching the predicate.");
            return null;
        }
        it = list.iterator();
        while (it.hasNext()) {
            eventThrottlerType = (EventThrottlerType) it.next();
            if (eventThrottlerType instanceof EventThrottlerType.EventApi) {
                return eventThrottlerType;
            }
        }
        zy0.c("Collection contains no element matching the predicate.");
        return null;
    }

    public final boolean e(EventThrottlerType eventThrottlerType) {
        long jA = this.f26734a.a();
        LinkedList linkedList = this.g;
        Duration.Companion companion = Duration.INSTANCE;
        long jE = jA - Duration.e(DurationKt.g(this.f26736c, DurationUnit.SECONDS));
        while (!linkedList.isEmpty()) {
            Object objPeek = linkedList.peek();
            objPeek.getClass();
            if (((Number) objPeek).longValue() > jE) {
                break;
            }
            linkedList.poll();
        }
        if (this.g.size() < this.f26735b) {
            this.g.add(Long.valueOf(jA));
            eventThrottlerType.f26743a++;
            return true;
        }
        this.f26740i++;
        eventThrottlerType.f26744b++;
        if (this.f26740i != 1) {
            return false;
        }
        BuildersKt.c(this.f26737e, null, null, new EventThrottler$processEventIfPossible$1(this, null), 3);
        return false;
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0007\u0002\u0003\u0004\u0005\u0006\u0007\b\u0082\u0001\u0007\t\n\u000b\f\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "", "EventApi", "EventWrq", "EventErr", "EventOth", "EventBiz", "EventSfm", "EventInvalid", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class EventThrottlerType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f26743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f26744b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26745c;

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventApi;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventApi extends EventThrottlerType {
            public EventApi() {
                super(0, 0, "API", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventBiz;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventBiz extends EventThrottlerType {
            public EventBiz() {
                super(0, 0, "BIZ", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventErr;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventErr extends EventThrottlerType {
            public EventErr() {
                super(0, 0, "ERR", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventInvalid;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventInvalid extends EventThrottlerType {
            public EventInvalid() {
                super(0, 0, "INVALID", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventOth;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventOth extends EventThrottlerType {
            public EventOth() {
                super(0, 0, "OTH", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventSfm;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventSfm extends EventThrottlerType {
            public EventSfm() {
                super(0, 0, "SFM", 3, null);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType$EventWrq;", "Lcom/dynatrace/agent/events/EventThrottler$EventThrottlerType;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class EventWrq extends EventThrottlerType {
            public EventWrq() {
                super(0, 0, "WRQ", 3, null);
            }
        }

        public /* synthetic */ EventThrottlerType(int i2, int i3, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? 0 : i2, (i4 & 2) != 0 ? 0 : i3, str, null);
        }

        public EventThrottlerType(int i2, int i3, String str, DefaultConstructorMarker defaultConstructorMarker) {
            this.f26743a = i2;
            this.f26744b = i3;
            this.f26745c = str;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EventThrottler(TimeProvider timeProvider, int i2, int i3, SummaryReceiver summaryReceiver) {
        this(timeProvider, i2, i3, 0, null, summaryReceiver, 24, null);
        timeProvider.getClass();
        summaryReceiver.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EventThrottler(TimeProvider timeProvider, int i2, SummaryReceiver summaryReceiver) {
        this(timeProvider, i2, 0, 0, null, summaryReceiver, 28, null);
        timeProvider.getClass();
        summaryReceiver.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EventThrottler(TimeProvider timeProvider, int i2, int i3, int i4, SummaryReceiver summaryReceiver) {
        this(timeProvider, i2, i3, i4, null, summaryReceiver, 16, null);
        timeProvider.getClass();
        summaryReceiver.getClass();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public EventThrottler(TimeProvider timeProvider, int i2, int i3, int i4, CoroutineScope coroutineScope, SummaryReceiver summaryReceiver, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        i3 = (i5 & 4) != 0 ? 60 : i3;
        i4 = (i5 & 8) != 0 ? 60 : i4;
        if ((i5 & 16) != 0) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineScope = CoroutineScopeKt.a(DefaultIoScheduler.f75161b);
        }
        this(timeProvider, i2, i3, i4, coroutineScope, summaryReceiver);
    }
}
