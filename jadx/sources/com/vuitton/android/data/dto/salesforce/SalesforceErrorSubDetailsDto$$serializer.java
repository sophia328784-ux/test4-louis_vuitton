package com.vuitton.android.data.dto.salesforce;

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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SalesforceErrorSubDetailsDto$$serializer implements GeneratedSerializer<SalesforceErrorSubDetailsDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SalesforceErrorSubDetailsDto$$serializer f46772a;
    private static final SerialDescriptor descriptor;

    static {
        SalesforceErrorSubDetailsDto$$serializer salesforceErrorSubDetailsDto$$serializer = new SalesforceErrorSubDetailsDto$$serializer();
        f46772a = salesforceErrorSubDetailsDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.salesforce.SalesforceErrorSubDetailsDto", salesforceErrorSubDetailsDto$$serializer, 1);
        pluginGeneratedSerialDescriptor.k("statusDetails", false);
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
        SalesforceErrorStatusDetailsDto salesforceErrorStatusDetailsDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else {
                if (iN != 0) {
                    b21.l(iN);
                    return null;
                }
                salesforceErrorStatusDetailsDto = (SalesforceErrorStatusDetailsDto) compositeDecoderB.w(serialDescriptor, 0, SalesforceErrorStatusDetailsDto$$serializer.f46770a, salesforceErrorStatusDetailsDto);
                i2 = 1;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SalesforceErrorSubDetailsDto(i2, salesforceErrorStatusDetailsDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SalesforceErrorSubDetailsDto salesforceErrorSubDetailsDto = (SalesforceErrorSubDetailsDto) obj;
        salesforceErrorSubDetailsDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, SalesforceErrorStatusDetailsDto$$serializer.f46770a, salesforceErrorSubDetailsDto.f46771a);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{SalesforceErrorStatusDetailsDto$$serializer.f46770a};
    }
}
