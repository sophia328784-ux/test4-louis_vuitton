package com.dynatrace.agent.compose.userinteraction.sensor;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidComposeView;
import com.dynatrace.agent.compose.userinteraction.handler.TouchUserInteractionHandler;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/sensor/UserInteractionsApi;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class UserInteractionsApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TouchUserInteractionHandler f26698a = new TouchUserInteractionHandler();

    public static final void a(LayoutNode layoutNode, AndroidComposeView androidComposeView) {
        TouchUserInteractionHandler touchUserInteractionHandler = f26698a;
        touchUserInteractionHandler.getClass();
        LinkedHashMap linkedHashMap = touchUserInteractionHandler.f26686a;
        Object arrayList = linkedHashMap.get(androidComposeView);
        if (arrayList == null) {
            arrayList = new ArrayList();
            linkedHashMap.put(androidComposeView, arrayList);
        }
        ((List) arrayList).add(layoutNode);
    }
}
