package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
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
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SortingChoice;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SortingChoice$$serializer implements GeneratedSerializer<SortingChoice> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SortingChoice$$serializer f26145a;
    private static final SerialDescriptor descriptor;

    static {
        SortingChoice$$serializer sortingChoice$$serializer = new SortingChoice$$serializer();
        f26145a = sortingChoice$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingChoice", sortingChoice$$serializer, 6);
        pluginGeneratedSerialDescriptor.k(b.a.f24015b, false);
        pluginGeneratedSerialDescriptor.k("name", false);
        pluginGeneratedSerialDescriptor.k("type", false);
        pluginGeneratedSerialDescriptor.k("variations", false);
        pluginGeneratedSerialDescriptor.k("groups", true);
        pluginGeneratedSerialDescriptor.k("decisionId", true);
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
        Lazy[] lazyArr = SortingChoice.g;
        boolean z = true;
        int i2 = 0;
        int iJ = 0;
        String strL = null;
        ChoiceType choiceType = null;
        List list = null;
        List list2 = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    iJ = compositeDecoderB.j(serialDescriptor, 0);
                    i2 |= 1;
                    break;
                case 1:
                    strL = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    break;
                case 2:
                    choiceType = (ChoiceType) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), choiceType);
                    i2 |= 4;
                    break;
                case 3:
                    list = (List) compositeDecoderB.w(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), list);
                    i2 |= 8;
                    break;
                case 4:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list2);
                    i2 |= 16;
                    break;
                case 5:
                    str = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str);
                    i2 |= 32;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SortingChoice(i2, iJ, strL, choiceType, list, list2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SortingChoice sortingChoice = (SortingChoice) obj;
        sortingChoice.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SortingChoice.g;
        int i2 = sortingChoice.f26140a;
        String str = sortingChoice.f26144f;
        List list = sortingChoice.f26143e;
        compositeEncoderB.u(0, i2, serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 1, sortingChoice.f26141b);
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), sortingChoice.f26142c);
        compositeEncoderB.A(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), sortingChoice.d);
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SortingChoice.g;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{IntSerializer.f75624a, stringSerializer, lazyArr[2].getF71699b(), lazyArr[3].getF71699b(), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(stringSerializer)};
    }
}
