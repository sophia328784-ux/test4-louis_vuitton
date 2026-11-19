package com.vuitton.android.data.dto.product.stock.shared;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.ProductDisclaimerDto;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.d21;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0011\u0010\u0012B\u007f\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0011\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "backOrder", "isPreOrder", "inStock", "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;", "disclaimerDto", "", "minValue", "maxValue", "minLeadTime", "maxLeadTime", "Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;", "leadTimeFormat", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SkuAvailabilityDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f46485k = {null, null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new nw0(1))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Boolean f46487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f46488c;
    public final Boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductDisclaimerDto f46489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f46490f;
    public final Integer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Integer f46491h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Integer f46492i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AvailabilityTimeFormatDto f46493j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SkuAvailabilityDto> serializer() {
            return SkuAvailabilityDto$$serializer.f46494a;
        }
    }

    public /* synthetic */ SkuAvailabilityDto(int i2, String str, Boolean bool, Boolean bool2, Boolean bool3, ProductDisclaimerDto productDisclaimerDto, Integer num, Integer num2, Integer num3, Integer num4, AvailabilityTimeFormatDto availabilityTimeFormatDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (993 != (i2 & 993)) {
            PluginExceptionsKt.b(i2, 993, SkuAvailabilityDto$$serializer.f46494a.getF19838b());
            throw null;
        }
        this.f46486a = str;
        if ((i2 & 2) == 0) {
            this.f46487b = null;
        } else {
            this.f46487b = bool;
        }
        if ((i2 & 4) == 0) {
            this.f46488c = null;
        } else {
            this.f46488c = bool2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = bool3;
        }
        if ((i2 & 16) == 0) {
            this.f46489e = null;
        } else {
            this.f46489e = productDisclaimerDto;
        }
        this.f46490f = num;
        this.g = num2;
        this.f46491h = num3;
        this.f46492i = num4;
        this.f46493j = availabilityTimeFormatDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SkuAvailabilityDto)) {
            return false;
        }
        SkuAvailabilityDto skuAvailabilityDto = (SkuAvailabilityDto) obj;
        String str = skuAvailabilityDto.f46486a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f46486a, str) && Intrinsics.c(this.f46487b, skuAvailabilityDto.f46487b) && Intrinsics.c(this.f46488c, skuAvailabilityDto.f46488c) && Intrinsics.c(this.d, skuAvailabilityDto.d) && Intrinsics.c(this.f46489e, skuAvailabilityDto.f46489e) && Intrinsics.c(this.f46490f, skuAvailabilityDto.f46490f) && Intrinsics.c(this.g, skuAvailabilityDto.g) && Intrinsics.c(this.f46491h, skuAvailabilityDto.f46491h) && Intrinsics.c(this.f46492i, skuAvailabilityDto.f46492i) && this.f46493j == skuAvailabilityDto.f46493j;
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = this.f46486a.hashCode() * 31;
        Boolean bool = this.f46487b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.f46488c;
        int iHashCode3 = (iHashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.d;
        int iHashCode4 = (iHashCode3 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        ProductDisclaimerDto productDisclaimerDto = this.f46489e;
        int iHashCode5 = (iHashCode4 + (productDisclaimerDto == null ? 0 : productDisclaimerDto.hashCode())) * 31;
        Integer num = this.f46490f;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.g;
        int iHashCode7 = (iHashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.f46491h;
        int iHashCode8 = (iHashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Integer num4 = this.f46492i;
        int iHashCode9 = (iHashCode8 + (num4 == null ? 0 : num4.hashCode())) * 31;
        AvailabilityTimeFormatDto availabilityTimeFormatDto = this.f46493j;
        return iHashCode9 + (availabilityTimeFormatDto != null ? availabilityTimeFormatDto.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sb = new StringBuilder("SkuAvailabilityDto(sku=");
        sb.append(this.f46486a);
        sb.append(", backOrder=");
        sb.append(this.f46487b);
        sb.append(", isPreOrder=");
        d21.B(sb, this.f46488c, ", inStock=", this.d, ", disclaimerDto=");
        sb.append(this.f46489e);
        sb.append(", minValue=");
        sb.append(this.f46490f);
        sb.append(", maxValue=");
        sb.append(this.g);
        sb.append(", minLeadTime=");
        sb.append(this.f46491h);
        sb.append(", maxLeadTime=");
        sb.append(this.f46492i);
        sb.append(", leadTimeFormat=");
        sb.append(this.f46493j);
        sb.append(")");
        return sb.toString();
    }

    public SkuAvailabilityDto(String str, Boolean bool, Boolean bool2, Boolean bool3, ProductDisclaimerDto productDisclaimerDto, Integer num, Integer num2, Integer num3, Integer num4, AvailabilityTimeFormatDto availabilityTimeFormatDto, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f46486a = str;
        this.f46487b = bool;
        this.f46488c = bool2;
        this.d = bool3;
        this.f46489e = productDisclaimerDto;
        this.f46490f = num;
        this.g = num2;
        this.f46491h = num3;
        this.f46492i = num4;
        this.f46493j = availabilityTimeFormatDto;
    }

    public /* synthetic */ SkuAvailabilityDto(String str, Boolean bool, Boolean bool2, Boolean bool3, ProductDisclaimerDto productDisclaimerDto, Integer num, Integer num2, Integer num3, Integer num4, AvailabilityTimeFormatDto availabilityTimeFormatDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : bool, (i2 & 4) != 0 ? null : bool2, (i2 & 8) != 0 ? null : bool3, (i2 & 16) != 0 ? null : productDisclaimerDto, num, num2, num3, num4, availabilityTimeFormatDto, null);
    }
}
