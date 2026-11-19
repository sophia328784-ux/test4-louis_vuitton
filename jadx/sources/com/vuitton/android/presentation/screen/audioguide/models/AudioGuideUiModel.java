package com.vuitton.android.presentation.screen.audioguide.models;

import androidx.compose.ui.graphics.Color;
import com.batch.android.s.b;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.SoundUiModel;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001:\u0007\u001d\u001e\u001f !\"#B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0011\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0011\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006$"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;", "", "", b.a.f24015b, "title", "subtitle", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "theme", "", "accessDurationHours", "immersiveArticleId", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;", "selectedLanguage", "", "availableLanguages", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;", "card", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;", "summary", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;", "tracks", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;", "creditsInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "AudioGuideColorsUiModel", "AvailableLanguageUiModel", "AudioGuideCardUiModel", "SummaryUiModel", "TrackUiModel", "TrackStatusUiModel", "CreditsUiModel", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioGuideUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f53195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f53196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f53197c;
    public final AssetImageUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f53198e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FeatureThemeUiModel f53199f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f53200h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AvailableLanguageUiModel f53201i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f53202j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AudioGuideCardUiModel f53203k;
    public final SummaryUiModel l;
    public final List m;
    public final CreditsUiModel n;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;", "", "", "highlightedText", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuideCardUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImageUiModel f53206c;

        public AudioGuideCardUiModel(String str, String str2, AssetImageUiModel assetImageUiModel) {
            str2.getClass();
            assetImageUiModel.getClass();
            this.f53204a = str;
            this.f53205b = str2;
            this.f53206c = assetImageUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioGuideCardUiModel)) {
                return false;
            }
            AudioGuideCardUiModel audioGuideCardUiModel = (AudioGuideCardUiModel) obj;
            return Intrinsics.c(this.f53204a, audioGuideCardUiModel.f53204a) && Intrinsics.c(this.f53205b, audioGuideCardUiModel.f53205b) && Intrinsics.c(this.f53206c, audioGuideCardUiModel.f53206c);
        }

        public final int hashCode() {
            String str = this.f53204a;
            return this.f53206c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f53205b);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("AudioGuideCardUiModel(highlightedText=", this.f53204a, ", description=", this.f53205b, ", image=");
            sbS.append(this.f53206c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;", "", "Landroidx/compose/ui/graphics/Color;", "textColor", "fadedTextColor", "tooltipTextColor", "timelineColor", "inactiveSliderColor", "cardBackgroundColor", "strongBackgroundColor", "<init>", "(JJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuideColorsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f53207a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f53208b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f53209c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f53210e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f53211f;
        public final long g;

        public AudioGuideColorsUiModel(long j2, long j3, long j4, long j5, long j6, long j7, long j8, DefaultConstructorMarker defaultConstructorMarker) {
            this.f53207a = j2;
            this.f53208b = j3;
            this.f53209c = j4;
            this.d = j5;
            this.f53210e = j6;
            this.f53211f = j7;
            this.g = j8;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioGuideColorsUiModel)) {
                return false;
            }
            AudioGuideColorsUiModel audioGuideColorsUiModel = (AudioGuideColorsUiModel) obj;
            return Color.c(this.f53207a, audioGuideColorsUiModel.f53207a) && Color.c(this.f53208b, audioGuideColorsUiModel.f53208b) && Color.c(this.f53209c, audioGuideColorsUiModel.f53209c) && Color.c(this.d, audioGuideColorsUiModel.d) && Color.c(this.f53210e, audioGuideColorsUiModel.f53210e) && Color.c(this.f53211f, audioGuideColorsUiModel.f53211f) && Color.c(this.g, audioGuideColorsUiModel.g);
        }

        public final int hashCode() {
            Color.Companion companion = Color.f8866b;
            ULong.Companion companion2 = ULong.INSTANCE;
            return Long.hashCode(this.g) + fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f53207a) * 31, 31, this.f53208b), 31, this.f53209c), 31, this.d), 31, this.f53210e), 31, this.f53211f);
        }

        public final String toString() {
            String strI = Color.i(this.f53207a);
            String strI2 = Color.i(this.f53208b);
            String strI3 = Color.i(this.f53209c);
            String strI4 = Color.i(this.d);
            String strI5 = Color.i(this.f53210e);
            String strI6 = Color.i(this.f53211f);
            String strI7 = Color.i(this.g);
            StringBuilder sbS = fc.s("AudioGuideColorsUiModel(textColor=", strI, ", fadedTextColor=", strI2, ", tooltipTextColor=");
            cj.C(sbS, strI3, ", timelineColor=", strI4, ", inactiveSliderColor=");
            cj.C(sbS, strI5, ", cardBackgroundColor=", strI6, ", strongBackgroundColor=");
            return n00.r(strI7, ")", sbS);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;", "", "", m.v, "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AvailableLanguageUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53213b;

        public AvailableLanguageUiModel(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f53212a = str;
            this.f53213b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AvailableLanguageUiModel)) {
                return false;
            }
            AvailableLanguageUiModel availableLanguageUiModel = (AvailableLanguageUiModel) obj;
            return Intrinsics.c(this.f53212a, availableLanguageUiModel.f53212a) && Intrinsics.c(this.f53213b, availableLanguageUiModel.f53213b);
        }

        public final int hashCode() {
            return this.f53213b.hashCode() + (this.f53212a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("AvailableLanguageUiModel(code=", this.f53212a, ", name=", this.f53213b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;", "", "", "description", "buttonTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CreditsUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53215b;

        public CreditsUiModel(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f53214a = str;
            this.f53215b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CreditsUiModel)) {
                return false;
            }
            CreditsUiModel creditsUiModel = (CreditsUiModel) obj;
            return Intrinsics.c(this.f53214a, creditsUiModel.f53214a) && Intrinsics.c(this.f53215b, creditsUiModel.f53215b);
        }

        public final int hashCode() {
            return this.f53215b.hashCode() + (this.f53214a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CreditsUiModel(description=", this.f53214a, ", buttonTitle=", this.f53215b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;", "", "", "totalTracksFormatted", "totalDurationFormatted", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SummaryUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53216a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53217b;

        public SummaryUiModel(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f53216a = str;
            this.f53217b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SummaryUiModel)) {
                return false;
            }
            SummaryUiModel summaryUiModel = (SummaryUiModel) obj;
            return Intrinsics.c(this.f53216a, summaryUiModel.f53216a) && Intrinsics.c(this.f53217b, summaryUiModel.f53217b);
        }

        public final int hashCode() {
            return this.f53217b.hashCode() + (this.f53216a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("SummaryUiModel(totalTracksFormatted=", this.f53216a, ", totalDurationFormatted=", this.f53217b, ")");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;", "", "IDLE", "DONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TrackStatusUiModel {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ TrackStatusUiModel[] $VALUES;
        public static final TrackStatusUiModel DONE;
        public static final TrackStatusUiModel IDLE;

        static {
            TrackStatusUiModel trackStatusUiModel = new TrackStatusUiModel("IDLE", 0);
            IDLE = trackStatusUiModel;
            TrackStatusUiModel trackStatusUiModel2 = new TrackStatusUiModel("DONE", 1);
            DONE = trackStatusUiModel2;
            TrackStatusUiModel[] trackStatusUiModelArr = {trackStatusUiModel, trackStatusUiModel2};
            $VALUES = trackStatusUiModelArr;
            $ENTRIES = EnumEntriesKt.a(trackStatusUiModelArr);
        }

        public static TrackStatusUiModel valueOf(String str) {
            return (TrackStatusUiModel) Enum.valueOf(TrackStatusUiModel.class, str);
        }

        public static TrackStatusUiModel[] values() {
            return (TrackStatusUiModel[]) $VALUES.clone();
        }
    }

    public AudioGuideUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, long j2, FeatureThemeUiModel featureThemeUiModel, int i2, String str4, AvailableLanguageUiModel availableLanguageUiModel, List list, AudioGuideCardUiModel audioGuideCardUiModel, SummaryUiModel summaryUiModel, List list2, CreditsUiModel creditsUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        assetImageUiModel.getClass();
        featureThemeUiModel.getClass();
        availableLanguageUiModel.getClass();
        list.getClass();
        summaryUiModel.getClass();
        list2.getClass();
        this.f53195a = str;
        this.f53196b = str2;
        this.f53197c = str3;
        this.d = assetImageUiModel;
        this.f53198e = j2;
        this.f53199f = featureThemeUiModel;
        this.g = i2;
        this.f53200h = str4;
        this.f53201i = availableLanguageUiModel;
        this.f53202j = list;
        this.f53203k = audioGuideCardUiModel;
        this.l = summaryUiModel;
        this.m = list2;
        this.n = creditsUiModel;
    }

    public static AudioGuideUiModel a(AudioGuideUiModel audioGuideUiModel, ArrayList arrayList) {
        String str = audioGuideUiModel.f53195a;
        String str2 = audioGuideUiModel.f53196b;
        String str3 = audioGuideUiModel.f53197c;
        AssetImageUiModel assetImageUiModel = audioGuideUiModel.d;
        long j2 = audioGuideUiModel.f53198e;
        FeatureThemeUiModel featureThemeUiModel = audioGuideUiModel.f53199f;
        int i2 = audioGuideUiModel.g;
        String str4 = audioGuideUiModel.f53200h;
        AvailableLanguageUiModel availableLanguageUiModel = audioGuideUiModel.f53201i;
        List list = audioGuideUiModel.f53202j;
        AudioGuideCardUiModel audioGuideCardUiModel = audioGuideUiModel.f53203k;
        SummaryUiModel summaryUiModel = audioGuideUiModel.l;
        CreditsUiModel creditsUiModel = audioGuideUiModel.n;
        audioGuideUiModel.getClass();
        return new AudioGuideUiModel(str, str2, str3, assetImageUiModel, j2, featureThemeUiModel, i2, str4, availableLanguageUiModel, list, audioGuideCardUiModel, summaryUiModel, arrayList, creditsUiModel, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioGuideUiModel)) {
            return false;
        }
        AudioGuideUiModel audioGuideUiModel = (AudioGuideUiModel) obj;
        return this.f53195a.equals(audioGuideUiModel.f53195a) && this.f53196b.equals(audioGuideUiModel.f53196b) && Intrinsics.c(this.f53197c, audioGuideUiModel.f53197c) && this.d.equals(audioGuideUiModel.d) && Color.c(this.f53198e, audioGuideUiModel.f53198e) && this.f53199f == audioGuideUiModel.f53199f && this.g == audioGuideUiModel.g && Intrinsics.c(this.f53200h, audioGuideUiModel.f53200h) && this.f53201i.equals(audioGuideUiModel.f53201i) && this.f53202j.equals(audioGuideUiModel.f53202j) && Intrinsics.c(this.f53203k, audioGuideUiModel.f53203k) && this.l.equals(audioGuideUiModel.l) && this.m.equals(audioGuideUiModel.m) && Intrinsics.c(this.n, audioGuideUiModel.n);
    }

    public final int hashCode() {
        int iB = fc.b(this.f53195a.hashCode() * 31, 31, this.f53196b);
        String str = this.f53197c;
        int iHashCode = (this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iB2 = tr.b(this.g, (this.f53199f.hashCode() + fc.a(iHashCode, 31, this.f53198e)) * 31, 31);
        String str2 = this.f53200h;
        int iA = n00.a((this.f53201i.hashCode() + ((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31, 31, this.f53202j);
        AudioGuideCardUiModel audioGuideCardUiModel = this.f53203k;
        int iA2 = n00.a((this.l.hashCode() + ((iA + (audioGuideCardUiModel == null ? 0 : audioGuideCardUiModel.hashCode())) * 31)) * 31, 31, this.m);
        CreditsUiModel creditsUiModel = this.n;
        return iA2 + (creditsUiModel != null ? creditsUiModel.hashCode() : 0);
    }

    public final String toString() {
        String strI = Color.i(this.f53198e);
        StringBuilder sbS = fc.s("AudioGuideUiModel(id=", this.f53195a, ", title=", this.f53196b, ", subtitle=");
        sbS.append(this.f53197c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        sbS.append(strI);
        sbS.append(", theme=");
        sbS.append(this.f53199f);
        sbS.append(", accessDurationHours=");
        sbS.append(this.g);
        sbS.append(", immersiveArticleId=");
        sbS.append(this.f53200h);
        sbS.append(", selectedLanguage=");
        sbS.append(this.f53201i);
        sbS.append(", availableLanguages=");
        sbS.append(this.f53202j);
        sbS.append(", card=");
        sbS.append(this.f53203k);
        sbS.append(", summary=");
        sbS.append(this.l);
        sbS.append(", tracks=");
        sbS.append(this.m);
        sbS.append(", creditsInformation=");
        sbS.append(this.n);
        sbS.append(")");
        return sbS.toString();
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;", "", "", b.a.f24015b, "title", "label", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "thumbnailImage", "trackImage", "Lcom/vuitton/android/presentation/model/common/SoundUiModel;", "sound", "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;", "status", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/model/common/SoundUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class TrackUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53218a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f53219b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f53220c;
        public final AssetImageUiModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetImageUiModel f53221e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SoundUiModel f53222f;
        public final TrackStatusUiModel g;

        public TrackUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, AssetImageUiModel assetImageUiModel2, SoundUiModel soundUiModel, TrackStatusUiModel trackStatusUiModel) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImageUiModel.getClass();
            assetImageUiModel2.getClass();
            soundUiModel.getClass();
            trackStatusUiModel.getClass();
            this.f53218a = str;
            this.f53219b = str2;
            this.f53220c = str3;
            this.d = assetImageUiModel;
            this.f53221e = assetImageUiModel2;
            this.f53222f = soundUiModel;
            this.g = trackStatusUiModel;
        }

        public static TrackUiModel a(TrackUiModel trackUiModel, TrackStatusUiModel trackStatusUiModel) {
            String str = trackUiModel.f53218a;
            String str2 = trackUiModel.f53219b;
            String str3 = trackUiModel.f53220c;
            AssetImageUiModel assetImageUiModel = trackUiModel.d;
            AssetImageUiModel assetImageUiModel2 = trackUiModel.f53221e;
            SoundUiModel soundUiModel = trackUiModel.f53222f;
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImageUiModel.getClass();
            assetImageUiModel2.getClass();
            soundUiModel.getClass();
            trackStatusUiModel.getClass();
            return new TrackUiModel(str, str2, str3, assetImageUiModel, assetImageUiModel2, soundUiModel, trackStatusUiModel);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TrackUiModel)) {
                return false;
            }
            TrackUiModel trackUiModel = (TrackUiModel) obj;
            return Intrinsics.c(this.f53218a, trackUiModel.f53218a) && Intrinsics.c(this.f53219b, trackUiModel.f53219b) && Intrinsics.c(this.f53220c, trackUiModel.f53220c) && Intrinsics.c(this.d, trackUiModel.d) && Intrinsics.c(this.f53221e, trackUiModel.f53221e) && Intrinsics.c(this.f53222f, trackUiModel.f53222f) && this.g == trackUiModel.g;
        }

        public final int hashCode() {
            return this.g.hashCode() + ((this.f53222f.hashCode() + ((this.f53221e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f53218a.hashCode() * 31, 31, this.f53219b), 31, this.f53220c)) * 31)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("TrackUiModel(id=", this.f53218a, ", title=", this.f53219b, ", label=");
            sbS.append(this.f53220c);
            sbS.append(", thumbnailImage=");
            sbS.append(this.d);
            sbS.append(", trackImage=");
            sbS.append(this.f53221e);
            sbS.append(", sound=");
            sbS.append(this.f53222f);
            sbS.append(", status=");
            sbS.append(this.g);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ TrackUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, AssetImageUiModel assetImageUiModel2, SoundUiModel soundUiModel, TrackStatusUiModel trackStatusUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, assetImageUiModel, assetImageUiModel2, soundUiModel, (i2 & 64) != 0 ? TrackStatusUiModel.IDLE : trackStatusUiModel);
        }
    }
}
