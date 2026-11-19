package com.sightcall.livetranslation.data;

import com.google.gson.annotations.SerializedName;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u0000 62\u00020\u0001:\u00016B{\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010'\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0010\u0010(\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u001bJ\u0011\u0010)\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000bHÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0014J\u0098\u0001\u0010/\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00100J\u0014\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u00104\u001a\u00020\u0003HÖ\u0081\u0004J\n\u00105\u001a\u00020\u0005HÖ\u0081\u0004R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0019\u0010\u0014R\u001a\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0017R\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0017R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0017R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0017R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b#\u0010\u0014¨\u00067"}, d2 = {"Lcom/sightcall/livetranslation/data/LiveTranslationEntity;", "", "liveTranslation", "", "captionDisplayMode", "", "captionFontSize", "captionHeight", "captionSentenceTimeout", "", "captionColors", "", "attendeeLanguage", "guestLanguage", "attendeeLanguageMode", "guestLanguageMode", "transcriptHistory", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V", "getLiveTranslation", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getCaptionDisplayMode", "()Ljava/lang/String;", "getCaptionFontSize", "getCaptionHeight", "getCaptionSentenceTimeout", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getCaptionColors", "()Ljava/util/List;", "getAttendeeLanguage", "getGuestLanguage", "getAttendeeLanguageMode", "getGuestLanguageMode", "getTranscriptHistory", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/sightcall/livetranslation/data/LiveTranslationEntity;", "equals", "", "other", "hashCode", "toString", "Companion", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LiveTranslationEntity {
    public static final int DefaultCaptionHeight = 50;
    public static final long DefaultSentenceTimeOut = 5000;

    @SerializedName("attendee_language")
    private final String attendeeLanguage;

    @SerializedName("attendee_language_mode")
    private final String attendeeLanguageMode;

    @SerializedName("caption_colors")
    private final List<String> captionColors;

    @SerializedName("caption_display_mode")
    private final String captionDisplayMode;

    @SerializedName("caption_font_size")
    private final String captionFontSize;

    @SerializedName("caption_height")
    private final Integer captionHeight;

    @SerializedName("caption_sentence_timeout")
    private final Long captionSentenceTimeout;

    @SerializedName("guest_language")
    private final String guestLanguage;

    @SerializedName("guest_language_mode")
    private final String guestLanguageMode;

    @SerializedName("live_translation")
    private final Integer liveTranslation;

    @SerializedName("transcript_history")
    private final Integer transcriptHistory;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final List<String> DefaultColors = CollectionsKt.P("#FFFF00", "#00FFFF", "#FF00FF", "#FFFFFF");

    public LiveTranslationEntity(Integer num, String str, String str2, Integer num2, Long l, List<String> list, String str3, String str4, String str5, String str6, Integer num3) {
        this.liveTranslation = num;
        this.captionDisplayMode = str;
        this.captionFontSize = str2;
        this.captionHeight = num2;
        this.captionSentenceTimeout = l;
        this.captionColors = list;
        this.attendeeLanguage = str3;
        this.guestLanguage = str4;
        this.attendeeLanguageMode = str5;
        this.guestLanguageMode = str6;
        this.transcriptHistory = num3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LiveTranslationEntity copy$default(LiveTranslationEntity liveTranslationEntity, Integer num, String str, String str2, Integer num2, Long l, List list, String str3, String str4, String str5, String str6, Integer num3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            num = liveTranslationEntity.liveTranslation;
        }
        if ((i2 & 2) != 0) {
            str = liveTranslationEntity.captionDisplayMode;
        }
        if ((i2 & 4) != 0) {
            str2 = liveTranslationEntity.captionFontSize;
        }
        if ((i2 & 8) != 0) {
            num2 = liveTranslationEntity.captionHeight;
        }
        if ((i2 & 16) != 0) {
            l = liveTranslationEntity.captionSentenceTimeout;
        }
        if ((i2 & 32) != 0) {
            list = liveTranslationEntity.captionColors;
        }
        if ((i2 & 64) != 0) {
            str3 = liveTranslationEntity.attendeeLanguage;
        }
        if ((i2 & 128) != 0) {
            str4 = liveTranslationEntity.guestLanguage;
        }
        if ((i2 & 256) != 0) {
            str5 = liveTranslationEntity.attendeeLanguageMode;
        }
        if ((i2 & 512) != 0) {
            str6 = liveTranslationEntity.guestLanguageMode;
        }
        if ((i2 & 1024) != 0) {
            num3 = liveTranslationEntity.transcriptHistory;
        }
        String str7 = str6;
        Integer num4 = num3;
        String str8 = str4;
        String str9 = str5;
        List list2 = list;
        String str10 = str3;
        Long l2 = l;
        String str11 = str2;
        return liveTranslationEntity.copy(num, str, str11, num2, l2, list2, str10, str8, str9, str7, num4);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getLiveTranslation() {
        return this.liveTranslation;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getGuestLanguageMode() {
        return this.guestLanguageMode;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Integer getTranscriptHistory() {
        return this.transcriptHistory;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCaptionDisplayMode() {
        return this.captionDisplayMode;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCaptionFontSize() {
        return this.captionFontSize;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Integer getCaptionHeight() {
        return this.captionHeight;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getCaptionSentenceTimeout() {
        return this.captionSentenceTimeout;
    }

    public final List<String> component6() {
        return this.captionColors;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getAttendeeLanguage() {
        return this.attendeeLanguage;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getGuestLanguage() {
        return this.guestLanguage;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getAttendeeLanguageMode() {
        return this.attendeeLanguageMode;
    }

    public final LiveTranslationEntity copy(Integer liveTranslation, String captionDisplayMode, String captionFontSize, Integer captionHeight, Long captionSentenceTimeout, List<String> captionColors, String attendeeLanguage, String guestLanguage, String attendeeLanguageMode, String guestLanguageMode, Integer transcriptHistory) {
        return new LiveTranslationEntity(liveTranslation, captionDisplayMode, captionFontSize, captionHeight, captionSentenceTimeout, captionColors, attendeeLanguage, guestLanguage, attendeeLanguageMode, guestLanguageMode, transcriptHistory);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LiveTranslationEntity)) {
            return false;
        }
        LiveTranslationEntity liveTranslationEntity = (LiveTranslationEntity) other;
        return Intrinsics.c(this.liveTranslation, liveTranslationEntity.liveTranslation) && Intrinsics.c(this.captionDisplayMode, liveTranslationEntity.captionDisplayMode) && Intrinsics.c(this.captionFontSize, liveTranslationEntity.captionFontSize) && Intrinsics.c(this.captionHeight, liveTranslationEntity.captionHeight) && Intrinsics.c(this.captionSentenceTimeout, liveTranslationEntity.captionSentenceTimeout) && Intrinsics.c(this.captionColors, liveTranslationEntity.captionColors) && Intrinsics.c(this.attendeeLanguage, liveTranslationEntity.attendeeLanguage) && Intrinsics.c(this.guestLanguage, liveTranslationEntity.guestLanguage) && Intrinsics.c(this.attendeeLanguageMode, liveTranslationEntity.attendeeLanguageMode) && Intrinsics.c(this.guestLanguageMode, liveTranslationEntity.guestLanguageMode) && Intrinsics.c(this.transcriptHistory, liveTranslationEntity.transcriptHistory);
    }

    public final String getAttendeeLanguage() {
        return this.attendeeLanguage;
    }

    public final String getAttendeeLanguageMode() {
        return this.attendeeLanguageMode;
    }

    public final List<String> getCaptionColors() {
        return this.captionColors;
    }

    public final String getCaptionDisplayMode() {
        return this.captionDisplayMode;
    }

    public final String getCaptionFontSize() {
        return this.captionFontSize;
    }

    public final Integer getCaptionHeight() {
        return this.captionHeight;
    }

    public final Long getCaptionSentenceTimeout() {
        return this.captionSentenceTimeout;
    }

    public final String getGuestLanguage() {
        return this.guestLanguage;
    }

    public final String getGuestLanguageMode() {
        return this.guestLanguageMode;
    }

    public final Integer getLiveTranslation() {
        return this.liveTranslation;
    }

    public final Integer getTranscriptHistory() {
        return this.transcriptHistory;
    }

    public int hashCode() {
        Integer num = this.liveTranslation;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.captionDisplayMode;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.captionFontSize;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.captionHeight;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.captionSentenceTimeout;
        int iHashCode5 = (iHashCode4 + (l == null ? 0 : l.hashCode())) * 31;
        List<String> list = this.captionColors;
        int iHashCode6 = (iHashCode5 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.attendeeLanguage;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.guestLanguage;
        int iHashCode8 = (iHashCode7 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.attendeeLanguageMode;
        int iHashCode9 = (iHashCode8 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.guestLanguageMode;
        int iHashCode10 = (iHashCode9 + (str6 == null ? 0 : str6.hashCode())) * 31;
        Integer num3 = this.transcriptHistory;
        return iHashCode10 + (num3 != null ? num3.hashCode() : 0);
    }

    public String toString() {
        Integer num = this.liveTranslation;
        String str = this.captionDisplayMode;
        String str2 = this.captionFontSize;
        Integer num2 = this.captionHeight;
        Long l = this.captionSentenceTimeout;
        List<String> list = this.captionColors;
        String str3 = this.attendeeLanguage;
        String str4 = this.guestLanguage;
        String str5 = this.attendeeLanguageMode;
        String str6 = this.guestLanguageMode;
        Integer num3 = this.transcriptHistory;
        StringBuilder sb = new StringBuilder("LiveTranslationEntity(liveTranslation=");
        sb.append(num);
        sb.append(", captionDisplayMode=");
        sb.append(str);
        sb.append(", captionFontSize=");
        sb.append(str2);
        sb.append(", captionHeight=");
        sb.append(num2);
        sb.append(", captionSentenceTimeout=");
        sb.append(l);
        sb.append(", captionColors=");
        sb.append(list);
        sb.append(", attendeeLanguage=");
        cj.C(sb, str3, ", guestLanguage=", str4, ", attendeeLanguageMode=");
        cj.C(sb, str5, ", guestLanguageMode=", str6, ", transcriptHistory=");
        sb.append(num3);
        sb.append(")");
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/sightcall/livetranslation/data/LiveTranslationEntity$Companion;", "", "<init>", "()V", "DefaultCaptionHeight", "", "DefaultSentenceTimeOut", "", "DefaultColors", "", "", "getDefaultColors", "()Ljava/util/List;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List<String> getDefaultColors() {
            return LiveTranslationEntity.DefaultColors;
        }

        private Companion() {
        }
    }
}
