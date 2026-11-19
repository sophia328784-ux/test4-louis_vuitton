package com.vuitton.android.data.dto.common.editorial;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.IconDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkDto;
import com.vuitton.android.data.dto.linktype.ContributionLinkLegacyDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.d21;
import defpackage.ew;
import defpackage.fc;
import defpackage.n00;
import defpackage.rt;
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
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \b2\u00020\u0001:\u0010\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\bB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0001\u000f\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&¨\u0006'"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "<init>", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "CardSectionDto", "EventSectionDto", "LiveSectionDto", "HighlightCardSectionDto", "SlideShowSectionDto", "CarouselMediumSectionDto", "CarouselLargeMultipleSectionDto", "CarouselLargeSingleSectionDto", "CarouselSmallSectionDto", "GridSmallSectionDto", "AuthenticationSectionDto", "PushCardSectionDto", "ProductCarouselSectionDto", "UnknownSectionDto", "NotificationSectionDto", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public abstract class EditorialModuleDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lazy f45268a = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(21));

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<EditorialModuleDto> serializer() {
            return (KSerializer) EditorialModuleDto.f45268a.getF71699b();
        }
    }

    public /* synthetic */ EditorialModuleDto(int i2, SerializationConstructorMarker serializationConstructorMarker) {
    }

    public EditorialModuleDto(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u0013\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "<init>", "(Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class UnknownSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45330b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<UnknownSectionDto> serializer() {
                return EditorialModuleDto$UnknownSectionDto$$serializer.f45331a;
            }
        }

        public /* synthetic */ UnknownSectionDto(int i2, String str, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if ((i2 & 1) == 0) {
                this.f45330b = null;
            } else {
                this.f45330b = str;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownSectionDto) && Intrinsics.c(this.f45330b, ((UnknownSectionDto) obj).f45330b);
        }

        public final int hashCode() {
            String str = this.f45330b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("UnknownSectionDto(title=", this.f45330b, ")");
        }

        /* JADX WARN: Multi-variable type inference failed */
        public UnknownSectionDto() {
            this((String) null, 1, (DefaultConstructorMarker) (0 == true ? 1 : 0));
        }

        public UnknownSectionDto(String str) {
            super(null);
            this.f45330b = str;
        }

        public /* synthetic */ UnknownSectionDto(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str);
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B%\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0004\u0010\n¨\u0006\r"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class NotificationSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AssetImageDto f45316b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<NotificationSectionDto> serializer() {
                return EditorialModuleDto$NotificationSectionDto$$serializer.f45317a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ NotificationSectionDto(int i2, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, EditorialModuleDto$NotificationSectionDto$$serializer.f45317a.getF19838b());
                throw null;
            }
            this.f45316b = assetImageDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotificationSectionDto) && Intrinsics.c(this.f45316b, ((NotificationSectionDto) obj).f45316b);
        }

        public final int hashCode() {
            return this.f45316b.hashCode();
        }

        public final String toString() {
            return "NotificationSectionDto(image=" + this.f45316b + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotificationSectionDto(AssetImageDto assetImageDto) {
            super(null);
            assetImageDto.getClass();
            this.f45316b = assetImageDto;
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skus", "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ProductCarouselSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Lazy[] f45318c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(4))};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f45319b;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<ProductCarouselSectionDto> serializer() {
                return EditorialModuleDto$ProductCarouselSectionDto$$serializer.f45320a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ ProductCarouselSectionDto(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (1 != (i2 & 1)) {
                PluginExceptionsKt.b(i2, 1, EditorialModuleDto$ProductCarouselSectionDto$$serializer.f45320a.getF19838b());
                throw null;
            }
            this.f45319b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ProductCarouselSectionDto) && Intrinsics.c(this.f45319b, ((ProductCarouselSectionDto) obj).f45319b);
        }

        public final int hashCode() {
            return this.f45319b.hashCode();
        }

        public final String toString() {
            return d21.o("ProductCarouselSectionDto(skus=", ")", this.f45319b);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ProductCarouselSectionDto(List<SkuId> list) {
            super(null);
            list.getClass();
            this.f45319b = list;
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class AuthenticationSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45269b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f45270c;
        public final AssetImageDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<AuthenticationSectionDto> serializer() {
                return EditorialModuleDto$AuthenticationSectionDto$$serializer.f45271a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AuthenticationSectionDto(int i2, String str, String str2, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (7 != (i2 & 7)) {
                PluginExceptionsKt.b(i2, 7, EditorialModuleDto$AuthenticationSectionDto$$serializer.f45271a.getF19838b());
                throw null;
            }
            this.f45269b = str;
            this.f45270c = str2;
            this.d = assetImageDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AuthenticationSectionDto)) {
                return false;
            }
            AuthenticationSectionDto authenticationSectionDto = (AuthenticationSectionDto) obj;
            return Intrinsics.c(this.f45269b, authenticationSectionDto.f45269b) && Intrinsics.c(this.f45270c, authenticationSectionDto.f45270c) && Intrinsics.c(this.d, authenticationSectionDto.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(this.f45269b.hashCode() * 31, 31, this.f45270c);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("AuthenticationSectionDto(title=", this.f45269b, ", description=", this.f45270c, ", image=");
            sbS.append(this.d);
            sbS.append(")");
            return sbS.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AuthenticationSectionDto(String str, String str2, AssetImageDto assetImageDto) {
            super(null);
            str.getClass();
            str2.getClass();
            assetImageDto.getClass();
            this.f45269b = str;
            this.f45270c = str2;
            this.d = assetImageDto;
        }
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fBM\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "description", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "link", "Lcom/vuitton/android/data/dto/common/IconDto;", "icon", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class PushCardSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        public static final Lazy[] g = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(5)), null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45321b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f45322c;
        public final ContributionLinkDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final IconDto f45323e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AssetImageDto f45324f;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<PushCardSectionDto> serializer() {
                return EditorialModuleDto$PushCardSectionDto$$serializer.f45325a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ PushCardSectionDto(int i2, String str, String str2, ContributionLinkDto contributionLinkDto, IconDto iconDto, AssetImageDto assetImageDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (31 != (i2 & 31)) {
                PluginExceptionsKt.b(i2, 31, EditorialModuleDto$PushCardSectionDto$$serializer.f45325a.getF19838b());
                throw null;
            }
            this.f45321b = str;
            this.f45322c = str2;
            this.d = contributionLinkDto;
            this.f45323e = iconDto;
            this.f45324f = assetImageDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PushCardSectionDto)) {
                return false;
            }
            PushCardSectionDto pushCardSectionDto = (PushCardSectionDto) obj;
            return Intrinsics.c(this.f45321b, pushCardSectionDto.f45321b) && Intrinsics.c(this.f45322c, pushCardSectionDto.f45322c) && Intrinsics.c(this.d, pushCardSectionDto.d) && this.f45323e == pushCardSectionDto.f45323e && Intrinsics.c(this.f45324f, pushCardSectionDto.f45324f);
        }

        public final int hashCode() {
            int iHashCode = (this.d.hashCode() + fc.b(this.f45321b.hashCode() * 31, 31, this.f45322c)) * 31;
            IconDto iconDto = this.f45323e;
            int iHashCode2 = (iHashCode + (iconDto == null ? 0 : iconDto.hashCode())) * 31;
            AssetImageDto assetImageDto = this.f45324f;
            return iHashCode2 + (assetImageDto != null ? assetImageDto.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("PushCardSectionDto(title=", this.f45321b, ", description=", this.f45322c, ", link=");
            sbS.append(this.d);
            sbS.append(", icon=");
            sbS.append(this.f45323e);
            sbS.append(", image=");
            sbS.append(this.f45324f);
            sbS.append(")");
            return sbS.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PushCardSectionDto(String str, String str2, ContributionLinkDto contributionLinkDto, IconDto iconDto, AssetImageDto assetImageDto) {
            super(null);
            str.getClass();
            str2.getClass();
            contributionLinkDto.getClass();
            this.f45321b = str;
            this.f45322c = str2;
            this.d = contributionLinkDto;
            this.f45323e = iconDto;
            this.f45324f = assetImageDto;
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "slides", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class SlideShowSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f45326e = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(6)), null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45327b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f45328c;
        public final TargetingDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<SlideShowSectionDto> serializer() {
                return EditorialModuleDto$SlideShowSectionDto$$serializer.f45329a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ SlideShowSectionDto(int i2, String str, List list, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (3 != (i2 & 3)) {
                PluginExceptionsKt.b(i2, 3, EditorialModuleDto$SlideShowSectionDto$$serializer.f45329a.getF19838b());
                throw null;
            }
            this.f45327b = str;
            this.f45328c = list;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SlideShowSectionDto)) {
                return false;
            }
            SlideShowSectionDto slideShowSectionDto = (SlideShowSectionDto) obj;
            return Intrinsics.c(this.f45327b, slideShowSectionDto.f45327b) && Intrinsics.c(this.f45328c, slideShowSectionDto.f45328c) && Intrinsics.c(this.d, slideShowSectionDto.d);
        }

        public final int hashCode() {
            int iA = n00.a(this.f45327b.hashCode() * 31, 31, this.f45328c);
            TargetingDto targetingDto = this.d;
            return iA + (targetingDto == null ? 0 : targetingDto.f45358a.hashCode());
        }

        public final String toString() {
            StringBuilder sbT = d21.t("SlideShowSectionDto(title=", this.f45327b, ", slides=", this.f45328c, ", targeting=");
            sbT.append(this.d);
            sbT.append(")");
            return sbT.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SlideShowSectionDto(String str, List<EditorialModuleSlideDto> list, TargetingDto targetingDto) {
            super(null);
            str.getClass();
            list.getClass();
            this.f45327b = str;
            this.f45328c = list;
            this.d = targetingDto;
        }

        public /* synthetic */ SlideShowSectionDto(String str, List list, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i2 & 4) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "titles", "", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "slides", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CarouselLargeMultipleSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f45278e = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(24)), null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitlesDto f45279b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f45280c;
        public final TargetingDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CarouselLargeMultipleSectionDto> serializer() {
                return EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer.f45281a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CarouselLargeMultipleSectionDto(int i2, EditorialModuleTitlesDto editorialModuleTitlesDto, List list, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, EditorialModuleDto$CarouselLargeMultipleSectionDto$$serializer.f45281a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45279b = null;
            } else {
                this.f45279b = editorialModuleTitlesDto;
            }
            this.f45280c = list;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLargeMultipleSectionDto)) {
                return false;
            }
            CarouselLargeMultipleSectionDto carouselLargeMultipleSectionDto = (CarouselLargeMultipleSectionDto) obj;
            return Intrinsics.c(this.f45279b, carouselLargeMultipleSectionDto.f45279b) && Intrinsics.c(this.f45280c, carouselLargeMultipleSectionDto.f45280c) && Intrinsics.c(this.d, carouselLargeMultipleSectionDto.d);
        }

        public final int hashCode() {
            EditorialModuleTitlesDto editorialModuleTitlesDto = this.f45279b;
            int iA = n00.a((editorialModuleTitlesDto == null ? 0 : editorialModuleTitlesDto.hashCode()) * 31, 31, this.f45280c);
            TargetingDto targetingDto = this.d;
            return iA + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
        }

        public final String toString() {
            return "CarouselLargeMultipleSectionDto(titles=" + this.f45279b + ", slides=" + this.f45280c + ", targeting=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLargeMultipleSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, List<EditorialModuleSlideDto> list, TargetingDto targetingDto) {
            super(null);
            list.getClass();
            this.f45279b = editorialModuleTitlesDto;
            this.f45280c = list;
            this.d = targetingDto;
        }

        public /* synthetic */ CarouselLargeMultipleSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, List list, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : editorialModuleTitlesDto, list, (i2 & 4) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;", "slides", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CarouselMediumSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f45287e = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(26)), null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45288b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f45289c;
        public final TargetingDto d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CarouselMediumSectionDto> serializer() {
                return EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CarouselMediumSectionDto(int i2, String str, List list, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, EditorialModuleDto$CarouselMediumSectionDto$$serializer.f45290a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45288b = null;
            } else {
                this.f45288b = str;
            }
            this.f45289c = list;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselMediumSectionDto)) {
                return false;
            }
            CarouselMediumSectionDto carouselMediumSectionDto = (CarouselMediumSectionDto) obj;
            return Intrinsics.c(this.f45288b, carouselMediumSectionDto.f45288b) && Intrinsics.c(this.f45289c, carouselMediumSectionDto.f45289c) && Intrinsics.c(this.d, carouselMediumSectionDto.d);
        }

        public final int hashCode() {
            String str = this.f45288b;
            int iA = n00.a((str == null ? 0 : str.hashCode()) * 31, 31, this.f45289c);
            TargetingDto targetingDto = this.d;
            return iA + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbT = d21.t("CarouselMediumSectionDto(title=", this.f45288b, ", slides=", this.f45289c, ", targeting=");
            sbT.append(this.d);
            sbT.append(")");
            return sbT.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselMediumSectionDto(String str, List<EditorialModuleSlideDto> list, TargetingDto targetingDto) {
            super(null);
            list.getClass();
            this.f45288b = str;
            this.f45289c = list;
            this.d = targetingDto;
        }

        public /* synthetic */ CarouselMediumSectionDto(String str, List list, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, list, (i2 & 4) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;", "header", "Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;", "algorithm", "", "", "skus", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CarouselSmallSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f45291e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HeaderDto f45292b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmTypeDto f45293c;
        public final List d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CarouselSmallSectionDto> serializer() {
                return EditorialModuleDto$CarouselSmallSectionDto$$serializer.f45294a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f45291e = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new rt(27)), LazyKt.a(lazyThreadSafetyMode, new rt(28))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CarouselSmallSectionDto(int i2, HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, EditorialModuleDto$CarouselSmallSectionDto$$serializer.f45294a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45292b = null;
            } else {
                this.f45292b = headerDto;
            }
            this.f45293c = algorithmTypeDto;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = list;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselSmallSectionDto)) {
                return false;
            }
            CarouselSmallSectionDto carouselSmallSectionDto = (CarouselSmallSectionDto) obj;
            return Intrinsics.c(this.f45292b, carouselSmallSectionDto.f45292b) && this.f45293c == carouselSmallSectionDto.f45293c && Intrinsics.c(this.d, carouselSmallSectionDto.d);
        }

        public final int hashCode() {
            HeaderDto headerDto = this.f45292b;
            int iHashCode = (this.f45293c.hashCode() + ((headerDto == null ? 0 : headerDto.hashCode()) * 31)) * 31;
            List list = this.d;
            return iHashCode + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("CarouselSmallSectionDto(header=");
            sb.append(this.f45292b);
            sb.append(", algorithm=");
            sb.append(this.f45293c);
            sb.append(", skus=");
            return a.o(sb, this.d, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselSmallSectionDto(HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List<String> list) {
            super(null);
            algorithmTypeDto.getClass();
            this.f45292b = headerDto;
            this.f45293c = algorithmTypeDto;
            this.d = list;
        }

        public /* synthetic */ CarouselSmallSectionDto(HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : headerDto, algorithmTypeDto, (i2 & 4) != 0 ? null : list);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nB?\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;", "header", "Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;", "algorithm", "", "", "skus", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/HeaderDto;Lcom/vuitton/android/data/dto/common/editorial/AlgorithmTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class GridSmallSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Lazy[] f45301e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HeaderDto f45302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AlgorithmTypeDto f45303c;
        public final List d;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<GridSmallSectionDto> serializer() {
                return EditorialModuleDto$GridSmallSectionDto$$serializer.f45304a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f45301e = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new ew(0)), LazyKt.a(lazyThreadSafetyMode, new ew(1))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ GridSmallSectionDto(int i2, HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, EditorialModuleDto$GridSmallSectionDto$$serializer.f45304a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45302b = null;
            } else {
                this.f45302b = headerDto;
            }
            this.f45303c = algorithmTypeDto;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = list;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof GridSmallSectionDto)) {
                return false;
            }
            GridSmallSectionDto gridSmallSectionDto = (GridSmallSectionDto) obj;
            return Intrinsics.c(this.f45302b, gridSmallSectionDto.f45302b) && this.f45303c == gridSmallSectionDto.f45303c && Intrinsics.c(this.d, gridSmallSectionDto.d);
        }

        public final int hashCode() {
            HeaderDto headerDto = this.f45302b;
            int iHashCode = (this.f45303c.hashCode() + ((headerDto == null ? 0 : headerDto.hashCode()) * 31)) * 31;
            List list = this.d;
            return iHashCode + (list != null ? list.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("GridSmallSectionDto(header=");
            sb.append(this.f45302b);
            sb.append(", algorithm=");
            sb.append(this.f45303c);
            sb.append(", skus=");
            return a.o(sb, this.d, ")");
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public GridSmallSectionDto(HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List<String> list) {
            super(null);
            algorithmTypeDto.getClass();
            this.f45302b = headerDto;
            this.f45303c = algorithmTypeDto;
            this.d = list;
        }

        public /* synthetic */ GridSmallSectionDto(HeaderDto headerDto, AlgorithmTypeDto algorithmTypeDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : headerDto, algorithmTypeDto, (i2 & 4) != 0 ? null : list);
        }
    }

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B5\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fBI\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "titles", "", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;", "slides", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CarouselLargeSingleSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Lazy[] f45282f = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(25)), null, null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitlesDto f45283b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f45284c;
        public final TargetingDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ContributionLinkLegacyDto f45285e;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CarouselLargeSingleSectionDto> serializer() {
                return EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer.f45286a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CarouselLargeSingleSectionDto(int i2, EditorialModuleTitlesDto editorialModuleTitlesDto, List list, TargetingDto targetingDto, ContributionLinkLegacyDto contributionLinkLegacyDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (10 != (i2 & 10)) {
                PluginExceptionsKt.b(i2, 10, EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer.f45286a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45283b = null;
            } else {
                this.f45283b = editorialModuleTitlesDto;
            }
            this.f45284c = list;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = targetingDto;
            }
            this.f45285e = contributionLinkLegacyDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CarouselLargeSingleSectionDto)) {
                return false;
            }
            CarouselLargeSingleSectionDto carouselLargeSingleSectionDto = (CarouselLargeSingleSectionDto) obj;
            return Intrinsics.c(this.f45283b, carouselLargeSingleSectionDto.f45283b) && Intrinsics.c(this.f45284c, carouselLargeSingleSectionDto.f45284c) && Intrinsics.c(this.d, carouselLargeSingleSectionDto.d) && Intrinsics.c(this.f45285e, carouselLargeSingleSectionDto.f45285e);
        }

        public final int hashCode() {
            EditorialModuleTitlesDto editorialModuleTitlesDto = this.f45283b;
            int iA = n00.a((editorialModuleTitlesDto == null ? 0 : editorialModuleTitlesDto.hashCode()) * 31, 31, this.f45284c);
            TargetingDto targetingDto = this.d;
            return this.f45285e.hashCode() + ((iA + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0)) * 31);
        }

        public final String toString() {
            return "CarouselLargeSingleSectionDto(titles=" + this.f45283b + ", slides=" + this.f45284c + ", targeting=" + this.d + ", link=" + this.f45285e + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CarouselLargeSingleSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, List<EditorialModuleSlideSingleDto> list, TargetingDto targetingDto, ContributionLinkLegacyDto contributionLinkLegacyDto) {
            super(null);
            list.getClass();
            contributionLinkLegacyDto.getClass();
            this.f45283b = editorialModuleTitlesDto;
            this.f45284c = list;
            this.d = targetingDto;
            this.f45285e = contributionLinkLegacyDto;
        }

        public /* synthetic */ CarouselLargeSingleSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, List list, TargetingDto targetingDto, ContributionLinkLegacyDto contributionLinkLegacyDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : editorialModuleTitlesDto, list, (i2 & 4) != 0 ? null : targetingDto, contributionLinkLegacyDto);
        }
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class HighlightCardSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45305b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f45306c;
        public final AssetImageDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TargetingDto f45307e;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<HighlightCardSectionDto> serializer() {
                return EditorialModuleDto$HighlightCardSectionDto$$serializer.f45308a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ HighlightCardSectionDto(int i2, String str, String str2, AssetImageDto assetImageDto, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (2 != (i2 & 2)) {
                PluginExceptionsKt.b(i2, 2, EditorialModuleDto$HighlightCardSectionDto$$serializer.f45308a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45305b = null;
            } else {
                this.f45305b = str;
            }
            this.f45306c = str2;
            if ((i2 & 4) == 0) {
                this.d = null;
            } else {
                this.d = assetImageDto;
            }
            if ((i2 & 8) == 0) {
                this.f45307e = null;
            } else {
                this.f45307e = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof HighlightCardSectionDto)) {
                return false;
            }
            HighlightCardSectionDto highlightCardSectionDto = (HighlightCardSectionDto) obj;
            return Intrinsics.c(this.f45305b, highlightCardSectionDto.f45305b) && Intrinsics.c(this.f45306c, highlightCardSectionDto.f45306c) && Intrinsics.c(this.d, highlightCardSectionDto.d) && Intrinsics.c(this.f45307e, highlightCardSectionDto.f45307e);
        }

        public final int hashCode() {
            String str = this.f45305b;
            int iB = fc.b((str == null ? 0 : str.hashCode()) * 31, 31, this.f45306c);
            AssetImageDto assetImageDto = this.d;
            int iHashCode = (iB + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31;
            TargetingDto targetingDto = this.f45307e;
            return iHashCode + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
        }

        public final String toString() {
            StringBuilder sbS = fc.s("HighlightCardSectionDto(title=", this.f45305b, ", description=", this.f45306c, ", image=");
            sbS.append(this.d);
            sbS.append(", targeting=");
            sbS.append(this.f45307e);
            sbS.append(")");
            return sbS.toString();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HighlightCardSectionDto(String str, String str2, AssetImageDto assetImageDto, TargetingDto targetingDto) {
            super(null);
            str2.getClass();
            this.f45305b = str;
            this.f45306c = str2;
            this.d = assetImageDto;
            this.f45307e = targetingDto;
        }

        public /* synthetic */ HighlightCardSectionDto(String str, String str2, AssetImageDto assetImageDto, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, str2, (i2 & 4) != 0 ? null : assetImageDto, (i2 & 8) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBW\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "titles", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;", "assetLayout", "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "ratio", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/AssetLayoutDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class CardSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Lazy[] f45272h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitlesDto f45273b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ContributionLinkLegacyDto f45274c;
        public final AssetDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AssetLayoutDto f45275e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final RatioDto f45276f;
        public final TargetingDto g;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<CardSectionDto> serializer() {
                return EditorialModuleDto$CardSectionDto$$serializer.f45277a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f45272h = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new rt(22)), LazyKt.a(lazyThreadSafetyMode, new rt(23)), null};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ CardSectionDto(int i2, EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, AssetLayoutDto assetLayoutDto, RatioDto ratioDto, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (28 != (i2 & 28)) {
                PluginExceptionsKt.b(i2, 28, EditorialModuleDto$CardSectionDto$$serializer.f45277a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45273b = null;
            } else {
                this.f45273b = editorialModuleTitlesDto;
            }
            if ((i2 & 2) == 0) {
                this.f45274c = null;
            } else {
                this.f45274c = contributionLinkLegacyDto;
            }
            this.d = assetDto;
            this.f45275e = assetLayoutDto;
            this.f45276f = ratioDto;
            if ((i2 & 32) == 0) {
                this.g = null;
            } else {
                this.g = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CardSectionDto)) {
                return false;
            }
            CardSectionDto cardSectionDto = (CardSectionDto) obj;
            return Intrinsics.c(this.f45273b, cardSectionDto.f45273b) && Intrinsics.c(this.f45274c, cardSectionDto.f45274c) && Intrinsics.c(this.d, cardSectionDto.d) && this.f45275e == cardSectionDto.f45275e && this.f45276f == cardSectionDto.f45276f && Intrinsics.c(this.g, cardSectionDto.g);
        }

        public final int hashCode() {
            EditorialModuleTitlesDto editorialModuleTitlesDto = this.f45273b;
            int iHashCode = (editorialModuleTitlesDto == null ? 0 : editorialModuleTitlesDto.hashCode()) * 31;
            ContributionLinkLegacyDto contributionLinkLegacyDto = this.f45274c;
            int iHashCode2 = (this.f45276f.hashCode() + ((this.f45275e.hashCode() + ((this.d.hashCode() + ((iHashCode + (contributionLinkLegacyDto == null ? 0 : contributionLinkLegacyDto.hashCode())) * 31)) * 31)) * 31)) * 31;
            TargetingDto targetingDto = this.g;
            return iHashCode2 + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
        }

        public final String toString() {
            return "CardSectionDto(titles=" + this.f45273b + ", link=" + this.f45274c + ", asset=" + this.d + ", assetLayout=" + this.f45275e + ", ratio=" + this.f45276f + ", targeting=" + this.g + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CardSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, AssetLayoutDto assetLayoutDto, RatioDto ratioDto, TargetingDto targetingDto) {
            super(null);
            assetDto.getClass();
            assetLayoutDto.getClass();
            ratioDto.getClass();
            this.f45273b = editorialModuleTitlesDto;
            this.f45274c = contributionLinkLegacyDto;
            this.d = assetDto;
            this.f45275e = assetLayoutDto;
            this.f45276f = ratioDto;
            this.g = targetingDto;
        }

        public /* synthetic */ CardSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, AssetLayoutDto assetLayoutDto, RatioDto ratioDto, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : editorialModuleTitlesDto, (i2 & 2) != 0 ? null : contributionLinkLegacyDto, assetDto, assetLayoutDto, ratioDto, (i2 & 32) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BC\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\u000e\u0010\u000fBW\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;", "titles", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;", "link", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "ratio", "", "deadline", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "<init>", "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class EventSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Lazy[] f45295h = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new rt(29)), null, null};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EditorialModuleTitlesDto f45296b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ContributionLinkLegacyDto f45297c;
        public final AssetDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RatioDto f45298e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f45299f;
        public final TargetingDto g;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<EventSectionDto> serializer() {
                return EditorialModuleDto$EventSectionDto$$serializer.f45300a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ EventSectionDto(int i2, EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, RatioDto ratioDto, String str, TargetingDto targetingDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (28 != (i2 & 28)) {
                PluginExceptionsKt.b(i2, 28, EditorialModuleDto$EventSectionDto$$serializer.f45300a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45296b = null;
            } else {
                this.f45296b = editorialModuleTitlesDto;
            }
            if ((i2 & 2) == 0) {
                this.f45297c = null;
            } else {
                this.f45297c = contributionLinkLegacyDto;
            }
            this.d = assetDto;
            this.f45298e = ratioDto;
            this.f45299f = str;
            if ((i2 & 32) == 0) {
                this.g = null;
            } else {
                this.g = targetingDto;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof EventSectionDto)) {
                return false;
            }
            EventSectionDto eventSectionDto = (EventSectionDto) obj;
            return Intrinsics.c(this.f45296b, eventSectionDto.f45296b) && Intrinsics.c(this.f45297c, eventSectionDto.f45297c) && Intrinsics.c(this.d, eventSectionDto.d) && this.f45298e == eventSectionDto.f45298e && Intrinsics.c(this.f45299f, eventSectionDto.f45299f) && Intrinsics.c(this.g, eventSectionDto.g);
        }

        public final int hashCode() {
            EditorialModuleTitlesDto editorialModuleTitlesDto = this.f45296b;
            int iHashCode = (editorialModuleTitlesDto == null ? 0 : editorialModuleTitlesDto.hashCode()) * 31;
            ContributionLinkLegacyDto contributionLinkLegacyDto = this.f45297c;
            int iB = fc.b((this.f45298e.hashCode() + ((this.d.hashCode() + ((iHashCode + (contributionLinkLegacyDto == null ? 0 : contributionLinkLegacyDto.hashCode())) * 31)) * 31)) * 31, 31, this.f45299f);
            TargetingDto targetingDto = this.g;
            return iB + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0);
        }

        public final String toString() {
            return "EventSectionDto(titles=" + this.f45296b + ", link=" + this.f45297c + ", asset=" + this.d + ", ratio=" + this.f45298e + ", deadline=" + this.f45299f + ", targeting=" + this.g + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EventSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, RatioDto ratioDto, String str, TargetingDto targetingDto) {
            super(null);
            assetDto.getClass();
            ratioDto.getClass();
            str.getClass();
            this.f45296b = editorialModuleTitlesDto;
            this.f45297c = contributionLinkLegacyDto;
            this.d = assetDto;
            this.f45298e = ratioDto;
            this.f45299f = str;
            this.g = targetingDto;
        }

        public /* synthetic */ EventSectionDto(EditorialModuleTitlesDto editorialModuleTitlesDto, ContributionLinkLegacyDto contributionLinkLegacyDto, AssetDto assetDto, RatioDto ratioDto, String str, TargetingDto targetingDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : editorialModuleTitlesDto, (i2 & 2) != 0 ? null : contributionLinkLegacyDto, assetDto, ratioDto, str, (i2 & 32) != 0 ? null : targetingDto);
        }
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010Ba\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;", "", "title", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;", "ratio", "surtitleAfter", "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;", "targeting", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "video", "Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;", "format", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lcom/vuitton/android/data/dto/common/editorial/LiveFormatDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    @Serializable
    public static final /* data */ class LiveSectionDto extends EditorialModuleDto {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Lazy[] f45309i;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f45310b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AssetDto f45311c;
        public final RatioDto d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f45312e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final TargetingDto f45313f;
        public final AssetVideoDto g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final LiveFormatDto f45314h;

        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }

            public final KSerializer<LiveSectionDto> serializer() {
                return EditorialModuleDto$LiveSectionDto$$serializer.f45315a;
            }
        }

        static {
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
            f45309i = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new ew(2)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new ew(3))};
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ LiveSectionDto(int i2, String str, AssetDto assetDto, RatioDto ratioDto, String str2, TargetingDto targetingDto, AssetVideoDto assetVideoDto, LiveFormatDto liveFormatDto, SerializationConstructorMarker serializationConstructorMarker) {
            super(i2, serializationConstructorMarker);
            if (102 != (i2 & 102)) {
                PluginExceptionsKt.b(i2, 102, EditorialModuleDto$LiveSectionDto$$serializer.f45315a.getF19838b());
                throw null;
            }
            if ((i2 & 1) == 0) {
                this.f45310b = null;
            } else {
                this.f45310b = str;
            }
            this.f45311c = assetDto;
            this.d = ratioDto;
            if ((i2 & 8) == 0) {
                this.f45312e = null;
            } else {
                this.f45312e = str2;
            }
            if ((i2 & 16) == 0) {
                this.f45313f = null;
            } else {
                this.f45313f = targetingDto;
            }
            this.g = assetVideoDto;
            this.f45314h = liveFormatDto;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveSectionDto)) {
                return false;
            }
            LiveSectionDto liveSectionDto = (LiveSectionDto) obj;
            return Intrinsics.c(this.f45310b, liveSectionDto.f45310b) && Intrinsics.c(this.f45311c, liveSectionDto.f45311c) && this.d == liveSectionDto.d && Intrinsics.c(this.f45312e, liveSectionDto.f45312e) && Intrinsics.c(this.f45313f, liveSectionDto.f45313f) && Intrinsics.c(this.g, liveSectionDto.g) && this.f45314h == liveSectionDto.f45314h;
        }

        public final int hashCode() {
            String str = this.f45310b;
            int iHashCode = (this.d.hashCode() + ((this.f45311c.hashCode() + ((str == null ? 0 : str.hashCode()) * 31)) * 31)) * 31;
            String str2 = this.f45312e;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            TargetingDto targetingDto = this.f45313f;
            return this.f45314h.hashCode() + ((this.g.hashCode() + ((iHashCode2 + (targetingDto != null ? targetingDto.f45358a.hashCode() : 0)) * 31)) * 31);
        }

        public final String toString() {
            return "LiveSectionDto(title=" + this.f45310b + ", asset=" + this.f45311c + ", ratio=" + this.d + ", surtitleAfter=" + this.f45312e + ", targeting=" + this.f45313f + ", video=" + this.g + ", format=" + this.f45314h + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LiveSectionDto(String str, AssetDto assetDto, RatioDto ratioDto, String str2, TargetingDto targetingDto, AssetVideoDto assetVideoDto, LiveFormatDto liveFormatDto) {
            super(null);
            assetDto.getClass();
            ratioDto.getClass();
            assetVideoDto.getClass();
            liveFormatDto.getClass();
            this.f45310b = str;
            this.f45311c = assetDto;
            this.d = ratioDto;
            this.f45312e = str2;
            this.f45313f = targetingDto;
            this.g = assetVideoDto;
            this.f45314h = liveFormatDto;
        }

        public /* synthetic */ LiveSectionDto(String str, AssetDto assetDto, RatioDto ratioDto, String str2, TargetingDto targetingDto, AssetVideoDto assetVideoDto, LiveFormatDto liveFormatDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? null : str, assetDto, ratioDto, (i2 & 8) != 0 ? null : str2, (i2 & 16) != 0 ? null : targetingDto, assetVideoDto, liveFormatDto);
        }
    }
}
