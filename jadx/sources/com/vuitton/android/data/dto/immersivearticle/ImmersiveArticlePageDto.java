package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.m10;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016Ba\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010Bg\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;", "", "", ConfigurationName.KEY, "title", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;", "theme", "ctaTheme", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "sections", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;", "audio", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;", "banner", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Ljava/util/List;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveAudioDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleBannerDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticlePageDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45870h = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(27)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45871a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45872b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmersiveArticleThemeDto f45873c;
    public final ImmersiveArticleThemeDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f45874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ImmersiveAudioDto f45875f;
    public final ImmersiveArticleBannerDto g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticlePageDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticlePageDto> serializer() {
            return ImmersiveArticlePageDto$$serializer.f45876a;
        }
    }

    public /* synthetic */ ImmersiveArticlePageDto(int i2, String str, String str2, ImmersiveArticleThemeDto immersiveArticleThemeDto, ImmersiveArticleThemeDto immersiveArticleThemeDto2, List list, ImmersiveAudioDto immersiveAudioDto, ImmersiveArticleBannerDto immersiveArticleBannerDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45871a = null;
        } else {
            this.f45871a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45872b = null;
        } else {
            this.f45872b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45873c = null;
        } else {
            this.f45873c = immersiveArticleThemeDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleThemeDto2;
        }
        if ((i2 & 16) == 0) {
            this.f45874e = null;
        } else {
            this.f45874e = list;
        }
        if ((i2 & 32) == 0) {
            this.f45875f = null;
        } else {
            this.f45875f = immersiveAudioDto;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = immersiveArticleBannerDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticlePageDto)) {
            return false;
        }
        ImmersiveArticlePageDto immersiveArticlePageDto = (ImmersiveArticlePageDto) obj;
        return Intrinsics.c(this.f45871a, immersiveArticlePageDto.f45871a) && Intrinsics.c(this.f45872b, immersiveArticlePageDto.f45872b) && Intrinsics.c(this.f45873c, immersiveArticlePageDto.f45873c) && Intrinsics.c(this.d, immersiveArticlePageDto.d) && Intrinsics.c(this.f45874e, immersiveArticlePageDto.f45874e) && Intrinsics.c(this.f45875f, immersiveArticlePageDto.f45875f) && Intrinsics.c(this.g, immersiveArticlePageDto.g);
    }

    public final int hashCode() {
        String str = this.f45871a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45872b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        ImmersiveArticleThemeDto immersiveArticleThemeDto = this.f45873c;
        int iHashCode3 = (iHashCode2 + (immersiveArticleThemeDto == null ? 0 : immersiveArticleThemeDto.hashCode())) * 31;
        ImmersiveArticleThemeDto immersiveArticleThemeDto2 = this.d;
        int iHashCode4 = (iHashCode3 + (immersiveArticleThemeDto2 == null ? 0 : immersiveArticleThemeDto2.hashCode())) * 31;
        List list = this.f45874e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        ImmersiveAudioDto immersiveAudioDto = this.f45875f;
        int iHashCode6 = (iHashCode5 + (immersiveAudioDto == null ? 0 : immersiveAudioDto.hashCode())) * 31;
        ImmersiveArticleBannerDto immersiveArticleBannerDto = this.g;
        return iHashCode6 + (immersiveArticleBannerDto != null ? immersiveArticleBannerDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticlePageDto(key=", this.f45871a, ", title=", this.f45872b, ", theme=");
        sbS.append(this.f45873c);
        sbS.append(", ctaTheme=");
        sbS.append(this.d);
        sbS.append(", sections=");
        sbS.append(this.f45874e);
        sbS.append(", audio=");
        sbS.append(this.f45875f);
        sbS.append(", banner=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }

    public ImmersiveArticlePageDto() {
        this((String) null, (String) null, (ImmersiveArticleThemeDto) null, (ImmersiveArticleThemeDto) null, (List) null, (ImmersiveAudioDto) null, (ImmersiveArticleBannerDto) null, CertificateBody.profileType, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticlePageDto(String str, String str2, ImmersiveArticleThemeDto immersiveArticleThemeDto, ImmersiveArticleThemeDto immersiveArticleThemeDto2, List<? extends ImmersiveArticleSectionsDto> list, ImmersiveAudioDto immersiveAudioDto, ImmersiveArticleBannerDto immersiveArticleBannerDto) {
        this.f45871a = str;
        this.f45872b = str2;
        this.f45873c = immersiveArticleThemeDto;
        this.d = immersiveArticleThemeDto2;
        this.f45874e = list;
        this.f45875f = immersiveAudioDto;
        this.g = immersiveArticleBannerDto;
    }

    public /* synthetic */ ImmersiveArticlePageDto(String str, String str2, ImmersiveArticleThemeDto immersiveArticleThemeDto, ImmersiveArticleThemeDto immersiveArticleThemeDto2, List list, ImmersiveAudioDto immersiveAudioDto, ImmersiveArticleBannerDto immersiveArticleBannerDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : immersiveArticleThemeDto, (i2 & 8) != 0 ? null : immersiveArticleThemeDto2, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : immersiveAudioDto, (i2 & 64) != 0 ? null : immersiveArticleBannerDto);
    }
}
