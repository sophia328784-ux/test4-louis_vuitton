package com.vuitton.android.data.dto.careservices;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.platform.serialization.FullDateSerializer;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import java.util.Date;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CareServicesDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServicesDto$$serializer implements GeneratedSerializer<CareServicesDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServicesDto$$serializer f44848a;
    private static final SerialDescriptor descriptor;

    static {
        CareServicesDto$$serializer careServicesDto$$serializer = new CareServicesDto$$serializer();
        f44848a = careServicesDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CareServicesDto", careServicesDto$$serializer, 25);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, true);
        pluginGeneratedSerialDescriptor.k("recordType", true);
        pluginGeneratedSerialDescriptor.k("transactionId", true);
        pluginGeneratedSerialDescriptor.k("myLV_Care_Status", true);
        pluginGeneratedSerialDescriptor.k("storeName", true);
        pluginGeneratedSerialDescriptor.k("storeRetailCode", true);
        pluginGeneratedSerialDescriptor.k("createdDate", true);
        pluginGeneratedSerialDescriptor.k("myRepair_CreatedDate", true);
        pluginGeneratedSerialDescriptor.k("lastModifiedDate", true);
        pluginGeneratedSerialDescriptor.k("last_MyRepair_Status_Changed_Date", true);
        pluginGeneratedSerialDescriptor.k("currencyCode", true);
        pluginGeneratedSerialDescriptor.k("type_of_Repair", true);
        pluginGeneratedSerialDescriptor.k("totalAmount", true);
        pluginGeneratedSerialDescriptor.k("totalAmount_Updated", true);
        pluginGeneratedSerialDescriptor.k("delivery_Date", true);
        pluginGeneratedSerialDescriptor.k("updated_Delivery_Date", true);
        pluginGeneratedSerialDescriptor.k("sku", true);
        pluginGeneratedSerialDescriptor.k("is_Generic_SKU", false);
        pluginGeneratedSerialDescriptor.k("product_Name", true);
        pluginGeneratedSerialDescriptor.k("product_Sku_unknown", true);
        pluginGeneratedSerialDescriptor.k("product_Family", true);
        pluginGeneratedSerialDescriptor.k("product_Image", true);
        pluginGeneratedSerialDescriptor.k("is_Not_Repaired", false);
        pluginGeneratedSerialDescriptor.k("appointement_DateTime", true);
        pluginGeneratedSerialDescriptor.k("origin", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        int i2;
        int i3;
        String str;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServicesDto.z;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Float f2 = null;
        String str6 = null;
        int i4 = 0;
        Float f3 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        int i5 = 1;
        boolean z = true;
        String str13 = null;
        RepairTypeDto repairTypeDto = null;
        String str14 = null;
        RepairStatusDto repairStatusDto = null;
        String str15 = null;
        String str16 = null;
        Date date = null;
        String str17 = null;
        String str18 = null;
        String str19 = null;
        boolean zY = false;
        boolean zY2 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    str3 = str3;
                    str2 = str2;
                    str14 = str14;
                    i5 = 1;
                    break;
                case 0:
                    String str20 = str2;
                    String str21 = str3;
                    String str22 = str4;
                    RepairTypeDto repairTypeDto2 = repairTypeDto;
                    CareServiceId careServiceId = (CareServiceId) compositeDecoderB.m(serialDescriptor, 0, CareServiceId$$serializer.f66880a, str13 != null ? new CareServiceId(str13) : null);
                    str13 = careServiceId != null ? careServiceId.f66879a : null;
                    i4 |= 1;
                    repairTypeDto = repairTypeDto2;
                    str3 = str21;
                    str2 = str20;
                    str4 = str22;
                    str14 = str14;
                    i5 = 1;
                    break;
                case 1:
                    String str23 = str3;
                    str4 = str4;
                    int i6 = i5;
                    repairTypeDto = (RepairTypeDto) compositeDecoderB.m(serialDescriptor, i6, (DeserializationStrategy) lazyArr[i5].getF71699b(), repairTypeDto);
                    i4 |= 2;
                    str14 = str14;
                    str3 = str23;
                    str2 = str2;
                    i5 = i6;
                    str4 = str4;
                    break;
                case 2:
                    str = str3;
                    str14 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str14);
                    i4 |= 4;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 3:
                    str = str3;
                    repairStatusDto = (RepairStatusDto) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), repairStatusDto);
                    i4 |= 8;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 4:
                    str = str3;
                    str15 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str15);
                    i4 |= 16;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 5:
                    str = str3;
                    str16 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str16);
                    i4 |= 32;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 6:
                    str = str3;
                    date = (Date) compositeDecoderB.m(serialDescriptor, 6, FullDateSerializer.f43518b, date);
                    i4 |= 64;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 7:
                    str = str3;
                    str17 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str17);
                    i4 |= 128;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 8:
                    str = str3;
                    str18 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str18);
                    i4 |= 256;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 9:
                    str = str3;
                    str19 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str19);
                    i4 |= 512;
                    str3 = str;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 10:
                    str4 = str4;
                    str2 = str2;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str3);
                    i4 |= 1024;
                    str2 = str2;
                    str4 = str4;
                    break;
                case 11:
                    str4 = str4;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str2);
                    i4 |= 2048;
                    str3 = str3;
                    str4 = str4;
                    break;
                case 12:
                    str2 = str2;
                    str3 = str3;
                    f2 = (Float) compositeDecoderB.m(serialDescriptor, 12, FloatSerializer.f75616a, f2);
                    i4 |= 4096;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 13:
                    str2 = str2;
                    str3 = str3;
                    f3 = (Float) compositeDecoderB.m(serialDescriptor, 13, FloatSerializer.f75616a, f3);
                    i4 |= 8192;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 14:
                    str2 = str2;
                    str3 = str3;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str7);
                    i4 |= 16384;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 15:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 15, StringSerializer.f75684a, str8);
                    i2 = 32768;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 16:
                    SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 16, SkuId$$serializer.f67934a, str9 != null ? new SkuId(str9) : null);
                    str9 = skuId != null ? skuId.f67933a : null;
                    i2 = 65536;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 17:
                    zY = compositeDecoderB.y(serialDescriptor, 17);
                    i3 = 131072;
                    i4 |= i3;
                    str2 = str2;
                    break;
                case 18:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 18, StringSerializer.f75684a, str10);
                    i2 = 262144;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 19:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 19, StringSerializer.f75684a, str11);
                    i2 = 524288;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 20:
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 20, StringSerializer.f75684a, str12);
                    i2 = 1048576;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 21:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 21, StringSerializer.f75684a, str6);
                    i2 = PKIFailureInfo.badSenderNonce;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 22:
                    zY2 = compositeDecoderB.y(serialDescriptor, 22);
                    i3 = 4194304;
                    i4 |= i3;
                    str2 = str2;
                    break;
                case 23:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 23, StringSerializer.f75684a, str5);
                    i2 = 8388608;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                case 24:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 24, StringSerializer.f75684a, str4);
                    i2 = 16777216;
                    i4 |= i2;
                    str3 = str3;
                    str2 = str2;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str24 = str3;
        String str25 = str13;
        String str26 = str14;
        RepairTypeDto repairTypeDto3 = repairTypeDto;
        compositeDecoderB.c(serialDescriptor);
        return new CareServicesDto(i4, str25, repairTypeDto3, str26, repairStatusDto, str15, str16, date, str17, str18, str19, str24, str2, f2, f3, str7, str8, str9, zY, str10, str11, str12, str6, zY2, str5, str4, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServicesDto careServicesDto = (CareServicesDto) obj;
        careServicesDto.getClass();
        String str = careServicesDto.q;
        String str2 = careServicesDto.p;
        String str3 = careServicesDto.o;
        Float f2 = careServicesDto.n;
        Float f3 = careServicesDto.m;
        String str4 = careServicesDto.l;
        String str5 = careServicesDto.f44847k;
        String str6 = careServicesDto.f44846j;
        String str7 = careServicesDto.f44845i;
        String str8 = careServicesDto.f44844h;
        Date date = careServicesDto.g;
        String str9 = careServicesDto.f44843f;
        String str10 = careServicesDto.f44842e;
        RepairStatusDto repairStatusDto = careServicesDto.d;
        String str11 = careServicesDto.f44841c;
        RepairTypeDto repairTypeDto = careServicesDto.f44840b;
        String str12 = careServicesDto.f44839a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServicesDto.z;
        if (compositeEncoderB.o(serialDescriptor) || str12 != null) {
            compositeEncoderB.h(serialDescriptor, 0, CareServiceId$$serializer.f66880a, str12 != null ? new CareServiceId(str12) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || repairTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), repairTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || repairStatusDto != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), repairStatusDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || date != null) {
            compositeEncoderB.h(serialDescriptor, 6, FullDateSerializer.f43518b, date);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || f3 != 0) {
            compositeEncoderB.h(serialDescriptor, 12, FloatSerializer.f75616a, f3);
        }
        if (compositeEncoderB.o(serialDescriptor) || f2 != 0) {
            compositeEncoderB.h(serialDescriptor, 13, FloatSerializer.f75616a, f2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 14, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 15, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 16, SkuId$$serializer.f67934a, str != null ? new SkuId(str) : null);
        }
        boolean z = careServicesDto.r;
        String str13 = careServicesDto.y;
        String str14 = careServicesDto.x;
        String str15 = careServicesDto.v;
        String str16 = careServicesDto.u;
        String str17 = careServicesDto.t;
        String str18 = careServicesDto.s;
        compositeEncoderB.x(serialDescriptor, 17, z);
        if (compositeEncoderB.o(serialDescriptor) || str18 != null) {
            compositeEncoderB.h(serialDescriptor, 18, StringSerializer.f75684a, str18);
        }
        if (compositeEncoderB.o(serialDescriptor) || str17 != null) {
            compositeEncoderB.h(serialDescriptor, 19, StringSerializer.f75684a, str17);
        }
        if (compositeEncoderB.o(serialDescriptor) || str16 != null) {
            compositeEncoderB.h(serialDescriptor, 20, StringSerializer.f75684a, str16);
        }
        if (compositeEncoderB.o(serialDescriptor) || str15 != null) {
            compositeEncoderB.h(serialDescriptor, 21, StringSerializer.f75684a, str15);
        }
        compositeEncoderB.x(serialDescriptor, 22, careServicesDto.w);
        if (compositeEncoderB.o(serialDescriptor) || str14 != null) {
            compositeEncoderB.h(serialDescriptor, 23, StringSerializer.f75684a, str14);
        }
        if (compositeEncoderB.o(serialDescriptor) || str13 != null) {
            compositeEncoderB.h(serialDescriptor, 24, StringSerializer.f75684a, str13);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServicesDto.z;
        KSerializer kSerializerD = BuiltinSerializersKt.d(CareServiceId$$serializer.f66880a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b());
        StringSerializer stringSerializer = StringSerializer.f75684a;
        KSerializer kSerializerD3 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD4 = BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b());
        KSerializer kSerializerD5 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD6 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD7 = BuiltinSerializersKt.d(FullDateSerializer.f43518b);
        KSerializer kSerializerD8 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD9 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD10 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD11 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD12 = BuiltinSerializersKt.d(stringSerializer);
        FloatSerializer floatSerializer = FloatSerializer.f75616a;
        KSerializer kSerializerD13 = BuiltinSerializersKt.d(floatSerializer);
        KSerializer kSerializerD14 = BuiltinSerializersKt.d(floatSerializer);
        KSerializer kSerializerD15 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD16 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD17 = BuiltinSerializersKt.d(SkuId$$serializer.f67934a);
        KSerializer kSerializerD18 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD19 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD20 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD21 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD22 = BuiltinSerializersKt.d(stringSerializer);
        KSerializer kSerializerD23 = BuiltinSerializersKt.d(stringSerializer);
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{kSerializerD, kSerializerD2, kSerializerD3, kSerializerD4, kSerializerD5, kSerializerD6, kSerializerD7, kSerializerD8, kSerializerD9, kSerializerD10, kSerializerD11, kSerializerD12, kSerializerD13, kSerializerD14, kSerializerD15, kSerializerD16, kSerializerD17, booleanSerializer, kSerializerD18, kSerializerD19, kSerializerD20, kSerializerD21, booleanSerializer, kSerializerD22, kSerializerD23};
    }
}
