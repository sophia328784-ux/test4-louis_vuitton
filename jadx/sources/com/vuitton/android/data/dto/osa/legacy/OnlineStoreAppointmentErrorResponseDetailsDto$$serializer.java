package com.vuitton.android.data.dto.osa.legacy;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/osa/legacy/OnlineStoreAppointmentErrorResponseDetailsDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class OnlineStoreAppointmentErrorResponseDetailsDto$$serializer implements GeneratedSerializer<OnlineStoreAppointmentErrorResponseDetailsDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OnlineStoreAppointmentErrorResponseDetailsDto$$serializer f46131a;
    private static final SerialDescriptor descriptor;

    static {
        OnlineStoreAppointmentErrorResponseDetailsDto$$serializer onlineStoreAppointmentErrorResponseDetailsDto$$serializer = new OnlineStoreAppointmentErrorResponseDetailsDto$$serializer();
        f46131a = onlineStoreAppointmentErrorResponseDetailsDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.osa.legacy.OnlineStoreAppointmentErrorResponseDetailsDto", onlineStoreAppointmentErrorResponseDetailsDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("status", false);
        pluginGeneratedSerialDescriptor.k("responseId", false);
        pluginGeneratedSerialDescriptor.k("transactionDate", false);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, false);
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
        boolean z = true;
        int i2 = 0;
        int iJ = 0;
        String strL = null;
        String strL2 = null;
        OnlineStoreAppointmentErrorDataDto onlineStoreAppointmentErrorDataDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                iJ = compositeDecoderB.j(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                onlineStoreAppointmentErrorDataDto = (OnlineStoreAppointmentErrorDataDto) compositeDecoderB.w(serialDescriptor, 3, OnlineStoreAppointmentErrorDataDto$$serializer.f46127a, onlineStoreAppointmentErrorDataDto);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new OnlineStoreAppointmentErrorResponseDetailsDto(i2, iJ, strL, strL2, onlineStoreAppointmentErrorDataDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        OnlineStoreAppointmentErrorResponseDetailsDto onlineStoreAppointmentErrorResponseDetailsDto = (OnlineStoreAppointmentErrorResponseDetailsDto) obj;
        onlineStoreAppointmentErrorResponseDetailsDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.u(0, onlineStoreAppointmentErrorResponseDetailsDto.f46128a, serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 1, onlineStoreAppointmentErrorResponseDetailsDto.f46129b);
        compositeEncoderB.y(serialDescriptor, 2, onlineStoreAppointmentErrorResponseDetailsDto.f46130c);
        compositeEncoderB.A(serialDescriptor, 3, OnlineStoreAppointmentErrorDataDto$$serializer.f46127a, onlineStoreAppointmentErrorResponseDetailsDto.d);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{IntSerializer.f75624a, stringSerializer, stringSerializer, OnlineStoreAppointmentErrorDataDto$$serializer.f46127a};
    }
}
