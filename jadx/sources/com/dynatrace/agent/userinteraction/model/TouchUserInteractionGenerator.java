package com.dynatrace.agent.userinteraction.model;

import android.view.View;
import android.view.ViewGroup;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface TouchUserInteractionGenerator {
    TouchUserInteraction a(TouchEvent touchEvent, ComposeTouchEvent composeTouchEvent);

    TouchUserInteraction b(List list, ViewGroup viewGroup, View view);
}
