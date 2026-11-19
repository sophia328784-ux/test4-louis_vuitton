package com.vuitton.android.data.dto.pdp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBM\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;", "", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EditorialContentDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46208c;
    public final AssetDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContributionLinkLegacyDto f46209e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/EditorialContentDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialContentDto> serializer() {
            return EditorialContentDto$$serializer.f46210a;
        }
    }

    public /* synthetic */ EditorialContentDto(int i2, String str, String str2, String str3, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (27 != (i2 & 27)) {
            PluginExceptionsKt.b(i2, 27, EditorialContentDto$$serializer.f46210a.getF19850b());
            throw null;
        }
        this.f46206a = str;
        this.f46207b = str2;
        if ((i2 & 4) == 0) {
            this.f46208c = null;
        } else {
            this.f46208c = str3;
        }
        this.d = assetDto;
        this.f46209e = contributionLinkLegacyDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialContentDto)) {
            return false;
        }
        EditorialContentDto editorialContentDto = (EditorialContentDto) obj;
        return Intrinsics.c(this.f46206a, editorialContentDto.f46206a) && Intrinsics.c(this.f46207b, editorialContentDto.f46207b) && Intrinsics.c(this.f46208c, editorialContentDto.f46208c) && Intrinsics.c(this.d, editorialContentDto.d) && Intrinsics.c(this.f46209e, editorialContentDto.f46209e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46206a.hashCode() * 31, 31, this.f46207b);
        String str = this.f46208c;
        return this.f46209e.hashCode() + ((this.d.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("EditorialContentDto(id=", this.f46206a, ", title=", this.f46207b, ", description=");
        sbS.append(this.f46208c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", link=");
        sbS.append(this.f46209e);
        sbS.append(")");
        return sbS.toString();
    }

    public EditorialContentDto(String str, String str2, String str3, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
        str.getClass();
        str2.getClass();
        assetDto.getClass();
        contributionLinkLegacyDto.getClass();
        this.f46206a = str;
        this.f46207b = str2;
        this.f46208c = str3;
        this.d = assetDto;
        this.f46209e = contributionLinkLegacyDto;
    }

    public /* synthetic */ EditorialContentDto(String str, String str2, String str3, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, assetDto, contributionLinkLegacyDto);
    }
}
