package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\t\bf\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor;", "", "State", "Close", "Show", "Hide", "ShowHistory", "SmallSizeSelected", "MediumSizeSelected", "LargeSizeSelected", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SettingsPanelInteractor {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Close;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Close implements Action {
        public static final Close INSTANCE = new Close();

        private Close() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Hide;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Hide implements Action {
        public static final Hide INSTANCE = new Hide();

        private Hide() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$LargeSizeSelected;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LargeSizeSelected implements Action {
        public static final LargeSizeSelected INSTANCE = new LargeSizeSelected();

        private LargeSizeSelected() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$MediumSizeSelected;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class MediumSizeSelected implements Action {
        public static final MediumSizeSelected INSTANCE = new MediumSizeSelected();

        private MediumSizeSelected() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Show;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Show implements Action {
        public static final Show INSTANCE = new Show();

        private Show() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$ShowHistory;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ShowHistory implements Action {
        public static final ShowHistory INSTANCE = new ShowHistory();

        private ShowHistory() {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$SmallSizeSelected;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SmallSizeSelected implements Action {
        public static final SmallSizeSelected INSTANCE = new SmallSizeSelected();

        private SmallSizeSelected() {
        }
    }

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J3\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "show", "", "selectedLanguage", "Lcom/sightcall/livetranslation/domain/Language;", "transcriptHistory", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "<init>", "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "getShow", "()Z", "getSelectedLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", "getTranscriptHistory", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class State implements Action {
        private final LiveTranslationSettings.Enabled.FontSize fontSize;
        private final Language selectedLanguage;
        private final boolean show;
        private final LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory;

        public State(LiveTranslationSettings.Enabled.FontSize fontSize, boolean z, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
            fontSize.getClass();
            transcriptHistory.getClass();
            this.fontSize = fontSize;
            this.show = z;
            this.selectedLanguage = language;
            this.transcriptHistory = transcriptHistory;
        }

        public static /* synthetic */ State copy$default(State state, LiveTranslationSettings.Enabled.FontSize fontSize, boolean z, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                fontSize = state.fontSize;
            }
            if ((i2 & 2) != 0) {
                z = state.show;
            }
            if ((i2 & 4) != 0) {
                language = state.selectedLanguage;
            }
            if ((i2 & 8) != 0) {
                transcriptHistory = state.transcriptHistory;
            }
            return state.copy(fontSize, z, language, transcriptHistory);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getShow() {
            return this.show;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Language getSelectedLanguage() {
            return this.selectedLanguage;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        public final State copy(LiveTranslationSettings.Enabled.FontSize fontSize, boolean show, Language selectedLanguage, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
            fontSize.getClass();
            transcriptHistory.getClass();
            return new State(fontSize, show, selectedLanguage, transcriptHistory);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof State)) {
                return false;
            }
            State state = (State) other;
            return this.fontSize == state.fontSize && this.show == state.show && Intrinsics.c(this.selectedLanguage, state.selectedLanguage) && this.transcriptHistory == state.transcriptHistory;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final Language getSelectedLanguage() {
            return this.selectedLanguage;
        }

        public final boolean getShow() {
            return this.show;
        }

        public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        public int hashCode() {
            int iB = o60.b(this.fontSize.hashCode() * 31, 31, this.show);
            Language language = this.selectedLanguage;
            return this.transcriptHistory.hashCode() + ((iB + (language == null ? 0 : language.hashCode())) * 31);
        }

        public String toString() {
            return "State(fontSize=" + this.fontSize + ", show=" + this.show + ", selectedLanguage=" + this.selectedLanguage + ", transcriptHistory=" + this.transcriptHistory + ")";
        }
    }
}
