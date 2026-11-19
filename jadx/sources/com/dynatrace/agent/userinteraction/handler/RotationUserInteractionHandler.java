package com.dynatrace.agent.userinteraction.handler;

import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.userinteraction.util.UserInteractionLogger;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/RotationUserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandler;", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;", "userInteractionLogger", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;", "userInteractionTracker", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "<init>", "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RotationUserInteractionHandler implements UserInteractionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInteractionLogger f27123a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserInteractionTracker f27124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServerConfigurationDataSource f27125c;
    public boolean d;

    public RotationUserInteractionHandler(UserInteractionLogger userInteractionLogger, UserInteractionTracker userInteractionTracker, ServerConfigurationDataSource serverConfigurationDataSource) {
        userInteractionLogger.getClass();
        userInteractionTracker.getClass();
        serverConfigurationDataSource.getClass();
        this.f27123a = userInteractionLogger;
        this.f27124b = userInteractionTracker;
        this.f27125c = serverConfigurationDataSource;
    }
}
