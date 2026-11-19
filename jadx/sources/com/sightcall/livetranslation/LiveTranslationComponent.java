package com.sightcall.livetranslation;

import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.data.API;
import com.sightcall.livetranslation.data.LiveTranslationRepositoryImpl;
import com.sightcall.livetranslation.data.MappersKt;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.livetranslation.history.HistoryComponent;
import com.sightcall.livetranslation.live.LiveSentencesComponent;
import com.sightcall.livetranslation.settings.SettingsPanelComponent;
import com.sightcall.session.Reference;
import dagger.BindsInstance;
import dagger.Component;
import dagger.Provides;
import javax.inject.Provider;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Component
@LiveTranslationScope
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001:\u0002\f\rJ\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationComponent;", "", "liveTranslationAPI", "Lcom/sightcall/livetranslation/LiveTranslationAPI;", "getLiveTranslationAPI", "()Lcom/sightcall/livetranslation/LiveTranslationAPI;", "liveSentences", "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;", "settingsPanel", "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;", "history", "Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;", "Builder", "Module", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LiveTranslationComponent {

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\rH'J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH'¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;", "", "build", "Lcom/sightcall/livetranslation/LiveTranslationComponent;", "useCaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "userRole", "role", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localLanguage", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "liveTranslationUrl", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Component.Builder
    public interface Builder {
        LiveTranslationComponent build();

        @BindsInstance
        Builder liveTranslationUrl(LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl);

        @BindsInstance
        Builder localLanguage(LiveTranslationAPI.LocaleLanguage localeLanguage);

        @BindsInstance
        Builder networkConnector(NetworkConnector networkConnector);

        @BindsInstance
        Builder useCaseSettings(Reference.UseCase.LiveTranslation useCaseSettings);

        @BindsInstance
        Builder userRole(LiveTranslationAPI.Role role);
    }

    @Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\bH\u0007J\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J,\u0010\u0016\u001a\u00020\u00172\u0012\u0010\u0018\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\b0\u00192\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u001bH\u0007J \u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0007¨\u0006#"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;", "", "<init>", "()V", "provideInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "provideInteractorImpl", "settings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "repository", "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;", "provideRepository", "networkApi", "Lcom/sightcall/livetranslation/data/API;", "liveTranslationUrl", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "provideNetworkApi", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "provideAPI", "Lcom/sightcall/livetranslation/LiveTranslationAPI;", "interactorProvider", "Ljavax/inject/Provider;", "component", "Lcom/sightcall/livetranslation/LiveTranslationComponent;", "provideSettings", "useCaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "role", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @LiveTranslationScope
        public final LiveTranslationAPI provideAPI(Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> interactorProvider, LiveTranslationSettings settings, LiveTranslationComponent component) {
            interactorProvider.getClass();
            settings.getClass();
            component.getClass();
            return new LiveTranslationAPIImpl(interactorProvider, settings, component);
        }

        @Provides
        @LiveTranslationScope
        public final NucleusInteractor<LiveTranslationInteractor.State> provideInteractor(NucleusInteractorImpl<LiveTranslationInteractor.State> interactor) {
            interactor.getClass();
            return interactor;
        }

        @Provides
        @LiveTranslationScope
        public final NucleusInteractorImpl<LiveTranslationInteractor.State> provideInteractorImpl(LiveTranslationSettings settings, LiveTranslationRepository repository) {
            settings.getClass();
            repository.getClass();
            return new LiveTranslationInteractorImpl((LiveTranslationSettings.Enabled) settings, repository);
        }

        @Provides
        @LiveTranslationScope
        public final API provideNetworkApi(NetworkConnector networkConnector) {
            networkConnector.getClass();
            return (API) networkConnector.create(API.class);
        }

        @Provides
        @LiveTranslationScope
        public final LiveTranslationRepository provideRepository(API networkApi, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl) {
            networkApi.getClass();
            liveTranslationUrl.getClass();
            return new LiveTranslationRepositoryImpl(networkApi, liveTranslationUrl);
        }

        @Provides
        @LiveTranslationScope
        public final LiveTranslationSettings provideSettings(Reference.UseCase.LiveTranslation useCaseSettings, LiveTranslationAPI.Role role, LiveTranslationAPI.LocaleLanguage localeLanguage) {
            useCaseSettings.getClass();
            role.getClass();
            localeLanguage.getClass();
            return MappersKt.toLiveTranslationSettings(useCaseSettings, role, localeLanguage);
        }
    }

    LiveTranslationAPI getLiveTranslationAPI();

    HistoryComponent.Builder history();

    LiveSentencesComponent.Builder liveSentences();

    SettingsPanelComponent.Builder settingsPanel();
}
