package com.vuitton.android.data.dto.connectivity.sync;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import java.util.List;
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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ConnectedObjectsConfigDto$$serializer implements GeneratedSerializer<ConnectedObjectsConfigDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ConnectedObjectsConfigDto$$serializer f45599a;
    private static final SerialDescriptor descriptor;

    static {
        ConnectedObjectsConfigDto$$serializer connectedObjectsConfigDto$$serializer = new ConnectedObjectsConfigDto$$serializer();
        f45599a = connectedObjectsConfigDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto", connectedObjectsConfigDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("assets", true);
        pluginGeneratedSerialDescriptor.k("section_home", true);
        pluginGeneratedSerialDescriptor.k("version", true);
        pluginGeneratedSerialDescriptor.k("configRevision", true);
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
        Lazy[] lazyArr = ConnectedObjectsConfigDto.f45595e;
        boolean z = true;
        int i2 = 0;
        List list = null;
        SectionHomeDto sectionHomeDto = null;
        String str = null;
        Long l = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                list = (List) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                i2 |= 1;
            } else if (iN == 1) {
                sectionHomeDto = (SectionHomeDto) compositeDecoderB.m(serialDescriptor, 1, SectionHomeDto$$serializer.f45614a, sectionHomeDto);
                i2 |= 2;
            } else if (iN == 2) {
                str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                l = (Long) compositeDecoderB.m(serialDescriptor, 3, LongSerializer.f75635a, l);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ConnectedObjectsConfigDto(i2, list, sectionHomeDto, str, l, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ConnectedObjectsConfigDto connectedObjectsConfigDto = (ConnectedObjectsConfigDto) obj;
        connectedObjectsConfigDto.getClass();
        Long l = connectedObjectsConfigDto.d;
        String str = connectedObjectsConfigDto.f45598c;
        SectionHomeDto sectionHomeDto = connectedObjectsConfigDto.f45597b;
        List list = connectedObjectsConfigDto.f45596a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ConnectedObjectsConfigDto.f45595e;
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || sectionHomeDto != null) {
            compositeEncoderB.h(serialDescriptor, 1, SectionHomeDto$$serializer.f45614a, sectionHomeDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || l != null) {
            compositeEncoderB.h(serialDescriptor, 3, LongSerializer.f75635a, l);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{BuiltinSerializersKt.d((KSerializer) ConnectedObjectsConfigDto.f45595e[0].getF71699b()), BuiltinSerializersKt.d(SectionHomeDto$$serializer.f45614a), BuiltinSerializersKt.d(StringSerializer.f75684a), BuiltinSerializersKt.d(LongSerializer.f75635a)};
    }
}
