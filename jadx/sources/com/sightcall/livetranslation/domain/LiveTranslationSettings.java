package com.sightcall.livetranslation.domain;

import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u0000 \u00042\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0007\b¨\u0006\t"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "", "<init>", "()V", "Companion", "Enabled", "Disabled", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LiveTranslationSettings {
    private static final int LARGE = 24;
    private static final int MEDIUM = 18;
    private static final int SMALL = 12;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Disabled extends LiveTranslationSettings {
        public static final Disabled INSTANCE = new Disabled();

        private Disabled() {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\b\u0018\u00002\u00020\u0001:\t;<=>?@ABCBU\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0005HÆ\u0003J\t\u0010+\u001a\u00020\u0007HÆ\u0003J\t\u0010,\u001a\u00020\tHÆ\u0003J\u000f\u0010-\u001a\b\u0012\u0004\u0012\u00020\f0\u000bHÆ\u0003J\t\u0010.\u001a\u00020\u000eHÆ\u0003J\t\u0010/\u001a\u00020\u0010HÆ\u0003J\t\u00100\u001a\u00020\u0012HÆ\u0003J\t\u00101\u001a\u00020\u0014HÆ\u0003Ji\u00102\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014HÆ\u0001J\u0014\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u000106HÖ\u0083\u0004J\n\u00107\u001a\u000208HÖ\u0081\u0004J\n\u00109\u001a\u00020:HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(¨\u0006D"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "displayMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "height", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "sentenceTimeOut", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "colors", "", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "language", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "languageMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;", "transcriptHistory", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "translationAutoStartMode", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "<init>", "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;)V", "getDisplayMode", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "getHeight", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "getSentenceTimeOut", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "getColors", "()Ljava/util/List;", "getLanguage", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "getLanguageMode", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;", "getTranscriptHistory", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "getTranslationAutoStartMode", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "DisplayMode", "FontSize", "Height", "SentenceTimeOut", "Color", "LanguageISO6391", "TranslationAutoStartValue", "LanguageMode", "TranscriptHistory", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Enabled extends LiveTranslationSettings {
        private final List<Color> colors;
        private final DisplayMode displayMode;
        private final FontSize fontSize;
        private final Height height;
        private final LanguageISO6391 language;
        private final LanguageMode languageMode;
        private final SentenceTimeOut sentenceTimeOut;
        private final TranscriptHistory transcriptHistory;
        private final TranslationAutoStartValue translationAutoStartMode;

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "", "value", "", "<init>", "(I)V", "getValue", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Color {
            private final int value;

            public Color(int i2) {
                this.value = i2;
            }

            public static /* synthetic */ Color copy$default(Color color, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    i2 = color.value;
                }
                return color.copy(i2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getValue() {
                return this.value;
            }

            public final Color copy(int value) {
                return new Color(value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Color) && this.value == ((Color) other).value;
            }

            public final int getValue() {
                return this.value;
            }

            public int hashCode() {
                return Integer.hashCode(this.value);
            }

            public String toString() {
                return n00.m(this.value, "Color(value=", ")");
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;", "", "<init>", "(Ljava/lang/String;I)V", "Permanent", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public enum DisplayMode {
            Permanent;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<DisplayMode> getEntries() {
                return $ENTRIES;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "", "value", "", "<init>", "(Ljava/lang/String;II)V", "getValue", "()I", "Small", "Medium", "Large", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public enum FontSize {
            Small(12),
            Medium(18),
            Large(24);

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());
            private final int value;

            FontSize(int i2) {
                this.value = i2;
            }

            public static EnumEntries<FontSize> getEntries() {
                return $ENTRIES;
            }

            public final int getValue() {
                return this.value;
            }
        }

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "", "value", "", "<init>", "(I)V", "getValue", "()I", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Height {
            private final int value;

            public Height(int i2) {
                this.value = i2;
            }

            public static /* synthetic */ Height copy$default(Height height, int i2, int i3, Object obj) {
                if ((i3 & 1) != 0) {
                    i2 = height.value;
                }
                return height.copy(i2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getValue() {
                return this.value;
            }

            public final Height copy(int value) {
                return new Height(value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Height) && this.value == ((Height) other).value;
            }

            public final int getValue() {
                return this.value;
            }

            public int hashCode() {
                return Integer.hashCode(this.value);
            }

            public String toString() {
                return n00.m(this.value, "Height(value=", ")");
            }
        }

        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0003HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "", "value", "", "<init>", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class LanguageISO6391 {
            private final String value;

            public LanguageISO6391(String str) {
                str.getClass();
                this.value = str;
            }

            public static /* synthetic */ LanguageISO6391 copy$default(LanguageISO6391 languageISO6391, String str, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    str = languageISO6391.value;
                }
                return languageISO6391.copy(str);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final String getValue() {
                return this.value;
            }

            public final LanguageISO6391 copy(String value) {
                value.getClass();
                return new LanguageISO6391(value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof LanguageISO6391) && Intrinsics.c(this.value, ((LanguageISO6391) other).value);
            }

            public final String getValue() {
                return this.value;
            }

            public int hashCode() {
                return this.value.hashCode();
            }

            public String toString() {
                return fc.h("LanguageISO6391(value=", this.value, ")");
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;", "", "<init>", "(Ljava/lang/String;I)V", "Auto", "Confirmation", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public enum LanguageMode {
            Auto,
            Confirmation;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<LanguageMode> getEntries() {
                return $ENTRIES;
            }
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0011"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;", "", "value", "", "<init>", "(J)V", "getValue", "()J", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SentenceTimeOut {
            private final long value;

            public SentenceTimeOut(long j2) {
                this.value = j2;
            }

            public static /* synthetic */ SentenceTimeOut copy$default(SentenceTimeOut sentenceTimeOut, long j2, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    j2 = sentenceTimeOut.value;
                }
                return sentenceTimeOut.copy(j2);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final long getValue() {
                return this.value;
            }

            public final SentenceTimeOut copy(long value) {
                return new SentenceTimeOut(value);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof SentenceTimeOut) && this.value == ((SentenceTimeOut) other).value;
            }

            public final long getValue() {
                return this.value;
            }

            public int hashCode() {
                return Long.hashCode(this.value);
            }

            public String toString() {
                return o60.i(this.value, "SentenceTimeOut(value=", ")");
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "", "<init>", "(Ljava/lang/String;I)V", "Enabled", "Disabled", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public enum TranscriptHistory {
            Enabled,
            Disabled;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<TranscriptHistory> getEntries() {
                return $ENTRIES;
            }
        }

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0006J\u001a\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010\nJ\u0014\u0010\u000b\u001a\u00020\u00032\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0083\u0004J\n\u0010\r\u001a\u00020\u000eHÖ\u0081\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0002\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "", "isAutoTranslateActive", "", "<init>", "(Ljava/lang/Boolean;)V", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "copy", "(Ljava/lang/Boolean;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "equals", "other", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class TranslationAutoStartValue {
            private final Boolean isAutoTranslateActive;

            public TranslationAutoStartValue(Boolean bool) {
                this.isAutoTranslateActive = bool;
            }

            public static /* synthetic */ TranslationAutoStartValue copy$default(TranslationAutoStartValue translationAutoStartValue, Boolean bool, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    bool = translationAutoStartValue.isAutoTranslateActive;
                }
                return translationAutoStartValue.copy(bool);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Boolean getIsAutoTranslateActive() {
                return this.isAutoTranslateActive;
            }

            public final TranslationAutoStartValue copy(Boolean isAutoTranslateActive) {
                return new TranslationAutoStartValue(isAutoTranslateActive);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof TranslationAutoStartValue) && Intrinsics.c(this.isAutoTranslateActive, ((TranslationAutoStartValue) other).isAutoTranslateActive);
            }

            public int hashCode() {
                Boolean bool = this.isAutoTranslateActive;
                if (bool == null) {
                    return 0;
                }
                return bool.hashCode();
            }

            public final Boolean isAutoTranslateActive() {
                return this.isAutoTranslateActive;
            }

            public String toString() {
                return "TranslationAutoStartValue(isAutoTranslateActive=" + this.isAutoTranslateActive + ")";
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Enabled(DisplayMode displayMode, FontSize fontSize, Height height, SentenceTimeOut sentenceTimeOut, List<Color> list, LanguageISO6391 languageISO6391, LanguageMode languageMode, TranscriptHistory transcriptHistory, TranslationAutoStartValue translationAutoStartValue) {
            super(null);
            displayMode.getClass();
            fontSize.getClass();
            height.getClass();
            sentenceTimeOut.getClass();
            list.getClass();
            languageISO6391.getClass();
            languageMode.getClass();
            transcriptHistory.getClass();
            translationAutoStartValue.getClass();
            this.displayMode = displayMode;
            this.fontSize = fontSize;
            this.height = height;
            this.sentenceTimeOut = sentenceTimeOut;
            this.colors = list;
            this.language = languageISO6391;
            this.languageMode = languageMode;
            this.transcriptHistory = transcriptHistory;
            this.translationAutoStartMode = translationAutoStartValue;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Enabled copy$default(Enabled enabled, DisplayMode displayMode, FontSize fontSize, Height height, SentenceTimeOut sentenceTimeOut, List list, LanguageISO6391 languageISO6391, LanguageMode languageMode, TranscriptHistory transcriptHistory, TranslationAutoStartValue translationAutoStartValue, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                displayMode = enabled.displayMode;
            }
            if ((i2 & 2) != 0) {
                fontSize = enabled.fontSize;
            }
            if ((i2 & 4) != 0) {
                height = enabled.height;
            }
            if ((i2 & 8) != 0) {
                sentenceTimeOut = enabled.sentenceTimeOut;
            }
            if ((i2 & 16) != 0) {
                list = enabled.colors;
            }
            if ((i2 & 32) != 0) {
                languageISO6391 = enabled.language;
            }
            if ((i2 & 64) != 0) {
                languageMode = enabled.languageMode;
            }
            if ((i2 & 128) != 0) {
                transcriptHistory = enabled.transcriptHistory;
            }
            if ((i2 & 256) != 0) {
                translationAutoStartValue = enabled.translationAutoStartMode;
            }
            TranscriptHistory transcriptHistory2 = transcriptHistory;
            TranslationAutoStartValue translationAutoStartValue2 = translationAutoStartValue;
            LanguageISO6391 languageISO6392 = languageISO6391;
            LanguageMode languageMode2 = languageMode;
            List list2 = list;
            Height height2 = height;
            return enabled.copy(displayMode, fontSize, height2, sentenceTimeOut, list2, languageISO6392, languageMode2, transcriptHistory2, translationAutoStartValue2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final DisplayMode getDisplayMode() {
            return this.displayMode;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final FontSize getFontSize() {
            return this.fontSize;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Height getHeight() {
            return this.height;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final SentenceTimeOut getSentenceTimeOut() {
            return this.sentenceTimeOut;
        }

        public final List<Color> component5() {
            return this.colors;
        }

        /* JADX INFO: renamed from: component6, reason: from getter */
        public final LanguageISO6391 getLanguage() {
            return this.language;
        }

        /* JADX INFO: renamed from: component7, reason: from getter */
        public final LanguageMode getLanguageMode() {
            return this.languageMode;
        }

        /* JADX INFO: renamed from: component8, reason: from getter */
        public final TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        /* JADX INFO: renamed from: component9, reason: from getter */
        public final TranslationAutoStartValue getTranslationAutoStartMode() {
            return this.translationAutoStartMode;
        }

        public final Enabled copy(DisplayMode displayMode, FontSize fontSize, Height height, SentenceTimeOut sentenceTimeOut, List<Color> colors, LanguageISO6391 language, LanguageMode languageMode, TranscriptHistory transcriptHistory, TranslationAutoStartValue translationAutoStartMode) {
            displayMode.getClass();
            fontSize.getClass();
            height.getClass();
            sentenceTimeOut.getClass();
            colors.getClass();
            language.getClass();
            languageMode.getClass();
            transcriptHistory.getClass();
            translationAutoStartMode.getClass();
            return new Enabled(displayMode, fontSize, height, sentenceTimeOut, colors, language, languageMode, transcriptHistory, translationAutoStartMode);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Enabled)) {
                return false;
            }
            Enabled enabled = (Enabled) other;
            return this.displayMode == enabled.displayMode && this.fontSize == enabled.fontSize && Intrinsics.c(this.height, enabled.height) && Intrinsics.c(this.sentenceTimeOut, enabled.sentenceTimeOut) && Intrinsics.c(this.colors, enabled.colors) && Intrinsics.c(this.language, enabled.language) && this.languageMode == enabled.languageMode && this.transcriptHistory == enabled.transcriptHistory && Intrinsics.c(this.translationAutoStartMode, enabled.translationAutoStartMode);
        }

        public final List<Color> getColors() {
            return this.colors;
        }

        public final DisplayMode getDisplayMode() {
            return this.displayMode;
        }

        public final FontSize getFontSize() {
            return this.fontSize;
        }

        public final Height getHeight() {
            return this.height;
        }

        public final LanguageISO6391 getLanguage() {
            return this.language;
        }

        public final LanguageMode getLanguageMode() {
            return this.languageMode;
        }

        public final SentenceTimeOut getSentenceTimeOut() {
            return this.sentenceTimeOut;
        }

        public final TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        public final TranslationAutoStartValue getTranslationAutoStartMode() {
            return this.translationAutoStartMode;
        }

        public int hashCode() {
            return this.translationAutoStartMode.hashCode() + ((this.transcriptHistory.hashCode() + ((this.languageMode.hashCode() + ((this.language.hashCode() + n00.a((this.sentenceTimeOut.hashCode() + ((this.height.hashCode() + ((this.fontSize.hashCode() + (this.displayMode.hashCode() * 31)) * 31)) * 31)) * 31, 31, this.colors)) * 31)) * 31)) * 31);
        }

        public String toString() {
            return "Enabled(displayMode=" + this.displayMode + ", fontSize=" + this.fontSize + ", height=" + this.height + ", sentenceTimeOut=" + this.sentenceTimeOut + ", colors=" + this.colors + ", language=" + this.language + ", languageMode=" + this.languageMode + ", transcriptHistory=" + this.transcriptHistory + ", translationAutoStartMode=" + this.translationAutoStartMode + ")";
        }
    }

    public /* synthetic */ LiveTranslationSettings(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private LiveTranslationSettings() {
    }
}
