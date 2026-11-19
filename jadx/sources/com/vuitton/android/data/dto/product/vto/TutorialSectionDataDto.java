package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.b51;
import defpackage.cj;
import defpackage.d21;
import defpackage.l31;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0003\u0003\u0004\u0002\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", "", "Companion", "AssetListSectionDto", "StepsSectionDto", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = TutorialSectionDataDtoSerializer.class)
public abstract class TutorialSectionDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TutorialSectionDataDto> serializer() {
            return TutorialSectionDataDtoSerializer.f46583c;
        }
    }

    public TutorialSectionDataDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "assetList", "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AssetListSectionDto extends TutorialSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Lazy[] f46576b = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(29))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f46577a;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$AssetListSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AssetListSectionDto> serializer() {
                return TutorialSectionDataDto$AssetListSectionDto$$serializer.f46578a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AssetListSectionDto(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, TutorialSectionDataDto$AssetListSectionDto$$serializer.f46578a.getF19838b());
                throw null;
            }
            this.f46577a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AssetListSectionDto) && Intrinsics.c(this.f46577a, ((AssetListSectionDto) obj).f46577a);
        }

        public final int hashCode() {
            return this.f46577a.hashCode();
        }

        public final String toString() {
            return d21.o("AssetListSectionDto(assetList=", ")", this.f46577a);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AssetListSectionDto(List<AssetDto> list) {
            super(null);
            list.getClass();
            this.f46577a = list;
        }
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B5\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", "", "title", "", "stepList", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StepsSectionDto extends TutorialSectionDataDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f46579c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new b51(0))};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f46580a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f46581b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto$StepsSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<StepsSectionDto> serializer() {
                return TutorialSectionDataDto$StepsSectionDto$$serializer.f46582a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ StepsSectionDto(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(null);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, TutorialSectionDataDto$StepsSectionDto$$serializer.f46582a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f46580a = null;
            } else {
                this.f46580a = str;
            }
            this.f46581b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof StepsSectionDto)) {
                return false;
            }
            StepsSectionDto stepsSectionDto = (StepsSectionDto) obj;
            return Intrinsics.c(this.f46580a, stepsSectionDto.f46580a) && Intrinsics.c(this.f46581b, stepsSectionDto.f46581b);
        }

        public final int hashCode() {
            String str = this.f46580a;
            return this.f46581b.hashCode() + ((str == null ? 0 : str.hashCode()) * 31);
        }

        public final String toString() {
            return cj.k("StepsSectionDto(title=", this.f46580a, ", stepList=", this.f46581b, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public StepsSectionDto(String str, List<String> list) {
            super(null);
            list.getClass();
            this.f46580a = str;
            this.f46581b = list;
        }

        public /* synthetic */ StepsSectionDto(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, list);
        }
    }
}
