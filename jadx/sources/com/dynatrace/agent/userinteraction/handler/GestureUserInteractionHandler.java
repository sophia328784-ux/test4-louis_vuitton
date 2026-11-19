package com.dynatrace.agent.userinteraction.handler;

import android.view.MotionEvent;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.userinteraction.model.GestureInteractionDetector;
import com.dynatrace.agent.userinteraction.util.UserInteractionLogger;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/GestureUserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;", "userInteractionLogger", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;", "userInteractionTracker", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "<init>", "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureUserInteractionHandler implements UserInteractionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInteractionLogger f27120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserInteractionTracker f27121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfigurationDataSource f27122c;
    public final GestureInteractionDetector d;

    public GestureUserInteractionHandler(UserInteractionLogger userInteractionLogger, UserInteractionTracker userInteractionTracker, ServerConfigurationDataSource serverConfigurationDataSource) {
        userInteractionLogger.getClass();
        userInteractionTracker.getClass();
        serverConfigurationDataSource.getClass();
        this.f27120a = userInteractionLogger;
        this.f27121b = userInteractionTracker;
        this.f27122c = serverConfigurationDataSource;
        this.d = new GestureInteractionDetector();
    }

    public final void a(MotionEvent motionEvent) {
        motionEvent.getClass();
        long eventTime = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        GestureInteractionDetector gestureInteractionDetector = this.d;
        if (actionMasked == 0) {
            gestureInteractionDetector.c(motionEvent, eventTime);
            return;
        }
        if (actionMasked == 2) {
            gestureInteractionDetector.d(motionEvent, eventTime);
        } else if (actionMasked == 5) {
            gestureInteractionDetector.e(motionEvent, eventTime);
        } else {
            if (actionMasked != 6) {
                return;
            }
            gestureInteractionDetector.f(motionEvent, eventTime);
        }
    }
}
