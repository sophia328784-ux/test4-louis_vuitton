package com.vuitton.android.data.dto.personalselections;

import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
import defpackage.b21;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PersonalSelectionsDetailDto$$serializer implements GeneratedSerializer<PersonalSelectionsDetailDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PersonalSelectionsDetailDto$$serializer f46319a;
    private static final SerialDescriptor descriptor;

    static {
        PersonalSelectionsDetailDto$$serializer personalSelectionsDetailDto$$serializer = new PersonalSelectionsDetailDto$$serializer();
        f46319a = personalSelectionsDetailDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.personalselections.PersonalSelectionsDetailDto", personalSelectionsDetailDto$$serializer, 10);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("title", true);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("creationDate", false);
        pluginGeneratedSerialDescriptor.k("clientAdvisorText", false);
        pluginGeneratedSerialDescriptor.k("shareURL", false);
        pluginGeneratedSerialDescriptor.k(Payload.TYPE_STORE, false);
        pluginGeneratedSerialDescriptor.k("assets", false);
        pluginGeneratedSerialDescriptor.k(Product.TYPE, false);
        pluginGeneratedSerialDescriptor.k("editorialSections", true);
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
        Lazy[] lazyArr2 = PersonalSelectionsDetailDto.f46310k;
        List list = null;
        List list2 = null;
        boolean z = true;
        List list3 = null;
        int i2 = 0;
        String strL = null;
        String str = null;
        SelectionTypeDto selectionTypeDto = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        SelectionStoreDto selectionStoreDto = null;
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
                    str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                    i2 |= 2;
                    break;
                case 2:
                    lazyArr = lazyArr2;
                    selectionTypeDto = (SelectionTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), selectionTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    lazyArr = lazyArr2;
                    strL2 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    break;
                case 4:
                    lazyArr = lazyArr2;
                    strL3 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    break;
                case 5:
                    lazyArr = lazyArr2;
                    strL4 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    break;
                case 6:
                    lazyArr = lazyArr2;
                    selectionStoreDto = (SelectionStoreDto) compositeDecoderB.w(serialDescriptor, 6, SelectionStoreDto$$serializer.f46348a, selectionStoreDto);
                    i2 |= 64;
                    break;
                case 7:
                    lazyArr = lazyArr2;
                    list3 = (List) compositeDecoderB.w(serialDescriptor, 7, (DeserializationStrategy) lazyArr[7].getF71699b(), list3);
                    i2 |= 128;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    list2 = (List) compositeDecoderB.w(serialDescriptor, 8, (DeserializationStrategy) lazyArr[8].getF71699b(), list2);
                    i2 |= 256;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    list = (List) compositeDecoderB.w(serialDescriptor, 9, (DeserializationStrategy) lazyArr2[9].getF71699b(), list);
                    i2 |= 512;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
            lazyArr2 = lazyArr;
        }
        compositeDecoderB.c(serialDescriptor);
        return new PersonalSelectionsDetailDto(i2, strL, str, selectionTypeDto, strL2, strL3, strL4, selectionStoreDto, list3, list2, list, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PersonalSelectionsDetailDto personalSelectionsDetailDto = (PersonalSelectionsDetailDto) obj;
        personalSelectionsDetailDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = PersonalSelectionsDetailDto.f46310k;
        String str = personalSelectionsDetailDto.f46311a;
        List list = personalSelectionsDetailDto.f46318j;
        String str2 = personalSelectionsDetailDto.f46312b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), personalSelectionsDetailDto.f46313c);
        compositeEncoderB.y(serialDescriptor, 3, personalSelectionsDetailDto.d);
        compositeEncoderB.y(serialDescriptor, 4, personalSelectionsDetailDto.f46314e);
        compositeEncoderB.y(serialDescriptor, 5, personalSelectionsDetailDto.f46315f);
        compositeEncoderB.A(serialDescriptor, 6, SelectionStoreDto$$serializer.f46348a, personalSelectionsDetailDto.g);
        compositeEncoderB.A(serialDescriptor, 7, (SerializationStrategy) lazyArr[7].getF71699b(), personalSelectionsDetailDto.f46316h);
        compositeEncoderB.A(serialDescriptor, 8, (SerializationStrategy) lazyArr[8].getF71699b(), personalSelectionsDetailDto.f46317i);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(list, EmptyList.f71768b)) {
            compositeEncoderB.A(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), list);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = PersonalSelectionsDetailDto.f46310k;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), lazyArr[2].getF71699b(), stringSerializer, stringSerializer, stringSerializer, SelectionStoreDto$$serializer.f46348a, lazyArr[7].getF71699b(), lazyArr[8].getF71699b(), lazyArr[9].getF71699b()};
    }
}
