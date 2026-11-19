package com.vuitton.android.data.dto.product.sizeguide;

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
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideTableDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SizeGuideTableDto$$serializer implements GeneratedSerializer<SizeGuideTableDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SizeGuideTableDto$$serializer f46481a;
    private static final SerialDescriptor descriptor;

    static {
        SizeGuideTableDto$$serializer sizeGuideTableDto$$serializer = new SizeGuideTableDto$$serializer();
        f46481a = sizeGuideTableDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.product.sizeguide.SizeGuideTableDto", sizeGuideTableDto$$serializer, 11);
        pluginGeneratedSerialDescriptor.k("title1", true);
        pluginGeneratedSerialDescriptor.k("title2", true);
        pluginGeneratedSerialDescriptor.k("title3", true);
        pluginGeneratedSerialDescriptor.k("countries", true);
        pluginGeneratedSerialDescriptor.k("sizeGuideText", true);
        pluginGeneratedSerialDescriptor.k("mediaCategories", true);
        pluginGeneratedSerialDescriptor.k("inchesLabel", true);
        pluginGeneratedSerialDescriptor.k("cmLabel", true);
        pluginGeneratedSerialDescriptor.k("sizeGuideDropDownCms", false);
        pluginGeneratedSerialDescriptor.k("sizeGuideDropDownInches", false);
        pluginGeneratedSerialDescriptor.k("topDescription", true);
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
        Lazy[] lazyArr2 = SizeGuideTableDto.l;
        String str = null;
        List list = null;
        List list2 = null;
        boolean z = true;
        String str2 = null;
        int i2 = 0;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        List list3 = null;
        String str6 = null;
        List list4 = null;
        String str7 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    lazyArr = lazyArr2;
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str3);
                    i2 |= 1;
                    break;
                case 1:
                    lazyArr = lazyArr2;
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str4);
                    i2 |= 2;
                    break;
                case 2:
                    lazyArr = lazyArr2;
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str5);
                    i2 |= 4;
                    break;
                case 3:
                    lazyArr = lazyArr2;
                    list3 = (List) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list3);
                    i2 |= 8;
                    break;
                case 4:
                    lazyArr = lazyArr2;
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str6);
                    i2 |= 16;
                    break;
                case 5:
                    lazyArr = lazyArr2;
                    list4 = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list4);
                    i2 |= 32;
                    break;
                case 6:
                    lazyArr = lazyArr2;
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str7);
                    i2 |= 64;
                    break;
                case 7:
                    lazyArr = lazyArr2;
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str2);
                    i2 |= 128;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), list2);
                    i2 |= 256;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    list = (List) compositeDecoderB.w(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), list);
                    i2 |= 512;
                    break;
                case 10:
                    lazyArr = lazyArr2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str);
                    i2 |= 1024;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr2 = lazyArr;
            z = z;
        }
        compositeDecoderB.c(serialDescriptor);
        return new SizeGuideTableDto(i2, str3, str4, str5, list3, str6, list4, str7, str2, list2, list, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SizeGuideTableDto sizeGuideTableDto = (SizeGuideTableDto) obj;
        sizeGuideTableDto.getClass();
        String str = sizeGuideTableDto.f46477h;
        String str2 = sizeGuideTableDto.g;
        List list = sizeGuideTableDto.f46476f;
        String str3 = sizeGuideTableDto.f46475e;
        List list2 = sizeGuideTableDto.d;
        String str4 = sizeGuideTableDto.f46474c;
        String str5 = sizeGuideTableDto.f46473b;
        String str6 = sizeGuideTableDto.f46472a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SizeGuideTableDto.l;
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str);
        }
        SerializationStrategy serializationStrategy = (SerializationStrategy) lazyArr[8].getF71699b();
        List list3 = sizeGuideTableDto.f46478i;
        String str7 = sizeGuideTableDto.f46480k;
        compositeEncoderB.A(serialDescriptor, 8, serializationStrategy, list3);
        compositeEncoderB.A(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), sizeGuideTableDto.f46479j);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str7);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SizeGuideTableDto.l;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), lazyArr[8].getF71699b(), lazyArr[9].getF71699b(), BuiltinSerializersKt.d(stringSerializer)};
    }
}
