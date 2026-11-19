package com.dynatrace.agent.di;

import android.app.Application;
import android.content.Context;
import androidx.room.concurrent.CloseBarrier;
import com.dynatrace.agent.OneAgentConfiguration;
import com.dynatrace.agent.OneAgentEventDispatcher;
import com.dynatrace.agent.OneAgentFacade;
import com.dynatrace.agent.OneAgentStartupEventDispatcher;
import com.dynatrace.agent.OneAgentStartupImpl;
import com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.communication.CommunicationManagerBridgeImpl;
import com.dynatrace.agent.communication.CommunicationManagerImpl;
import com.dynatrace.agent.communication.ServerDataListenerImpl;
import com.dynatrace.agent.communication.di.CommunicationModule;
import com.dynatrace.agent.compose.userinteraction.ComposeEventObserver;
import com.dynatrace.agent.compose.userinteraction.ComposeEventObserverHandler;
import com.dynatrace.agent.compose.userinteraction.model.ComposeTouchEvent;
import com.dynatrace.agent.events.EventFlowGovernor;
import com.dynatrace.agent.events.EventThrottler;
import com.dynatrace.agent.exitreason.ExitReasonProcessor;
import com.dynatrace.agent.exitreason.convertor.ExitReasonConverter;
import com.dynatrace.agent.exitreason.di.ExitReasonModule;
import com.dynatrace.agent.lifecycle.AppStartupManagerImpl;
import com.dynatrace.agent.lifecycle.NewUserCheckerImpl;
import com.dynatrace.agent.lifecycle.OneAgentLifecycleManager;
import com.dynatrace.agent.lifecycle.OneAgentLifecycleManagerBridgeImpl;
import com.dynatrace.agent.lifecycle.VisibilityManagerImpl;
import com.dynatrace.agent.lifecycle.callback.CurrentViewTracker;
import com.dynatrace.agent.lifecycle.util.AppStartupLogger;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.metrics.OneAgentMetricsProvider;
import com.dynatrace.agent.metrics.di.MetricsModule;
import com.dynatrace.agent.orientation.handler.OrientationChangeHandlerImpl;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.agent.storage.db.EventDatabaseDataSourceImpl;
import com.dynatrace.agent.storage.di.StorageModule;
import com.dynatrace.agent.storage.memory.DynamicConfigDataSourceImpl;
import com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource;
import com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl;
import com.dynatrace.agent.storage.preference.MetricsDiskDataSource;
import com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource;
import com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.userinteraction.OneAgentUserInteractionManagerBridgeImpl;
import com.dynatrace.agent.userinteraction.OneAgentUserInteractionManagerImpl;
import com.dynatrace.agent.userinteraction.handler.FingerInteractionCoordinator;
import com.dynatrace.agent.userinteraction.handler.GestureUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.RotationUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.TouchUserInteractionHandler;
import com.dynatrace.agent.userinteraction.handler.UserInteractionHandlerFactoryImpl;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionComposeGenerator;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionGeneratorImpl;
import com.dynatrace.agent.userinteraction.model.TouchUserInteractionNativeGenerator;
import com.dynatrace.agent.userinteraction.util.RectHelperImpl;
import com.dynatrace.agent.userinteraction.util.UptimeToEpochConverterImpl;
import com.dynatrace.agent.userinteraction.util.UserInteractionLogger;
import com.dynatrace.agent.userinteraction.util.UserInteractionMaskingValidator;
import com.dynatrace.agent.userinteraction.util.UserInteractionTracker;
import com.dynatrace.agent.view.NavigationTracker;
import com.dynatrace.agent.view.ViewContextHistory;
import com.dynatrace.agent.view.ViewContextManager;
import com.dynatrace.agent.view.ViewSummarizer;
import com.dynatrace.android.agent.communication.ServerConfigurationListener;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.mixed.SessionInformationProviderImpl;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.internal.api.SelfMonitoring;
import defpackage.x60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/dynatrace/agent/di/CoreComponent;", "", "Holder", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CoreComponent {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Holder f26702k = new Holder(null);
    public static CoreComponent l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContextScope f26703a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StorageModule f26704b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionInformationProvider f26705c;
    public final CommunicationManagerImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MetricsRepository f26706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OneAgentFacade f26707f;
    public final CommunicationManagerBridgeImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OneAgentStartupImpl f26708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OneAgentUserInteractionManagerBridgeImpl f26709i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final OneAgentLifecycleManagerBridgeImpl f26710j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/di/CoreComponent$Holder;", "", "Lcom/dynatrace/agent/di/CoreComponent;", "instance", "Lcom/dynatrace/agent/di/CoreComponent;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Holder {
        public Holder(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CoreComponent(OneAgentConfiguration oneAgentConfiguration, TimeProvider timeProvider, ServerConfigurationListener serverConfigurationListener, Call.Factory factory, Application application, final SecondGenServiceLocator secondGenServiceLocator, ConfigurationPublisher configurationPublisher, DefaultConstructorMarker defaultConstructorMarker) {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        ContextScope contextScopeA = CoroutineScopeKt.a(DefaultIoScheduler.f75161b);
        this.f26703a = contextScopeA;
        StorageModule storageModule = new StorageModule(application, contextScopeA);
        this.f26704b = storageModule;
        NetworkConnectivityCheckerImpl networkConnectivityCheckerImpl = new NetworkConnectivityCheckerImpl(application, contextScopeA);
        EventDatabaseDataSourceImpl eventDatabaseDataSourceImpl = new EventDatabaseDataSourceImpl(storageModule.f26929c.y());
        Context context = storageModule.f26927a;
        ServerConfigurationDataSourceImpl serverConfigurationDataSourceImpl = new ServerConfigurationDataSourceImpl(storageModule.a(context));
        EndPointInfoDataSourceImpl endPointInfoDataSourceImpl = new EndPointInfoDataSourceImpl(storageModule.a(context));
        OneAgentConfigurationDiskDataSource oneAgentConfigurationDiskDataSource = new OneAgentConfigurationDiskDataSource(storageModule.a(context));
        EndPointInfo endPointInfo = new EndPointInfo(oneAgentConfiguration.f26429b, oneAgentConfiguration.f26430c);
        DynamicConfigDataSourceImpl dynamicConfigDataSourceImpl = new DynamicConfigDataSourceImpl();
        SessionInformationProviderImpl sessionInformationProviderImplA = secondGenServiceLocator.a();
        CommunicationManagerImpl communicationManagerImplA = new CommunicationModule(factory, timeProvider, oneAgentConfiguration.f26428a, eventDatabaseDataSourceImpl, endPointInfo, new ServerDataListenerImpl(serverConfigurationListener, serverConfigurationDataSourceImpl, dynamicConfigDataSourceImpl, configurationPublisher, sessionInformationProviderImplA, oneAgentConfiguration), contextScopeA, networkConnectivityCheckerImpl).a();
        this.d = communicationManagerImplA;
        EventFlowGovernor eventFlowGovernor = new EventFlowGovernor(null, contextScopeA, 1, 0 == true ? 1 : 0);
        EventThrottler eventThrottler = new EventThrottler(timeProvider, oneAgentConfiguration.f26433h, 0, 0, contextScopeA, new EventThrottler.SummaryReceiver() { // from class: com.dynatrace.agent.di.CoreComponent$eventThrottler$1
            @Override // com.dynatrace.agent.events.EventThrottler.SummaryReceiver
            public final void a(String str) {
            }

            @Override // com.dynatrace.agent.events.EventThrottler.SummaryReceiver
            public final void b(String str) {
                SelfMonitoring.a("EventThrottlingGrail", str);
            }
        }, 12, null);
        MetricsModule metricsModule = new MetricsModule(application, secondGenServiceLocator, new MetricsDiskDataSource(storageModule.a(context)), contextScopeA);
        OneAgentMetricsProvider oneAgentMetricsProvider = new OneAgentMetricsProvider(new NetworkConnectivityCheckerImpl(metricsModule.f26888a, metricsModule.d), metricsModule.f26888a, null, 4, null);
        SecondGenServiceLocator secondGenServiceLocator2 = metricsModule.f26889b;
        MetricsRepository metricsRepository = new MetricsRepository(metricsModule.f26890c, secondGenServiceLocator2.a(), oneAgentMetricsProvider, secondGenServiceLocator2.c(), 0L, metricsModule.d, 16, null);
        this.f26706e = metricsRepository;
        ViewContextHistory viewContextHistory = new ViewContextHistory();
        ViewSummarizer viewSummarizer = new ViewSummarizer(viewContextHistory);
        OneAgentEventDispatcher oneAgentEventDispatcher = new OneAgentEventDispatcher(oneAgentConfiguration, timeProvider, eventDatabaseDataSourceImpl, metricsRepository, contextScopeA, viewSummarizer, viewContextHistory, serverConfigurationDataSourceImpl, dynamicConfigDataSourceImpl, eventThrottler, eventFlowGovernor, sessionInformationProviderImplA);
        UserActionController userActionController = new UserActionController(oneAgentEventDispatcher, timeProvider, serverConfigurationDataSourceImpl, sessionInformationProviderImplA, contextScopeA);
        if (oneAgentEventDispatcher.m != null) {
            Utility.b("rumEventInterceptor already set, ignoring");
        } else {
            oneAgentEventDispatcher.m = userActionController;
        }
        serverConfigurationDataSourceImpl.f27011c.add(userActionController);
        NavigationTracker navigationTracker = new NavigationTracker(timeProvider);
        ViewContextManager viewContextManager = new ViewContextManager(eventFlowGovernor, timeProvider, viewSummarizer, oneAgentEventDispatcher, navigationTracker, userActionController);
        VisibilityManagerImpl visibilityManagerImpl = new VisibilityManagerImpl(timeProvider, oneAgentEventDispatcher, sessionInformationProviderImplA, eventFlowGovernor, navigationTracker, viewContextManager, userActionController);
        this.f26707f = new OneAgentFacade(sessionInformationProviderImplA, viewContextManager, oneAgentEventDispatcher, userActionController);
        CurrentViewTracker currentViewTracker = new CurrentViewTracker(sessionInformationProviderImplA, viewContextManager, oneAgentConfiguration);
        OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher = new OneAgentStartupEventDispatcher(0L, oneAgentConfiguration, contextScopeA, oneAgentEventDispatcher, secondGenServiceLocator.b(), 1, null);
        ExitReasonModule exitReasonModule = new ExitReasonModule(application, timeProvider, 0L, oneAgentEventDispatcher, sessionInformationProviderImplA, metricsRepository, new DataStoreExitReasonTimestampDataSource(storageModule.a(context)), oneAgentConfiguration.f26432f, oneAgentConfiguration.g, 4, null);
        ExitReasonProcessor exitReasonProcessor = new ExitReasonProcessor(new ExitReasonConverter(), exitReasonModule.g, exitReasonModule.f26818b, exitReasonModule.f26819c, exitReasonModule.f26817a, exitReasonModule.d, exitReasonModule.f26820e, exitReasonModule.f26821f, exitReasonModule.f26822h, exitReasonModule.f26823i);
        this.g = new CommunicationManagerBridgeImpl(communicationManagerImplA);
        this.f26708h = new OneAgentStartupImpl(communicationManagerImplA, exitReasonProcessor, eventDatabaseDataSourceImpl, serverConfigurationDataSourceImpl, endPointInfoDataSourceImpl, endPointInfo, contextScopeA, configurationPublisher, metricsRepository, sessionInformationProviderImplA, oneAgentConfiguration, oneAgentConfigurationDiskDataSource);
        UserInteractionModule userInteractionModule = new UserInteractionModule(contextScopeA, timeProvider, sessionInformationProviderImplA, serverConfigurationDataSourceImpl, oneAgentConfiguration.f26434i, userActionController);
        UserActionController userActionController2 = userInteractionModule.f26722e;
        SessionInformationProvider sessionInformationProvider = userInteractionModule.f26721c;
        TimeProvider timeProvider2 = userInteractionModule.f26720b;
        UserInteractionTracker userInteractionTracker = new UserInteractionTracker(sessionInformationProvider, timeProvider2, userActionController2);
        RectHelperImpl rectHelperImpl = new RectHelperImpl();
        UserInteractionHandlerFactoryImpl userInteractionHandlerFactoryImpl = new UserInteractionHandlerFactoryImpl(new UserInteractionLogger(), userInteractionTracker, new TouchUserInteractionGeneratorImpl(new TouchUserInteractionNativeGenerator(new UserInteractionMaskingValidator()), new TouchUserInteractionComposeGenerator(rectHelperImpl)), userInteractionModule.d, userInteractionModule.f26723f);
        final OneAgentUserInteractionManagerImpl oneAgentUserInteractionManagerImpl = new OneAgentUserInteractionManagerImpl(new FingerInteractionCoordinator(CoroutineScopeKt.a(userInteractionModule.f26719a.getF50528e().plus(MainDispatcherLoader.f75131a)), (TouchUserInteractionHandler) userInteractionHandlerFactoryImpl.f27135f.getF71699b(), (GestureUserInteractionHandler) userInteractionHandlerFactoryImpl.g.getF71699b(), new UptimeToEpochConverterImpl(timeProvider2), userInteractionModule.g, rectHelperImpl), (RotationUserInteractionHandler) userInteractionHandlerFactoryImpl.f27136h.getF71699b(), sessionInformationProvider);
        ComposeEventObserverHandler.f26684a.add(new ComposeEventObserver() { // from class: com.dynatrace.agent.di.UserInteractionModule$provideUserInteractionManager$1
            @Override // com.dynatrace.agent.compose.userinteraction.ComposeEventObserver
            public final void a(ComposeTouchEvent composeTouchEvent) {
                OneAgentUserInteractionManagerImpl oneAgentUserInteractionManagerImpl2 = oneAgentUserInteractionManagerImpl;
                if (oneAgentUserInteractionManagerImpl2.f27113c.a().f26885c) {
                    FingerInteractionCoordinator fingerInteractionCoordinator = oneAgentUserInteractionManagerImpl2.f27111a;
                    fingerInteractionCoordinator.getClass();
                    fingerInteractionCoordinator.f27119i = composeTouchEvent;
                }
            }
        });
        OrientationChangeHandlerImpl orientationChangeHandlerImpl = new OrientationChangeHandlerImpl(metricsRepository, oneAgentUserInteractionManagerImpl);
        this.f26709i = new OneAgentUserInteractionManagerBridgeImpl(oneAgentUserInteractionManagerImpl);
        LifecycleModule lifecycleModule = new LifecycleModule(timeProvider, application, oneAgentStartupEventDispatcher, sessionInformationProviderImplA, navigationTracker, currentViewTracker, visibilityManagerImpl, orientationChangeHandlerImpl, userActionController);
        NewUserCheckerImpl newUserCheckerImpl = new NewUserCheckerImpl(lifecycleModule.f26713b);
        this.f26710j = new OneAgentLifecycleManagerBridgeImpl(new OneAgentLifecycleManager(new AppStartupManagerImpl(lifecycleModule.f26712a, new AppStartupLogger(), lifecycleModule.f26714c, lifecycleModule.d, lifecycleModule.f26715e, new x60(lifecycleModule, 3), newUserCheckerImpl, lifecycleModule.f26718i), lifecycleModule.g, lifecycleModule.f26717h, lifecycleModule.f26716f, lifecycleModule.f26713b), viewContextManager);
    }

    public static final void a(CoreComponent coreComponent) {
        coreComponent.d.a();
        StorageModule storageModule = coreComponent.f26704b;
        storageModule.getClass();
        Utility.b("close DB connection");
        CloseBarrier closeBarrier = storageModule.f26929c.g;
        synchronized (closeBarrier) {
            if (closeBarrier.f19587c.compareAndSet(false, true)) {
                while (closeBarrier.f19586b.get() != 0) {
                }
                closeBarrier.f19585a.mo47invoke();
            }
        }
        CoroutineScopeKt.c(coreComponent.f26703a, null);
    }
}
