package com.dynatrace.agent.userinteraction.handler;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.userinteraction.model.TouchAction;
import com.dynatrace.agent.userinteraction.model.TouchEvent;
import com.dynatrace.agent.userinteraction.model.TouchUserInteraction;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionGenerator;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionKt;
import com.dynatrace.agent.userinteraction.model.UiElement;
import com.dynatrace.agent.userinteraction.util.UserInteractionLogger;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import com.dynatrace.agent.userinteraction.util.UserInteractionUtilKt;
import com.dynatrace.android.agent.util.Utility;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;", "userInteractionLogger", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;", "userInteractionTracker", "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;", "touchUserInteractionGenerator", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;", "userInteractionConfig", "<init>", "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TouchUserInteractionHandler implements UserInteractionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInteractionLogger f27126a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserInteractionTracker f27127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TouchUserInteractionGenerator f27128c;
    public final ServerConfigurationDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserInteractionConfig f27129e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/TouchUserInteractionHandler$Companion;", "", "", "COMPOSE_VIEW_SUFFIX", "Ljava/lang/String;", "COMPOSE_VIEWS_HANDLER_NAME", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public TouchUserInteractionHandler(UserInteractionLogger userInteractionLogger, UserInteractionTracker userInteractionTracker, TouchUserInteractionGenerator touchUserInteractionGenerator, ServerConfigurationDataSource serverConfigurationDataSource, UserInteractionConfig userInteractionConfig) {
        userInteractionLogger.getClass();
        userInteractionTracker.getClass();
        touchUserInteractionGenerator.getClass();
        serverConfigurationDataSource.getClass();
        userInteractionConfig.getClass();
        this.f27126a = userInteractionLogger;
        this.f27127b = userInteractionTracker;
        this.f27128c = touchUserInteractionGenerator;
        this.d = serverConfigurationDataSource;
        this.f27129e = userInteractionConfig;
    }

    public final void a(TouchEvent touchEvent, ViewGroup viewGroup, View view, ComposeTouchEvent composeTouchEvent, long j2) throws JSONException {
        TouchUserInteraction touchUserInteractionB;
        touchEvent.getClass();
        viewGroup.getClass();
        boolean z = (this.f27129e.a() && this.d.getF27010b().f27046e.contains("all")) ? false : true;
        if (z) {
            Utility.b("Touch User Interaction suppressed, userInteractions config disabled for touches");
        }
        TouchUserInteractionGenerator touchUserInteractionGenerator = this.f27128c;
        if (composeTouchEvent != 0 && view == null) {
            touchUserInteractionB = touchUserInteractionGenerator.b(CollectionsKt.O(touchEvent), viewGroup, null);
            if (touchUserInteractionB == null) {
                touchUserInteractionB = touchUserInteractionGenerator.a(touchEvent, composeTouchEvent);
                break;
            }
            List<String> list = touchUserInteractionB.f27182b.f27190b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (String str : list) {
                    if (StringsKt.k(str, "ComposeView", false) || str.equals("AndroidViewsHandler")) {
                        touchUserInteractionB = touchUserInteractionGenerator.a(touchEvent, composeTouchEvent);
                        break;
                    }
                }
            }
        } else {
            touchUserInteractionB = touchUserInteractionGenerator.b(CollectionsKt.O(touchEvent), viewGroup, view);
        }
        if (touchUserInteractionB != null) {
            UiElement uiElement = touchUserInteractionB.f27182b;
            UiElement uiElement2 = touchUserInteractionB.f27183c;
            if (!z) {
                this.f27126a.getClass();
                StringBuilder sb = new StringBuilder("Responder view ");
                sb.append(uiElement2 != null ? UserInteractionLogger.a(uiElement2) : "NULL");
                sb.append("\n\tElement view ");
                sb.append(uiElement != null ? UserInteractionLogger.a(uiElement) : "NULL");
                Utility.b(sb.toString());
            }
            List<TouchEvent> list2 = touchUserInteractionB.f27181a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (TouchEvent touchEvent2 : list2) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("x", (int) touchEvent2.f27179b);
                jSONObject.put("y", (int) touchEvent2.f27180c);
                arrayList.add(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("characteristics.has_user_interaction", true);
            jSONObject2.put("interaction.type", "touch");
            if (uiElement2 != null) {
                UiElement.Name name = uiElement2.f27189a;
                jSONObject2.put("ui_element.responder.detected_name", name.f27192a);
                jSONObject2.put("ui_element.responder.name_origin", TouchUserInteractionKt.a(name.f27193b));
                jSONObject2.put("ui_element.responder.components", new JSONArray((Collection) uiElement2.f27190b));
                jSONObject2.put("ui_element.responder.id", uiElement2.f27191c);
            }
            jSONObject2.put("ui_element.detected_name", uiElement.f27189a.f27192a);
            jSONObject2.put("ui_element.name_origin", TouchUserInteractionKt.a(uiElement.f27189a.f27193b));
            jSONObject2.put("ui_element.components", new JSONArray((Collection) uiElement.f27190b));
            jSONObject2.put("ui_element.id", uiElement.f27191c);
            jSONObject2.put("positions", new JSONArray((Collection) arrayList));
            this.f27127b.a(jSONObject2, 0L, j2, z);
        }
    }

    public final void b(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (this.f27129e.a()) {
            TouchEvent touchEvent = new TouchEvent(UserInteractionUtilKt.b(motionEvent), motionEvent.getX(0), motionEvent.getY(0));
            this.f27126a.getClass();
            TouchAction touchAction = TouchAction.MOVE;
            TouchAction touchAction2 = touchEvent.f27178a;
            if (touchAction2 != touchAction) {
                Utility.b("Received Touch event " + touchAction2.name() + " with coordinates [" + ((int) touchEvent.f27179b) + ':' + ((int) touchEvent.f27180c) + ']');
            }
        }
    }
}
