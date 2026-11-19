package com.dynatrace.agent.userinteraction;

import android.view.MotionEvent;
import android.view.View;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/userinteraction/OneAgentUserInteractionManager;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface OneAgentUserInteractionManager {
    void a(View view, MotionEvent motionEvent);

    void b(View view);

    void c();
}
