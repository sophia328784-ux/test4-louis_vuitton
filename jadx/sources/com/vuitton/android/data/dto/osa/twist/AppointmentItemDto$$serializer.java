package com.vuitton.android.data.dto.osa.twist;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import defpackage.b21;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/osa/twist/AppointmentItemDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class AppointmentItemDto$$serializer implements GeneratedSerializer<AppointmentItemDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppointmentItemDto$$serializer f46144a;
    private static final SerialDescriptor descriptor;

    static {
        AppointmentItemDto$$serializer appointmentItemDto$$serializer = new AppointmentItemDto$$serializer();
        f46144a = appointmentItemDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.osa.twist.AppointmentItemDto", appointmentItemDto$$serializer, 9);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("appointmentType", true);
        pluginGeneratedSerialDescriptor.k("startTime", true);
        pluginGeneratedSerialDescriptor.k("endTime", true);
        pluginGeneratedSerialDescriptor.k("timeZone", true);
        pluginGeneratedSerialDescriptor.k(Payload.TYPE_STORE, true);
        pluginGeneratedSerialDescriptor.k("reason", true);
        pluginGeneratedSerialDescriptor.k("availabilityId", true);
        pluginGeneratedSerialDescriptor.k("isVirtualStudioAppointment", true);
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
        Lazy[] lazyArr = AppointmentItemDto.f46136j;
        Boolean bool = null;
        boolean z = true;
        String str = null;
        int i2 = 0;
        String strL = null;
        AppointmentTypeDto appointmentTypeDto = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        AppointmentStoreDto appointmentStoreDto = null;
        OsaReasonDto osaReasonDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    appointmentTypeDto = (AppointmentTypeDto) compositeDecoderB.m(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), appointmentTypeDto);
                    i2 |= 2;
                    break;
                case 2:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str2);
                    i2 |= 4;
                    break;
                case 3:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str3);
                    i2 |= 8;
                    break;
                case 4:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str4);
                    i2 |= 16;
                    break;
                case 5:
                    appointmentStoreDto = (AppointmentStoreDto) compositeDecoderB.m(serialDescriptor, 5, AppointmentStoreDto$$serializer.f46150a, appointmentStoreDto);
                    i2 |= 32;
                    break;
                case 6:
                    osaReasonDto = (OsaReasonDto) compositeDecoderB.m(serialDescriptor, 6, OsaReasonDto$$serializer.f46162a, osaReasonDto);
                    i2 |= 64;
                    break;
                case 7:
                    str = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str);
                    i2 |= 128;
                    break;
                case 8:
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 8, BooleanSerializer.f75574a, bool);
                    i2 |= 256;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new AppointmentItemDto(i2, strL, appointmentTypeDto, str2, str3, str4, appointmentStoreDto, osaReasonDto, str, bool, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        AppointmentItemDto appointmentItemDto = (AppointmentItemDto) obj;
        appointmentItemDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = AppointmentItemDto.f46136j;
        String str = appointmentItemDto.f46137a;
        Boolean bool = appointmentItemDto.f46143i;
        String str2 = appointmentItemDto.f46142h;
        OsaReasonDto osaReasonDto = appointmentItemDto.g;
        AppointmentStoreDto appointmentStoreDto = appointmentItemDto.f46141f;
        String str3 = appointmentItemDto.f46140e;
        String str4 = appointmentItemDto.d;
        String str5 = appointmentItemDto.f46139c;
        AppointmentTypeDto appointmentTypeDto = appointmentItemDto.f46138b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || appointmentTypeDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), appointmentTypeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || appointmentStoreDto != null) {
            compositeEncoderB.h(serialDescriptor, 5, AppointmentStoreDto$$serializer.f46150a, appointmentStoreDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || osaReasonDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, OsaReasonDto$$serializer.f46162a, osaReasonDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 8, BooleanSerializer.f75574a, bool);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = AppointmentItemDto.f46136j;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d((KSerializer) lazyArr[1].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(AppointmentStoreDto$$serializer.f46150a), BuiltinSerializersKt.d(OsaReasonDto$$serializer.f46162a), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(BooleanSerializer.f75574a)};
    }
}
