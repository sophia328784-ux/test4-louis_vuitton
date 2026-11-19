package com.sightcall.universal;

import com.sightcall.libraries.network.NetworkConnector;
import com.sightcall.livetranslation.DaggerLiveTranslationComponent;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.session.Reference;
import dagger.BindsInstance;
import dagger.Provides;
import dagger.Subcomponent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Subcomponent
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0002\u0006\u0007R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/ReferenceComponent;", "", "liveTranslationAPI", "Lcom/sightcall/livetranslation/LiveTranslationAPI;", "getLiveTranslationAPI", "()Lcom/sightcall/livetranslation/LiveTranslationAPI;", "Builder", "Module", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@ReferenceScope
public interface ReferenceComponent {

    @Subcomponent.Builder
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0006H'J\u0010\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bH'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nH'J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fH'¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/universal/ReferenceComponent$Builder;", "", "build", "Lcom/sightcall/universal/ReferenceComponent;", "useCaseSettings", "usecaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "userRole", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "liveTranslationUrl", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Builder {
        ReferenceComponent build();

        @BindsInstance
        Builder liveTranslationUrl(LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl);

        @BindsInstance
        Builder localeLanguage(LiveTranslationAPI.LocaleLanguage localeLanguage);

        @BindsInstance
        Builder useCaseSettings(Reference.UseCase.LiveTranslation usecaseSettings);

        @BindsInstance
        Builder userRole(LiveTranslationAPI.Role userRole);
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/universal/ReferenceComponent$Module;", "", "<init>", "()V", "provideLiveTranslationApi", "Lcom/sightcall/livetranslation/LiveTranslationAPI;", "useCaseSettings", "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;", "userRole", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "localeLanguage", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "liveTranslationUrl", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "networkConnector", "Lcom/sightcall/libraries/network/NetworkConnector;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @ReferenceScope
        public final LiveTranslationAPI provideLiveTranslationApi(Reference.UseCase.LiveTranslation useCaseSettings, LiveTranslationAPI.Role userRole, LiveTranslationAPI.LocaleLanguage localeLanguage, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl, NetworkConnector networkConnector) {
            useCaseSettings.getClass();
            userRole.getClass();
            localeLanguage.getClass();
            liveTranslationUrl.getClass();
            networkConnector.getClass();
            return DaggerLiveTranslationComponent.builder().useCaseSettings(useCaseSettings).userRole(userRole).localLanguage(localeLanguage).liveTranslationUrl(liveTranslationUrl).networkConnector(networkConnector).build().getLiveTranslationAPI();
        }
    }

    LiveTranslationAPI getLiveTranslationAPI();
}
