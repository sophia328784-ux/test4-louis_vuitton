package com.dynatrace.agent.useraction;

import com.dynatrace.agent.common.specification.OneAgentSpecification$RetentionSpecifications;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.network.response.JsonExtensionKt;
import com.dynatrace.agent.events.EventBuildingContext;
import com.dynatrace.agent.events.EventContent;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationV4;
import com.dynatrace.agent.util.HexGenerator;
import com.dynatrace.agent.view.ErrorSummaryAccumulator;
import com.dynatrace.android.agent.util.Utility;
import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.cj;
import defpackage.hv0;
import defpackage.i51;
import defpackage.p01;
import defpackage.pq0;
import defpackage.v40;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/dynatrace/agent/useraction/UserActionLifecycle;", "", "Lcom/dynatrace/agent/useraction/UserActionTimer;", "timerScheduler", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigDataSource", "Lkotlin/collections/ArrayDeque;", "Lcom/dynatrace/agent/useraction/RetiredUserAction;", "retiredUas", "Lcom/dynatrace/agent/useraction/UserActionGraveyard;", "graveyard", "Lkotlin/Function1;", "Lcom/dynatrace/agent/events/EventContent;", "", "onDispatch", "<init>", "(Lcom/dynatrace/agent/useraction/UserActionTimer;Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lkotlin/collections/ArrayDeque;Lcom/dynatrace/agent/useraction/UserActionGraveyard;Lkotlin/jvm/functions/Function1;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserActionLifecycle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserActionTimer f27084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimeProvider f27085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfigurationDataSource f27086c;
    public final ArrayDeque d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserActionGraveyard f27087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function1 f27088f;
    public PendingUserAction g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ActiveUserAction f27089h;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27090a;

        static {
            int[] iArr = new int[ActiveUserAction.CompleteReason.values().length];
            try {
                iArr[ActiveUserAction.CompleteReason.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ActiveUserAction.CompleteReason.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ActiveUserAction.CompleteReason.COMPLETED_BY_API.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ActiveUserAction.CompleteReason.INTERRUPTED_BY_AUTOMATIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ActiveUserAction.CompleteReason.INTERRUPTED_BY_API.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ActiveUserAction.CompleteReason.BACKGROUND.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f27090a = iArr;
        }
    }

    public UserActionLifecycle(UserActionTimer userActionTimer, TimeProvider timeProvider, ServerConfigurationDataSource serverConfigurationDataSource, ArrayDeque<RetiredUserAction> arrayDeque, UserActionGraveyard userActionGraveyard, Function1<? super EventContent, Unit> function1) {
        userActionTimer.getClass();
        timeProvider.getClass();
        serverConfigurationDataSource.getClass();
        arrayDeque.getClass();
        userActionGraveyard.getClass();
        function1.getClass();
        this.f27084a = userActionTimer;
        this.f27085b = timeProvider;
        this.f27086c = serverConfigurationDataSource;
        this.d = arrayDeque;
        this.f27087e = userActionGraveyard;
        this.f27088f = function1;
    }

    public static void a(ActiveUserAction activeUserAction, JSONObject jSONObject) {
        activeUserAction.getClass();
        jSONObject.getClass();
        activeUserAction.f27059j.a(jSONObject);
        if (jSONObject.optBoolean("characteristics.has_request")) {
            if (jSONObject.optBoolean("characteristics.is_api_reported")) {
                activeUserAction.g++;
            } else {
                int i2 = activeUserAction.f27057h;
                if (i2 > 0) {
                    activeUserAction.f27057h = i2 - 1;
                }
            }
            activeUserAction.l = Math.max(activeUserAction.l, jSONObject.optLong("duration") + jSONObject.optLong("start_time"));
        }
        if (jSONObject.optBoolean("characteristics.has_navigation")) {
            activeUserAction.l = Math.max(activeUserAction.l, jSONObject.optLong("duration") + jSONObject.optLong("start_time"));
        }
    }

    public final void b() throws JSONException {
        ActiveUserAction activeUserAction = this.f27089h;
        PendingUserAction pendingUserAction = this.g;
        StringBuilder sb = new StringBuilder("background: active=");
        sb.append(activeUserAction != null ? activeUserAction.f27052a : null);
        sb.append(", hasPending=");
        sb.append(pendingUserAction != null);
        Utility.b(sb.toString());
        if (activeUserAction != null) {
            h(ActiveUserAction.CompleteReason.BACKGROUND, this.f27085b.a(), null);
        }
        PendingUserAction pendingUserAction2 = this.g;
        if (pendingUserAction2 != null) {
            if (!pendingUserAction2.d) {
                Utility.b("dispatching pending UIA standalone (startTime=" + pendingUserAction2.f27064a + ')');
                this.f27088f.invoke(new EventContent(new JSONObject(), pendingUserAction2.f27065b));
            }
            this.g = null;
        }
        this.f27084a.a();
    }

    public final void c(SignificantEvent significantEvent) throws JSONException {
        significantEvent.getClass();
        PendingUserAction pendingUserAction = this.g;
        UserActionTimer userActionTimer = this.f27084a;
        if (pendingUserAction == null) {
            ActiveUserAction activeUserAction = this.f27089h;
            if (activeUserAction == null) {
                Utility.b("ignoring significant " + significantEvent + " event: no pending UA and no active UA");
                return;
            }
            if (significantEvent instanceof SignificantEvent.WebRequest) {
                userActionTimer.getClass();
                Utility.b("cancelling end delay");
                Job job = userActionTimer.d;
                if (job != null) {
                    job.cancel(null);
                }
                userActionTimer.d = null;
                activeUserAction.g++;
                activeUserAction.f27057h++;
            } else {
                if (!significantEvent.equals(SignificantEvent.Navigation.f27070a)) {
                    v40.g();
                    return;
                }
                activeUserAction.f27058i++;
                if (activeUserAction.f27055e == ActiveUserAction.Type.SAME_VIEW) {
                    activeUserAction.f27055e = ActiveUserAction.Type.NAVIGATION;
                }
                if (activeUserAction.f27057h == 0) {
                    i(null);
                }
            }
            Utility.b("significant " + significantEvent + " event applied to active UA (instanceId=" + activeUserAction.f27052a + ')');
            return;
        }
        ActiveUserAction.Type type = significantEvent instanceof SignificantEvent.Navigation ? ActiveUserAction.Type.NAVIGATION : ActiveUserAction.Type.SAME_VIEW;
        JSONObject jSONObject = pendingUserAction.f27065b;
        type.getClass();
        ActiveUserAction.Companion companion = ActiveUserAction.m;
        long j2 = pendingUserAction.f27064a;
        UserActionConfigSnapshot userActionConfigSnapshot = pendingUserAction.f27066c;
        UserInteractionMemory.d.getClass();
        jSONObject.getClass();
        int i2 = 1;
        UserInteractionMemory userInteractionMemory = new UserInteractionMemory(JsonExtensionKt.b("interaction.type", jSONObject), JsonExtensionKt.b("ui_element.responder.detected_name", jSONObject), JsonExtensionKt.b("ui_element.responder.name_origin", jSONObject));
        companion.getClass();
        userActionConfigSnapshot.getClass();
        String strA = HexGenerator.a(8);
        ActiveUserAction activeUserAction2 = new ActiveUserAction(strA, j2, type, userActionConfigSnapshot, userInteractionMemory);
        ActiveUserAction activeUserAction3 = this.f27089h;
        if (activeUserAction3 != null) {
            String str = activeUserAction3.f27052a;
            StringBuilder sb = new StringBuilder("significant ");
            sb.append(significantEvent);
            sb.append(" event is promoting pending UA (uaStartTime=");
            sb.append(j2);
            cj.C(sb, ") to active, minting new instanceId=", strA, ", interrupting already active UA (instanceId=", str);
            sb.append(')');
            Utility.b(sb.toString());
            activeUserAction2.f27056f = str;
            userActionTimer.a();
            h(ActiveUserAction.CompleteReason.INTERRUPTED_BY_AUTOMATIC, j2, strA);
        } else {
            Utility.b("significant " + significantEvent + " event is promoting pending UA (uaStartTime=" + j2 + ") to active, minting new instanceId=" + strA);
            userActionTimer.getClass();
            Utility.b("cancelling validation delay");
            Job job2 = userActionTimer.f27098c;
            if (job2 != null) {
                job2.cancel(null);
            }
            userActionTimer.f27098c = null;
        }
        jSONObject.put("user_action.instance_id", strA);
        if (!pendingUserAction.d) {
            this.f27088f.invoke(new EventContent(new JSONObject(), jSONObject));
        }
        if (significantEvent instanceof SignificantEvent.WebRequest) {
            activeUserAction2.g++;
            activeUserAction2.f27057h++;
        } else if (!significantEvent.equals(SignificantEvent.Navigation.f27070a)) {
            v40.g();
            return;
        } else {
            activeUserAction2.f27058i++;
            if (activeUserAction2.f27055e == ActiveUserAction.Type.SAME_VIEW) {
                activeUserAction2.f27055e = ActiveUserAction.Type.NAVIGATION;
            }
        }
        this.f27089h = activeUserAction2;
        this.g = null;
        long j3 = userActionConfigSnapshot.f27073a;
        i51 i51Var = new i51(this, i2);
        userActionTimer.getClass();
        Utility.b("scheduling max duration: " + j3 + NBSSpanMetricUnit.Millisecond);
        Job job3 = userActionTimer.f27099e;
        if (job3 != null) {
            job3.cancel(null);
        }
        userActionTimer.f27099e = BuildersKt.c(userActionTimer.f27096a, null, null, new UserActionTimer$launchTimer$1(j3, userActionTimer, new p01(userActionTimer, i51Var, 20), null), 3);
        if (activeUserAction2.f27057h == 0) {
            i(null);
        }
    }

    public final void d() {
        this.f27084a.a();
        PendingUserAction pendingUserAction = this.g;
        if (pendingUserAction != null) {
            if (!pendingUserAction.d) {
                Utility.b("dispatching pending UIA standalone (startTime=" + pendingUserAction.f27064a + ')');
                this.f27088f.invoke(new EventContent(new JSONObject(), pendingUserAction.f27065b));
            }
            this.g = null;
            Utility.b("uaEnable=false: discarded pending UA, dispatched UIA standalone");
        }
        ActiveUserAction activeUserAction = this.f27089h;
        if (activeUserAction != null) {
            this.f27089h = null;
            Utility.b("uaEnable=false: active UA (instanceId=" + activeUserAction.f27052a + ") discarded");
        }
    }

    public final void e(JSONObject jSONObject, long j2, boolean z) throws JSONException {
        PendingUserAction pendingUserAction = this.g;
        j(jSONObject);
        if (pendingUserAction != null) {
            boolean z2 = pendingUserAction.d;
            StringBuilder sb = new StringBuilder("UIA arrived: replacing pending UA (startTime=");
            sb.append(pendingUserAction.f27064a);
            sb.append("), previous UIA is ");
            sb.append(z2 ? "dropped" : "dispatched standalone");
            Utility.b(sb.toString());
            if (!z2) {
                this.f27088f.invoke(new EventContent(new JSONObject(), pendingUserAction.f27065b));
            }
        } else {
            Utility.b("UIA arrived: creating new pending UA (startTime=" + j2 + ')');
        }
        ServerConfigurationDataSource serverConfigurationDataSource = this.f27086c;
        long j3 = serverConfigurationDataSource.getF27010b().f27050j;
        UserActionConfigSnapshot.Companion companion = UserActionConfigSnapshot.f27072c;
        ServerConfigurationV4 serverConfigurationV4B = serverConfigurationDataSource.getF27010b();
        companion.getClass();
        serverConfigurationV4B.getClass();
        this.g = new PendingUserAction(j2, jSONObject, new UserActionConfigSnapshot(serverConfigurationV4B.f27051k, serverConfigurationV4B.f27049i), z);
        i51 i51Var = new i51(this, 0);
        UserActionTimer userActionTimer = this.f27084a;
        userActionTimer.getClass();
        if (userActionTimer.f27098c != null) {
            Utility.b("scheduling validation delay: " + j3 + "ms (resetting, new UIA arrived during validation period)");
        } else {
            Utility.b("scheduling validation delay: " + j3 + NBSSpanMetricUnit.Millisecond);
        }
        Job job = userActionTimer.f27098c;
        if (job != null) {
            job.cancel(null);
        }
        userActionTimer.f27098c = BuildersKt.c(userActionTimer.f27096a, null, null, new UserActionTimer$launchTimer$1(j3, userActionTimer, new p01(userActionTimer, i51Var, 21), null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:106:0x0219  */
    /* JADX WARN: Code duplicated, block: B:108:0x0221  */
    /* JADX WARN: Code duplicated, block: B:109:0x0228  */
    /* JADX WARN: Code duplicated, block: B:111:0x022c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0109  */
    public final void f(JSONObject jSONObject) throws JSONException {
        RetiredUserAction retiredUserAction;
        ActiveUserAction activeUserAction;
        UserActionMatch active;
        Object next;
        Object next2;
        UserActionMatch graveyard;
        Object next3;
        Object next4;
        long j2;
        ActiveUserAction activeUserAction2;
        jSONObject.getClass();
        boolean zOptBoolean = jSONObject.optBoolean("characteristics.has_user_action");
        ArrayDeque arrayDeque = this.d;
        if (zOptBoolean) {
            String strOptString = jSONObject.optString("user_action.instance_id");
            strOptString.getClass();
            if (strOptString.length() <= 0) {
                strOptString = null;
            }
            if (strOptString == null) {
                graveyard = null;
            } else {
                long jOptLong = jSONObject.optLong("start_time");
                if (!arrayDeque.isEmpty() && !((RetiredUserAction) arrayDeque.first()).f27067a.f27052a.equals(strOptString)) {
                    Utility.b("match ua to event: head-mismatch - UA event (instanceId=" + strOptString + "), retired head (instanceId=" + ((RetiredUserAction) arrayDeque.first()).f27067a.f27052a + "); draining");
                    int i2 = 0;
                    while (!arrayDeque.isEmpty() && !((RetiredUserAction) arrayDeque.first()).f27067a.f27052a.equals(strOptString) && ((RetiredUserAction) arrayDeque.first()).f27067a.f27053b < jOptLong) {
                        g((RetiredUserAction) arrayDeque.first());
                        i2++;
                    }
                    if (arrayDeque.isEmpty() || !((RetiredUserAction) arrayDeque.first()).f27067a.f27052a.equals(strOptString)) {
                        Utility.b("match ua to event: UA event (instanceId=" + strOptString + ") not found in retired queue after draining " + i2 + " UAs");
                    }
                } else if (arrayDeque.isEmpty()) {
                    Utility.b("match ua to event: UA event (instanceId=" + strOptString + ") arrived but retired queue is empty");
                }
                RetiredUserAction retiredUserAction2 = (RetiredUserAction) arrayDeque.n();
                if (retiredUserAction2 == null) {
                    graveyard = null;
                } else {
                    if (!retiredUserAction2.f27067a.f27052a.equals(strOptString)) {
                        retiredUserAction2 = null;
                    }
                    if (retiredUserAction2 != null) {
                        graveyard = new UserActionMatch.SelfRetired(retiredUserAction2);
                    } else {
                        graveyard = null;
                    }
                }
            }
        } else {
            boolean zOptBoolean2 = jSONObject.optBoolean("characteristics.has_request");
            UserActionGraveyard userActionGraveyard = this.f27087e;
            if (zOptBoolean2) {
                long jOptLong2 = jSONObject.optLong("start_time");
                ActiveUserAction activeUserAction3 = this.f27089h;
                if (activeUserAction3 == null || jOptLong2 <= activeUserAction3.f27053b) {
                    Iterator<E> it = arrayDeque.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next3 = null;
                            break;
                        }
                        next3 = it.next();
                        RetiredUserAction retiredUserAction3 = (RetiredUserAction) next3;
                        long j3 = retiredUserAction3.f27067a.f27053b;
                        long j4 = retiredUserAction3.f27068b;
                        if (j3 <= jOptLong2 && jOptLong2 <= j4) {
                            break;
                        }
                    }
                    RetiredUserAction retiredUserAction4 = (RetiredUserAction) next3;
                    if (retiredUserAction4 != null) {
                        graveyard = new UserActionMatch.Retired(retiredUserAction4);
                    } else {
                        Iterator it2 = CollectionsKt.y0(userActionGraveyard.f27083b).iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                next4 = null;
                                break;
                            }
                            next4 = it2.next();
                            GraveyardEntry graveyardEntry = (GraveyardEntry) next4;
                            long j5 = graveyardEntry.f27062b;
                            long j6 = graveyardEntry.f27063c;
                            if (j5 <= jOptLong2 && jOptLong2 <= j6) {
                                break;
                            }
                        }
                        GraveyardEntry graveyardEntry2 = (GraveyardEntry) next4;
                        if (graveyardEntry2 != null) {
                            graveyard = new UserActionMatch.Graveyard(graveyardEntry2);
                        } else {
                            graveyard = null;
                        }
                    }
                } else {
                    active = new UserActionMatch.Active(activeUserAction3);
                    graveyard = active;
                }
            } else if (jSONObject.optBoolean("characteristics.has_user_interaction")) {
                String strOptString2 = jSONObject.optString("ui_element.responder.detected_name");
                strOptString2.getClass();
                if (strOptString2.length() > 0) {
                    String strOptString3 = jSONObject.optString("user_action.instance_id");
                    strOptString3.getClass();
                    if (strOptString3.length() <= 0) {
                        strOptString3 = null;
                    }
                    if (strOptString3 != null) {
                        ActiveUserAction activeUserAction4 = this.f27089h;
                        if (activeUserAction4 == null || !activeUserAction4.f27052a.equals(strOptString3)) {
                            Iterator<E> it3 = arrayDeque.iterator();
                            do {
                                if (!it3.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it3.next();
                            } while (!((RetiredUserAction) next).f27067a.f27052a.equals(strOptString3));
                            RetiredUserAction retiredUserAction5 = (RetiredUserAction) next;
                            if (retiredUserAction5 != null) {
                                graveyard = new UserActionMatch.Retired(retiredUserAction5);
                            } else {
                                Iterator it4 = CollectionsKt.y0(userActionGraveyard.f27083b).iterator();
                                do {
                                    if (!it4.hasNext()) {
                                        next2 = null;
                                        break;
                                    }
                                    next2 = it4.next();
                                } while (!Intrinsics.c(((GraveyardEntry) next2).f27061a, strOptString3));
                                GraveyardEntry graveyardEntry3 = (GraveyardEntry) next2;
                                if (graveyardEntry3 != null) {
                                    graveyard = new UserActionMatch.Graveyard(graveyardEntry3);
                                }
                            }
                        } else {
                            graveyard = new UserActionMatch.Active(activeUserAction4);
                        }
                    }
                } else {
                    retiredUserAction = (RetiredUserAction) arrayDeque.n();
                    if (retiredUserAction != null) {
                        active = new UserActionMatch.Retired(retiredUserAction);
                    } else {
                        activeUserAction = this.f27089h;
                        if (activeUserAction != null) {
                            active = new UserActionMatch.Active(activeUserAction);
                        }
                    }
                    graveyard = active;
                }
                graveyard = null;
            } else {
                retiredUserAction = (RetiredUserAction) arrayDeque.n();
                if (retiredUserAction != null) {
                    active = new UserActionMatch.Retired(retiredUserAction);
                } else {
                    activeUserAction = this.f27089h;
                    if (activeUserAction != null) {
                        active = new UserActionMatch.Active(activeUserAction);
                    } else {
                        graveyard = null;
                    }
                }
                graveyard = active;
            }
        }
        if (graveyard == null) {
            Utility.b("incorporateEvent: event start_time=" + jSONObject.optLong("start_time") + " matched no UA");
            return;
        }
        String str = graveyard.f27091a;
        jSONObject.put("user_action.instance_id", str);
        Utility.b("incorporateEvent: event start_time=" + jSONObject.optLong("start_time") + " attributed to " + Reflection.f71922a.b(graveyard.getClass()).B() + " UA with instanceId=" + str);
        boolean z = graveyard instanceof UserActionMatch.Active;
        if (z) {
            a(((UserActionMatch.Active) graveyard).f27092b, jSONObject);
        } else if (graveyard instanceof UserActionMatch.Retired) {
            a(((UserActionMatch.Retired) graveyard).f27094b.f27067a, jSONObject);
        } else {
            if (graveyard instanceof UserActionMatch.SelfRetired) {
                RetiredUserAction retiredUserAction6 = ((UserActionMatch.SelfRetired) graveyard).f27095b;
                ActiveUserAction.CompleteReason completeReason = retiredUserAction6.f27069c;
                long jLongValue = retiredUserAction6.f27068b;
                ActiveUserAction activeUserAction5 = retiredUserAction6.f27067a;
                switch (WhenMappings.f27090a[completeReason.ordinal()]) {
                    case 1:
                        long j7 = activeUserAction5.l;
                        long j8 = activeUserAction5.f27053b;
                        Long lValueOf = j7 != j8 ? Long.valueOf(j7) : null;
                        if (lValueOf != null) {
                            jLongValue = lValueOf.longValue();
                        }
                        j2 = jLongValue - j8;
                        Utility.b("UA (instanceId=" + activeUserAction5.f27052a + ") finalized: reason=" + retiredUserAction6.f27069c + ", duration=" + j2 + "ms, requests=" + activeUserAction5.g + ", pendingWRs=" + activeUserAction5.f27057h);
                        jSONObject.put("duration", j2);
                        jSONObject.put("user_action.requests.count", activeUserAction5.g);
                        jSONObject.put("user_action.requests.pending_request_count", activeUserAction5.f27057h);
                        jSONObject.put("user_action.navigation_count", activeUserAction5.f27058i);
                        activeUserAction5.f27059j.b(jSONObject);
                        g(retiredUserAction6);
                        break;
                    case 2:
                        j2 = activeUserAction5.f27054c.f27073a;
                        Utility.b("UA (instanceId=" + activeUserAction5.f27052a + ") finalized: reason=" + retiredUserAction6.f27069c + ", duration=" + j2 + "ms, requests=" + activeUserAction5.g + ", pendingWRs=" + activeUserAction5.f27057h);
                        jSONObject.put("duration", j2);
                        jSONObject.put("user_action.requests.count", activeUserAction5.g);
                        jSONObject.put("user_action.requests.pending_request_count", activeUserAction5.f27057h);
                        jSONObject.put("user_action.navigation_count", activeUserAction5.f27058i);
                        activeUserAction5.f27059j.b(jSONObject);
                        g(retiredUserAction6);
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                        j2 = jLongValue - activeUserAction5.f27053b;
                        Utility.b("UA (instanceId=" + activeUserAction5.f27052a + ") finalized: reason=" + retiredUserAction6.f27069c + ", duration=" + j2 + "ms, requests=" + activeUserAction5.g + ", pendingWRs=" + activeUserAction5.f27057h);
                        jSONObject.put("duration", j2);
                        jSONObject.put("user_action.requests.count", activeUserAction5.g);
                        jSONObject.put("user_action.requests.pending_request_count", activeUserAction5.f27057h);
                        jSONObject.put("user_action.navigation_count", activeUserAction5.f27058i);
                        activeUserAction5.f27059j.b(jSONObject);
                        g(retiredUserAction6);
                        break;
                    default:
                        v40.g();
                        break;
                }
                return;
            }
            if (!(graveyard instanceof UserActionMatch.Graveyard)) {
                v40.g();
                return;
            }
        }
        if (z && jSONObject.optBoolean("characteristics.has_request") && (activeUserAction2 = this.f27089h) != null && activeUserAction2.f27057h == 0) {
            Utility.b("restartEndDelayTimerIfNeeded: active UA (instanceId=" + ((UserActionMatch.Active) graveyard).f27092b.f27052a + ") has no more pending WRs, scheduling end delay");
            i(Long.valueOf(jSONObject.optLong("duration") + jSONObject.optLong("start_time")));
        }
    }

    public final void g(RetiredUserAction retiredUserAction) {
        this.d.remove(retiredUserAction);
        ActiveUserAction activeUserAction = retiredUserAction.f27067a;
        if (activeUserAction.f27057h <= 0) {
            Utility.b("retired UA (instanceId=" + activeUserAction.f27052a + ") released to oblivion (UA is done)");
            return;
        }
        GraveyardEntry graveyardEntry = new GraveyardEntry(activeUserAction.f27052a, activeUserAction.f27053b, retiredUserAction.f27068b);
        UserActionGraveyard userActionGraveyard = this.f27087e;
        userActionGraveyard.getClass();
        ArrayDeque arrayDeque = userActionGraveyard.f27083b;
        arrayDeque.addLast(graveyardEntry);
        long j2 = graveyardEntry.f27063c - userActionGraveyard.f27082a;
        int i2 = 0;
        while (!arrayDeque.isEmpty() && ((GraveyardEntry) arrayDeque.first()).f27062b < j2) {
            arrayDeque.removeFirst();
            i2++;
        }
        String str = graveyardEntry.f27061a;
        if (i2 > 0) {
            Utility.b("graveyard: buried " + str + ", evicted " + i2 + " stale entry(s)");
        } else {
            Utility.b("graveyard: buried " + str);
        }
        Utility.b("retired UA (instanceId=" + activeUserAction.f27052a + ") released to graveyard (pendingWRs > 0)");
    }

    public final void h(ActiveUserAction.CompleteReason completeReason, long j2, String str) throws JSONException {
        ArrayDeque arrayDeque;
        ActiveUserAction activeUserAction = this.f27089h;
        if (activeUserAction == null) {
            return;
        }
        String str2 = activeUserAction.f27052a;
        this.f27089h = null;
        Utility.b("retiring active UA (instanceId=" + str2 + "): reason=" + completeReason);
        long jE = j2 - Duration.e(OneAgentSpecification$RetentionSpecifications.f26510a);
        int i2 = 0;
        while (true) {
            arrayDeque = this.d;
            if (arrayDeque.isEmpty() || ((RetiredUserAction) arrayDeque.first()).f27067a.f27053b >= jE) {
                break;
            }
            g((RetiredUserAction) arrayDeque.first());
            i2++;
        }
        if (i2 > 0) {
            Utility.b("pruned " + i2 + " stale retired UA(s)");
        }
        arrayDeque.addLast(new RetiredUserAction(activeUserAction, j2, completeReason, str));
        long j3 = activeUserAction.f27053b;
        completeReason.getClass();
        EventBuildingContext eventBuildingContext = activeUserAction.f27060k;
        eventBuildingContext.getClass();
        JSONObject jSONObjectPut = new JSONObject().put("start_time", j3).put("duration", j2 - j3).put("characteristics.has_user_action", true).put("user_action.instance_id", str2).put("user_action.type", activeUserAction.f27055e.getType()).put("user_action.complete_reason", completeReason.getReason()).put("user_action.requests.count", activeUserAction.g).put("user_action.requests.pending_request_count", activeUserAction.f27057h).put("user_action.navigation_count", activeUserAction.f27058i);
        if (str != null) {
            jSONObjectPut.put("user_action.interrupted_by_instance_id", str);
        }
        String str3 = activeUserAction.f27056f;
        if (str3 != null) {
            jSONObjectPut.put("user_action.interrupted_instance_id", str3);
        }
        ErrorSummaryAccumulator errorSummaryAccumulator = activeUserAction.f27059j;
        jSONObjectPut.getClass();
        errorSummaryAccumulator.b(jSONObjectPut);
        UserInteractionMemory userInteractionMemory = activeUserAction.d;
        String str4 = userInteractionMemory.f27104a;
        if (str4 != null) {
            jSONObjectPut.put("interaction.type", str4);
        }
        String str5 = userInteractionMemory.f27105b;
        if (str5 != null) {
            jSONObjectPut.put("ui_element.detected_name", str5);
        }
        String str6 = userInteractionMemory.f27106c;
        if (str6 != null) {
            jSONObjectPut.put("ui_element.name_origin", str6);
        }
        this.f27088f.invoke(new EventContent(eventBuildingContext.f26725a, jSONObjectPut));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001d  */
    public final void i(Long l) {
        UserActionConfigSnapshot userActionConfigSnapshot;
        long jA;
        ActiveUserAction activeUserAction = this.f27089h;
        if (activeUserAction == null || (userActionConfigSnapshot = activeUserAction.f27054c) == null) {
            return;
        }
        long j2 = userActionConfigSnapshot.f27074b;
        if (l != null) {
            jA = this.f27085b.a() - l.longValue();
            if (jA < 0) {
                jA = 0;
            }
        } else {
            jA = 0;
        }
        long j3 = j2 - jA;
        long j4 = j3 < 0 ? 0L : j3;
        StringBuilder sbQ = pq0.q(j4, "scheduling end delay: ", "ms (configured=");
        sbQ.append(j2);
        sbQ.append("ms, pipelineLatency=");
        sbQ.append(jA);
        sbQ.append("ms)");
        Utility.b(sbQ.toString());
        p01 p01Var = new p01(this, this.f27089h, 19);
        UserActionTimer userActionTimer = this.f27084a;
        userActionTimer.getClass();
        Utility.b("scheduling end delay: " + j4 + NBSSpanMetricUnit.Millisecond);
        Job job = userActionTimer.d;
        if (job != null) {
            job.cancel(null);
        }
        userActionTimer.d = BuildersKt.c(userActionTimer.f27096a, null, null, new UserActionTimer$launchTimer$1(j4, userActionTimer, new hv0(p01Var, 24), null), 3);
    }

    public final void j(JSONObject jSONObject) throws JSONException {
        ActiveUserAction activeUserAction = this.f27089h;
        if (activeUserAction == null) {
            return;
        }
        String str = activeUserAction.f27052a;
        Utility.b("stampWithActiveUa: stamping UIA with active UA (instanceId=" + str + ')');
        jSONObject.put("user_action.instance_id", str);
    }

    public /* synthetic */ UserActionLifecycle(UserActionTimer userActionTimer, TimeProvider timeProvider, ServerConfigurationDataSource serverConfigurationDataSource, ArrayDeque arrayDeque, UserActionGraveyard userActionGraveyard, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(userActionTimer, timeProvider, serverConfigurationDataSource, (i2 & 8) != 0 ? new ArrayDeque() : arrayDeque, (i2 & 16) != 0 ? new UserActionGraveyard(0L, 1, null) : userActionGraveyard, function1);
    }
}
