package com.sightcall.universal.scenario.steps;

import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LanguagesKt;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.universal.Universal;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.displayname.DisplayNameAndLiveTranslation;
import com.sightcall.universal.displayname.DisplayNameRequestEvent;
import com.sightcall.universal.displayname.DisplayNameResultEvent;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import java.util.List;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class DisplayNameStep extends Step implements Step.WithSession {
    private static final String EMPTY_NAME = "";
    private final DisplayNameAndLiveTranslation displayNameAndLiveTranslation;
    private final Session session;

    private DisplayNameStep(Session session, DisplayNameAndLiveTranslation displayNameAndLiveTranslation) {
        this.session = session;
        this.displayNameAndLiveTranslation = displayNameAndLiveTranslation;
    }

    public static Step nextStep(Session session) {
        LiveTranslationAPI liveTranslationAPI = SDKInjector.getSdkInjector().getReferenceComponent().getLiveTranslationAPI();
        List<Language> languages = liveTranslationAPI.getLanguages();
        LiveTranslationSettings.Enabled.LanguageISO6391 initialSelectedLanguage = liveTranslationAPI.getInitialSelectedLanguage();
        selectDefaultLanguage(liveTranslationAPI, languages, initialSelectedLanguage);
        return (session.config.displayNameMode() != null || liveTranslationAPI.getShouldConfirmLanguage()) ? new DisplayNameStep(session, new DisplayNameAndLiveTranslation("", initialSelectedLanguage, languages, liveTranslationAPI.getShouldConfirmLanguage())) : new ConnectionStep(session);
    }

    private static void selectDefaultLanguage(LiveTranslationAPI liveTranslationAPI, List<Language> list, LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391) {
        Language language;
        if (list == null || languageISO6391 == null || (language = LanguagesKt.getLanguage(list, languageISO6391.getValue())) == null) {
            return;
        }
        liveTranslationAPI.selectLanguage(language);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    @Event
    public void onDisplayNameResultEvent(DisplayNameResultEvent displayNameResultEvent) {
        success(new ConnectionStep(this.session));
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        bindService();
        Rtcc.instance().bus().post(new DisplayNameRequestEvent(this.displayNameAndLiveTranslation));
    }

    @Override // com.sightcall.universal.scenario.Step.WithSession
    public Session session() {
        return this.session;
    }
}
