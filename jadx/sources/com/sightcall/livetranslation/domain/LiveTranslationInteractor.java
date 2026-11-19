package com.sightcall.livetranslation.domain;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.livetranslation.LiveTranslationAPI;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u00012\u00020\u0002:\u0006\u0003\u0004\u0005\u0006\u0007\b¨\u0006\tÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;", "Lcom/sightcall/livetranslation/domain/StartStopTranslation;", "Lcom/sightcall/livetranslation/domain/TextSizeSelector;", "NewMessage", "SentenceTimedOut", "SelectLanguage", "GetLanguageList", "Enable", "State", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LiveTranslationInteractor extends StartStopTranslation, TextSizeSelector {

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bHÖ\u0083\u0004J\n\u0010\f\u001a\u00020\rHÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$Enable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "isEnable", "", "<init>", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Enable implements Action {
        private final boolean isEnable;

        public Enable(boolean z) {
            this.isEnable = z;
        }

        public static /* synthetic */ Enable copy$default(Enable enable, boolean z, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                z = enable.isEnable;
            }
            return enable.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getIsEnable() {
            return this.isEnable;
        }

        public final Enable copy(boolean isEnable) {
            return new Enable(isEnable);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Enable) && this.isEnable == ((Enable) other).isEnable;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isEnable);
        }

        public final boolean isEnable() {
            return this.isEnable;
        }

        public String toString() {
            return tr.i("Enable(isEnable=", ")", this.isEnable);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$GetLanguageList;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class GetLanguageList implements Action {
        public static final GetLanguageList INSTANCE = new GetLanguageList();

        private GetLanguageList() {
        }
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$NewMessage;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "message", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", m.q, "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "<init>", "(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V", "getMessage", "()Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", "getPid", "()Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NewMessage implements Action {
        private final LiveTranslationAPI.Message message;
        private final LiveTranslationAPI.Pid pid;

        public NewMessage(LiveTranslationAPI.Message message, LiveTranslationAPI.Pid pid) {
            message.getClass();
            pid.getClass();
            this.message = message;
            this.pid = pid;
        }

        public static /* synthetic */ NewMessage copy$default(NewMessage newMessage, LiveTranslationAPI.Message message, LiveTranslationAPI.Pid pid, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                message = newMessage.message;
            }
            if ((i2 & 2) != 0) {
                pid = newMessage.pid;
            }
            return newMessage.copy(message, pid);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LiveTranslationAPI.Message getMessage() {
            return this.message;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LiveTranslationAPI.Pid getPid() {
            return this.pid;
        }

        public final NewMessage copy(LiveTranslationAPI.Message message, LiveTranslationAPI.Pid pid) {
            message.getClass();
            pid.getClass();
            return new NewMessage(message, pid);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NewMessage)) {
                return false;
            }
            NewMessage newMessage = (NewMessage) other;
            return Intrinsics.c(this.message, newMessage.message) && Intrinsics.c(this.pid, newMessage.pid);
        }

        public final LiveTranslationAPI.Message getMessage() {
            return this.message;
        }

        public final LiveTranslationAPI.Pid getPid() {
            return this.pid;
        }

        public int hashCode() {
            return this.pid.hashCode() + (this.message.hashCode() * 31);
        }

        public String toString() {
            return "NewMessage(message=" + this.message + ", pid=" + this.pid + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SelectLanguage;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "language", "Lcom/sightcall/livetranslation/domain/Language;", "<init>", "(Lcom/sightcall/livetranslation/domain/Language;)V", "getLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SelectLanguage implements Action {
        private final Language language;

        public SelectLanguage(Language language) {
            language.getClass();
            this.language = language;
        }

        public static /* synthetic */ SelectLanguage copy$default(SelectLanguage selectLanguage, Language language, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                language = selectLanguage.language;
            }
            return selectLanguage.copy(language);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Language getLanguage() {
            return this.language;
        }

        public final SelectLanguage copy(Language language) {
            language.getClass();
            return new SelectLanguage(language);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SelectLanguage) && Intrinsics.c(this.language, ((SelectLanguage) other).language);
        }

        public final Language getLanguage() {
            return this.language;
        }

        public int hashCode() {
            return this.language.hashCode();
        }

        public String toString() {
            return "SelectLanguage(language=" + this.language + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$SentenceTimedOut;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "sentence", "Lcom/sightcall/livetranslation/domain/Sentence;", "<init>", "(Lcom/sightcall/livetranslation/domain/Sentence;)V", "getSentence", "()Lcom/sightcall/livetranslation/domain/Sentence;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SentenceTimedOut implements Action {
        private final Sentence sentence;

        public SentenceTimedOut(Sentence sentence) {
            sentence.getClass();
            this.sentence = sentence;
        }

        public static /* synthetic */ SentenceTimedOut copy$default(SentenceTimedOut sentenceTimedOut, Sentence sentence, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                sentence = sentenceTimedOut.sentence;
            }
            return sentenceTimedOut.copy(sentence);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Sentence getSentence() {
            return this.sentence;
        }

        public final SentenceTimedOut copy(Sentence sentence) {
            sentence.getClass();
            return new SentenceTimedOut(sentence);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SentenceTimedOut) && Intrinsics.c(this.sentence, ((SentenceTimedOut) other).sentence);
        }

        public final Sentence getSentence() {
            return this.sentence;
        }

        public int hashCode() {
            return this.sentence.hashCode();
        }

        public String toString() {
            return "SentenceTimedOut(sentence=" + this.sentence + ")";
        }
    }

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0007HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\t0\u0003HÆ\u0003JC\u0010\u0016\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003HÆ\u0001J\u0014\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001a\u001a\u00020\u001bHÖ\u0081\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "", "history", "", "Lcom/sightcall/livetranslation/domain/Sentence;", "liveMessages", "displaySettings", "Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;", com.sightcall.universal.agent.Language.TYPE, "Lcom/sightcall/livetranslation/domain/Language;", "<init>", "(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)V", "getHistory", "()Ljava/util/List;", "getLiveMessages", "getDisplaySettings", "()Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;", "getLanguages", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class State {
        private final LiveTranslationDisplaySettings displaySettings;
        private final List<Sentence> history;
        private final List<Language> languages;
        private final List<Sentence> liveMessages;

        public State(List<Sentence> list, List<Sentence> list2, LiveTranslationDisplaySettings liveTranslationDisplaySettings, List<Language> list3) {
            list.getClass();
            list2.getClass();
            liveTranslationDisplaySettings.getClass();
            list3.getClass();
            this.history = list;
            this.liveMessages = list2;
            this.displaySettings = liveTranslationDisplaySettings;
            this.languages = list3;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ State copy$default(State state, List list, List list2, LiveTranslationDisplaySettings liveTranslationDisplaySettings, List list3, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = state.history;
            }
            if ((i2 & 2) != 0) {
                list2 = state.liveMessages;
            }
            if ((i2 & 4) != 0) {
                liveTranslationDisplaySettings = state.displaySettings;
            }
            if ((i2 & 8) != 0) {
                list3 = state.languages;
            }
            return state.copy(list, list2, liveTranslationDisplaySettings, list3);
        }

        public final List<Sentence> component1() {
            return this.history;
        }

        public final List<Sentence> component2() {
            return this.liveMessages;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final LiveTranslationDisplaySettings getDisplaySettings() {
            return this.displaySettings;
        }

        public final List<Language> component4() {
            return this.languages;
        }

        public final State copy(List<Sentence> history, List<Sentence> liveMessages, LiveTranslationDisplaySettings displaySettings, List<Language> languages) {
            history.getClass();
            liveMessages.getClass();
            displaySettings.getClass();
            languages.getClass();
            return new State(history, liveMessages, displaySettings, languages);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof State)) {
                return false;
            }
            State state = (State) other;
            return Intrinsics.c(this.history, state.history) && Intrinsics.c(this.liveMessages, state.liveMessages) && Intrinsics.c(this.displaySettings, state.displaySettings) && Intrinsics.c(this.languages, state.languages);
        }

        public final LiveTranslationDisplaySettings getDisplaySettings() {
            return this.displaySettings;
        }

        public final List<Sentence> getHistory() {
            return this.history;
        }

        public final List<Language> getLanguages() {
            return this.languages;
        }

        public final List<Sentence> getLiveMessages() {
            return this.liveMessages;
        }

        public int hashCode() {
            return this.languages.hashCode() + ((this.displaySettings.hashCode() + n00.a(this.history.hashCode() * 31, 31, this.liveMessages)) * 31);
        }

        public String toString() {
            List<Sentence> list = this.history;
            List<Sentence> list2 = this.liveMessages;
            LiveTranslationDisplaySettings liveTranslationDisplaySettings = this.displaySettings;
            List<Language> list3 = this.languages;
            StringBuilder sbS = o60.s("State(history=", ", liveMessages=", ", displaySettings=", list, list2);
            sbS.append(liveTranslationDisplaySettings);
            sbS.append(", languages=");
            sbS.append(list3);
            sbS.append(")");
            return sbS.toString();
        }
    }
}
