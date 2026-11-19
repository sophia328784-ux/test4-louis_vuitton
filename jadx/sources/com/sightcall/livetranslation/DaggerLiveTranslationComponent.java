package com.sightcall.livetranslation;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.data.API;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.livetranslation.domain.StartStopTranslation;
import com.sightcall.livetranslation.domain.TextSizeSelector;
import com.sightcall.livetranslation.history.HistoryComponent;
import com.sightcall.livetranslation.history.HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory;
import com.sightcall.livetranslation.history.HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;
import com.sightcall.livetranslation.history.HistoryComponent_Module_ProvideInteractorFactory;
import com.sightcall.livetranslation.history.HistoryComponent_Module_ProvideInteractorImplFactory;
import com.sightcall.livetranslation.history.HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;
import com.sightcall.livetranslation.history.HistoryCoordinator;
import com.sightcall.livetranslation.history.HistoryCoordinatorImpl;
import com.sightcall.livetranslation.history.HistoryInteractor;
import com.sightcall.livetranslation.history.HistoryViewHolder;
import com.sightcall.livetranslation.live.LiveSentencesComponent;
import com.sightcall.livetranslation.live.LiveSentencesComponent_Module_ProvideCoordinatorImplFactory;
import com.sightcall.livetranslation.live.LiveSentencesComponent_Module_ProvideInteractorFactory;
import com.sightcall.livetranslation.live.LiveSentencesComponent_Module_ProvideInteractorImplFactory;
import com.sightcall.livetranslation.live.LiveSentencesComponent_Module_ProvideViewHolderFactory;
import com.sightcall.livetranslation.live.LiveSentencesCoordinatorImpl;
import com.sightcall.livetranslation.live.LiveSentencesInteractor;
import com.sightcall.livetranslation.live.LiveSentencesViewHolder;
import com.sightcall.livetranslation.settings.SettingsPanelComponent;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideInteractorFactory;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideInteractorImplFactory;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory;
import com.sightcall.livetranslation.settings.SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;
import com.sightcall.livetranslation.settings.SettingsPanelCoordinatorImpl;
import com.sightcall.livetranslation.settings.SettingsPanelInteractor;
import com.sightcall.livetranslation.settings.SettingsPanelViewHolder;
import com.sightcall.session.Reference;
import dagger.internal.DoubleCheck;
import dagger.internal.InstanceFactory;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DaggerLiveTranslationComponent {

    public static final class HistoryComponentImpl implements HistoryComponent {
        Provider<LiveTranslationAPI.CloseHistory> closeFeatureProvider;
        private final HistoryComponentImpl historyComponentImpl = this;
        Provider<HistoryComponent> historyComponentProvider;
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        Provider<HistoryCoordinator> provideCoordinator$livetranslation_releaseProvider;
        Provider<HistoryCoordinatorImpl> provideCoordinatorImpl$livetranslation_releaseProvider;
        Provider<NucleusInteractorImpl<HistoryInteractor.State>> provideInteractorImplProvider;
        Provider<NucleusInteractor<HistoryInteractor.State>> provideInteractorProvider;
        Provider<HistoryViewHolder> provideViewHolder$livetranslation_releaseProvider;
        Provider<ViewGroup> rootViewProvider;

        public HistoryComponentImpl(LiveTranslationComponentImpl liveTranslationComponentImpl, HistoryComponent.Module module, ViewGroup viewGroup, LiveTranslationAPI.CloseHistory closeHistory) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
            initialize(module, viewGroup, closeHistory);
        }

        private void initialize(HistoryComponent.Module module, ViewGroup viewGroup, LiveTranslationAPI.CloseHistory closeHistory) {
            this.rootViewProvider = InstanceFactory.a(viewGroup);
            this.historyComponentProvider = InstanceFactory.a(this.historyComponentImpl);
            InstanceFactory instanceFactoryA = InstanceFactory.a(closeHistory);
            this.closeFeatureProvider = instanceFactoryA;
            Provider<HistoryCoordinatorImpl> providerB = DoubleCheck.b(HistoryComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory.create(module, this.historyComponentProvider, instanceFactoryA));
            this.provideCoordinatorImpl$livetranslation_releaseProvider = providerB;
            Provider<HistoryCoordinator> providerB2 = DoubleCheck.b(HistoryComponent_Module_ProvideCoordinator$livetranslation_releaseFactory.create(module, providerB));
            this.provideCoordinator$livetranslation_releaseProvider = providerB2;
            Provider<NucleusInteractorImpl<HistoryInteractor.State>> providerB3 = DoubleCheck.b(HistoryComponent_Module_ProvideInteractorImplFactory.create(module, providerB2, this.liveTranslationComponentImpl.provideInteractorProvider));
            this.provideInteractorImplProvider = providerB3;
            Provider<NucleusInteractor<HistoryInteractor.State>> providerB4 = DoubleCheck.b(HistoryComponent_Module_ProvideInteractorFactory.create(module, providerB3));
            this.provideInteractorProvider = providerB4;
            this.provideViewHolder$livetranslation_releaseProvider = DoubleCheck.b(HistoryComponent_Module_ProvideViewHolder$livetranslation_releaseFactory.create(module, this.rootViewProvider, providerB4));
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent
        public HistoryCoordinatorImpl getCoordinator() {
            return (HistoryCoordinatorImpl) this.provideCoordinatorImpl$livetranslation_releaseProvider.get();
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent
        public NucleusInteractorImpl<HistoryInteractor.State> getInteractor() {
            return (NucleusInteractorImpl) this.provideInteractorImplProvider.get();
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent
        public HistoryViewHolder getViewHolder() {
            return (HistoryViewHolder) this.provideViewHolder$livetranslation_releaseProvider.get();
        }
    }

    public static final class LiveSentencesComponentImpl implements LiveSentencesComponent {
        private final LiveSentencesComponentImpl liveSentencesComponentImpl = this;
        Provider<LiveSentencesComponent> liveSentencesComponentProvider;
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        Provider<LiveSentencesCoordinatorImpl> provideCoordinatorImplProvider;
        Provider<NucleusInteractorImpl<LiveSentencesInteractor.State>> provideInteractorImplProvider;
        Provider<NucleusInteractor<LiveSentencesInteractor.State>> provideInteractorProvider;
        Provider<LiveSentencesViewHolder> provideViewHolderProvider;
        Provider<ViewGroup> rootViewProvider;
        Provider<LiveTranslationSettings.Enabled> settingsProvider;

        public LiveSentencesComponentImpl(LiveTranslationComponentImpl liveTranslationComponentImpl, LiveSentencesComponent.Module module, ViewGroup viewGroup, LiveTranslationSettings.Enabled enabled) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
            initialize(module, viewGroup, enabled);
        }

        private void initialize(LiveSentencesComponent.Module module, ViewGroup viewGroup, LiveTranslationSettings.Enabled enabled) {
            this.rootViewProvider = InstanceFactory.a(viewGroup);
            InstanceFactory instanceFactoryA = InstanceFactory.a(enabled);
            this.settingsProvider = instanceFactoryA;
            Provider<NucleusInteractorImpl<LiveSentencesInteractor.State>> providerB = DoubleCheck.b(LiveSentencesComponent_Module_ProvideInteractorImplFactory.create(module, this.liveTranslationComponentImpl.provideInteractorProvider, instanceFactoryA));
            this.provideInteractorImplProvider = providerB;
            Provider<NucleusInteractor<LiveSentencesInteractor.State>> providerB2 = DoubleCheck.b(LiveSentencesComponent_Module_ProvideInteractorFactory.create(module, providerB));
            this.provideInteractorProvider = providerB2;
            this.provideViewHolderProvider = DoubleCheck.b(LiveSentencesComponent_Module_ProvideViewHolderFactory.create(module, this.rootViewProvider, providerB2));
            InstanceFactory instanceFactoryA2 = InstanceFactory.a(this.liveSentencesComponentImpl);
            this.liveSentencesComponentProvider = instanceFactoryA2;
            this.provideCoordinatorImplProvider = DoubleCheck.b(LiveSentencesComponent_Module_ProvideCoordinatorImplFactory.create(module, instanceFactoryA2));
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent
        public LiveSentencesCoordinatorImpl getCoordinator() {
            return (LiveSentencesCoordinatorImpl) this.provideCoordinatorImplProvider.get();
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent
        public NucleusInteractorImpl<LiveSentencesInteractor.State> getInteractor() {
            return (NucleusInteractorImpl) this.provideInteractorImplProvider.get();
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent
        public LiveSentencesViewHolder getViewHolder() {
            return (LiveSentencesViewHolder) this.provideViewHolderProvider.get();
        }
    }

    public static final class LiveTranslationComponentImpl implements LiveTranslationComponent {
        private final LiveTranslationComponentImpl liveTranslationComponentImpl = this;
        Provider<LiveTranslationComponent> liveTranslationComponentProvider;
        Provider<LiveTranslationAPI.LiveTranslationLanguagesUrl> liveTranslationUrlProvider;
        Provider<LiveTranslationAPI.LocaleLanguage> localLanguageProvider;
        Provider<NetworkConnector> networkConnectorProvider;
        Provider<LiveTranslationAPI> provideAPIProvider;
        Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provideInteractorImplProvider;
        Provider<NucleusInteractor<LiveTranslationInteractor.State>> provideInteractorProvider;
        Provider<API> provideNetworkApiProvider;
        Provider<LiveTranslationRepository> provideRepositoryProvider;
        Provider<LiveTranslationSettings> provideSettingsProvider;
        Provider<Reference.UseCase.LiveTranslation> useCaseSettingsProvider;
        Provider<LiveTranslationAPI.Role> userRoleProvider;

        public LiveTranslationComponentImpl(LiveTranslationComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl, NetworkConnector networkConnector) {
            initialize(module, liveTranslation, role, localeLanguage, liveTranslationLanguagesUrl, networkConnector);
        }

        private void initialize(LiveTranslationComponent.Module module, Reference.UseCase.LiveTranslation liveTranslation, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl, NetworkConnector networkConnector) {
            this.useCaseSettingsProvider = InstanceFactory.a(liveTranslation);
            this.userRoleProvider = InstanceFactory.a(role);
            InstanceFactory instanceFactoryA = InstanceFactory.a(localeLanguage);
            this.localLanguageProvider = instanceFactoryA;
            this.provideSettingsProvider = DoubleCheck.b(LiveTranslationComponent_Module_ProvideSettingsFactory.create(module, this.useCaseSettingsProvider, this.userRoleProvider, instanceFactoryA));
            InstanceFactory instanceFactoryA2 = InstanceFactory.a(networkConnector);
            this.networkConnectorProvider = instanceFactoryA2;
            this.provideNetworkApiProvider = DoubleCheck.b(LiveTranslationComponent_Module_ProvideNetworkApiFactory.create(module, instanceFactoryA2));
            InstanceFactory instanceFactoryA3 = InstanceFactory.a(liveTranslationLanguagesUrl);
            this.liveTranslationUrlProvider = instanceFactoryA3;
            Provider<LiveTranslationRepository> providerB = DoubleCheck.b(LiveTranslationComponent_Module_ProvideRepositoryFactory.create(module, this.provideNetworkApiProvider, instanceFactoryA3));
            this.provideRepositoryProvider = providerB;
            this.provideInteractorImplProvider = DoubleCheck.b(LiveTranslationComponent_Module_ProvideInteractorImplFactory.create(module, this.provideSettingsProvider, providerB));
            InstanceFactory instanceFactoryA4 = InstanceFactory.a(this.liveTranslationComponentImpl);
            this.liveTranslationComponentProvider = instanceFactoryA4;
            this.provideAPIProvider = DoubleCheck.b(LiveTranslationComponent_Module_ProvideAPIFactory.create(module, this.provideInteractorImplProvider, this.provideSettingsProvider, instanceFactoryA4));
            this.provideInteractorProvider = DoubleCheck.b(LiveTranslationComponent_Module_ProvideInteractorFactory.create(module, this.provideInteractorImplProvider));
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent
        public LiveTranslationAPI getLiveTranslationAPI() {
            return (LiveTranslationAPI) this.provideAPIProvider.get();
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent
        public HistoryComponent.Builder history() {
            return new HistoryComponentBuilder(this.liveTranslationComponentImpl, 0);
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent
        public LiveSentencesComponent.Builder liveSentences() {
            return new LiveSentencesComponentBuilder(this.liveTranslationComponentImpl, 0);
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent
        public SettingsPanelComponent.Builder settingsPanel() {
            return new SettingsPanelComponentBuilder(this.liveTranslationComponentImpl, 0);
        }
    }

    public static final class SettingsPanelComponentImpl implements SettingsPanelComponent {
        Provider<LiveTranslationAPI.CloseSettings> closeFeatureProvider;
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        Provider<LiveTranslationAPI.OpenHistory> openHistoryProvider;
        Provider<SettingsPanelCoordinatorImpl> provideCoordinatorImpl$livetranslation_releaseProvider;
        Provider<NucleusInteractorImpl<SettingsPanelInteractor.State>> provideInteractorImplProvider;
        Provider<NucleusInteractor<SettingsPanelInteractor.State>> provideInteractorProvider;
        Provider<StartStopTranslation> provideStartStopTranslationProvider;
        Provider<TextSizeSelector> provideTextSizeSelectorProvider;
        Provider<SettingsPanelViewHolder> provideViewHolder$livetranslation_releaseProvider;
        Provider<ViewGroup> rootViewProvider;
        private final SettingsPanelComponentImpl settingsPanelComponentImpl = this;
        Provider<SettingsPanelComponent> settingsPanelComponentProvider;

        public SettingsPanelComponentImpl(LiveTranslationComponentImpl liveTranslationComponentImpl, SettingsPanelComponent.Module module, ViewGroup viewGroup, LiveTranslationAPI.CloseSettings closeSettings, LiveTranslationAPI.OpenHistory openHistory) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
            initialize(module, viewGroup, closeSettings, openHistory);
        }

        private void initialize(SettingsPanelComponent.Module module, ViewGroup viewGroup, LiveTranslationAPI.CloseSettings closeSettings, LiveTranslationAPI.OpenHistory openHistory) {
            this.rootViewProvider = InstanceFactory.a(viewGroup);
            this.settingsPanelComponentProvider = InstanceFactory.a(this.settingsPanelComponentImpl);
            this.closeFeatureProvider = InstanceFactory.a(closeSettings);
            InstanceFactory instanceFactoryA = InstanceFactory.a(openHistory);
            this.openHistoryProvider = instanceFactoryA;
            this.provideCoordinatorImpl$livetranslation_releaseProvider = DoubleCheck.b(SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory.create(module, this.settingsPanelComponentProvider, this.closeFeatureProvider, instanceFactoryA));
            this.provideStartStopTranslationProvider = DoubleCheck.b(SettingsPanelComponent_Module_ProvideStartStopTranslationFactory.create(module, this.liveTranslationComponentImpl.provideInteractorImplProvider));
            Provider<TextSizeSelector> providerB = DoubleCheck.b(SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory.create(module, this.liveTranslationComponentImpl.provideInteractorImplProvider));
            this.provideTextSizeSelectorProvider = providerB;
            Provider<NucleusInteractorImpl<SettingsPanelInteractor.State>> providerB2 = DoubleCheck.b(SettingsPanelComponent_Module_ProvideInteractorImplFactory.create(module, this.liveTranslationComponentImpl.provideInteractorProvider, this.provideCoordinatorImpl$livetranslation_releaseProvider, this.provideStartStopTranslationProvider, providerB));
            this.provideInteractorImplProvider = providerB2;
            Provider<NucleusInteractor<SettingsPanelInteractor.State>> providerB3 = DoubleCheck.b(SettingsPanelComponent_Module_ProvideInteractorFactory.create(module, providerB2));
            this.provideInteractorProvider = providerB3;
            this.provideViewHolder$livetranslation_releaseProvider = DoubleCheck.b(SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory.create(module, this.rootViewProvider, providerB3));
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent
        public SettingsPanelCoordinatorImpl getCoordinator() {
            return (SettingsPanelCoordinatorImpl) this.provideCoordinatorImpl$livetranslation_releaseProvider.get();
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent
        public NucleusInteractorImpl<SettingsPanelInteractor.State> getInteractor() {
            return (NucleusInteractorImpl) this.provideInteractorImplProvider.get();
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent
        public SettingsPanelViewHolder getViewHolder() {
            return (SettingsPanelViewHolder) this.provideViewHolder$livetranslation_releaseProvider.get();
        }
    }

    private DaggerLiveTranslationComponent() {
    }

    public static LiveTranslationComponent.Builder builder() {
        return new Builder(0);
    }

    public static final class Builder implements LiveTranslationComponent.Builder {
        private LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl;
        private LiveTranslationAPI.LocaleLanguage localLanguage;
        private NetworkConnector networkConnector;
        private Reference.UseCase.LiveTranslation useCaseSettings;
        private LiveTranslationAPI.Role userRole;

        public /* synthetic */ Builder(int i2) {
            this();
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public LiveTranslationComponent build() {
            Preconditions.a(Reference.UseCase.LiveTranslation.class, this.useCaseSettings);
            Preconditions.a(LiveTranslationAPI.Role.class, this.userRole);
            Preconditions.a(LiveTranslationAPI.LocaleLanguage.class, this.localLanguage);
            Preconditions.a(LiveTranslationAPI.LiveTranslationLanguagesUrl.class, this.liveTranslationUrl);
            Preconditions.a(NetworkConnector.class, this.networkConnector);
            return new LiveTranslationComponentImpl(new LiveTranslationComponent.Module(), this.useCaseSettings, this.userRole, this.localLanguage, this.liveTranslationUrl, this.networkConnector);
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public Builder liveTranslationUrl(LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
            liveTranslationLanguagesUrl.getClass();
            this.liveTranslationUrl = liveTranslationLanguagesUrl;
            return this;
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public Builder localLanguage(LiveTranslationAPI.LocaleLanguage localeLanguage) {
            localeLanguage.getClass();
            this.localLanguage = localeLanguage;
            return this;
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public Builder networkConnector(NetworkConnector networkConnector) {
            networkConnector.getClass();
            this.networkConnector = networkConnector;
            return this;
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public Builder useCaseSettings(Reference.UseCase.LiveTranslation liveTranslation) {
            liveTranslation.getClass();
            this.useCaseSettings = liveTranslation;
            return this;
        }

        @Override // com.sightcall.livetranslation.LiveTranslationComponent.Builder
        public Builder userRole(LiveTranslationAPI.Role role) {
            role.getClass();
            this.userRole = role;
            return this;
        }

        private Builder() {
        }
    }

    public static final class HistoryComponentBuilder implements HistoryComponent.Builder {
        private LiveTranslationAPI.CloseHistory closeFeature;
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        private ViewGroup rootView;

        private HistoryComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent.Builder
        public HistoryComponent build() {
            Preconditions.a(ViewGroup.class, this.rootView);
            Preconditions.a(LiveTranslationAPI.CloseHistory.class, this.closeFeature);
            return new HistoryComponentImpl(this.liveTranslationComponentImpl, new HistoryComponent.Module(), this.rootView, this.closeFeature);
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent.Builder
        public HistoryComponentBuilder closeFeature(LiveTranslationAPI.CloseHistory closeHistory) {
            closeHistory.getClass();
            this.closeFeature = closeHistory;
            return this;
        }

        @Override // com.sightcall.livetranslation.history.HistoryComponent.Builder
        public HistoryComponentBuilder rootView(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.rootView = viewGroup;
            return this;
        }

        public /* synthetic */ HistoryComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl, int i2) {
            this(liveTranslationComponentImpl);
        }
    }

    public static final class LiveSentencesComponentBuilder implements LiveSentencesComponent.Builder {
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        private ViewGroup rootView;
        private LiveTranslationSettings.Enabled settings;

        private LiveSentencesComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent.Builder
        public LiveSentencesComponent build() {
            Preconditions.a(ViewGroup.class, this.rootView);
            Preconditions.a(LiveTranslationSettings.Enabled.class, this.settings);
            return new LiveSentencesComponentImpl(this.liveTranslationComponentImpl, new LiveSentencesComponent.Module(), this.rootView, this.settings);
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent.Builder
        public LiveSentencesComponentBuilder rootView(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.rootView = viewGroup;
            return this;
        }

        @Override // com.sightcall.livetranslation.live.LiveSentencesComponent.Builder
        public LiveSentencesComponentBuilder settings(LiveTranslationSettings.Enabled enabled) {
            enabled.getClass();
            this.settings = enabled;
            return this;
        }

        public /* synthetic */ LiveSentencesComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl, int i2) {
            this(liveTranslationComponentImpl);
        }
    }

    public static final class SettingsPanelComponentBuilder implements SettingsPanelComponent.Builder {
        private LiveTranslationAPI.CloseSettings closeFeature;
        private final LiveTranslationComponentImpl liveTranslationComponentImpl;
        private LiveTranslationAPI.OpenHistory openHistory;
        private ViewGroup rootView;

        private SettingsPanelComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl) {
            this.liveTranslationComponentImpl = liveTranslationComponentImpl;
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent.Builder
        public SettingsPanelComponent build() {
            Preconditions.a(ViewGroup.class, this.rootView);
            Preconditions.a(LiveTranslationAPI.CloseSettings.class, this.closeFeature);
            Preconditions.a(LiveTranslationAPI.OpenHistory.class, this.openHistory);
            return new SettingsPanelComponentImpl(this.liveTranslationComponentImpl, new SettingsPanelComponent.Module(), this.rootView, this.closeFeature, this.openHistory);
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent.Builder
        public SettingsPanelComponentBuilder closeFeature(LiveTranslationAPI.CloseSettings closeSettings) {
            closeSettings.getClass();
            this.closeFeature = closeSettings;
            return this;
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent.Builder
        public SettingsPanelComponentBuilder openHistory(LiveTranslationAPI.OpenHistory openHistory) {
            openHistory.getClass();
            this.openHistory = openHistory;
            return this;
        }

        @Override // com.sightcall.livetranslation.settings.SettingsPanelComponent.Builder
        public SettingsPanelComponentBuilder rootView(ViewGroup viewGroup) {
            viewGroup.getClass();
            this.rootView = viewGroup;
            return this;
        }

        public /* synthetic */ SettingsPanelComponentBuilder(LiveTranslationComponentImpl liveTranslationComponentImpl, int i2) {
            this(liveTranslationComponentImpl);
        }
    }
}
