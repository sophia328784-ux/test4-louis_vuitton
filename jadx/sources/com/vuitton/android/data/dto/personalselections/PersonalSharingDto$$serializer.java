package com.vuitton.android.data.dto.personalselections;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/personalselections/PersonalSharingDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class PersonalSharingDto$$serializer implements GeneratedSerializer<PersonalSharingDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PersonalSharingDto$$serializer f46333a;
    private static final SerialDescriptor descriptor;

    static {
        PersonalSharingDto$$serializer personalSharingDto$$serializer = new PersonalSharingDto$$serializer();
        f46333a = personalSharingDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.personalselections.PersonalSharingDto", personalSharingDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("selectionId", false);
        pluginGeneratedSerialDescriptor.k("selectionType", false);
        pluginGeneratedSerialDescriptor.k("title", false);
        pluginGeneratedSerialDescriptor.k("previewImageUrl", false);
        pluginGeneratedSerialDescriptor.k("creationDate", false);
        pluginGeneratedSerialDescriptor.k("description", false);
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
        Lazy[] lazyArr = PersonalSharingDto.f46327h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        SelectionTypeDto selectionTypeDto = null;
        String strL3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    selectionTypeDto = (SelectionTypeDto) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), selectionTypeDto);
                    i2 |= 4;
                    break;
                case 3:
                    strL3 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    continue;
                case 4:
                    strL4 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    continue;
                case 5:
                    strL5 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    continue;
                case 6:
                    strL6 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    continue;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new PersonalSharingDto(i2, strL, strL2, selectionTypeDto, strL3, strL4, strL5, strL6, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        PersonalSharingDto personalSharingDto = (PersonalSharingDto) obj;
        personalSharingDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = PersonalSharingDto.f46327h;
        compositeEncoderB.y(serialDescriptor, 0, personalSharingDto.f46328a);
        compositeEncoderB.y(serialDescriptor, 1, personalSharingDto.f46329b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), personalSharingDto.f46330c);
        compositeEncoderB.y(serialDescriptor, 3, personalSharingDto.d);
        compositeEncoderB.y(serialDescriptor, 4, personalSharingDto.f46331e);
        compositeEncoderB.y(serialDescriptor, 5, personalSharingDto.f46332f);
        compositeEncoderB.y(serialDescriptor, 6, personalSharingDto.g);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = PersonalSharingDto.f46327h;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, lazyArr[2].getF71699b(), stringSerializer, stringSerializer, stringSerializer, stringSerializer};
    }
}
