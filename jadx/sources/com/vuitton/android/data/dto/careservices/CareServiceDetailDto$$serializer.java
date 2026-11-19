package com.vuitton.android.data.dto.careservices;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.repair.RepairStatusDto;
import com.vuitton.android.data.dto.repair.RepairTypeDto;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import defpackage.b21;
import java.util.List;
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
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CareServiceDetailDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceDetailDto$$serializer implements GeneratedSerializer<CareServiceDetailDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceDetailDto$$serializer f44805a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceDetailDto$$serializer careServiceDetailDto$$serializer = new CareServiceDetailDto$$serializer();
        f44805a = careServiceDetailDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CareServiceDetailDto", careServiceDetailDto$$serializer, 49);
        pluginGeneratedSerialDescriptor.k("status", true);
        pluginGeneratedSerialDescriptor.k("responseId", true);
        pluginGeneratedSerialDescriptor.k("transactionDate", true);
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
        pluginGeneratedSerialDescriptor.k("appointmentId", true);
        pluginGeneratedSerialDescriptor.k("origin", true);
        pluginGeneratedSerialDescriptor.k("care_Expert_Note", true);
        pluginGeneratedSerialDescriptor.k("shipping_Address_Id", true);
        pluginGeneratedSerialDescriptor.k("shipping_Address_Line_1", true);
        pluginGeneratedSerialDescriptor.k("shipping_Address_Line_2", true);
        pluginGeneratedSerialDescriptor.k("shipping_Address_Line_3", true);
        pluginGeneratedSerialDescriptor.k("shipping_City", true);
        pluginGeneratedSerialDescriptor.k("shipping_Zip_Postal_Code", true);
        pluginGeneratedSerialDescriptor.k("shipping_State_Province", true);
        pluginGeneratedSerialDescriptor.k("shipping_Country", true);
        pluginGeneratedSerialDescriptor.k("tracking_Number", true);
        pluginGeneratedSerialDescriptor.k("carrier", true);
        pluginGeneratedSerialDescriptor.k("careServiceLineItem", false);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("phone", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("addressTitle", true);
        pluginGeneratedSerialDescriptor.k("addressFirstName", true);
        pluginGeneratedSerialDescriptor.k("addressLastName", true);
        pluginGeneratedSerialDescriptor.k("confirm_Address_Expiration_Date", true);
        pluginGeneratedSerialDescriptor.k("pbl_Link", true);
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
        int i4;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.X;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        List list = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        int i5 = 0;
        String str12 = null;
        boolean z = true;
        String str13 = null;
        String str14 = null;
        String str15 = null;
        String str16 = null;
        RepairTypeDto repairTypeDto = null;
        String str17 = null;
        RepairStatusDto repairStatusDto = null;
        String str18 = null;
        String str19 = null;
        String str20 = null;
        String str21 = null;
        String str22 = null;
        String str23 = null;
        String str24 = null;
        int i6 = 0;
        String str25 = null;
        Double d = null;
        Double d2 = null;
        String str26 = null;
        String str27 = null;
        String str28 = null;
        String str29 = null;
        String str30 = null;
        String str31 = null;
        String str32 = null;
        String str33 = null;
        String str34 = null;
        CareServiceOriginDto careServiceOriginDto = null;
        String str35 = null;
        String str36 = null;
        String str37 = null;
        String str38 = null;
        String str39 = null;
        String str40 = null;
        String str41 = null;
        boolean zY = false;
        boolean zY2 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    str13 = str13;
                    str2 = str2;
                    str25 = str25;
                    i6 = i6;
                    z = false;
                    str = str;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 0:
                    i6 |= 1;
                    str2 = str2;
                    str25 = str25;
                    str13 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str13);
                    str = str;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 1:
                    str3 = str3;
                    str15 = str15;
                    str2 = str2;
                    str4 = str4;
                    str14 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str14);
                    str25 = str25;
                    str = str;
                    i6 |= 2;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 2:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 4;
                    str2 = str2;
                    str25 = str25;
                    str15 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str15);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 3:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    int i7 = i6;
                    String str42 = str25;
                    String str43 = str2;
                    repairTypeDto = repairTypeDto;
                    CareServiceId careServiceId = (CareServiceId) compositeDecoderB.m(serialDescriptor, 3, CareServiceId$$serializer.f66880a, str16 != null ? new CareServiceId(str16) : null);
                    i6 = i7 | 8;
                    str2 = str43;
                    str25 = str42;
                    str16 = careServiceId != null ? careServiceId.f66879a : null;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 4:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 16;
                    str2 = str2;
                    str25 = str25;
                    repairTypeDto = (RepairTypeDto) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), repairTypeDto);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 5:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    int i8 = i6;
                    String str44 = str25;
                    String str45 = str2;
                    repairStatusDto = repairStatusDto;
                    CareServiceTransactionId careServiceTransactionId = (CareServiceTransactionId) compositeDecoderB.m(serialDescriptor, 5, CareServiceTransactionId$$serializer.f66894a, str17 != null ? new CareServiceTransactionId(str17) : null);
                    i6 = i8 | 32;
                    str2 = str45;
                    str25 = str44;
                    str17 = careServiceTransactionId != null ? careServiceTransactionId.f66893a : null;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 6:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 64;
                    str2 = str2;
                    str25 = str25;
                    repairStatusDto = (RepairStatusDto) compositeDecoderB.m(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), repairStatusDto);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 7:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 128;
                    str2 = str2;
                    str25 = str25;
                    str18 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str18);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 8:
                    i2 = i6 | 256;
                    str19 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str19);
                    str14 = str14;
                    str2 = str2;
                    str4 = str4;
                    str25 = str25;
                    i6 = i2;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 9:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 512;
                    str2 = str2;
                    str25 = str25;
                    str20 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str20);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 10:
                    i2 = i6 | 1024;
                    str21 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str21);
                    str14 = str14;
                    str2 = str2;
                    str4 = str4;
                    str25 = str25;
                    i6 = i2;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 11:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 2048;
                    str2 = str2;
                    str25 = str25;
                    str22 = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str22);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 12:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 4096;
                    str2 = str2;
                    str25 = str25;
                    str23 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str23);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 13:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 8192;
                    str2 = str2;
                    str25 = str25;
                    str24 = (String) compositeDecoderB.m(serialDescriptor, 13, StringSerializer.f75684a, str24);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 14:
                    i3 = i6 | 16384;
                    str25 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str25);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 15:
                    i3 = i6 | 32768;
                    d = (Double) compositeDecoderB.m(serialDescriptor, 15, DoubleSerializer.f75602a, d);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 16:
                    i3 = i6 | 65536;
                    d2 = (Double) compositeDecoderB.m(serialDescriptor, 16, DoubleSerializer.f75602a, d2);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 17:
                    i3 = i6 | 131072;
                    str26 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str26);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 18:
                    i3 = i6 | 262144;
                    str27 = (String) compositeDecoderB.m(serialDescriptor, 18, StringSerializer.f75684a, str27);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 19:
                    str29 = str29;
                    SkuId skuId = (SkuId) compositeDecoderB.m(serialDescriptor, 19, SkuId$$serializer.f67934a, str28 != null ? new SkuId(str28) : null);
                    i3 = i6 | 524288;
                    str28 = skuId != null ? skuId.f67933a : null;
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 20:
                    zY = compositeDecoderB.y(serialDescriptor, 20);
                    i4 = 1048576;
                    i6 |= i4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 21:
                    String str46 = (String) compositeDecoderB.m(serialDescriptor, 21, StringSerializer.f75684a, str29);
                    i3 = i6 | PKIFailureInfo.badSenderNonce;
                    str29 = str46;
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 22:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 4194304;
                    str30 = (String) compositeDecoderB.m(serialDescriptor, 22, StringSerializer.f75684a, str30);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 23:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i6 |= 8388608;
                    str31 = (String) compositeDecoderB.m(serialDescriptor, 23, StringSerializer.f75684a, str31);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 24:
                    i3 = i6 | 16777216;
                    str32 = (String) compositeDecoderB.m(serialDescriptor, 24, StringSerializer.f75684a, str32);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 25:
                    zY2 = compositeDecoderB.y(serialDescriptor, 25);
                    i4 = 33554432;
                    i6 |= i4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 26:
                    i3 = i6 | 67108864;
                    str33 = (String) compositeDecoderB.m(serialDescriptor, 26, StringSerializer.f75684a, str33);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 27:
                    i3 = i6 | 134217728;
                    str34 = (String) compositeDecoderB.m(serialDescriptor, 27, StringSerializer.f75684a, str34);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 28:
                    i3 = i6 | 268435456;
                    careServiceOriginDto = (CareServiceOriginDto) compositeDecoderB.m(serialDescriptor, 28, (DeserializationStrategy) lazyArr[28].getF71699b(), careServiceOriginDto);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 29:
                    String str47 = (String) compositeDecoderB.m(serialDescriptor, 29, StringSerializer.f75684a, str35);
                    i3 = i6 | PKIFailureInfo.duplicateCertReq;
                    str35 = str47;
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 30:
                    i3 = i6 | 1073741824;
                    str36 = (String) compositeDecoderB.m(serialDescriptor, 30, StringSerializer.f75684a, str36);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 31:
                    i3 = i6 | Integer.MIN_VALUE;
                    str37 = (String) compositeDecoderB.m(serialDescriptor, 31, StringSerializer.f75684a, str37);
                    i6 = i3;
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 32:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i5 |= 1;
                    str38 = (String) compositeDecoderB.m(serialDescriptor, 32, StringSerializer.f75684a, str38);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 33:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i5 |= 2;
                    str39 = (String) compositeDecoderB.m(serialDescriptor, 33, StringSerializer.f75684a, str39);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 34:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i5 |= 4;
                    str40 = (String) compositeDecoderB.m(serialDescriptor, 34, StringSerializer.f75684a, str40);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 35:
                    str = str;
                    str3 = str3;
                    str4 = str4;
                    i5 |= 8;
                    str41 = (String) compositeDecoderB.m(serialDescriptor, 35, StringSerializer.f75684a, str41);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 36:
                    str = str;
                    str3 = str3;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 36, StringSerializer.f75684a, str4);
                    i5 |= 16;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 37:
                    str4 = str4;
                    str = str;
                    i5 |= 32;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 37, StringSerializer.f75684a, str3);
                    str4 = str4;
                    str = str;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 38:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 38, StringSerializer.f75684a, str2);
                    i5 |= 64;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 39:
                    str = (String) compositeDecoderB.m(serialDescriptor, 39, StringSerializer.f75684a, str);
                    i5 |= 128;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 40:
                    list = (List) compositeDecoderB.w(serialDescriptor, 40, (DeserializationStrategy) lazyArr[40].getF71699b(), list);
                    i5 |= 256;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 41:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 41, StringSerializer.f75684a, str8);
                    i5 |= 512;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 42, StringSerializer.f75684a, str6);
                    i5 |= 1024;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case EACTags.DATE_OF_BIRTH /* 43 */:
                    str9 = (String) compositeDecoderB.m(serialDescriptor, 43, StringSerializer.f75684a, str9);
                    i5 |= 2048;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 44, StringSerializer.f75684a, str10);
                    i5 |= 4096;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 45, StringSerializer.f75684a, str11);
                    i5 |= 8192;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 46:
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 46, StringSerializer.f75684a, str12);
                    i5 |= 16384;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case EACTags.PIN_USAGE_POLICY /* 47 */:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 47, StringSerializer.f75684a, str5);
                    i5 |= 32768;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                case 48:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 48, StringSerializer.f75684a, str7);
                    i5 |= 65536;
                    str14 = str14;
                    str4 = str4;
                    str14 = str14;
                    str3 = str3;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str48 = str25;
        String str49 = str2;
        String str50 = str13;
        String str51 = str3;
        String str52 = str4;
        String str53 = str14;
        String str54 = str15;
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceDetailDto(i6, i5, str50, str53, str54, str16, repairTypeDto, str17, repairStatusDto, str18, str19, str20, str21, str22, str23, str24, str48, d, d2, str26, str27, str28, zY, str29, str30, str31, str32, zY2, str33, str34, careServiceOriginDto, str35, str36, str37, str38, str39, str40, str41, str52, str51, str49, str, list, str8, str6, str9, str10, str11, str12, str5, str7, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceDetailDto careServiceDetailDto = (CareServiceDetailDto) obj;
        careServiceDetailDto.getClass();
        String str = careServiceDetailDto.W;
        String str2 = careServiceDetailDto.V;
        String str3 = careServiceDetailDto.U;
        String str4 = careServiceDetailDto.T;
        String str5 = careServiceDetailDto.S;
        String str6 = careServiceDetailDto.R;
        String str7 = careServiceDetailDto.Q;
        String str8 = careServiceDetailDto.P;
        String str9 = careServiceDetailDto.N;
        String str10 = careServiceDetailDto.M;
        String str11 = careServiceDetailDto.L;
        String str12 = careServiceDetailDto.K;
        String str13 = careServiceDetailDto.J;
        String str14 = careServiceDetailDto.I;
        String str15 = careServiceDetailDto.H;
        String str16 = careServiceDetailDto.t;
        String str17 = careServiceDetailDto.s;
        String str18 = careServiceDetailDto.r;
        Double d = careServiceDetailDto.q;
        Double d2 = careServiceDetailDto.p;
        String str19 = careServiceDetailDto.o;
        String str20 = careServiceDetailDto.n;
        String str21 = careServiceDetailDto.m;
        String str22 = careServiceDetailDto.l;
        String str23 = careServiceDetailDto.f44804k;
        String str24 = careServiceDetailDto.f44803j;
        String str25 = careServiceDetailDto.f44802i;
        String str26 = careServiceDetailDto.f44801h;
        RepairStatusDto repairStatusDto = careServiceDetailDto.g;
        String str27 = careServiceDetailDto.f44800f;
        RepairTypeDto repairTypeDto = careServiceDetailDto.f44799e;
        String str28 = careServiceDetailDto.d;
        String str29 = careServiceDetailDto.f44798c;
        String str30 = careServiceDetailDto.f44797b;
        String str31 = careServiceDetailDto.f44796a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.X;
        if (compositeEncoderB.o(serialDescriptor) || str31 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str31);
        }
        if (compositeEncoderB.o(serialDescriptor) || str30 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str30);
        }
        if (compositeEncoderB.o(serialDescriptor) || str29 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str29);
        }
        if (compositeEncoderB.o(serialDescriptor) || str28 != null) {
            compositeEncoderB.h(serialDescriptor, 3, CareServiceId$$serializer.f66880a, str28 != null ? new CareServiceId(str28) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || repairTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), repairTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str27 != null) {
            compositeEncoderB.h(serialDescriptor, 5, CareServiceTransactionId$$serializer.f66894a, str27 != null ? new CareServiceTransactionId(str27) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || repairStatusDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), repairStatusDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str26 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str26);
        }
        if (compositeEncoderB.o(serialDescriptor) || str25 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str25);
        }
        if (compositeEncoderB.o(serialDescriptor) || str24 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str24);
        }
        if (compositeEncoderB.o(serialDescriptor) || str23 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str23);
        }
        if (compositeEncoderB.o(serialDescriptor) || str22 != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str22);
        }
        if (compositeEncoderB.o(serialDescriptor) || str21 != 0) {
            compositeEncoderB.h(serialDescriptor, 12, StringSerializer.f75684a, str21);
        }
        if (compositeEncoderB.o(serialDescriptor) || str20 != 0) {
            compositeEncoderB.h(serialDescriptor, 13, StringSerializer.f75684a, str20);
        }
        if (compositeEncoderB.o(serialDescriptor) || str19 != null) {
            compositeEncoderB.h(serialDescriptor, 14, StringSerializer.f75684a, str19);
        }
        if (compositeEncoderB.o(serialDescriptor) || d2 != null) {
            compositeEncoderB.h(serialDescriptor, 15, DoubleSerializer.f75602a, d2);
        }
        if (compositeEncoderB.o(serialDescriptor) || d != null) {
            compositeEncoderB.h(serialDescriptor, 16, DoubleSerializer.f75602a, d);
        }
        if (compositeEncoderB.o(serialDescriptor) || str18 != null) {
            compositeEncoderB.h(serialDescriptor, 17, StringSerializer.f75684a, str18);
        }
        if (compositeEncoderB.o(serialDescriptor) || str17 != null) {
            compositeEncoderB.h(serialDescriptor, 18, StringSerializer.f75684a, str17);
        }
        if (compositeEncoderB.o(serialDescriptor) || str16 != null) {
            compositeEncoderB.h(serialDescriptor, 19, SkuId$$serializer.f67934a, str16 != null ? new SkuId(str16) : null);
        }
        boolean z = careServiceDetailDto.u;
        String str32 = careServiceDetailDto.G;
        String str33 = careServiceDetailDto.F;
        String str34 = careServiceDetailDto.E;
        String str35 = careServiceDetailDto.D;
        CareServiceOriginDto careServiceOriginDto = careServiceDetailDto.C;
        String str36 = careServiceDetailDto.B;
        String str37 = careServiceDetailDto.A;
        String str38 = careServiceDetailDto.y;
        String str39 = careServiceDetailDto.x;
        String str40 = careServiceDetailDto.w;
        String str41 = careServiceDetailDto.v;
        compositeEncoderB.x(serialDescriptor, 20, z);
        if (compositeEncoderB.o(serialDescriptor) || str41 != null) {
            compositeEncoderB.h(serialDescriptor, 21, StringSerializer.f75684a, str41);
        }
        if (compositeEncoderB.o(serialDescriptor) || str40 != null) {
            compositeEncoderB.h(serialDescriptor, 22, StringSerializer.f75684a, str40);
        }
        if (compositeEncoderB.o(serialDescriptor) || str39 != null) {
            compositeEncoderB.h(serialDescriptor, 23, StringSerializer.f75684a, str39);
        }
        if (compositeEncoderB.o(serialDescriptor) || str38 != null) {
            compositeEncoderB.h(serialDescriptor, 24, StringSerializer.f75684a, str38);
        }
        compositeEncoderB.x(serialDescriptor, 25, careServiceDetailDto.z);
        if (compositeEncoderB.o(serialDescriptor) || str37 != null) {
            compositeEncoderB.h(serialDescriptor, 26, StringSerializer.f75684a, str37);
        }
        if (compositeEncoderB.o(serialDescriptor) || str36 != null) {
            compositeEncoderB.h(serialDescriptor, 27, StringSerializer.f75684a, str36);
        }
        if (compositeEncoderB.o(serialDescriptor) || careServiceOriginDto != null) {
            compositeEncoderB.h(serialDescriptor, 28, (SerializationStrategy) lazyArr[28].getF71699b(), careServiceOriginDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str35 != null) {
            compositeEncoderB.h(serialDescriptor, 29, StringSerializer.f75684a, str35);
        }
        if (compositeEncoderB.o(serialDescriptor) || str34 != null) {
            compositeEncoderB.h(serialDescriptor, 30, StringSerializer.f75684a, str34);
        }
        if (compositeEncoderB.o(serialDescriptor) || str33 != null) {
            compositeEncoderB.h(serialDescriptor, 31, StringSerializer.f75684a, str33);
        }
        if (compositeEncoderB.o(serialDescriptor) || str32 != null) {
            compositeEncoderB.h(serialDescriptor, 32, StringSerializer.f75684a, str32);
        }
        if (compositeEncoderB.o(serialDescriptor) || str15 != null) {
            compositeEncoderB.h(serialDescriptor, 33, StringSerializer.f75684a, str15);
        }
        if (compositeEncoderB.o(serialDescriptor) || str14 != null) {
            compositeEncoderB.h(serialDescriptor, 34, StringSerializer.f75684a, str14);
        }
        if (compositeEncoderB.o(serialDescriptor) || str13 != null) {
            compositeEncoderB.h(serialDescriptor, 35, StringSerializer.f75684a, str13);
        }
        if (compositeEncoderB.o(serialDescriptor) || str12 != null) {
            compositeEncoderB.h(serialDescriptor, 36, StringSerializer.f75684a, str12);
        }
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 37, StringSerializer.f75684a, str11);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 38, StringSerializer.f75684a, str10);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 39, StringSerializer.f75684a, str9);
        }
        compositeEncoderB.A(serialDescriptor, 40, (SerializationStrategy) lazyArr[40].getF71699b(), careServiceDetailDto.O);
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 41, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 42, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 43, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 44, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 45, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 46, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 47, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 48, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServiceDetailDto.X;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        DoubleSerializer doubleSerializer = DoubleSerializer.f75602a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceId$$serializer.f66880a), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(CareServiceTransactionId$$serializer.f66894a), BuiltinSerializersKt.d((KSerializer) lazyArr[6].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(doubleSerializer), BuiltinSerializersKt.d(doubleSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(SkuId$$serializer.f67934a), booleanSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), booleanSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[28].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), lazyArr[40].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
