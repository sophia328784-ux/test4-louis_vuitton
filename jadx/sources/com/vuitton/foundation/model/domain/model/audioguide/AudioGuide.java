package com.vuitton.foundation.model.domain.model.audioguide;

import com.batch.android.s.b;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.FeatureTheme;
import com.vuitton.foundation.model.domain.model.common.Sound;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\b\u0018\u00002\u00020\u0001:\u0005\u001c\u001d\u001e\u001f B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000f\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006!"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;", "", "", b.a.f24015b, "title", "subtitle", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "backgroundColor", "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;", "theme", "", "accessDurationHours", "immersiveArticleId", "selectedLanguageCode", "", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;", "availableLanguages", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;", "card", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;", "summary", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;", "tracks", "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;", "creditsInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;)V", "AvailableLanguage", "AudioGuideCard", "Summary", "Track", "Credits", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AudioGuide {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66550c;
    public final AssetImage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FeatureTheme f66552f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f66553h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f66554i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f66555j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AudioGuideCard f66556k;
    public final Summary l;
    public final List m;
    public final Credits n;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;", "", "", "highlightedText", "description", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AudioGuideCard {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66558b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImage f66559c;

        public AudioGuideCard(String str, String str2, AssetImage assetImage) {
            str2.getClass();
            assetImage.getClass();
            this.f66557a = str;
            this.f66558b = str2;
            this.f66559c = assetImage;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioGuideCard)) {
                return false;
            }
            AudioGuideCard audioGuideCard = (AudioGuideCard) obj;
            return Intrinsics.c(this.f66557a, audioGuideCard.f66557a) && Intrinsics.c(this.f66558b, audioGuideCard.f66558b) && Intrinsics.c(this.f66559c, audioGuideCard.f66559c);
        }

        public final int hashCode() {
            String str = this.f66557a;
            return this.f66559c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f66558b);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("AudioGuideCard(highlightedText=", this.f66557a, ", description=", this.f66558b, ", image=");
            sbS.append(this.f66559c);
            sbS.append(")");
            return sbS.toString();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;", "", "", m.v, "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AvailableLanguage {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66561b;

        public AvailableLanguage(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f66560a = str;
            this.f66561b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AvailableLanguage)) {
                return false;
            }
            AvailableLanguage availableLanguage = (AvailableLanguage) obj;
            return Intrinsics.c(this.f66560a, availableLanguage.f66560a) && Intrinsics.c(this.f66561b, availableLanguage.f66561b);
        }

        public final int hashCode() {
            return this.f66561b.hashCode() + (this.f66560a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("AvailableLanguage(code=", this.f66560a, ", name=", this.f66561b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;", "", "", "description", "buttonTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Credits {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66563b;

        public Credits(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f66562a = str;
            this.f66563b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Credits)) {
                return false;
            }
            Credits credits = (Credits) obj;
            return Intrinsics.c(this.f66562a, credits.f66562a) && Intrinsics.c(this.f66563b, credits.f66563b);
        }

        public final int hashCode() {
            return this.f66563b.hashCode() + (this.f66562a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Credits(description=", this.f66562a, ", buttonTitle=", this.f66563b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;", "", "", "totalTracksFormatted", "totalDurationFormatted", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Summary {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66564a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66565b;

        public Summary(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f66564a = str;
            this.f66565b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Summary)) {
                return false;
            }
            Summary summary = (Summary) obj;
            return Intrinsics.c(this.f66564a, summary.f66564a) && Intrinsics.c(this.f66565b, summary.f66565b);
        }

        public final int hashCode() {
            return this.f66565b.hashCode() + (this.f66564a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Summary(totalTracksFormatted=", this.f66564a, ", totalDurationFormatted=", this.f66565b, ")");
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;", "", "", b.a.f24015b, "title", "label", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "thumbnailImage", "trackImage", "Lcom/vuitton/foundation/model/domain/model/common/Sound;", "sound", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/common/Sound;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Track {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f66566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66568c;
        public final AssetImage d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetImage f66569e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Sound f66570f;

        public Track(String str, String str2, String str3, AssetImage assetImage, AssetImage assetImage2, Sound sound) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImage.getClass();
            assetImage2.getClass();
            sound.getClass();
            this.f66566a = str;
            this.f66567b = str2;
            this.f66568c = str3;
            this.d = assetImage;
            this.f66569e = assetImage2;
            this.f66570f = sound;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Track)) {
                return false;
            }
            Track track = (Track) obj;
            return Intrinsics.c(this.f66566a, track.f66566a) && Intrinsics.c(this.f66567b, track.f66567b) && Intrinsics.c(this.f66568c, track.f66568c) && Intrinsics.c(this.d, track.d) && Intrinsics.c(this.f66569e, track.f66569e) && Intrinsics.c(this.f66570f, track.f66570f);
        }

        public final int hashCode() {
            return this.f66570f.hashCode() + ((this.f66569e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f66566a.hashCode() * 31, 31, this.f66567b), 31, this.f66568c)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("Track(id=", this.f66566a, ", title=", this.f66567b, ", label=");
            sbS.append(this.f66568c);
            sbS.append(", thumbnailImage=");
            sbS.append(this.d);
            sbS.append(", trackImage=");
            sbS.append(this.f66569e);
            sbS.append(", sound=");
            sbS.append(this.f66570f);
            sbS.append(")");
            return sbS.toString();
        }
    }

    public AudioGuide(String str, String str2, String str3, AssetImage assetImage, String str4, FeatureTheme featureTheme, int i2, String str5, String str6, List<AvailableLanguage> list, AudioGuideCard audioGuideCard, Summary summary, List<Track> list2, Credits credits) {
        str.getClass();
        str2.getClass();
        assetImage.getClass();
        str4.getClass();
        featureTheme.getClass();
        str6.getClass();
        list.getClass();
        summary.getClass();
        list2.getClass();
        this.f66548a = str;
        this.f66549b = str2;
        this.f66550c = str3;
        this.d = assetImage;
        this.f66551e = str4;
        this.f66552f = featureTheme;
        this.g = i2;
        this.f66553h = str5;
        this.f66554i = str6;
        this.f66555j = list;
        this.f66556k = audioGuideCard;
        this.l = summary;
        this.m = list2;
        this.n = credits;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioGuide)) {
            return false;
        }
        AudioGuide audioGuide = (AudioGuide) obj;
        return Intrinsics.c(this.f66548a, audioGuide.f66548a) && Intrinsics.c(this.f66549b, audioGuide.f66549b) && Intrinsics.c(this.f66550c, audioGuide.f66550c) && Intrinsics.c(this.d, audioGuide.d) && Intrinsics.c(this.f66551e, audioGuide.f66551e) && this.f66552f == audioGuide.f66552f && this.g == audioGuide.g && Intrinsics.c(this.f66553h, audioGuide.f66553h) && Intrinsics.c(this.f66554i, audioGuide.f66554i) && Intrinsics.c(this.f66555j, audioGuide.f66555j) && Intrinsics.c(this.f66556k, audioGuide.f66556k) && Intrinsics.c(this.l, audioGuide.l) && Intrinsics.c(this.m, audioGuide.m) && Intrinsics.c(this.n, audioGuide.n);
    }

    public final int hashCode() {
        int iB = fc.b(this.f66548a.hashCode() * 31, 31, this.f66549b);
        String str = this.f66550c;
        int iB2 = tr.b(this.g, (this.f66552f.hashCode() + fc.b((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f66551e)) * 31, 31);
        String str2 = this.f66553h;
        int iA = n00.a(fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f66554i), 31, this.f66555j);
        AudioGuideCard audioGuideCard = this.f66556k;
        int iA2 = n00.a((this.l.hashCode() + ((iA + (audioGuideCard == null ? 0 : audioGuideCard.hashCode())) * 31)) * 31, 31, this.m);
        Credits credits = this.n;
        return iA2 + (credits != null ? credits.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AudioGuide(id=", this.f66548a, ", title=", this.f66549b, ", subtitle=");
        sbS.append(this.f66550c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        sbS.append(this.f66551e);
        sbS.append(", theme=");
        sbS.append(this.f66552f);
        sbS.append(", accessDurationHours=");
        sbS.append(this.g);
        sbS.append(", immersiveArticleId=");
        sbS.append(this.f66553h);
        sbS.append(", selectedLanguageCode=");
        d21.z(this.f66554i, ", availableLanguages=", ", card=", sbS, this.f66555j);
        sbS.append(this.f66556k);
        sbS.append(", summary=");
        sbS.append(this.l);
        sbS.append(", tracks=");
        sbS.append(this.m);
        sbS.append(", creditsInformation=");
        sbS.append(this.n);
        sbS.append(")");
        return sbS.toString();
    }
}
