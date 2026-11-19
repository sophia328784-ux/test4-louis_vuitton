package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.linktype.LinkTypeDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;", "", "", "title", "link", "Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;", "linkType", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;", "theme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleThemeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleCtaDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkTypeDto f45814c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleThemeDto f45815e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleCtaDto> serializer() {
            return ImmersiveArticleCtaDto$$serializer.f45816a;
        }
    }

    public /* synthetic */ ImmersiveArticleCtaDto(int i2, String str, String str2, LinkTypeDto linkTypeDto, String str3, ImmersiveArticleThemeDto immersiveArticleThemeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45812a = null;
        } else {
            this.f45812a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45813b = null;
        } else {
            this.f45813b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45814c = null;
        } else {
            this.f45814c = linkTypeDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        if ((i2 & 16) == 0) {
            this.f45815e = null;
        } else {
            this.f45815e = immersiveArticleThemeDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleCtaDto)) {
            return false;
        }
        ImmersiveArticleCtaDto immersiveArticleCtaDto = (ImmersiveArticleCtaDto) obj;
        return Intrinsics.c(this.f45812a, immersiveArticleCtaDto.f45812a) && Intrinsics.c(this.f45813b, immersiveArticleCtaDto.f45813b) && this.f45814c == immersiveArticleCtaDto.f45814c && Intrinsics.c(this.d, immersiveArticleCtaDto.d) && Intrinsics.c(this.f45815e, immersiveArticleCtaDto.f45815e);
    }

    public final int hashCode() {
        String str = this.f45812a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45813b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        LinkTypeDto linkTypeDto = this.f45814c;
        int iHashCode3 = (iHashCode2 + (linkTypeDto == null ? 0 : linkTypeDto.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ImmersiveArticleThemeDto immersiveArticleThemeDto = this.f45815e;
        return iHashCode4 + (immersiveArticleThemeDto != null ? immersiveArticleThemeDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ImmersiveArticleCtaDto(title=", this.f45812a, ", link=", this.f45813b, ", linkType=");
        sbS.append(this.f45814c);
        sbS.append(", url=");
        sbS.append(this.d);
        sbS.append(", theme=");
        sbS.append(this.f45815e);
        sbS.append(")");
        return sbS.toString();
    }

    public ImmersiveArticleCtaDto() {
        this((String) null, (String) null, (LinkTypeDto) null, (String) null, (ImmersiveArticleThemeDto) null, 31, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticleCtaDto(String str, String str2, LinkTypeDto linkTypeDto, String str3, ImmersiveArticleThemeDto immersiveArticleThemeDto) {
        this.f45812a = str;
        this.f45813b = str2;
        this.f45814c = linkTypeDto;
        this.d = str3;
        this.f45815e = immersiveArticleThemeDto;
    }

    public /* synthetic */ ImmersiveArticleCtaDto(String str, String str2, LinkTypeDto linkTypeDto, String str3, ImmersiveArticleThemeDto immersiveArticleThemeDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : linkTypeDto, (i2 & 8) != 0 ? null : str3, (i2 & 16) != 0 ? null : immersiveArticleThemeDto);
    }
}
