package com.vuitton.android.data.dto.osa.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/osa/legacy/ErrorOnlineStoreAppointmentDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ErrorOnlineStoreAppointmentDto$$serializer implements GeneratedSerializer<ErrorOnlineStoreAppointmentDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ErrorOnlineStoreAppointmentDto$$serializer f46119a;
    private static final SerialDescriptor descriptor;

    static {
        ErrorOnlineStoreAppointmentDto$$serializer errorOnlineStoreAppointmentDto$$serializer = new ErrorOnlineStoreAppointmentDto$$serializer();
        f46119a = errorOnlineStoreAppointmentDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.osa.legacy.ErrorOnlineStoreAppointmentDto", errorOnlineStoreAppointmentDto$$serializer, 8);
        pluginGeneratedSerialDescriptor.k("traceId", false);
        pluginGeneratedSerialDescriptor.k("date", false);
        pluginGeneratedSerialDescriptor.k("path", false);
        pluginGeneratedSerialDescriptor.k("statusCode", false);
        pluginGeneratedSerialDescriptor.k("errors", false);
        pluginGeneratedSerialDescriptor.k("error", false);
        pluginGeneratedSerialDescriptor.k("message", false);
        pluginGeneratedSerialDescriptor.k("details", false);
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
        Lazy[] lazyArr = ErrorOnlineStoreAppointmentDto.f46112i;
        Object obj = null;
        boolean z = true;
        ErrorOnlineStoreAppointmentDetailsDto errorOnlineStoreAppointmentDetailsDto = null;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        List list = null;
        String strL4 = null;
        String strL5 = null;
        int i2 = 0;
        int iJ = 0;
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
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    iJ = compositeDecoderB.j(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    list = (List) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    break;
                case 5:
                    strL4 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    strL5 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    break;
                case 7:
                    errorOnlineStoreAppointmentDetailsDto = (ErrorOnlineStoreAppointmentDetailsDto) compositeDecoderB.w(serialDescriptor, 7, ErrorOnlineStoreAppointmentDetailsDto$$serializer.f46111a, errorOnlineStoreAppointmentDetailsDto);
                    i2 |= 128;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new ErrorOnlineStoreAppointmentDto(i2, strL, strL2, strL3, iJ, list, strL4, strL5, errorOnlineStoreAppointmentDetailsDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ErrorOnlineStoreAppointmentDto errorOnlineStoreAppointmentDto = (ErrorOnlineStoreAppointmentDto) obj;
        errorOnlineStoreAppointmentDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ErrorOnlineStoreAppointmentDto.f46112i;
        compositeEncoderB.y(serialDescriptor, 0, errorOnlineStoreAppointmentDto.f46113a);
        compositeEncoderB.y(serialDescriptor, 1, errorOnlineStoreAppointmentDto.f46114b);
        compositeEncoderB.y(serialDescriptor, 2, errorOnlineStoreAppointmentDto.f46115c);
        compositeEncoderB.u(3, errorOnlineStoreAppointmentDto.d, serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), errorOnlineStoreAppointmentDto.f46116e);
        compositeEncoderB.y(serialDescriptor, 5, errorOnlineStoreAppointmentDto.f46117f);
        compositeEncoderB.y(serialDescriptor, 6, errorOnlineStoreAppointmentDto.g);
        compositeEncoderB.A(serialDescriptor, 7, ErrorOnlineStoreAppointmentDetailsDto$$serializer.f46111a, errorOnlineStoreAppointmentDto.f46118h);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = ErrorOnlineStoreAppointmentDto.f46112i;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, IntSerializer.f75624a, lazyArr[4].getF71699b(), stringSerializer, stringSerializer, ErrorOnlineStoreAppointmentDetailsDto$$serializer.f46111a};
    }
}
