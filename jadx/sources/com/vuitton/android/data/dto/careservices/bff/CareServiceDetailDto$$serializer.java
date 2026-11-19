package com.vuitton.android.data.dto.careservices.bff;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId$$serializer;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceDetailDto$$serializer implements GeneratedSerializer<CareServiceDetailDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceDetailDto$$serializer f44896a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceDetailDto$$serializer careServiceDetailDto$$serializer = new CareServiceDetailDto$$serializer();
        f44896a = careServiceDetailDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto", careServiceDetailDto$$serializer, 25);
        pluginGeneratedSerialDescriptor.k("identifier", false);
        pluginGeneratedSerialDescriptor.k("displayableIdentifier", false);
        pluginGeneratedSerialDescriptor.k("transactionIdentifier", true);
        pluginGeneratedSerialDescriptor.k("description", true);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("category", false);
        pluginGeneratedSerialDescriptor.k("steps", true);
        pluginGeneratedSerialDescriptor.k("action", true);
        pluginGeneratedSerialDescriptor.k(Payload.TYPE_STORE, true);
        pluginGeneratedSerialDescriptor.k("product", true);
        pluginGeneratedSerialDescriptor.k("trackingURL", true);
        pluginGeneratedSerialDescriptor.k("creationDate", false);
        pluginGeneratedSerialDescriptor.k("deliveryDate", true);
        pluginGeneratedSerialDescriptor.k("updatedDeliveryDate", true);
        pluginGeneratedSerialDescriptor.k("restitutionHistoryDate", true);
        pluginGeneratedSerialDescriptor.k("appointmentId", true);
        pluginGeneratedSerialDescriptor.k("payByLinkURL", true);
        pluginGeneratedSerialDescriptor.k("preliminaryAssessmentInformation", true);
        pluginGeneratedSerialDescriptor.k("contactMethod", true);
        pluginGeneratedSerialDescriptor.k("cancellationReasons", true);
        pluginGeneratedSerialDescriptor.k("inStoreInformation", true);
        pluginGeneratedSerialDescriptor.k("appointmentInformation", true);
        pluginGeneratedSerialDescriptor.k("shippingInformation", true);
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
        CareServiceProductDto careServiceProductDto;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.z;
        String str = null;
        String str2 = null;
        String str3 = null;
        CareServiceProductDto careServiceProductDto2 = null;
        String str4 = null;
        List list = null;
        int i3 = 0;
        String str5 = null;
        CareServiceDetailDto.AppointmentInformation appointmentInformation = null;
        String str6 = null;
        CareServiceDetailDto.Assessment assessment = null;
        String str7 = null;
        List list2 = null;
        CareServiceDetailDto.ShippingInformation shippingInformation = null;
        boolean z = true;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        List list3 = null;
        String str13 = null;
        CareServiceDetailDto.Store store = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    str = str;
                    str3 = str3;
                    z = false;
                    str3 = str3;
                    str = str;
                    break;
                case 0:
                    careServiceProductDto = careServiceProductDto2;
                    str9 = str9;
                    CareServiceId careServiceId = (CareServiceId) compositeDecoderB.w(serialDescriptor, 0, CareServiceId$$serializer.f66880a, str8 != null ? new CareServiceId(str8) : null);
                    str8 = careServiceId != null ? careServiceId.f66879a : null;
                    i3 |= 1;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 1:
                    str = str;
                    str3 = str3;
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i3 |= 2;
                    str3 = str3;
                    str = str;
                    break;
                case 2:
                    careServiceProductDto = careServiceProductDto2;
                    str10 = str10;
                    CareServiceTransactionId careServiceTransactionId = (CareServiceTransactionId) compositeDecoderB.m(serialDescriptor, 2, CareServiceTransactionId$$serializer.f66894a, str9 != null ? new CareServiceTransactionId(str9) : null);
                    str9 = careServiceTransactionId != null ? careServiceTransactionId.f66893a : null;
                    i3 |= 4;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 3:
                    careServiceProductDto = careServiceProductDto2;
                    str10 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str10);
                    i3 |= 8;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 4:
                    careServiceProductDto = careServiceProductDto2;
                    str11 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str11);
                    i3 |= 16;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 5:
                    careServiceProductDto = careServiceProductDto2;
                    str12 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str12);
                    i3 |= 32;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 6:
                    str = str;
                    str3 = str3;
                    strL2 = compositeDecoderB.l(serialDescriptor, 6);
                    i3 |= 64;
                    str3 = str3;
                    str = str;
                    break;
                case 7:
                    str = str;
                    str3 = str3;
                    strL3 = compositeDecoderB.l(serialDescriptor, 7);
                    i3 |= 128;
                    str3 = str3;
                    str = str;
                    break;
                case 8:
                    careServiceProductDto = careServiceProductDto2;
                    list3 = (List) compositeDecoderB.w(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), list3);
                    i3 |= 256;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 9:
                    careServiceProductDto = careServiceProductDto2;
                    str13 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str13);
                    i3 |= 512;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 10:
                    careServiceProductDto = careServiceProductDto2;
                    store = (CareServiceDetailDto.Store) compositeDecoderB.m(serialDescriptor, 10, CareServiceDetailDto$Store$$serializer.f44937a, store);
                    i3 |= 1024;
                    careServiceProductDto2 = careServiceProductDto;
                    str3 = str3;
                    str = str;
                    break;
                case 11:
                    str = str;
                    str3 = str3;
                    careServiceProductDto2 = (CareServiceProductDto) compositeDecoderB.m(serialDescriptor, 11, CareServiceProductDto$$serializer.f44946a, careServiceProductDto2);
                    i3 |= 2048;
                    str3 = str3;
                    str = str;
                    break;
                case 12:
                    str = str;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 12, StringSerializer.f75684a, str3);
                    i3 |= 4096;
                    careServiceProductDto2 = careServiceProductDto2;
                    str = str;
                    break;
                case 13:
                    str3 = str3;
                    strL4 = compositeDecoderB.l(serialDescriptor, 13);
                    i3 |= 8192;
                    str3 = str3;
                    break;
                case 14:
                    str3 = str3;
                    careServiceProductDto2 = careServiceProductDto2;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 14, StringSerializer.f75684a, str2);
                    i3 |= 16384;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 15:
                    str = (String) compositeDecoderB.m(serialDescriptor, 15, StringSerializer.f75684a, str);
                    i2 = 32768;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 16:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 16, StringSerializer.f75684a, str4);
                    i2 = 65536;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 17:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 17, StringSerializer.f75684a, str5);
                    i2 = 131072;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 18:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 18, StringSerializer.f75684a, str6);
                    i2 = 262144;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 19:
                    assessment = (CareServiceDetailDto.Assessment) compositeDecoderB.m(serialDescriptor, 19, CareServiceDetailDto$Assessment$$serializer.f44911a, assessment);
                    i2 = 524288;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 20:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 20, StringSerializer.f75684a, str7);
                    i2 = 1048576;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 21:
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 21, (DeserializationStrategy) lazyArr[21].getF71699b(), list2);
                    i2 = PKIFailureInfo.badSenderNonce;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 22:
                    list = (List) compositeDecoderB.w(serialDescriptor, 22, (DeserializationStrategy) lazyArr[22].getF71699b(), list);
                    i2 = 4194304;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 23:
                    appointmentInformation = (CareServiceDetailDto.AppointmentInformation) compositeDecoderB.m(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
                    i2 = 8388608;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                case 24:
                    shippingInformation = (CareServiceDetailDto.ShippingInformation) compositeDecoderB.m(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
                    i2 = 16777216;
                    i3 |= i2;
                    careServiceProductDto2 = careServiceProductDto2;
                    str3 = str3;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        String str14 = str;
        CareServiceProductDto careServiceProductDto3 = careServiceProductDto2;
        String str15 = str8;
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceDetailDto(i3, str15, strL, str9, str10, str11, str12, strL2, strL3, list3, str13, store, careServiceProductDto3, str3, strL4, str2, str14, str4, str5, str6, assessment, str7, list2, list, appointmentInformation, shippingInformation, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:85:0x018c  */
    /* JADX WARN: Code duplicated, block: B:86:0x018f  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ad A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:93:0x01af  */
    /* JADX WARN: Code duplicated, block: B:97:0x01bf A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x01c1  */
    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        List list;
        List list2;
        CareServiceDetailDto careServiceDetailDto = (CareServiceDetailDto) obj;
        careServiceDetailDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.z;
        CareServiceId$$serializer careServiceId$$serializer = CareServiceId$$serializer.f66880a;
        String str = careServiceDetailDto.f44887a;
        CareServiceDetailDto.ShippingInformation shippingInformation = careServiceDetailDto.y;
        CareServiceDetailDto.AppointmentInformation appointmentInformation = careServiceDetailDto.x;
        List list3 = careServiceDetailDto.w;
        List list4 = careServiceDetailDto.v;
        String str2 = careServiceDetailDto.u;
        CareServiceDetailDto.Assessment assessment = careServiceDetailDto.t;
        String str3 = careServiceDetailDto.s;
        String str4 = careServiceDetailDto.r;
        String str5 = careServiceDetailDto.q;
        String str6 = careServiceDetailDto.p;
        String str7 = careServiceDetailDto.o;
        String str8 = careServiceDetailDto.m;
        CareServiceProductDto careServiceProductDto = careServiceDetailDto.l;
        CareServiceDetailDto.Store store = careServiceDetailDto.f44895k;
        String str9 = careServiceDetailDto.f44894j;
        List list5 = careServiceDetailDto.f44893i;
        String str10 = careServiceDetailDto.d;
        String str11 = careServiceDetailDto.f44889c;
        compositeEncoderB.A(serialDescriptor, 0, careServiceId$$serializer, new CareServiceId(str));
        compositeEncoderB.y(serialDescriptor, 1, careServiceDetailDto.f44888b);
        if (compositeEncoderB.o(serialDescriptor) || str11 != null) {
            compositeEncoderB.h(serialDescriptor, 2, CareServiceTransactionId$$serializer.f66894a, str11 != null ? new CareServiceTransactionId(str11) : null);
        }
        if (compositeEncoderB.o(serialDescriptor) || str10 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str10);
        }
        StringSerializer stringSerializer = StringSerializer.f75684a;
        compositeEncoderB.h(serialDescriptor, 4, stringSerializer, careServiceDetailDto.f44890e);
        compositeEncoderB.h(serialDescriptor, 5, stringSerializer, careServiceDetailDto.f44891f);
        compositeEncoderB.y(serialDescriptor, 6, careServiceDetailDto.g);
        compositeEncoderB.y(serialDescriptor, 7, careServiceDetailDto.f44892h);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list5, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), list5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str9 != null) {
            compositeEncoderB.h(serialDescriptor, 9, stringSerializer, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || store != null) {
            compositeEncoderB.h(serialDescriptor, 10, CareServiceDetailDto$Store$$serializer.f44937a, store);
        }
        if (compositeEncoderB.o(serialDescriptor) || careServiceProductDto != null) {
            compositeEncoderB.h(serialDescriptor, 11, CareServiceProductDto$$serializer.f44946a, careServiceProductDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 12, stringSerializer, str8);
        }
        compositeEncoderB.y(serialDescriptor, 13, careServiceDetailDto.n);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 14, stringSerializer, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 15, stringSerializer, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 16, stringSerializer, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 17, stringSerializer, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 18, stringSerializer, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || assessment != null) {
            compositeEncoderB.h(serialDescriptor, 19, CareServiceDetailDto$Assessment$$serializer.f44911a, assessment);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 20, stringSerializer, str2);
        }
        if (!compositeEncoderB.o(serialDescriptor)) {
            list = list4;
            if (!Intrinsics.c(list, EmptyList.f71768b)) {
            }
            if (compositeEncoderB.o(serialDescriptor)) {
                list2 = list3;
                if (!Intrinsics.c(list2, EmptyList.f71768b)) {
                }
                if (compositeEncoderB.o(serialDescriptor) || appointmentInformation != null) {
                    compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
                }
                if (compositeEncoderB.o(serialDescriptor) || shippingInformation != null) {
                    compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
                }
                compositeEncoderB.c(serialDescriptor);
            }
            list2 = list3;
            compositeEncoderB.A(serialDescriptor, 22, (SerializationStrategy) lazyArr[22].getF71699b(), list2);
            if (compositeEncoderB.o(serialDescriptor)) {
                compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
            } else {
                compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
            }
            if (compositeEncoderB.o(serialDescriptor)) {
                compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
            } else {
                compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
            }
            compositeEncoderB.c(serialDescriptor);
        }
        list = list4;
        compositeEncoderB.A(serialDescriptor, 21, (SerializationStrategy) lazyArr[21].getF71699b(), list);
        if (compositeEncoderB.o(serialDescriptor)) {
            list2 = list3;
            if (!Intrinsics.c(list2, EmptyList.f71768b)) {
            }
            if (compositeEncoderB.o(serialDescriptor)) {
                compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
            } else {
                compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
            }
            if (compositeEncoderB.o(serialDescriptor)) {
                compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
            } else {
                compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
            }
            compositeEncoderB.c(serialDescriptor);
        }
        list2 = list3;
        compositeEncoderB.A(serialDescriptor, 22, (SerializationStrategy) lazyArr[22].getF71699b(), list2);
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
        } else {
            compositeEncoderB.h(serialDescriptor, 23, CareServiceDetailDto$AppointmentInformation$$serializer.f44902a, appointmentInformation);
        }
        if (compositeEncoderB.o(serialDescriptor)) {
            compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
        } else {
            compositeEncoderB.h(serialDescriptor, 24, CareServiceDetailDto$ShippingInformation$$serializer.f44930a, shippingInformation);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServiceDetailDto.z;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{CareServiceId$$serializer.f66880a, stringSerializer, BuiltinSerializersKt.d(CareServiceTransactionId$$serializer.f66894a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), stringSerializer, stringSerializer, lazyArr[8].getF71699b(), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceDetailDto$Store$$serializer.f44937a), BuiltinSerializersKt.d(CareServiceProductDto$$serializer.f44946a), BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceDetailDto$Assessment$$serializer.f44911a), BuiltinSerializersKt.d(stringSerializer), lazyArr[21].getF71699b(), lazyArr[22].getF71699b(), BuiltinSerializersKt.d(CareServiceDetailDto$AppointmentInformation$$serializer.f44902a), BuiltinSerializersKt.d(CareServiceDetailDto$ShippingInformation$$serializer.f44930a)};
    }
}
