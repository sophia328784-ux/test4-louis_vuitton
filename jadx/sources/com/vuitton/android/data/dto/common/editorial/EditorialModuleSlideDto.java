package com.vuitton.android.data.dto.common.editorial;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBM\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "titles", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EditorialModuleSlideDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EditorialModuleTitlesDto f45333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f45334c;
    public final ContributionLinkLegacyDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TargetingDto f45335e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialModuleSlideDto> serializer() {
            return EditorialModuleSlideDto$$serializer.f45336a;
        }
    }

    public /* synthetic */ EditorialModuleSlideDto(int i2, String str, EditorialModuleTitlesDto editorialModuleTitlesDto, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (13 != (i2 & 13)) {
            PluginExceptionsKt.b(i2, 13, EditorialModuleSlideDto$$serializer.f45336a.getF19838b());
            throw null;
        }
        this.f45332a = str;
        if ((i2 & 2) == 0) {
            this.f45333b = null;
        } else {
            this.f45333b = editorialModuleTitlesDto;
        }
        this.f45334c = assetDto;
        this.d = contributionLinkLegacyDto;
        if ((i2 & 16) == 0) {
            this.f45335e = null;
        } else {
            this.f45335e = targetingDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleSlideDto)) {
            return false;
        }
        EditorialModuleSlideDto editorialModuleSlideDto = (EditorialModuleSlideDto) obj;
        return Intrinsics.c(this.f45332a, editorialModuleSlideDto.f45332a) && Intrinsics.c(this.f45333b, editorialModuleSlideDto.f45333b) && Intrinsics.c(this.f45334c, editorialModuleSlideDto.f45334c) && Intrinsics.c(this.d, editorialModuleSlideDto.d) && Intrinsics.c(this.f45335e, editorialModuleSlideDto.f45335e);
    }

    public final int hashCode() {
        int iHashCode = this.f45332a.hashCode() * 31;
        EditorialModuleTitlesDto editorialModuleTitlesDto = this.f45333b;
        int iHashCode2 = (this.d.hashCode() + ((this.f45334c.hashCode() + ((iHashCode + (editorialModuleTitlesDto == null ? 0 : editorialModuleTitlesDto.hashCode())) * 31)) * 31)) * 31;
        TargetingDto targetingDto = this.f45335e;
        return iHashCode2 + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
    }

    public final String toString() {
        return "EditorialModuleSlideDto(id=" + this.f45332a + ", titles=" + this.f45333b + ", asset=" + this.f45334c + ", link=" + this.d + ", targeting=" + this.f45335e + ")";
    }

    public EditorialModuleSlideDto(String str, EditorialModuleTitlesDto editorialModuleTitlesDto, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto, TargetingDto targetingDto) {
        str.getClass();
        assetDto.getClass();
        contributionLinkLegacyDto.getClass();
        this.f45332a = str;
        this.f45333b = editorialModuleTitlesDto;
        this.f45334c = assetDto;
        this.d = contributionLinkLegacyDto;
        this.f45335e = targetingDto;
    }

    public /* synthetic */ EditorialModuleSlideDto(String str, EditorialModuleTitlesDto editorialModuleTitlesDto, AssetDto assetDto, ContributionLinkLegacyDto contributionLinkLegacyDto, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : editorialModuleTitlesDto, assetDto, contributionLinkLegacyDto, (i2 & 16) != 0 ? null : targetingDto);
    }
}
