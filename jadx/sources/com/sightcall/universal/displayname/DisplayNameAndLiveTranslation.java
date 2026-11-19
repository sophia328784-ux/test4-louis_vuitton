package com.sightcall.universal.displayname;

import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import java.util.List;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public final class DisplayNameAndLiveTranslation {
    public final List<Language> languages;
    public final String name;
    public final LiveTranslationSettings.Enabled.LanguageISO6391 selectedLanguage;
    public final boolean shouldConfirmLanguage;

    public DisplayNameAndLiveTranslation(String str, LiveTranslationSettings.Enabled.LanguageISO6391 languageISO6391, List<Language> list, boolean z) {
        this.name = str;
        this.selectedLanguage = languageISO6391;
        this.languages = list;
        this.shouldConfirmLanguage = z;
    }

    public synchronized void accept() {
        Rtcc.instance().bus().post(new DisplayNameResultEvent(this));
    }
}
