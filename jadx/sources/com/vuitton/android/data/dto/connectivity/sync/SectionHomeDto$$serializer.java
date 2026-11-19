package com.vuitton.android.data.dto.connectivity.sync;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpSectionDto;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpSectionDto$$serializer;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/sync/SectionHomeDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SectionHomeDto$$serializer implements GeneratedSerializer<SectionHomeDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SectionHomeDto$$serializer f45614a;
    private static final SerialDescriptor descriptor;

    static {
        SectionHomeDto$$serializer sectionHomeDto$$serializer = new SectionHomeDto$$serializer();
        f45614a = sectionHomeDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.sync.SectionHomeDto", sectionHomeDto$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("section_connected_object", true);
        pluginGeneratedSerialDescriptor.k("section_light_up", true);
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
        SectionConnectedObjectDto sectionConnectedObjectDto = null;
        LightUpSectionDto lightUpSectionDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                sectionConnectedObjectDto = (SectionConnectedObjectDto) compositeDecoderB.m(serialDescriptor, 0, SectionConnectedObjectDto$$serializer.f45608a, sectionConnectedObjectDto);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                lightUpSectionDto = (LightUpSectionDto) compositeDecoderB.m(serialDescriptor, 1, LightUpSectionDto$$serializer.f45594a, lightUpSectionDto);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SectionHomeDto(i2, sectionConnectedObjectDto, lightUpSectionDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SectionHomeDto sectionHomeDto = (SectionHomeDto) obj;
        sectionHomeDto.getClass();
        LightUpSectionDto lightUpSectionDto = sectionHomeDto.f45613b;
        SectionConnectedObjectDto sectionConnectedObjectDto = sectionHomeDto.f45612a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || sectionConnectedObjectDto != null) {
            compositeEncoderB.h(serialDescriptor, 0, SectionConnectedObjectDto$$serializer.f45608a, sectionConnectedObjectDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || lightUpSectionDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, LightUpSectionDto$$serializer.f45594a, lightUpSectionDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d(SectionConnectedObjectDto$$serializer.f45608a), BuiltinSerializersKt.d(LightUpSectionDto$$serializer.f45594a)};
    }
}
