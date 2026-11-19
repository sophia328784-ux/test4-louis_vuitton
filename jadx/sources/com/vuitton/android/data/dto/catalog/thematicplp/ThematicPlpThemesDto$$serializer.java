package com.vuitton.android.data.dto.catalog.thematicplp;

import com.batch.android.s.b;
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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ThematicPlpThemesDto$$serializer implements GeneratedSerializer<ThematicPlpThemesDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ThematicPlpThemesDto$$serializer f45131a;
    private static final SerialDescriptor descriptor;

    static {
        ThematicPlpThemesDto$$serializer thematicPlpThemesDto$$serializer = new ThematicPlpThemesDto$$serializer();
        f45131a = thematicPlpThemesDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.catalog.thematicplp.ThematicPlpThemesDto", thematicPlpThemesDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("themes", false);
        pluginGeneratedSerialDescriptor.k("currentTheme", false);
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
        Lazy[] lazyArr = ThematicPlpThemesDto.d;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        List list = null;
        CurrentThemeDto currentThemeDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                list = (List) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), list);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                currentThemeDto = (CurrentThemeDto) compositeDecoderB.w(serialDescriptor, 2, CurrentThemeDto$$serializer.f45127a, currentThemeDto);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ThematicPlpThemesDto(i2, strL, list, currentThemeDto, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ThematicPlpThemesDto thematicPlpThemesDto = (ThematicPlpThemesDto) obj;
        thematicPlpThemesDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = ThematicPlpThemesDto.d;
        compositeEncoderB.y(serialDescriptor, 0, thematicPlpThemesDto.f45128a);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) lazyArr[1].getF71699b(), thematicPlpThemesDto.f45129b);
        compositeEncoderB.A(serialDescriptor, 2, CurrentThemeDto$$serializer.f45127a, thematicPlpThemesDto.f45130c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, ThematicPlpThemesDto.d[1].getF71699b(), CurrentThemeDto$$serializer.f45127a};
    }
}
