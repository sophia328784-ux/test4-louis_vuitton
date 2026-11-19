package com.vuitton.android.data.dto.careservices.bff;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDto$$serializer;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceCreationDto$$serializer implements GeneratedSerializer<CareServiceCreationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceCreationDto$$serializer f44884a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceCreationDto$$serializer careServiceCreationDto$$serializer = new CareServiceCreationDto$$serializer();
        f44884a = careServiceCreationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto", careServiceCreationDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("appointment", true);
        pluginGeneratedSerialDescriptor.k("phone", false);
        pluginGeneratedSerialDescriptor.k("email", false);
        pluginGeneratedSerialDescriptor.k("issueDescription", false);
        pluginGeneratedSerialDescriptor.k("contactMethod", false);
        pluginGeneratedSerialDescriptor.k("images", true);
        pluginGeneratedSerialDescriptor.k("postalCode", true);
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
        Lazy[] lazyArr = CareServiceCreationDto.f44878h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        CareServiceAppointmentDto careServiceAppointmentDto = null;
        PhoneNumberDto phoneNumberDto = null;
        String strL = null;
        String strL2 = null;
        CareServiceContactMethodDto careServiceContactMethodDto = null;
        List list = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    careServiceAppointmentDto = (CareServiceAppointmentDto) compositeDecoderB.m(serialDescriptor, 0, CareServiceAppointmentDto$$serializer.f44872a, careServiceAppointmentDto);
                    i2 |= 1;
                    break;
                case 1:
                    phoneNumberDto = (PhoneNumberDto) compositeDecoderB.w(serialDescriptor, 1, PhoneNumberDto$$serializer.f46681a, phoneNumberDto);
                    i2 |= 2;
                    break;
                case 2:
                    strL = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    strL2 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    careServiceContactMethodDto = (CareServiceContactMethodDto) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), careServiceContactMethodDto);
                    i2 |= 16;
                    break;
                case 5:
                    list = (List) compositeDecoderB.w(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list);
                    i2 |= 32;
                    break;
                case 6:
                    str = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new CareServiceCreationDto(i2, careServiceAppointmentDto, phoneNumberDto, strL, strL2, careServiceContactMethodDto, list, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CareServiceCreationDto careServiceCreationDto = (CareServiceCreationDto) obj;
        careServiceCreationDto.getClass();
        CareServiceAppointmentDto careServiceAppointmentDto = careServiceCreationDto.f44879a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CareServiceCreationDto.f44878h;
        if (compositeEncoderB.o(serialDescriptor) || careServiceAppointmentDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, CareServiceAppointmentDto$$serializer.f44872a, careServiceAppointmentDto);
        }
        PhoneNumberDto$$serializer phoneNumberDto$$serializer = PhoneNumberDto$$serializer.f46681a;
        PhoneNumberDto phoneNumberDto = careServiceCreationDto.f44880b;
        String str = careServiceCreationDto.g;
        List list = careServiceCreationDto.f44883f;
        compositeEncoderB.A(serialDescriptor, 1, phoneNumberDto$$serializer, phoneNumberDto);
        compositeEncoderB.y(serialDescriptor, 2, careServiceCreationDto.f44881c);
        compositeEncoderB.y(serialDescriptor, 3, careServiceCreationDto.d);
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), careServiceCreationDto.f44882e);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CareServiceCreationDto.f44878h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(CareServiceAppointmentDto$$serializer.f44872a), PhoneNumberDto$$serializer.f46681a, stringSerializer, stringSerializer, lazyArr[4].getF71699b(), lazyArr[5].getF71699b(), BuiltinSerializersKt.d(stringSerializer)};
    }
}
