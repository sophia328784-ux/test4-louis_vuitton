package com.vuitton.android.data.dto.common.editorial;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tB9\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class EditorialModuleSlideSingleDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetDto f45338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TargetingDto f45339c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialModuleSlideSingleDto> serializer() {
            return EditorialModuleSlideSingleDto$$serializer.f45340a;
        }
    }

    public /* synthetic */ EditorialModuleSlideSingleDto(int i2, String str, AssetDto assetDto, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, EditorialModuleSlideSingleDto$$serializer.f45340a.getF19850b());
            throw null;
        }
        this.f45337a = str;
        this.f45338b = assetDto;
        if ((i2 & 4) == 0) {
            this.f45339c = null;
        } else {
            this.f45339c = targetingDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialModuleSlideSingleDto)) {
            return false;
        }
        EditorialModuleSlideSingleDto editorialModuleSlideSingleDto = (EditorialModuleSlideSingleDto) obj;
        return Intrinsics.c(this.f45337a, editorialModuleSlideSingleDto.f45337a) && Intrinsics.c(this.f45338b, editorialModuleSlideSingleDto.f45338b) && Intrinsics.c(this.f45339c, editorialModuleSlideSingleDto.f45339c);
    }

    public final int hashCode() {
        int iHashCode = (this.f45338b.hashCode() + (this.f45337a.hashCode() * 31)) * 31;
        TargetingDto targetingDto = this.f45339c;
        return iHashCode + (targetingDto == null ? 0 : targetingDto.f45358a.hashCode());
    }

    public final String toString() {
        return "EditorialModuleSlideSingleDto(id=" + this.f45337a + ", asset=" + this.f45338b + ", targeting=" + this.f45339c + ")";
    }

    public EditorialModuleSlideSingleDto(String str, AssetDto assetDto, TargetingDto targetingDto) {
        str.getClass();
        assetDto.getClass();
        this.f45337a = str;
        this.f45338b = assetDto;
        this.f45339c = targetingDto;
    }

    public /* synthetic */ EditorialModuleSlideSingleDto(String str, AssetDto assetDto, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, assetDto, (i2 & 4) != 0 ? null : targetingDto);
    }
}
