package com.sightcall.universal.di;

import android.content.Context;
import android.location.LocationManager;
import android.view.ViewGroup;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.AdvancedAnnotationsWrapper;
import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepositoryImpl;
import com.sightcall.analyticsagentsession.datasource.agentsession.AgentSessionDataSourceV3Impl;
import com.sightcall.analyticsagentsession.datasource.agentsession.AgentSessionsApi;
import com.sightcall.analyticsagentsession.di.AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory;
import com.sightcall.capabilities.CapabilitiesRepository;
import com.sightcall.capabilities.di.CapabilitiesComponent;
import com.sightcall.core.di.SightCallComponent;
import com.sightcall.gpslocation.GpsRepositoryImpl;
import com.sightcall.gpslocation.datasource.GpsDatasource;
import com.sightcall.gpslocation.di.GpsLocationModule_Companion_ProvideGmsLocationManagerFactory;
import com.sightcall.gpslocation.di.GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;
import com.sightcall.gpslocation.di.GpsLocationModule_Companion_ProvideLocationManagerFactory;
import com.sightcall.gpslocation.di.Holder;
import com.sightcall.httpclient.di.HttpClientModule;
import com.sightcall.httpclient.di.HttpClientModule_ProvideRetrofitFactory;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.session.Reference;
import com.sightcall.session.SessionRepositoryImpl;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3;
import com.sightcall.session.datasource.reference.v3.ReferenceDataSourceV3Impl;
import com.sightcall.session.di.SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;
import com.sightcall.universal.CallComponent;
import com.sightcall.universal.CallComponent_Module_AdvancedAnnotationsApiFactory;
import com.sightcall.universal.CallComponent_Module_AdvancedAnnotationsContainerFactory;
import com.sightcall.universal.CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;
import com.sightcall.universal.CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory;
import com.sightcall.universal.CallCoordinatorImpl;
import com.sightcall.universal.ReferenceComponent;
import com.sightcall.universal.ReferenceComponent_Module_ProvideLiveTranslationApiFactory;
import com.sightcall.universal.ar.UniversalAr;
import com.sightcall.universal.ar.UniversalAr_MembersInjector;
import com.sightcall.universal.internal.report.di.CaseReportComponent;
import com.sightcall.universal.internal.ui.CallActivity;
import com.sightcall.universal.internal.ui.CallActivity_MembersInjector;
import com.sightcall.universal.internal.ui.CallViewModel;
import com.sightcall.universal.internal.ui.ScreenCastOverlay;
import com.sightcall.universal.internal.ui.ScreenCastOverlay_MembersInjector;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView;
import com.sightcall.universal.internal.view.MyScreenshareConsumerView_MembersInjector;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView;
import com.sightcall.universal.internal.view.MyScreenshareProducerWebView_MembersInjector;
import com.sightcall.universal.internal.view.MyVideoConsumerView;
import com.sightcall.universal.internal.view.MyVideoConsumerView_MembersInjector;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView;
import com.sightcall.universal.internal.view.MyVideoProducerCameraView_MembersInjector;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper;
import com.sightcall.universal.internal.view.MyVideoProducerWrapper_MembersInjector;
import com.sightcall.universal.internal.view.ProgressivexImageView;
import com.sightcall.universal.internal.view.ProgressivexImageView_MembersInjector;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep_MembersInjector;
import com.sightcall.universal.scenario.steps.CallStep;
import com.sightcall.universal.scenario.steps.CallStep_MembersInjector;
import com.sightcall.universal.scenario.steps.FetchReferenceStep;
import com.sightcall.universal.scenario.steps.FetchReferenceStep_MembersInjector;
import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;
import io.reactivex.rxjava3.core.Scheduler;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerSdkComponent {

    public static final class ReferenceComponentImpl implements ReferenceComponent {
        Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> liveTranslationUrlProvider;
        Provider<LiveTranslationAPI.LocaleLanguage> localeLanguageProvider;
        Provider<LiveTranslationAPI> provideLiveTranslationApiProvider;
        private final ReferenceComponentImpl referenceComponentImpl = this;
        private final SdkComponentImpl sdkComponentImpl;
        Provider<Reference.UseCase.LiveTranslation> useCaseSettingsProvider;
        Provider<LiveTranslationAPI.Role> userRoleProvider;

        public ReferenceComponentImpl(SdkComponentImpl sdkComponentImpl, ReferenceComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
            this.sdkComponentImpl = sdkComponentImpl;
            initialize(module, liveTranslation, role, localeLanguage, liveTranslationLanguagesUrl);
        }

        private void initialize(ReferenceComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
            this.useCaseSettingsProvider = InstanceFactory.a(liveTranslation);
            this.userRoleProvider = InstanceFactory.a(role);
            this.localeLanguageProvider = InstanceFactory.a(localeLanguage);
            InstanceFactory instanceFactoryA = InstanceFactory.a(liveTranslationLanguagesUrl);
            this.liveTranslationUrlProvider = instanceFactoryA;
            this.provideLiveTranslationApiProvider = DoubleCheck.b(ReferenceComponent_Module_ProvideLiveTranslationApiFactory.create(module, this.useCaseSettingsProvider, this.userRoleProvider, this.localeLanguageProvider, instanceFactoryA, this.sdkComponentImpl.provideNetworkConnectorProvider));
        }

        @Override // com.sightcall.universal.ReferenceComponent
        public LiveTranslationAPI getLiveTranslationAPI() {
            return (LiveTranslationAPI) this.provideLiveTranslationApiProvider.get();
        }
    }

    private DaggerSdkComponent() {
    }

    public static Builder builder() {
        return new Builder(0);
    }

    public static final class Builder {
        private CapabilitiesComponent capabilitiesComponent;
        private CaseReportComponent caseReportComponent;
        private HttpClientModule httpClientModule;
        private SdkModule sdkModule;
        private SightCallComponent sightCallComponent;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        public SdkComponent build() {
            Preconditions.a(SdkModule.class, this.sdkModule);
            Preconditions.a(HttpClientModule.class, this.httpClientModule);
            Preconditions.a(SightCallComponent.class, this.sightCallComponent);
            Preconditions.a(CapabilitiesComponent.class, this.capabilitiesComponent);
            Preconditions.a(CaseReportComponent.class, this.caseReportComponent);
            return new SdkComponentImpl(this.sdkModule, this.httpClientModule, this.sightCallComponent, this.capabilitiesComponent, this.caseReportComponent);
        }

        public Builder capabilitiesComponent(CapabilitiesComponent capabilitiesComponent) {
            capabilitiesComponent.getClass();
            this.capabilitiesComponent = capabilitiesComponent;
            return this;
        }

        public Builder caseReportComponent(CaseReportComponent caseReportComponent) {
            caseReportComponent.getClass();
            this.caseReportComponent = caseReportComponent;
            return this;
        }

        public Builder httpClientModule(HttpClientModule httpClientModule) {
            httpClientModule.getClass();
            this.httpClientModule = httpClientModule;
            return this;
        }

        public Builder sdkModule(SdkModule sdkModule) {
            sdkModule.getClass();
            this.sdkModule = sdkModule;
            return this;
        }

        public Builder sightCallComponent(SightCallComponent sightCallComponent) {
            sightCallComponent.getClass();
            this.sightCallComponent = sightCallComponent;
            return this;
        }

        private Builder() {
        }
    }

    public static final class CallComponentImpl implements CallComponent {
        Provider<AdvancedAnnotationsAPI> advancedAnnotationsApiProvider;
        Provider<ViewGroup> advancedAnnotationsContainerProvider;
        private final CallComponentImpl callComponentImpl = this;
        Provider<CallComponent> callComponentProvider;
        Provider<AdvancedAnnotationsAPI.InitialSenderColor> initialSenderColorProvider;
        Provider<AdvancedAnnotationsAPI.MessageSender> newAnnotationSenderProvider;
        Provider<AdvancedAnnotationsWrapper> provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider;
        Provider<CallCoordinatorImpl> provideCallCoordinator$sdk_installedReleaseProvider;
        private final SdkComponentImpl sdkComponentImpl;
        Provider<AdvancedAnnotationsAPI.SenderIdGetter> senderIdGetterProvider;
        Provider<Config> sessionConfigProvider;
        Provider<AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl> settingsUrlProvider;
        Provider<AdvancedAnnotationsAPI.StateHandler> stateHandlerProvider;

        public CallComponentImpl(SdkComponentImpl sdkComponentImpl, CallComponent.Module module, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, Config config) {
            this.sdkComponentImpl = sdkComponentImpl;
            initialize(module, senderIdGetter, initialSenderColor, messageSender, stateHandler, advancedAnnotationsSettingsUrl, config);
        }

        private void initialize(CallComponent.Module module, AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter, AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor, AdvancedAnnotationsAPI.MessageSender messageSender, AdvancedAnnotationsAPI.StateHandler stateHandler, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, Config config) {
            this.initialSenderColorProvider = InstanceFactory.a(initialSenderColor);
            this.senderIdGetterProvider = InstanceFactory.a(senderIdGetter);
            this.newAnnotationSenderProvider = InstanceFactory.a(messageSender);
            this.stateHandlerProvider = InstanceFactory.a(stateHandler);
            InstanceFactory instanceFactoryA = InstanceFactory.a(advancedAnnotationsSettingsUrl);
            this.settingsUrlProvider = instanceFactoryA;
            SdkComponentImpl sdkComponentImpl = this.sdkComponentImpl;
            this.advancedAnnotationsApiProvider = DoubleCheck.b(CallComponent_Module_AdvancedAnnotationsApiFactory.create(module, sdkComponentImpl.contextProvider, sdkComponentImpl.provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider, sdkComponentImpl.provideNetworkConnectorProvider, this.initialSenderColorProvider, this.senderIdGetterProvider, this.newAnnotationSenderProvider, this.stateHandlerProvider, instanceFactoryA));
            InstanceFactory instanceFactoryA2 = InstanceFactory.a(config);
            this.sessionConfigProvider = instanceFactoryA2;
            this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider = DoubleCheck.b(CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory.create(module, this.advancedAnnotationsApiProvider, instanceFactoryA2));
            this.advancedAnnotationsContainerProvider = DoubleCheck.b(CallComponent_Module_AdvancedAnnotationsContainerFactory.create(module, this.advancedAnnotationsApiProvider));
            InstanceFactory instanceFactoryA3 = InstanceFactory.a(this.callComponentImpl);
            this.callComponentProvider = instanceFactoryA3;
            this.provideCallCoordinator$sdk_installedReleaseProvider = DoubleCheck.b(CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory.create(module, instanceFactoryA3));
        }

        private CallActivity injectCallActivity(CallActivity callActivity) {
            CallActivity_MembersInjector.injectAdvancedAnnotationsContainer(callActivity, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
            CallActivity_MembersInjector.injectAdvancedAnnotationsWrapper(callActivity, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            CallActivity_MembersInjector.injectCoordinator(callActivity, (CallCoordinatorImpl) this.provideCallCoordinator$sdk_installedReleaseProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            CallActivity_MembersInjector.injectCapabilitiesRepository(callActivity, capabilitiesRepository);
            CallActivity_MembersInjector.injectCallViewModelFactory(callActivity, callViewModelFactory());
            return callActivity;
        }

        private CallStep injectCallStep(CallStep callStep) {
            CallStep_MembersInjector.injectAdvancedAnnotationsAPI(callStep, (AdvancedAnnotationsAPI) this.advancedAnnotationsApiProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            CallStep_MembersInjector.injectCapabilitiesRepository(callStep, capabilitiesRepository);
            CallStep_MembersInjector.injectGpsRepository(callStep, this.sdkComponentImpl.gpsRepositoryImpl());
            return callStep;
        }

        private MyScreenshareConsumerView injectMyScreenshareConsumerView(MyScreenshareConsumerView myScreenshareConsumerView) {
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            MyScreenshareConsumerView_MembersInjector.injectCapabilitiesRepository(myScreenshareConsumerView, capabilitiesRepository);
            return myScreenshareConsumerView;
        }

        private MyScreenshareProducerWebView injectMyScreenshareProducerWebView(MyScreenshareProducerWebView myScreenshareProducerWebView) {
            MyScreenshareProducerWebView_MembersInjector.injectAdvancedAnnotationsWrapper(myScreenshareProducerWebView, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            MyScreenshareProducerWebView_MembersInjector.injectCapabilitiesRepository(myScreenshareProducerWebView, capabilitiesRepository);
            return myScreenshareProducerWebView;
        }

        private MyVideoConsumerView injectMyVideoConsumerView(MyVideoConsumerView myVideoConsumerView) {
            MyVideoConsumerView_MembersInjector.injectAdvancedAnnotationsWrapper(myVideoConsumerView, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            MyVideoConsumerView_MembersInjector.injectAdvancedAnnotationsContainer(myVideoConsumerView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            MyVideoConsumerView_MembersInjector.injectCapabilitiesRepository(myVideoConsumerView, capabilitiesRepository);
            return myVideoConsumerView;
        }

        private MyVideoProducerCameraView injectMyVideoProducerCameraView(MyVideoProducerCameraView myVideoProducerCameraView) {
            MyVideoProducerCameraView_MembersInjector.injectAdvancedAnnotationsWrapper(myVideoProducerCameraView, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            MyVideoProducerCameraView_MembersInjector.injectAdvancedAnnotationsContainer(myVideoProducerCameraView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            MyVideoProducerCameraView_MembersInjector.injectCapabilitiesRepository(myVideoProducerCameraView, capabilitiesRepository);
            return myVideoProducerCameraView;
        }

        private MyVideoProducerWrapper injectMyVideoProducerWrapper(MyVideoProducerWrapper myVideoProducerWrapper) {
            MyVideoProducerWrapper_MembersInjector.injectAdvancedAnnotationsWrapper(myVideoProducerWrapper, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            return myVideoProducerWrapper;
        }

        private ProgressivexImageView injectProgressivexImageView(ProgressivexImageView progressivexImageView) {
            ProgressivexImageView_MembersInjector.injectAdvancedAnnotationsWrapper(progressivexImageView, (AdvancedAnnotationsWrapper) this.provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider.get());
            ProgressivexImageView_MembersInjector.injectAdvancedAnnotationsContainer(progressivexImageView, (ViewGroup) this.advancedAnnotationsContainerProvider.get());
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            ProgressivexImageView_MembersInjector.injectCapabilitiesRepository(progressivexImageView, capabilitiesRepository);
            return progressivexImageView;
        }

        private ScreenCastOverlay injectScreenCastOverlay(ScreenCastOverlay screenCastOverlay) {
            CapabilitiesRepository capabilitiesRepository = this.sdkComponentImpl.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            ScreenCastOverlay_MembersInjector.injectCapabilitiesRepository(screenCastOverlay, capabilitiesRepository);
            return screenCastOverlay;
        }

        public CallViewModel.Factory callViewModelFactory() {
            return new CallViewModel.Factory(this.sdkComponentImpl.sessionRepositoryImpl(), this.sdkComponentImpl.gpsRepositoryImpl());
        }

        @Override // com.sightcall.universal.CallComponent
        public AdvancedAnnotationsAPI getAdvancedAnnotationsAPI() {
            return (AdvancedAnnotationsAPI) this.advancedAnnotationsApiProvider.get();
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(MyVideoProducerCameraView myVideoProducerCameraView) {
            injectMyVideoProducerCameraView(myVideoProducerCameraView);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(ProgressivexImageView progressivexImageView) {
            injectProgressivexImageView(progressivexImageView);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(CallActivity callActivity) {
            injectCallActivity(callActivity);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(MyVideoConsumerView myVideoConsumerView) {
            injectMyVideoConsumerView(myVideoConsumerView);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(MyVideoProducerWrapper myVideoProducerWrapper) {
            injectMyVideoProducerWrapper(myVideoProducerWrapper);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(MyScreenshareConsumerView myScreenshareConsumerView) {
            injectMyScreenshareConsumerView(myScreenshareConsumerView);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(MyScreenshareProducerWebView myScreenshareProducerWebView) {
            injectMyScreenshareProducerWebView(myScreenshareProducerWebView);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(ScreenCastOverlay screenCastOverlay) {
            injectScreenCastOverlay(screenCastOverlay);
        }

        @Override // com.sightcall.universal.CallComponent
        public void inject(CallStep callStep) {
            injectCallStep(callStep);
        }
    }

    public static final class SdkComponentImpl implements SdkComponent {
        private final CapabilitiesComponent capabilitiesComponent;
        Provider<Context> contextProvider;
        private final HttpClientModule httpClientModule;
        Provider<Context> provideApplicationContext$sdk_installedReleaseProvider;
        Provider<NetworkConnector> provideNetworkConnectorProvider;
        Provider<Scheduler> provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider;
        Provider<Scheduler> provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider;
        private final SdkComponentImpl sdkComponentImpl = this;
        private final SightCallComponent sightCallComponent;

        public static final class ContextProvider implements Provider<Context> {
            private final SightCallComponent sightCallComponent;

            public ContextProvider(SightCallComponent sightCallComponent) {
                this.sightCallComponent = sightCallComponent;
            }

            @Override // javax.inject.Provider
            public Context get() {
                Context context = this.sightCallComponent.context();
                Preconditions.b(context);
                return context;
            }
        }

        public SdkComponentImpl(SdkModule sdkModule, HttpClientModule httpClientModule, SightCallComponent sightCallComponent, CapabilitiesComponent capabilitiesComponent, CaseReportComponent caseReportComponent) {
            this.capabilitiesComponent = capabilitiesComponent;
            this.httpClientModule = httpClientModule;
            this.sightCallComponent = sightCallComponent;
            initialize(sdkModule, httpClientModule, sightCallComponent, capabilitiesComponent, caseReportComponent);
        }

        private void initialize(SdkModule sdkModule, HttpClientModule httpClientModule, SightCallComponent sightCallComponent, CapabilitiesComponent capabilitiesComponent, CaseReportComponent caseReportComponent) {
            this.provideApplicationContext$sdk_installedReleaseProvider = DoubleCheck.b(SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory.create(sdkModule));
            this.provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider = DoubleCheck.b(SdkModule_ProvideRxJava2PostExecutionScheduler$sdk_installedReleaseFactory.create(sdkModule));
            this.provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider = DoubleCheck.b(SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory.create(sdkModule));
            this.provideNetworkConnectorProvider = DoubleCheck.b(SdkModule_ProvideNetworkConnectorFactory.create(sdkModule));
            this.contextProvider = new ContextProvider(sightCallComponent);
        }

        private AgentUsecaseStep injectAgentUsecaseStep(AgentUsecaseStep agentUsecaseStep) {
            AgentUsecaseStep_MembersInjector.injectAnalyticsAgentSessionRepository(agentUsecaseStep, analyticsAgentSessionRepositoryImpl());
            return agentUsecaseStep;
        }

        private FetchReferenceStep injectFetchReferenceStep(FetchReferenceStep fetchReferenceStep) {
            FetchReferenceStep_MembersInjector.injectSessionRepository(fetchReferenceStep, sessionRepositoryImpl());
            return fetchReferenceStep;
        }

        private MyScreenshareConsumerView injectMyScreenshareConsumerView(MyScreenshareConsumerView myScreenshareConsumerView) {
            CapabilitiesRepository capabilitiesRepository = this.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            MyScreenshareConsumerView_MembersInjector.injectCapabilitiesRepository(myScreenshareConsumerView, capabilitiesRepository);
            return myScreenshareConsumerView;
        }

        private ScreenCastOverlay injectScreenCastOverlay(ScreenCastOverlay screenCastOverlay) {
            CapabilitiesRepository capabilitiesRepository = this.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            ScreenCastOverlay_MembersInjector.injectCapabilitiesRepository(screenCastOverlay, capabilitiesRepository);
            return screenCastOverlay;
        }

        private UniversalAr injectUniversalAr(UniversalAr universalAr) {
            CapabilitiesRepository capabilitiesRepository = this.capabilitiesComponent.getCapabilitiesRepository();
            Preconditions.b(capabilitiesRepository);
            UniversalAr_MembersInjector.injectCapabilitiesRepository(universalAr, capabilitiesRepository);
            return universalAr;
        }

        public AgentSessionDataSourceV3Impl agentSessionDataSourceV3Impl() {
            return new AgentSessionDataSourceV3Impl(agentSessionsApi());
        }

        public AgentSessionsApi agentSessionsApi() {
            return AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory.provideAgentSessionsApi$analyticsagentsession_release(retrofit());
        }

        public AnalyticsAgentSessionRepositoryImpl analyticsAgentSessionRepositoryImpl() {
            return new AnalyticsAgentSessionRepositoryImpl(agentSessionDataSourceV3Impl());
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public CallComponent.Builder callComponent() {
            return new CallComponentBuilder(this.sdkComponentImpl, 0);
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public Context getApplicationContext() {
            return (Context) this.provideApplicationContext$sdk_installedReleaseProvider.get();
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public Scheduler getIoScheduler() {
            return (Scheduler) this.provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider.get();
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public Scheduler getMainScheduler() {
            return (Scheduler) this.provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider.get();
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public NetworkConnector getNetworkConnector() {
            return (NetworkConnector) this.provideNetworkConnectorProvider.get();
        }

        public GpsDatasource gpsDatasource() {
            Context context = this.sightCallComponent.context();
            Preconditions.b(context);
            return GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory.provideGpsLocationDataSource$GpsLocation_release(context, locationManager(), holder());
        }

        public GpsRepositoryImpl gpsRepositoryImpl() {
            return new GpsRepositoryImpl(gpsDatasource());
        }

        public Holder holder() {
            Context context = this.sightCallComponent.context();
            Preconditions.b(context);
            return GpsLocationModule_Companion_ProvideGmsLocationManagerFactory.provideGmsLocationManager(context);
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public void inject(UniversalAr universalAr) {
            injectUniversalAr(universalAr);
        }

        public LocationManager locationManager() {
            Context context = this.sightCallComponent.context();
            Preconditions.b(context);
            return GpsLocationModule_Companion_ProvideLocationManagerFactory.provideLocationManager(context);
        }

        public ReferenceApiV3 referenceApiV3() {
            return SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory.provideReferenceApiV3$session_release(retrofit());
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public ReferenceComponent.Builder referenceComponent() {
            return new ReferenceComponentBuilder(this.sdkComponentImpl, 0);
        }

        public ReferenceDataSourceV3Impl referenceDataSourceV3Impl() {
            ReferenceApiV3 referenceApiV3 = referenceApiV3();
            Context context = this.sightCallComponent.context();
            Preconditions.b(context);
            return new ReferenceDataSourceV3Impl(referenceApiV3, context);
        }

        public Retrofit retrofit() {
            HttpClientModule httpClientModule = this.httpClientModule;
            Context context = this.sightCallComponent.context();
            Preconditions.b(context);
            return HttpClientModule_ProvideRetrofitFactory.provideRetrofit(httpClientModule, context);
        }

        public SessionRepositoryImpl sessionRepositoryImpl() {
            return new SessionRepositoryImpl(referenceDataSourceV3Impl());
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public void inject(ScreenCastOverlay screenCastOverlay) {
            injectScreenCastOverlay(screenCastOverlay);
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public void inject(MyScreenshareConsumerView myScreenshareConsumerView) {
            injectMyScreenshareConsumerView(myScreenshareConsumerView);
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public void inject(FetchReferenceStep fetchReferenceStep) {
            injectFetchReferenceStep(fetchReferenceStep);
        }

        @Override // com.sightcall.universal.di.SdkComponent
        public void inject(AgentUsecaseStep agentUsecaseStep) {
            injectAgentUsecaseStep(agentUsecaseStep);
        }
    }

    public static final class CallComponentBuilder implements CallComponent.Builder {
        private AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor;
        private AdvancedAnnotationsAPI.MessageSender newAnnotationSender;
        private final SdkComponentImpl sdkComponentImpl;
        private AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter;
        private Config sessionConfig;
        private AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl settingsUrl;
        private AdvancedAnnotationsAPI.StateHandler stateHandler;

        private CallComponentBuilder(SdkComponentImpl sdkComponentImpl) {
            this.sdkComponentImpl = sdkComponentImpl;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponent build() {
            Preconditions.a(AdvancedAnnotationsAPI.SenderIdGetter.class, this.senderIdGetter);
            Preconditions.a(AdvancedAnnotationsAPI.InitialSenderColor.class, this.initialSenderColor);
            Preconditions.a(AdvancedAnnotationsAPI.MessageSender.class, this.newAnnotationSender);
            Preconditions.a(AdvancedAnnotationsAPI.StateHandler.class, this.stateHandler);
            Preconditions.a(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl.class, this.settingsUrl);
            Preconditions.a(Config.class, this.sessionConfig);
            return new CallComponentImpl(this.sdkComponentImpl, new CallComponent.Module(), this.senderIdGetter, this.initialSenderColor, this.newAnnotationSender, this.stateHandler, this.settingsUrl, this.sessionConfig);
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder initialSenderColor(AdvancedAnnotationsAPI.InitialSenderColor initialSenderColor) {
            initialSenderColor.getClass();
            this.initialSenderColor = initialSenderColor;
            return this;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder newAnnotationSender(AdvancedAnnotationsAPI.MessageSender messageSender) {
            messageSender.getClass();
            this.newAnnotationSender = messageSender;
            return this;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder senderIdGetter(AdvancedAnnotationsAPI.SenderIdGetter senderIdGetter) {
            senderIdGetter.getClass();
            this.senderIdGetter = senderIdGetter;
            return this;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder sessionConfig(Config config) {
            config.getClass();
            this.sessionConfig = config;
            return this;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder settingsUrl(AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl) {
            advancedAnnotationsSettingsUrl.getClass();
            this.settingsUrl = advancedAnnotationsSettingsUrl;
            return this;
        }

        @Override // com.sightcall.universal.CallComponent.Builder
        public CallComponentBuilder stateHandler(AdvancedAnnotationsAPI.StateHandler stateHandler) {
            stateHandler.getClass();
            this.stateHandler = stateHandler;
            return this;
        }

        public /* synthetic */ CallComponentBuilder(SdkComponentImpl sdkComponentImpl, int i2) {
            this(sdkComponentImpl);
        }
    }

    public static final class ReferenceComponentBuilder implements ReferenceComponent.Builder {
        private LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl;
        private LiveTranslationAPI.LocaleLanguage localeLanguage;
        private final SdkComponentImpl sdkComponentImpl;
        private Reference.UseCase.LiveTranslation useCaseSettings;
        private LiveTranslationAPI.Role userRole;

        private ReferenceComponentBuilder(SdkComponentImpl sdkComponentImpl) {
            this.sdkComponentImpl = sdkComponentImpl;
        }

        @Override // com.sightcall.universal.ReferenceComponent.Builder
        public ReferenceComponent build() {
            Preconditions.a(Reference.UseCase.LiveTranslation.class, this.useCaseSettings);
            Preconditions.a(LiveTranslationAPI.Role.class, this.userRole);
            Preconditions.a(LiveTranslationAPI.LocaleLanguage.class, this.localeLanguage);
            Preconditions.a(LiveTranslationAPI.LiveTranslationLanguagesUrl.class, this.liveTranslationUrl);
            return new ReferenceComponentImpl(this.sdkComponentImpl, new ReferenceComponent.Module(), this.useCaseSettings, this.userRole, this.localeLanguage, this.liveTranslationUrl);
        }

        @Override // com.sightcall.universal.ReferenceComponent.Builder
        public ReferenceComponentBuilder liveTranslationUrl(LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
            liveTranslationLanguagesUrl.getClass();
            this.liveTranslationUrl = liveTranslationLanguagesUrl;
            return this;
        }

        @Override // com.sightcall.universal.ReferenceComponent.Builder
        public ReferenceComponentBuilder localeLanguage(LiveTranslationAPI.LocaleLanguage localeLanguage) {
            localeLanguage.getClass();
            this.localeLanguage = localeLanguage;
            return this;
        }

        @Override // com.sightcall.universal.ReferenceComponent.Builder
        public ReferenceComponentBuilder useCaseSettings(Reference.UseCase.LiveTranslation liveTranslation) {
            liveTranslation.getClass();
            this.useCaseSettings = liveTranslation;
            return this;
        }

        @Override // com.sightcall.universal.ReferenceComponent.Builder
        public ReferenceComponentBuilder userRole(LiveTranslationAPI.Role role) {
            role.getClass();
            this.userRole = role;
            return this;
        }

        public /* synthetic */ ReferenceComponentBuilder(SdkComponentImpl sdkComponentImpl, int i2) {
            this(sdkComponentImpl);
        }
    }
}
