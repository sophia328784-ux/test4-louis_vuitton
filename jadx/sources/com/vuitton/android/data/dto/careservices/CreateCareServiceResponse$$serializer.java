package com.vuitton.android.data.dto.careservices;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId$$serializer;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/careservices/CreateCareServiceResponse.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/careservices/CreateCareServiceResponse;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CreateCareServiceResponse$$serializer implements GeneratedSerializer<CreateCareServiceResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CreateCareServiceResponse$$serializer f44852a;
    private static final SerialDescriptor descriptor;

    static {
        CreateCareServiceResponse$$serializer createCareServiceResponse$$serializer = new CreateCareServiceResponse$$serializer();
        f44852a = createCareServiceResponse$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.careservices.CreateCareServiceResponse", createCareServiceResponse$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("status", true);
        pluginGeneratedSerialDescriptor.k("responseId", true);
        pluginGeneratedSerialDescriptor.k("transactionDate", true);
        pluginGeneratedSerialDescriptor.k("newCareServiceID", true);
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
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                i2 |= 1;
            } else if (iN == 1) {
                str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                i2 |= 2;
            } else if (iN == 2) {
                str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                CareServiceId careServiceId = (CareServiceId) compositeDecoderB.m(serialDescriptor, 3, CareServiceId$$serializer.f66880a, str4 != null ? new CareServiceId(str4) : null);
                str4 = careServiceId != null ? careServiceId.f66879a : null;
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CreateCareServiceResponse(i2, str, str2, str3, str4, null, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CreateCareServiceResponse createCareServiceResponse = (CreateCareServiceResponse) obj;
        createCareServiceResponse.getClass();
        String str = createCareServiceResponse.d;
        String str2 = createCareServiceResponse.f44851c;
        String str3 = createCareServiceResponse.f44850b;
        String str4 = createCareServiceResponse.f44849a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, CareServiceId$$serializer.f66880a, str != null ? new CareServiceId(str) : null);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(CareServiceId$$serializer.f66880a)};
    }
}
