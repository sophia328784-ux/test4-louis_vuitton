package com.dynatrace.agent.userinteraction.handler;

import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.userinteraction.NativeGestureCoordinator;
import com.dynatrace.agent.userinteraction.model.GestureIntention;
import com.dynatrace.agent.userinteraction.model.GesturePosition;
import com.dynatrace.agent.userinteraction.model.GestureSequenceResolution;
import com.dynatrace.agent.userinteraction.model.GestureUserInteraction;
import com.dynatrace.agent.userinteraction.model.SequenceState;
import com.dynatrace.agent.userinteraction.util.RectHelper;
import com.dynatrace.agent.userinteraction.util.UptimeToEpochConverter;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import com.dynatrace.agent.util.CoroutineHandler;
import com.dynatrace.android.agent.util.Utility;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator;", "Lcom/dynatrace/agent/util/CoroutineHandler;", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;", "touchHandler", "Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;", "gestureHandler", "Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;", "uptimeToEpochConverter", "Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;", "nativeGestureCoordinator", "Lcom/dynatrace/agent/userinteraction/util/RectHelper;", "rectHelper", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;Lcom/dynatrace/agent/userinteraction/util/UptimeToEpochConverter;Lcom/dynatrace/agent/userinteraction/NativeGestureCoordinator;Lcom/dynatrace/agent/userinteraction/util/RectHelper;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FingerInteractionCoordinator extends CoroutineHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TouchUserInteractionHandler f27114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GestureUserInteractionHandler f27115c;
    public final UptimeToEpochConverter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NativeGestureCoordinator f27116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RectHelper f27117f;
    public SequenceState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Job f27118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ComposeTouchEvent f27119i;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/FingerInteractionCoordinator$Companion;", "", "", "NO_INTERACTION_DELAY", "J", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FingerInteractionCoordinator(CoroutineScope coroutineScope, TouchUserInteractionHandler touchUserInteractionHandler, GestureUserInteractionHandler gestureUserInteractionHandler, UptimeToEpochConverter uptimeToEpochConverter, NativeGestureCoordinator nativeGestureCoordinator, RectHelper rectHelper) {
        super(coroutineScope);
        coroutineScope.getClass();
        touchUserInteractionHandler.getClass();
        gestureUserInteractionHandler.getClass();
        uptimeToEpochConverter.getClass();
        nativeGestureCoordinator.getClass();
        rectHelper.getClass();
        this.f27114b = touchUserInteractionHandler;
        this.f27115c = gestureUserInteractionHandler;
        this.d = uptimeToEpochConverter;
        this.f27116e = nativeGestureCoordinator;
        this.f27117f = rectHelper;
        this.g = SequenceState.Idle.f27166a;
    }

    public final void b(SequenceState.Pending pending) {
        boolean z = pending instanceof SequenceState.Pending.Gesture;
        if (this.f27116e.b(z) == GestureSequenceResolution.SKIP_NATIVE_EVENT) {
            return;
        }
        if (pending instanceof SequenceState.Pending.Touch) {
            SequenceState.Pending.Touch touch = (SequenceState.Pending.Touch) pending;
            this.f27114b.a(touch.f27174c, touch.d, null, touch.f27175e, touch.f27173b);
            return;
        }
        if (!z) {
            v40.g();
            return;
        }
        SequenceState.Pending.Gesture gesture = (SequenceState.Pending.Gesture) pending;
        GestureUserInteraction gestureUserInteraction = gesture.f27167a;
        long j2 = gesture.f27168b;
        long j3 = gesture.f27169c;
        GestureUserInteractionHandler gestureUserInteractionHandler = this.f27115c;
        gestureUserInteractionHandler.getClass();
        gestureUserInteraction.getClass();
        List list = gestureUserInteraction.f27162a;
        Integer num = gestureUserInteraction.f27164c;
        GestureIntention gestureIntention = gestureUserInteraction.f27163b;
        boolean zContains = gestureUserInteractionHandler.f27122c.getF27010b().f27046e.contains("all");
        boolean z2 = !zContains;
        if (zContains) {
            gestureUserInteractionHandler.f27120a.getClass();
            Utility.b("Gesture intention " + gestureIntention.getJsonValue() + "\n\tintention score " + num + "%\n\tduration " + gestureUserInteraction.d + "ms\n\tpositions " + list.size());
        } else {
            Utility.b("Gesture User Interaction suppressed, userInteractions config disabled");
        }
        UserInteractionTracker userInteractionTracker = gestureUserInteractionHandler.f27121b;
        List<GesturePosition> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (GesturePosition gesturePosition : list2) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", (int) gesturePosition.f27158a);
            jSONObject.put("y", (int) gesturePosition.f27159b);
            jSONObject.put("pointer", String.valueOf(gesturePosition.f27160c));
            long j4 = gesturePosition.d;
            if (j4 > 0) {
                jSONObject.put("start_time", j4);
            }
            if (gesturePosition.f27161e) {
                jSONObject.put("released", true);
            }
            arrayList.add(jSONObject);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("characteristics.has_user_interaction", true);
        jSONObject2.put("interaction.type", "gesture");
        jSONObject2.put("interaction.pointers", gestureUserInteraction.f27165e);
        jSONObject2.put("interaction.intention", gestureIntention.getJsonValue());
        if (num != null) {
            jSONObject2.put("interaction.intention_score", num.intValue());
        }
        jSONObject2.put("positions", new JSONArray((Collection) arrayList));
        userInteractionTracker.a(jSONObject2, j2, j3, z2);
    }
}
