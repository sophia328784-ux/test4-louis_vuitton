package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.android.data.dto.pdp.PriceDto$$serializer;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto.Assessment.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceDetailDto$Assessment$$serializer implements GeneratedSerializer<CareServiceDetailDto.Assessment> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceDetailDto$Assessment$$serializer f44911a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceDetailDto$Assessment$$serializer careServiceDetailDto$Assessment$$serializer = new CareServiceDetailDto$Assessment$$serializer();
        f44911a = careServiceDetailDto$Assessment$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto.Assessment", careServiceDetailDto$Assessment$$serializer, 9);
        pluginGeneratedSerialDescriptor.k("assessmentTitle", false);
        pluginGeneratedSerialDescriptor.k("careExpertNote", true);
        pluginGeneratedSerialDescriptor.k("confirmAddressExpDate", true);
        pluginGeneratedSerialDescriptor.k("price", false);
        pluginGeneratedSerialDescriptor.k("shippingAddress", true);
        pluginGeneratedSerialDescriptor.k("isShippingAddressEditable", false);
        pluginGeneratedSerialDescriptor.k("items", true);
        pluginGeneratedSerialDescriptor.k("showOnCareDetail", false);
        pluginGeneratedSerialDescriptor.k("disclaimer", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.Assessment.f44903j;
        Object obj = null;
        boolean z = true;
        String str = null;
        String strL = null;
        String str2 = null;
        String str3 = null;
        PriceDto priceDto = null;
        CareServiceAddressDto careServiceAddressDto = null;
        List list = null;
        int i2 = 0;
        boolean zY = false;
        boolean zY2 = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    priceDto = (PriceDto) compositeDecoderB.w(serialDescriptor, 3, PriceDto$$serializer.f46236a, priceDto);
                    i2 |= 8;
                    break;
                case 4:
                    careServiceAddressDto = (CareServiceAddressDto) compositeDecoderB.m(serialDescriptor, 4, CareServiceAddressDto$$serializer.f44868a, careServiceAddressDto);
                    i2 |= 16;
                    break;
                case 5:
                    zY = compositeDecoderB.y(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    list = (List) compositeDecoderB.w(serialDescriptor, 6, (DeserializationStrategy) lazyArr[6].getF71699b(), list);
                    i2 |= 64;
                    break;
                case 7:
                    zY2 = compositeDecoderB.y(serialDescriptor, 7);
                    i2 |= 128;
                    break;
                case 8:
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceDetailDto.Assessment(i2, strL, str2, str3, priceDto, careServiceAddressDto, zY, list, zY2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceDetailDto.Assessment assessment = (CareServiceDetailDto.Assessment) obj;
        assessment.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceDetailDto.Assessment.f44903j;
        String str = assessment.f44904a;
        String str2 = assessment.f44910i;
        List list = assessment.g;
        CareServiceAddressDto careServiceAddressDto = assessment.f44907e;
        String str3 = assessment.f44906c;
        String str4 = assessment.f44905b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.A(serialDescriptor, 3, PriceDto$$serializer.f46236a, assessment.d);
        if (compositeEncoderB.o(serialDescriptor) || careServiceAddressDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, CareServiceAddressDto$$serializer.f44868a, careServiceAddressDto);
        }
        compositeEncoderB.x(serialDescriptor, 5, assessment.f44908f);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 6, (SerializationStrategy) lazyArr[6].getF71699b(), list);
        }
        compositeEncoderB.x(serialDescriptor, 7, assessment.f44909h);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServiceDetailDto.Assessment.f44903j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), PriceDto$$serializer.f46236a, BuiltinSerializersKt.d(CareServiceAddressDto$$serializer.f44868a), booleanSerializer, lazyArr[6].getF71699b(), booleanSerializer, BuiltinSerializersKt.d(stringSerializer)};
    }
}
