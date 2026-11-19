package com.sightcall.livetranslation.domain;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J3\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u0019\u001a\u00020\u00032\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\u001b\u001a\u00020\u001cHÖ\u0081\u0004J\n\u0010\u001d\u001a\u00020\u001eHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;", "", "show", "", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "language", "Lcom/sightcall/livetranslation/domain/Language;", "transcriptHistory", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "<init>", "(ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V", "getShow", "()Z", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "getLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", "getTranscriptHistory", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveTranslationDisplaySettings {
    private final LiveTranslationSettings.Enabled.FontSize fontSize;
    private final Language language;
    private final boolean show;
    private final LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory;

    public LiveTranslationDisplaySettings(boolean z, LiveTranslationSettings.Enabled.FontSize fontSize, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
        fontSize.getClass();
        transcriptHistory.getClass();
        this.show = z;
        this.fontSize = fontSize;
        this.language = language;
        this.transcriptHistory = transcriptHistory;
    }

    public static /* synthetic */ LiveTranslationDisplaySettings copy$default(LiveTranslationDisplaySettings liveTranslationDisplaySettings, boolean z, LiveTranslationSettings.Enabled.FontSize fontSize, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = liveTranslationDisplaySettings.show;
        }
        if ((i2 & 2) != 0) {
            fontSize = liveTranslationDisplaySettings.fontSize;
        }
        if ((i2 & 4) != 0) {
            language = liveTranslationDisplaySettings.language;
        }
        if ((i2 & 8) != 0) {
            transcriptHistory = liveTranslationDisplaySettings.transcriptHistory;
        }
        return liveTranslationDisplaySettings.copy(z, fontSize, language, transcriptHistory);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final boolean getShow() {
        return this.show;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
        return this.fontSize;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Language getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
        return this.transcriptHistory;
    }

    public final LiveTranslationDisplaySettings copy(boolean show, LiveTranslationSettings.Enabled.FontSize fontSize, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
        fontSize.getClass();
        transcriptHistory.getClass();
        return new LiveTranslationDisplaySettings(show, fontSize, language, transcriptHistory);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LiveTranslationDisplaySettings)) {
            return false;
        }
        LiveTranslationDisplaySettings liveTranslationDisplaySettings = (LiveTranslationDisplaySettings) other;
        return this.show == liveTranslationDisplaySettings.show && this.fontSize == liveTranslationDisplaySettings.fontSize && Intrinsics.c(this.language, liveTranslationDisplaySettings.language) && this.transcriptHistory == liveTranslationDisplaySettings.transcriptHistory;
    }

    public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
        return this.fontSize;
    }

    public final Language getLanguage() {
        return this.language;
    }

    public final boolean getShow() {
        return this.show;
    }

    public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
        return this.transcriptHistory;
    }

    public int hashCode() {
        int iHashCode = (this.fontSize.hashCode() + (Boolean.hashCode(this.show) * 31)) * 31;
        Language language = this.language;
        return this.transcriptHistory.hashCode() + ((iHashCode + (language == null ? 0 : language.hashCode())) * 31);
    }

    public String toString() {
        return "LiveTranslationDisplaySettings(show=" + this.show + ", fontSize=" + this.fontSize + ", language=" + this.language + ", transcriptHistory=" + this.transcriptHistory + ")";
    }
}
