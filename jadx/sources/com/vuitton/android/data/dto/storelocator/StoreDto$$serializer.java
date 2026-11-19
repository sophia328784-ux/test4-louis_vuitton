package com.vuitton.android.data.dto.storelocator;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetImageDto$$serializer;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/storelocator/StoreDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/storelocator/StoreDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class StoreDto$$serializer implements GeneratedSerializer<StoreDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StoreDto$$serializer f46844a;
    private static final SerialDescriptor descriptor;

    static {
        StoreDto$$serializer storeDto$$serializer = new StoreDto$$serializer();
        f46844a = storeDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.storelocator.StoreDto", storeDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("storeType", false);
        pluginGeneratedSerialDescriptor.k("phone", true);
        pluginGeneratedSerialDescriptor.k("address", false);
        pluginGeneratedSerialDescriptor.k("imageUrl", true);
        pluginGeneratedSerialDescriptor.k("image", true);
        pluginGeneratedSerialDescriptor.k("stockAvailability", true);
        pluginGeneratedSerialDescriptor.k("openingHours", true);
        pluginGeneratedSerialDescriptor.k("megatrio", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        Lazy[] lazyArr;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr2 = StoreDto.f46835k;
        MegatrioDto megatrioDto = null;
        List list = null;
        boolean z = true;
        Boolean bool = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String str = null;
        StoreAddressDto storeAddressDto = null;
        String str2 = null;
        AssetImageDto assetImageDto = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    lazyArr = lazyArr2;
                    z = false;
                    break;
                case 0:
                    lazyArr = lazyArr2;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    lazyArr = lazyArr2;
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    lazyArr = lazyArr2;
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    break;
                case 3:
                    lazyArr = lazyArr2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                    i2 |= 8;
                    break;
                case 4:
                    lazyArr = lazyArr2;
                    storeAddressDto = (StoreAddressDto) compositeDecoderB.w(serialDescriptor, 4, StoreAddressDto$$serializer.f46834a, storeAddressDto);
                    i2 |= 16;
                    break;
                case 5:
                    lazyArr = lazyArr2;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str2);
                    i2 |= 32;
                    break;
                case 6:
                    lazyArr = lazyArr2;
                    assetImageDto = (AssetImageDto) compositeDecoderB.m(serialDescriptor, 6, AssetImageDto$$serializer.f45243a, assetImageDto);
                    i2 |= 64;
                    break;
                case 7:
                    lazyArr = lazyArr2;
                    bool = (Boolean) compositeDecoderB.m(serialDescriptor, 7, BooleanSerializer.f75574a, bool);
                    i2 |= 128;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    list = (List) compositeDecoderB.m(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), list);
                    i2 |= 256;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    megatrioDto = (MegatrioDto) compositeDecoderB.m(serialDescriptor, 9, MegatrioDto$$serializer.f46829a, megatrioDto);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr2 = lazyArr;
        }
        compositeDecoderB.c(serialDescriptor);
        return new StoreDto(i2, strL, strL2, strL3, str, storeAddressDto, str2, assetImageDto, bool, list, megatrioDto, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        StoreDto storeDto = (StoreDto) obj;
        storeDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = StoreDto.f46835k;
        String str = storeDto.f46836a;
        MegatrioDto megatrioDto = storeDto.f46843j;
        List list = storeDto.f46842i;
        Boolean bool = storeDto.f46841h;
        AssetImageDto assetImageDto = storeDto.g;
        String str2 = storeDto.f46840f;
        String str3 = storeDto.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.y(serialDescriptor, 1, storeDto.f46837b);
        compositeEncoderB.y(serialDescriptor, 2, storeDto.f46838c);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        compositeEncoderB.A(serialDescriptor, 4, StoreAddressDto$$serializer.f46834a, storeDto.f46839e);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || assetImageDto != null) {
            compositeEncoderB.h(serialDescriptor, 6, AssetImageDto$$serializer.f45243a, assetImageDto);
        }
        if (compositeEncoderB.o(serialDescriptor) || bool != null) {
            compositeEncoderB.h(serialDescriptor, 7, BooleanSerializer.f75574a, bool);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || megatrioDto != null) {
            compositeEncoderB.h(serialDescriptor, 9, MegatrioDto$$serializer.f46829a, megatrioDto);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = StoreDto.f46835k;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), StoreAddressDto$$serializer.f46834a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(AssetImageDto$$serializer.f45243a), BuiltinSerializersKt.d(BooleanSerializer.f75574a), BuiltinSerializersKt.d((KSerializer) lazyArr[8].getF71699b()), BuiltinSerializersKt.d(MegatrioDto$$serializer.f46829a)};
    }
}
