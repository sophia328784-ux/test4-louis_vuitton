package com.vuitton.android.data.dto.osa.twist;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/osa/twist/CancelAppointmentDtoResponse;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CancelAppointmentDtoResponse$$serializer implements GeneratedSerializer<CancelAppointmentDtoResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CancelAppointmentDtoResponse$$serializer f46159a;
    private static final SerialDescriptor descriptor;

    static {
        CancelAppointmentDtoResponse$$serializer cancelAppointmentDtoResponse$$serializer = new CancelAppointmentDtoResponse$$serializer();
        f46159a = cancelAppointmentDtoResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.osa.twist.CancelAppointmentDtoResponse", cancelAppointmentDtoResponse$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("success", true);
        pluginGeneratedSerialDescriptor.k("message", true);
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
        Boolean bool = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                bool = (Boolean) compositeDecoderB.m(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CancelAppointmentDtoResponse(i2, bool, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CancelAppointmentDtoResponse cancelAppointmentDtoResponse = (CancelAppointmentDtoResponse) obj;
        cancelAppointmentDtoResponse.getClass();
        String str = cancelAppointmentDtoResponse.f46158b;
        Boolean bool = cancelAppointmentDtoResponse.f46157a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(BooleanSerializer.f75574a), BuiltinSerializersKt.d(StringSerializer.f75684a)};
    }
}
