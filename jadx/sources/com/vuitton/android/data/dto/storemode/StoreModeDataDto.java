package com.vuitton.android.data.dto.storemode;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import defpackage.fc;
import defpackage.nw0;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0003\u0003\u0004\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", "", "Companion", "StoreModeSimpleDto", "UnknownStoreModeDataDto", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = StoreModeDataDtoSerializer.class)
public abstract class StoreModeDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreModeDataDto> serializer() {
            return StoreModeDataDtoSerializer.f46859c;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\n\u0018\u00002\u00020\u0001J\u0013\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$UnknownStoreModeDataDto;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", "Lkotlinx/serialization/KSerializer;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class UnknownStoreModeDataDto extends StoreModeDataDto {
        public static final UnknownStoreModeDataDto INSTANCE = new UnknownStoreModeDataDto(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Lazy f46858a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new nw0(28));

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnknownStoreModeDataDto);
        }

        public final int hashCode() {
            return 1811656970;
        }

        public final KSerializer<UnknownStoreModeDataDto> serializer() {
            return (KSerializer) f46858a.getF71699b();
        }

        public final String toString() {
            return "UnknownStoreModeDataDto";
        }
    }

    public StoreModeDataDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", "", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StoreModeSimpleDto extends StoreModeDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46854a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f46855b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetImageDto f46856c;
        public final ContributionLinkLegacyDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StoreModeSimpleDto> serializer() {
                return StoreModeDataDto$StoreModeSimpleDto$$serializer.f46857a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ StoreModeSimpleDto(int i2, String str, String str2, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (15 != (i2 & 15)) {
                PluginExceptionsKt.b(i2, 15, StoreModeDataDto$StoreModeSimpleDto$$serializer.f46857a.getF19838b());
                throw null;
            }
            this.f46854a = str;
            this.f46855b = str2;
            this.f46856c = assetImageDto;
            this.d = contributionLinkLegacyDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StoreModeSimpleDto)) {
                return false;
            }
            StoreModeSimpleDto storeModeSimpleDto = (StoreModeSimpleDto) obj;
            return Intrinsics.c(this.f46854a, storeModeSimpleDto.f46854a) && Intrinsics.c(this.f46855b, storeModeSimpleDto.f46855b) && Intrinsics.c(this.f46856c, storeModeSimpleDto.f46856c) && Intrinsics.c(this.d, storeModeSimpleDto.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + ((this.f46856c.hashCode() + fc.b(this.f46854a.hashCode() * 31, 31, this.f46855b)) * 31);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("StoreModeSimpleDto(title=", this.f46854a, ", description=", this.f46855b, ", image=");
            sbS.append(this.f46856c);
            sbS.append(", link=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StoreModeSimpleDto(String str, String str2, AssetImageDto assetImageDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
            super(null);
            str.getClass();
            str2.getClass();
            assetImageDto.getClass();
            contributionLinkLegacyDto.getClass();
            this.f46854a = str;
            this.f46855b = str2;
            this.f46856c = assetImageDto;
            this.d = contributionLinkLegacyDto;
        }
    }
}
