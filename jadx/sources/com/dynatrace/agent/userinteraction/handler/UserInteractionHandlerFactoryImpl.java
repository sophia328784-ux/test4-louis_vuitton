package com.dynatrace.agent.userinteraction.handler;

import com.dynatrace.agent.storage.preference.ServerConfigurationDataSource;
import com.dynatrace.agent.userinteraction.handler.GestureUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.RotationUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.UserInteractionHandlerFactoryImpl;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionGenerator;
import com.dynatrace.agent.userinteraction.util.UserInteractionLogger;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactoryImpl;", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionHandlerFactory;", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;", "userInteractionLogger", "Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;", "userInteractionTracker", "Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;", "touchUserInteractionGenerator", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "serverConfigurationDataSource", "Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;", "userInteractionConfig", "<init>", "(Lcom/dynatrace/agent/userinteraction/util/UserInteractionLogger;Lcom/dynatrace/agent/userinteraction/util/UserInteractionTracker;Lcom/dynatrace/agent/userinteraction/model/TouchUserInteractionGenerator;Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;Lcom/dynatrace/agent/userinteraction/handler/UserInteractionConfig;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class UserInteractionHandlerFactoryImpl implements UserInteractionHandlerFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UserInteractionLogger f27131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserInteractionTracker f27132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TouchUserInteractionGenerator f27133c;
    public final ServerConfigurationDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserInteractionConfig f27134e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f27135f;
    public final Lazy g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Lazy f27136h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Map f27137i;

    public UserInteractionHandlerFactoryImpl(UserInteractionLogger userInteractionLogger, UserInteractionTracker userInteractionTracker, TouchUserInteractionGenerator touchUserInteractionGenerator, ServerConfigurationDataSource serverConfigurationDataSource, UserInteractionConfig userInteractionConfig) {
        userInteractionLogger.getClass();
        userInteractionTracker.getClass();
        touchUserInteractionGenerator.getClass();
        serverConfigurationDataSource.getClass();
        userInteractionConfig.getClass();
        this.f27131a = userInteractionLogger;
        this.f27132b = userInteractionTracker;
        this.f27133c = touchUserInteractionGenerator;
        this.d = serverConfigurationDataSource;
        this.f27134e = userInteractionConfig;
        final int i2 = 0;
        this.f27135f = LazyKt.b(new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i3) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        });
        final int i3 = 1;
        this.g = LazyKt.b(new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i4) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        });
        final int i4 = 2;
        this.f27136h = LazyKt.b(new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i5) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        });
        final int i5 = 3;
        final int i6 = 4;
        final int i7 = 5;
        this.f27137i = MapsKt.i(new Pair(UserInteractionHandler.Type.TOUCH, new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i8 = i5;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i8) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        }), new Pair(UserInteractionHandler.Type.GESTURE, new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i8 = i6;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i8) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        }), new Pair(UserInteractionHandler.Type.ROTATION, new Function0(this) { // from class: j51

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ UserInteractionHandlerFactoryImpl f71308c;

            {
                this.f71308c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i8 = i7;
                UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = this.f71308c;
                switch (i8) {
                    case 0:
                        return new TouchUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.f27133c, userInteractionHandlerFactoryImpl.d, userInteractionHandlerFactoryImpl.f27134e);
                    case 1:
                        return new GestureUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 2:
                        return new RotationUserInteractionHandler(userInteractionHandlerFactoryImpl.f27131a, userInteractionHandlerFactoryImpl.f27132b, userInteractionHandlerFactoryImpl.d);
                    case 3:
                        return (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b();
                    case 4:
                        return (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b();
                    default:
                        return (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b();
                }
            }
        }));
    }
}
