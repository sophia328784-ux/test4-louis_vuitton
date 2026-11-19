package com.vuitton.android.data.dto.pdp;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/pdp/ProductCustomizationDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductCustomizationDto$$serializer implements GeneratedSerializer<ProductCustomizationDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductCustomizationDto$$serializer f46264a;
    private static final SerialDescriptor descriptor;

    static {
        ProductCustomizationDto$$serializer productCustomizationDto$$serializer = new ProductCustomizationDto$$serializer();
        f46264a = productCustomizationDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.pdp.ProductCustomizationDto", productCustomizationDto$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("hotStamping", true);
        pluginGeneratedSerialDescriptor.k("perfumeEngraving", true);
        pluginGeneratedSerialDescriptor.k("beauty", true);
        pluginGeneratedSerialDescriptor.k("monogram", true);
        pluginGeneratedSerialDescriptor.k("diamondEngraving", true);
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
        ConfigurationDto configurationDto = null;
        ConfigurationDto configurationDto2 = null;
        ConfigurationDto configurationDto3 = null;
        ConfigurationDto configurationDto4 = null;
        ConfigurationDto configurationDto5 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                configurationDto = (ConfigurationDto) compositeDecoderB.m(serialDescriptor, 0, ConfigurationDto$$serializer.f46179a, configurationDto);
                i2 |= 1;
            } else if (iN == 1) {
                configurationDto2 = (ConfigurationDto) compositeDecoderB.m(serialDescriptor, 1, ConfigurationDto$$serializer.f46179a, configurationDto2);
                i2 |= 2;
            } else if (iN == 2) {
                configurationDto3 = (ConfigurationDto) compositeDecoderB.m(serialDescriptor, 2, ConfigurationDto$$serializer.f46179a, configurationDto3);
                i2 |= 4;
            } else if (iN == 3) {
                configurationDto4 = (ConfigurationDto) compositeDecoderB.m(serialDescriptor, 3, ConfigurationDto$$serializer.f46179a, configurationDto4);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                configurationDto5 = (ConfigurationDto) compositeDecoderB.m(serialDescriptor, 4, ConfigurationDto$$serializer.f46179a, configurationDto5);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ProductCustomizationDto(i2, configurationDto, configurationDto2, configurationDto3, configurationDto4, configurationDto5, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ProductCustomizationDto productCustomizationDto = (ProductCustomizationDto) obj;
        productCustomizationDto.getClass();
        ConfigurationDto configurationDto = productCustomizationDto.f46263e;
        ConfigurationDto configurationDto2 = productCustomizationDto.d;
        ConfigurationDto configurationDto3 = productCustomizationDto.f46262c;
        ConfigurationDto configurationDto4 = productCustomizationDto.f46261b;
        ConfigurationDto configurationDto5 = productCustomizationDto.f46260a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || configurationDto5 != null) {
            compositeEncoderB.h(serialDescriptor, 0, ConfigurationDto$$serializer.f46179a, configurationDto5);
        }
        if (compositeEncoderB.o(serialDescriptor) || configurationDto4 != null) {
            compositeEncoderB.h(serialDescriptor, 1, ConfigurationDto$$serializer.f46179a, configurationDto4);
        }
        if (compositeEncoderB.o(serialDescriptor) || configurationDto3 != null) {
            compositeEncoderB.h(serialDescriptor, 2, ConfigurationDto$$serializer.f46179a, configurationDto3);
        }
        if (compositeEncoderB.o(serialDescriptor) || configurationDto2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, ConfigurationDto$$serializer.f46179a, configurationDto2);
        }
        if (compositeEncoderB.o(serialDescriptor) || configurationDto != null) {
            compositeEncoderB.h(serialDescriptor, 4, ConfigurationDto$$serializer.f46179a, configurationDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        ConfigurationDto$$serializer configurationDto$$serializer = ConfigurationDto$$serializer.f46179a;
        return new KSerializer[]{BuiltinSerializersKt.d(configurationDto$$serializer), BuiltinSerializersKt.d(configurationDto$$serializer), BuiltinSerializersKt.d(configurationDto$$serializer), BuiltinSerializersKt.d(configurationDto$$serializer), BuiltinSerializersKt.d(configurationDto$$serializer)};
    }
}
