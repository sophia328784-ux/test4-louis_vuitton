package com.vuitton.android.data.dto.search;

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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/search/SearchHintDto;", "", "", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SearchHintDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46786c;
    public final ContributionLinkLegacyDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/search/SearchHintDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/search/SearchHintDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SearchHintDto> serializer() {
            return SearchHintDto$$serializer.f46787a;
        }
    }

    public /* synthetic */ SearchHintDto(int i2, String str, String str2, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, SearchHintDto$$serializer.f46787a.getF19850b());
            throw null;
        }
        this.f46784a = str;
        this.f46785b = str2;
        this.f46786c = assetImageDto;
        this.d = contributionLinkLegacyDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SearchHintDto)) {
            return false;
        }
        SearchHintDto searchHintDto = (SearchHintDto) obj;
        return Intrinsics.c(this.f46784a, searchHintDto.f46784a) && Intrinsics.c(this.f46785b, searchHintDto.f46785b) && Intrinsics.c(this.f46786c, searchHintDto.f46786c) && Intrinsics.c(this.d, searchHintDto.d);
    }

    public final int hashCode() {
        int iHashCode = this.f46784a.hashCode() * 31;
        String str = this.f46785b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImageDto assetImageDto = this.f46786c;
        return this.d.hashCode() + ((iHashCode2 + (assetImageDto != null ? assetImageDto.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SearchHintDto(title=", this.f46784a, ", description=", this.f46785b, ", image=");
        sbS.append(this.f46786c);
        sbS.append(", link=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public SearchHintDto(String str, String str2, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
        str.getClass();
        contributionLinkLegacyDto.getClass();
        this.f46784a = str;
        this.f46785b = str2;
        this.f46786c = assetImageDto;
        this.d = contributionLinkLegacyDto;
    }
}
