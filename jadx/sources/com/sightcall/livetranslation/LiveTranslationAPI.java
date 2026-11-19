package com.sightcall.livetranslation;

import android.view.ViewGroup;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.libraries.archi.coordinator.Coordinator;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.universal.agent.Language;
import defpackage.fc;
import defpackage.n00;
import io.reactivex.rxjava3.core.Observable;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\bf\u0018\u00002\u00020\u0001:\b789:;<=>J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H&J\b\u0010!\u001a\u00020\u001cH&J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\fH&J\u0016\u0010$\u001a\b\u0012\u0002\b\u0003\u0018\u00010%2\u0006\u0010&\u001a\u00020'H&J$\u0010(\u001a\u0006\u0012\u0002\b\u00030%2\u0006\u0010&\u001a\u00020'2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H&J\u001c\u0010-\u001a\u0006\u0012\u0002\b\u00030%2\u0006\u0010&\u001a\u00020'2\u0006\u0010)\u001a\u00020.H&J\u0010\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\bH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\fX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0010X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\nR\u0012\u0010\u0017\u001a\u00020\u0018X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0012\u00101\u001a\u00020\bX¦\u0004¢\u0006\u0006\u001a\u0004\b2\u0010\u0015R\u0014\u00103\u001a\u0004\u0018\u000104X¦\u0004¢\u0006\u0006\u001a\u0004\b5\u00106¨\u0006?À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI;", "", "defaultLanguage", "", "getDefaultLanguage", "()Ljava/lang/String;", "visible", "Lio/reactivex/rxjava3/core/Observable;", "", "getVisible", "()Lio/reactivex/rxjava3/core/Observable;", "selectedLanguage", "Lcom/sightcall/livetranslation/domain/Language;", "getSelectedLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", Language.TYPE, "", "getLanguages", "()Ljava/util/List;", "enabled", "getEnabled", "()Z", "isReady", "autoTranslate", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "getAutoTranslate", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "onNewMessage", "", "message", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", m.q, "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "clear", "selectLanguage", "language", "createLiveSentencesCoordinator", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "rootView", "Landroid/view/ViewGroup;", "createSettingsPanelCoordinator", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "openHistory", "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "createHistoryCoordinator", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "enableLiveTranslation", "isEnabled", "shouldConfirmLanguage", "getShouldConfirmLanguage", "initialSelectedLanguage", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "getInitialSelectedLanguage", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "Message", "Pid", "LocaleLanguage", "Role", "CloseSettings", "OpenHistory", "CloseHistory", "LiveTranslationLanguagesUrl", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface LiveTranslationAPI {

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004H\u0086\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "", "lambda", "Lkotlin/Function0;", "", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getLambda", "()Lkotlin/jvm/functions/Function0;", "invoke", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseHistory {
        private final Function0<Unit> lambda;

        public CloseHistory(Function0<Unit> function0) {
            function0.getClass();
            this.lambda = function0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CloseHistory copy$default(CloseHistory closeHistory, Function0 function0, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                function0 = closeHistory.lambda;
            }
            return closeHistory.copy(function0);
        }

        public final Function0<Unit> component1() {
            return this.lambda;
        }

        public final CloseHistory copy(Function0<Unit> lambda) {
            lambda.getClass();
            return new CloseHistory(lambda);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof CloseHistory) && Intrinsics.c(this.lambda, ((CloseHistory) other).lambda);
        }

        public final Function0<Unit> getLambda() {
            return this.lambda;
        }

        public int hashCode() {
            return this.lambda.hashCode();
        }

        public final void invoke() {
            this.lambda.mo47invoke();
        }

        public String toString() {
            return "CloseHistory(lambda=" + this.lambda + ")";
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004H\u0086\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "", "lambda", "Lkotlin/Function0;", "", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getLambda", "()Lkotlin/jvm/functions/Function0;", "invoke", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseSettings {
        private final Function0<Unit> lambda;

        public CloseSettings(Function0<Unit> function0) {
            function0.getClass();
            this.lambda = function0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ CloseSettings copy$default(CloseSettings closeSettings, Function0 function0, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                function0 = closeSettings.lambda;
            }
            return closeSettings.copy(function0);
        }

        public final Function0<Unit> component1() {
            return this.lambda;
        }

        public final CloseSettings copy(Function0<Unit> lambda) {
            lambda.getClass();
            return new CloseSettings(lambda);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof CloseSettings) && Intrinsics.c(this.lambda, ((CloseSettings) other).lambda);
        }

        public final Function0<Unit> getLambda() {
            return this.lambda;
        }

        public int hashCode() {
            return this.lambda.hashCode();
        }

        public final void invoke() {
            this.lambda.mo47invoke();
        }

        public String toString() {
            return "CloseSettings(lambda=" + this.lambda + ")";
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "<init>", "(Ljava/lang/String;)V", "getUrl", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LiveTranslationLanguagesUrl {
        private final String url;

        public LiveTranslationLanguagesUrl(String str) {
            str.getClass();
            this.url = str;
        }

        public static /* synthetic */ LiveTranslationLanguagesUrl copy$default(LiveTranslationLanguagesUrl liveTranslationLanguagesUrl, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = liveTranslationLanguagesUrl.url;
            }
            return liveTranslationLanguagesUrl.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getUrl() {
            return this.url;
        }

        public final LiveTranslationLanguagesUrl copy(String url) {
            url.getClass();
            return new LiveTranslationLanguagesUrl(url);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof LiveTranslationLanguagesUrl) && Intrinsics.c(this.url, ((LiveTranslationLanguagesUrl) other).url);
        }

        public final String getUrl() {
            return this.url;
        }

        public int hashCode() {
            return this.url.hashCode();
        }

        public String toString() {
            return fc.h("LiveTranslationLanguagesUrl(url=", this.url, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class LocaleLanguage {
        private final String value;

        public LocaleLanguage(String str) {
            str.getClass();
            this.value = str;
        }

        public static /* synthetic */ LocaleLanguage copy$default(LocaleLanguage localeLanguage, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = localeLanguage.value;
            }
            return localeLanguage.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final LocaleLanguage copy(String value) {
            value.getClass();
            return new LocaleLanguage(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof LocaleLanguage) && Intrinsics.c(this.value, ((LocaleLanguage) other).value);
        }

        public final String getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return fc.h("LocaleLanguage(value=", this.value, ")");
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Message {
        private final String value;

        public Message(String str) {
            str.getClass();
            this.value = str;
        }

        public static /* synthetic */ Message copy$default(Message message, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = message.value;
            }
            return message.copy(str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final Message copy(String value) {
            value.getClass();
            return new Message(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Message) && Intrinsics.c(this.value, ((Message) other).value);
        }

        public final String getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public String toString() {
            return fc.h("Message(value=", this.value, ")");
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\t\u001a\u00020\u0004H\u0086\u0002J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\u000b\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "", "lambda", "Lkotlin/Function0;", "", "<init>", "(Lkotlin/jvm/functions/Function0;)V", "getLambda", "()Lkotlin/jvm/functions/Function0;", "invoke", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class OpenHistory {
        private final Function0<Unit> lambda;

        public OpenHistory(Function0<Unit> function0) {
            function0.getClass();
            this.lambda = function0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ OpenHistory copy$default(OpenHistory openHistory, Function0 function0, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                function0 = openHistory.lambda;
            }
            return openHistory.copy(function0);
        }

        public final Function0<Unit> component1() {
            return this.lambda;
        }

        public final OpenHistory copy(Function0<Unit> lambda) {
            lambda.getClass();
            return new OpenHistory(lambda);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof OpenHistory) && Intrinsics.c(this.lambda, ((OpenHistory) other).lambda);
        }

        public final Function0<Unit> getLambda() {
            return this.lambda;
        }

        public int hashCode() {
            return this.lambda.hashCode();
        }

        public final void invoke() {
            this.lambda.mo47invoke();
        }

        public String toString() {
            return "OpenHistory(lambda=" + this.lambda + ")";
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "", "value", "", "<init>", "(I)V", "getValue", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Pid {
        private final int value;

        public Pid(int i2) {
            this.value = i2;
        }

        public static /* synthetic */ Pid copy$default(Pid pid, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i2 = pid.value;
            }
            return pid.copy(i2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getValue() {
            return this.value;
        }

        public final Pid copy(int value) {
            return new Pid(value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Pid) && this.value == ((Pid) other).value;
        }

        public final int getValue() {
            return this.value;
        }

        public int hashCode() {
            return Integer.hashCode(this.value);
        }

        public String toString() {
            return n00.m(this.value, "Pid(value=", ")");
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;", "", "<init>", "(Ljava/lang/String;I)V", "Host", "Guest", "Attendee", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public enum Role {
        Host,
        Guest,
        Attendee;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<Role> getEntries() {
            return $ENTRIES;
        }
    }

    void clear();

    Coordinator<?> createHistoryCoordinator(ViewGroup rootView, CloseHistory closeFeature);

    Coordinator<?> createLiveSentencesCoordinator(ViewGroup rootView);

    Coordinator<?> createSettingsPanelCoordinator(ViewGroup rootView, CloseSettings closeFeature, OpenHistory openHistory);

    void enableLiveTranslation(boolean isEnabled);

    LiveTranslationSettings.Enabled.TranslationAutoStartValue getAutoTranslate();

    String getDefaultLanguage();

    boolean getEnabled();

    LiveTranslationSettings.Enabled.LanguageISO6391 getInitialSelectedLanguage();

    List<com.sightcall.livetranslation.domain.Language> getLanguages();

    com.sightcall.livetranslation.domain.Language getSelectedLanguage();

    boolean getShouldConfirmLanguage();

    Observable<Boolean> getVisible();

    Observable<Boolean> isReady();

    void onNewMessage(Message message, Pid pid);

    void selectLanguage(com.sightcall.livetranslation.domain.Language language);
}
