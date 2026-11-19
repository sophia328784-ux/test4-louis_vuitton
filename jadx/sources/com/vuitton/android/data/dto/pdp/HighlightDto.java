package com.vuitton.android.data.dto.pdp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/HighlightDto;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class HighlightDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46216c;
    public final AssetImageDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLinkLegacyDto f46217e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/HighlightDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/HighlightDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<HighlightDto> serializer() {
            return HighlightDto$$serializer.f46218a;
        }
    }

    public /* synthetic */ HighlightDto(int i2, String str, String str2, String str3, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (27 != (i2 & 27)) {
            PluginExceptionsKt.b(i2, 27, HighlightDto$$serializer.f46218a.getF19850b());
            throw null;
        }
        this.f46214a = str;
        this.f46215b = str2;
        if ((i2 & 4) == 0) {
            this.f46216c = null;
        } else {
            this.f46216c = str3;
        }
        this.d = assetImageDto;
        this.f46217e = contributionLinkLegacyDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HighlightDto)) {
            return false;
        }
        HighlightDto highlightDto = (HighlightDto) obj;
        return Intrinsics.c(this.f46214a, highlightDto.f46214a) && Intrinsics.c(this.f46215b, highlightDto.f46215b) && Intrinsics.c(this.f46216c, highlightDto.f46216c) && Intrinsics.c(this.d, highlightDto.d) && Intrinsics.c(this.f46217e, highlightDto.f46217e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46214a.hashCode() * 31, 31, this.f46215b);
        String str = this.f46216c;
        return this.f46217e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HighlightDto(id=", this.f46214a, ", title=", this.f46215b, ", description=");
        sbS.append(this.f46216c);
        sbS.append(", image=");
        sbS.append(this.d);
        sbS.append(", link=");
        sbS.append(this.f46217e);
        sbS.append(")");
        return sbS.toString();
    }

    public HighlightDto(String str, String str2, String str3, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
        str.getClass();
        str2.getClass();
        assetImageDto.getClass();
        contributionLinkLegacyDto.getClass();
        this.f46214a = str;
        this.f46215b = str2;
        this.f46216c = str3;
        this.d = assetImageDto;
        this.f46217e = contributionLinkLegacyDto;
    }

    public /* synthetic */ HighlightDto(String str, String str2, String str3, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, assetImageDto, contributionLinkLegacyDto);
    }
}
