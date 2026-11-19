package com.vuitton.android.data.dto.audioguide;

import com.batch.android.s.b;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.android.data.dto.common.SoundDto;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import defpackage.w9;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u0000  2\u00020\u0001:\u0007!\"#$%& B\u0093\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000f\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018¢\u0006\u0004\b\u001a\u0010\u001bB±\u0001\b\u0010\u0012\u0006\u0010\u001c\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u000f\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d¢\u0006\u0004\b\u001a\u0010\u001f¨\u0006'"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;", "", "", b.a.f24015b, "title", "subtitle", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "backgroundColor", "Lcom/vuitton/android/data/dto/common/FeatureThemeDto;", "theme", "", "accessDurationHours", "immersiveArticleId", "selectedLanguageCode", "", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;", "availableLanguages", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;", "card", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;", "summary", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;", "tracks", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;", "creditsInformation", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "AvailableLanguageDto", "AudioGuideCardDto", "SummaryDto", "TrackDto", "CreditsDto", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AudioGuideDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44498c;
    public final AssetImageDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FeatureThemeDto f44500f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f44502i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f44503j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AudioGuideCardDto f44504k;
    public final SummaryDto l;
    public final List m;
    public final CreditsDto n;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AudioGuideDto> serializer() {
            return AudioGuideDto$$serializer.f44505a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        o = new Lazy[]{null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new w9(4)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new w9(5)), null, null, LazyKt.a(lazyThreadSafetyMode, new w9(6)), null};
    }

    public /* synthetic */ AudioGuideDto(int i2, String str, String str2, String str3, AssetImageDto assetImageDto, String str4, FeatureThemeDto featureThemeDto, int i3, String str5, String str6, List list, AudioGuideCardDto audioGuideCardDto, SummaryDto summaryDto, List list2, CreditsDto creditsDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (7035 != (i2 & 7035)) {
            PluginExceptionsKt.b(i2, 7035, AudioGuideDto$$serializer.f44505a.getF19850b());
            throw null;
        }
        this.f44496a = str;
        this.f44497b = str2;
        if ((i2 & 4) == 0) {
            this.f44498c = null;
        } else {
            this.f44498c = str3;
        }
        this.d = assetImageDto;
        this.f44499e = str4;
        this.f44500f = featureThemeDto;
        this.g = i3;
        if ((i2 & 128) == 0) {
            this.f44501h = null;
        } else {
            this.f44501h = str5;
        }
        this.f44502i = str6;
        this.f44503j = list;
        if ((i2 & 1024) == 0) {
            this.f44504k = null;
        } else {
            this.f44504k = audioGuideCardDto;
        }
        this.l = summaryDto;
        this.m = list2;
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = creditsDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioGuideDto)) {
            return false;
        }
        AudioGuideDto audioGuideDto = (AudioGuideDto) obj;
        return Intrinsics.c(this.f44496a, audioGuideDto.f44496a) && Intrinsics.c(this.f44497b, audioGuideDto.f44497b) && Intrinsics.c(this.f44498c, audioGuideDto.f44498c) && Intrinsics.c(this.d, audioGuideDto.d) && Intrinsics.c(this.f44499e, audioGuideDto.f44499e) && this.f44500f == audioGuideDto.f44500f && this.g == audioGuideDto.g && Intrinsics.c(this.f44501h, audioGuideDto.f44501h) && Intrinsics.c(this.f44502i, audioGuideDto.f44502i) && Intrinsics.c(this.f44503j, audioGuideDto.f44503j) && Intrinsics.c(this.f44504k, audioGuideDto.f44504k) && Intrinsics.c(this.l, audioGuideDto.l) && Intrinsics.c(this.m, audioGuideDto.m) && Intrinsics.c(this.n, audioGuideDto.n);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44496a.hashCode() * 31, 31, this.f44497b);
        String str = this.f44498c;
        int iB2 = tr.b(this.g, (this.f44500f.hashCode() + fc.b((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f44499e)) * 31, 31);
        String str2 = this.f44501h;
        int iA = n00.a(fc.b((iB2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f44502i), 31, this.f44503j);
        AudioGuideCardDto audioGuideCardDto = this.f44504k;
        int iA2 = n00.a((this.l.hashCode() + ((iA + (audioGuideCardDto == null ? 0 : audioGuideCardDto.hashCode())) * 31)) * 31, 31, this.m);
        CreditsDto creditsDto = this.n;
        return iA2 + (creditsDto != null ? creditsDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AudioGuideDto(id=", this.f44496a, ", title=", this.f44497b, ", subtitle=");
        sbS.append(this.f44498c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", backgroundColor=");
        sbS.append(this.f44499e);
        sbS.append(", theme=");
        sbS.append(this.f44500f);
        sbS.append(", accessDurationHours=");
        sbS.append(this.g);
        sbS.append(", immersiveArticleId=");
        sbS.append(this.f44501h);
        sbS.append(", selectedLanguageCode=");
        d21.z(this.f44502i, ", availableLanguages=", ", card=", sbS, this.f44503j);
        sbS.append(this.f44504k);
        sbS.append(", summary=");
        sbS.append(this.l);
        sbS.append(", tracks=");
        sbS.append(this.m);
        sbS.append(", creditsInformation=");
        sbS.append(this.n);
        sbS.append(")");
        return sbS.toString();
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;", "", "", m.v, "name", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AvailableLanguageDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44511b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AvailableLanguageDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AvailableLanguageDto> serializer() {
                return AudioGuideDto$AvailableLanguageDto$$serializer.f44512a;
            }
        }

        public /* synthetic */ AvailableLanguageDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, AudioGuideDto$AvailableLanguageDto$$serializer.f44512a.getF19850b());
                throw null;
            }
            this.f44510a = str;
            this.f44511b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AvailableLanguageDto)) {
                return false;
            }
            AvailableLanguageDto availableLanguageDto = (AvailableLanguageDto) obj;
            return Intrinsics.c(this.f44510a, availableLanguageDto.f44510a) && Intrinsics.c(this.f44511b, availableLanguageDto.f44511b);
        }

        public final int hashCode() {
            return this.f44511b.hashCode() + (this.f44510a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("AvailableLanguageDto(code=", this.f44510a, ", name=", this.f44511b, ")");
        }

        public AvailableLanguageDto(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44510a = str;
            this.f44511b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;", "", "", "description", "buttonTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CreditsDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44514b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CreditsDto> serializer() {
                return AudioGuideDto$CreditsDto$$serializer.f44515a;
            }
        }

        public /* synthetic */ CreditsDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, AudioGuideDto$CreditsDto$$serializer.f44515a.getF19850b());
                throw null;
            }
            this.f44513a = str;
            this.f44514b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CreditsDto)) {
                return false;
            }
            CreditsDto creditsDto = (CreditsDto) obj;
            return Intrinsics.c(this.f44513a, creditsDto.f44513a) && Intrinsics.c(this.f44514b, creditsDto.f44514b);
        }

        public final int hashCode() {
            return this.f44514b.hashCode() + (this.f44513a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("CreditsDto(description=", this.f44513a, ", buttonTitle=", this.f44514b, ")");
        }

        public CreditsDto(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44513a = str;
            this.f44514b = str2;
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B/\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;", "", "", "totalTracksFormatted", "totalDurationFormatted", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SummaryDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44517b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SummaryDto> serializer() {
                return AudioGuideDto$SummaryDto$$serializer.f44518a;
            }
        }

        public /* synthetic */ SummaryDto(int i2, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, AudioGuideDto$SummaryDto$$serializer.f44518a.getF19850b());
                throw null;
            }
            this.f44516a = str;
            this.f44517b = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SummaryDto)) {
                return false;
            }
            SummaryDto summaryDto = (SummaryDto) obj;
            return Intrinsics.c(this.f44516a, summaryDto.f44516a) && Intrinsics.c(this.f44517b, summaryDto.f44517b);
        }

        public final int hashCode() {
            return this.f44517b.hashCode() + (this.f44516a.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("SummaryDto(totalTracksFormatted=", this.f44516a, ", totalDurationFormatted=", this.f44517b, ")");
        }

        public SummaryDto(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f44516a = str;
            this.f44517b = str2;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;", "", "", "highlightedText", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AudioGuideCardDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44506a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44507b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImageDto f44508c;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AudioGuideCardDto> serializer() {
                return AudioGuideDto$AudioGuideCardDto$$serializer.f44509a;
            }
        }

        public /* synthetic */ AudioGuideCardDto(int i2, String str, String str2, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
            if (6 != (i2 & 6)) {
                PluginExceptionsKt.b(i2, 6, AudioGuideDto$AudioGuideCardDto$$serializer.f44509a.getF19850b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f44506a = null;
            } else {
                this.f44506a = str;
            }
            this.f44507b = str2;
            this.f44508c = assetImageDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioGuideCardDto)) {
                return false;
            }
            AudioGuideCardDto audioGuideCardDto = (AudioGuideCardDto) obj;
            return Intrinsics.c(this.f44506a, audioGuideCardDto.f44506a) && Intrinsics.c(this.f44507b, audioGuideCardDto.f44507b) && Intrinsics.c(this.f44508c, audioGuideCardDto.f44508c);
        }

        public final int hashCode() {
            String str = this.f44506a;
            return this.f44508c.hashCode() + fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f44507b);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("AudioGuideCardDto(highlightedText=", this.f44506a, ", description=", this.f44507b, ", image=");
            sbS.append(this.f44508c);
            sbS.append(")");
            return sbS.toString();
        }

        public AudioGuideCardDto(String str, String str2, AssetImageDto assetImageDto) {
            str2.getClass();
            assetImageDto.getClass();
            this.f44506a = str;
            this.f44507b = str2;
            this.f44508c = assetImageDto;
        }

        public /* synthetic */ AudioGuideCardDto(String str, String str2, AssetImageDto assetImageDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, str2, assetImageDto);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fBW\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;", "", "", b.a.f24015b, "title", "label", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "thumbnailImage", "trackImage", "Lcom/vuitton/android/data/dto/common/SoundDto;", "sound", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/SoundDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/SoundDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class TrackDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f44519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f44520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f44521c;
        public final AssetImageDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetImageDto f44522e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SoundDto f44523f;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$TrackDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<TrackDto> serializer() {
                return AudioGuideDto$TrackDto$$serializer.f44524a;
            }
        }

        public TrackDto(String str, String str2, String str3, AssetImageDto assetImageDto, AssetImageDto assetImageDto2, SoundDto soundDto) {
            str.getClass();
            str2.getClass();
            str3.getClass();
            assetImageDto.getClass();
            assetImageDto2.getClass();
            soundDto.getClass();
            this.f44519a = str;
            this.f44520b = str2;
            this.f44521c = str3;
            this.d = assetImageDto;
            this.f44522e = assetImageDto2;
            this.f44523f = soundDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TrackDto)) {
                return false;
            }
            TrackDto trackDto = (TrackDto) obj;
            return Intrinsics.c(this.f44519a, trackDto.f44519a) && Intrinsics.c(this.f44520b, trackDto.f44520b) && Intrinsics.c(this.f44521c, trackDto.f44521c) && Intrinsics.c(this.d, trackDto.d) && Intrinsics.c(this.f44522e, trackDto.f44522e) && Intrinsics.c(this.f44523f, trackDto.f44523f);
        }

        public final int hashCode() {
            return this.f44523f.hashCode() + ((this.f44522e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f44519a.hashCode() * 31, 31, this.f44520b), 31, this.f44521c)) * 31)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("TrackDto(id=", this.f44519a, ", title=", this.f44520b, ", label=");
            sbS.append(this.f44521c);
            sbS.append(", thumbnailImage=");
            sbS.append(this.d);
            sbS.append(", trackImage=");
            sbS.append(this.f44522e);
            sbS.append(", sound=");
            sbS.append(this.f44523f);
            sbS.append(")");
            return sbS.toString();
        }

        public /* synthetic */ TrackDto(int i2, String str, String str2, String str3, AssetImageDto assetImageDto, AssetImageDto assetImageDto2, SoundDto soundDto, SerializationConstructorMarker serializationConstructorMarker) {
            if (63 != (i2 & 63)) {
                PluginExceptionsKt.b(i2, 63, AudioGuideDto$TrackDto$$serializer.f44524a.getF19850b());
                throw null;
            }
            this.f44519a = str;
            this.f44520b = str2;
            this.f44521c = str3;
            this.d = assetImageDto;
            this.f44522e = assetImageDto2;
            this.f44523f = soundDto;
        }
    }

    public AudioGuideDto(String str, String str2, String str3, AssetImageDto assetImageDto, String str4, FeatureThemeDto featureThemeDto, int i2, String str5, String str6, List<AvailableLanguageDto> list, AudioGuideCardDto audioGuideCardDto, SummaryDto summaryDto, List<TrackDto> list2, CreditsDto creditsDto) {
        str.getClass();
        str2.getClass();
        assetImageDto.getClass();
        str4.getClass();
        featureThemeDto.getClass();
        str6.getClass();
        list.getClass();
        summaryDto.getClass();
        list2.getClass();
        this.f44496a = str;
        this.f44497b = str2;
        this.f44498c = str3;
        this.d = assetImageDto;
        this.f44499e = str4;
        this.f44500f = featureThemeDto;
        this.g = i2;
        this.f44501h = str5;
        this.f44502i = str6;
        this.f44503j = list;
        this.f44504k = audioGuideCardDto;
        this.l = summaryDto;
        this.m = list2;
        this.n = creditsDto;
    }

    public /* synthetic */ AudioGuideDto(String str, String str2, String str3, AssetImageDto assetImageDto, String str4, FeatureThemeDto featureThemeDto, int i2, String str5, String str6, List list, AudioGuideCardDto audioGuideCardDto, SummaryDto summaryDto, List list2, CreditsDto creditsDto, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i3 & 4) != 0 ? null : str3, assetImageDto, str4, featureThemeDto, i2, (i3 & 128) != 0 ? null : str5, str6, list, (i3 & 1024) != 0 ? null : audioGuideCardDto, summaryDto, list2, (i3 & 8192) != 0 ? null : creditsDto);
    }
}
