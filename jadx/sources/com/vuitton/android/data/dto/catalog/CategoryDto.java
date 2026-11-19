package com.vuitton.android.data.dto.catalog;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBW\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/CategoryDto;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;", "tag", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;", "carousel", "Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CategoryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f45093c;
    public final CategoryTagDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EditorialModuleDto.CarouselMediumSectionDto f45094e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CategoryRedirectionDto f45095f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/catalog/CategoryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CategoryDto> serializer() {
            return CategoryDto$$serializer.f45096a;
        }
    }

    public /* synthetic */ CategoryDto(int i2, String str, String str2, AssetDto assetDto, CategoryTagDto categoryTagDto, EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto, CategoryRedirectionDto categoryRedirectionDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (39 != (i2 & 39)) {
            PluginExceptionsKt.b(i2, 39, CategoryDto$$serializer.f45096a.getF19838b());
            throw null;
        }
        this.f45091a = str;
        this.f45092b = str2;
        this.f45093c = assetDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = categoryTagDto;
        }
        if ((i2 & 16) == 0) {
            this.f45094e = null;
        } else {
            this.f45094e = carouselMediumSectionDto;
        }
        this.f45095f = categoryRedirectionDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryDto)) {
            return false;
        }
        CategoryDto categoryDto = (CategoryDto) obj;
        return Intrinsics.c(this.f45091a, categoryDto.f45091a) && Intrinsics.c(this.f45092b, categoryDto.f45092b) && Intrinsics.c(this.f45093c, categoryDto.f45093c) && Intrinsics.c(this.d, categoryDto.d) && Intrinsics.c(this.f45094e, categoryDto.f45094e) && Intrinsics.c(this.f45095f, categoryDto.f45095f);
    }

    public final int hashCode() {
        int iHashCode = (this.f45093c.hashCode() + fc.b(this.f45091a.hashCode() * 31, 31, this.f45092b)) * 31;
        CategoryTagDto categoryTagDto = this.d;
        int iHashCode2 = (iHashCode + (categoryTagDto == null ? 0 : categoryTagDto.f45102a.hashCode())) * 31;
        EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto = this.f45094e;
        return this.f45095f.hashCode() + ((iHashCode2 + (carouselMediumSectionDto != null ? carouselMediumSectionDto.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CategoryDto(id=", this.f45091a, ", title=", this.f45092b, ", asset=");
        sbS.append(this.f45093c);
        sbS.append(", tag=");
        sbS.append(this.d);
        sbS.append(", carousel=");
        sbS.append(this.f45094e);
        sbS.append(", redirection=");
        sbS.append(this.f45095f);
        sbS.append(")");
        return sbS.toString();
    }

    public CategoryDto(String str, String str2, AssetDto assetDto, CategoryTagDto categoryTagDto, EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto, CategoryRedirectionDto categoryRedirectionDto) {
        str.getClass();
        str2.getClass();
        assetDto.getClass();
        categoryRedirectionDto.getClass();
        this.f45091a = str;
        this.f45092b = str2;
        this.f45093c = assetDto;
        this.d = categoryTagDto;
        this.f45094e = carouselMediumSectionDto;
        this.f45095f = categoryRedirectionDto;
    }

    public /* synthetic */ CategoryDto(String str, String str2, AssetDto assetDto, CategoryTagDto categoryTagDto, EditorialModuleDto.CarouselMediumSectionDto carouselMediumSectionDto, CategoryRedirectionDto categoryRedirectionDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, assetDto, (i2 & 8) != 0 ? null : categoryTagDto, (i2 & 16) != 0 ? null : carouselMediumSectionDto, categoryRedirectionDto);
    }
}
