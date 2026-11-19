package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.fc;
import defpackage.iq;
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
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B5\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\f\u0010\rBS\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "title", "identifier", "Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;", "type", "", "Lcom/vuitton/android/data/dto/pdp/CustomizationInformationDto;", "informationList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CustomizationConfigurationDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f46180f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46183c;
    public final CustomizationTypeDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46184e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CustomizationConfigurationDto> serializer() {
            return CustomizationConfigurationDto$$serializer.f46185a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46180f = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new iq(17)), LazyKt.a(lazyThreadSafetyMode, new iq(18))};
    }

    public /* synthetic */ CustomizationConfigurationDto(int i2, String str, String str2, String str3, CustomizationTypeDto customizationTypeDto, List list, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, CustomizationConfigurationDto$$serializer.f46185a.getF19850b());
            throw null;
        }
        this.f46181a = str;
        this.f46182b = str2;
        this.f46183c = str3;
        this.d = customizationTypeDto;
        this.f46184e = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationConfigurationDto)) {
            return false;
        }
        CustomizationConfigurationDto customizationConfigurationDto = (CustomizationConfigurationDto) obj;
        String str = customizationConfigurationDto.f46181a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f46181a, str) && Intrinsics.c(this.f46182b, customizationConfigurationDto.f46182b) && Intrinsics.c(this.f46183c, customizationConfigurationDto.f46183c) && this.d == customizationConfigurationDto.d && Intrinsics.c(this.f46184e, customizationConfigurationDto.f46184e);
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        return this.f46184e.hashCode() + ((this.d.hashCode() + fc.b(fc.b(this.f46181a.hashCode() * 31, 31, this.f46182b), 31, this.f46183c)) * 31);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("CustomizationConfigurationDto(sku=", this.f46181a, ", title=", this.f46182b, ", identifier=");
        sbS.append(this.f46183c);
        sbS.append(", type=");
        sbS.append(this.d);
        sbS.append(", informationList=");
        return a.o(sbS, this.f46184e, ")");
    }

    public CustomizationConfigurationDto(String str, String str2, String str3, CustomizationTypeDto customizationTypeDto, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        customizationTypeDto.getClass();
        list.getClass();
        this.f46181a = str;
        this.f46182b = str2;
        this.f46183c = str3;
        this.d = customizationTypeDto;
        this.f46184e = list;
    }
}
