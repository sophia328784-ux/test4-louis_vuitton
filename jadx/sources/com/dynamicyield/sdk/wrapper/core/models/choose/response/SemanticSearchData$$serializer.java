package com.dynamicyield.sdk.wrapper.core.models.choose.response;

import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.JsonToStringSerializer;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchData;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SemanticSearchData$$serializer implements GeneratedSerializer<SemanticSearchData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SemanticSearchData$$serializer f26129a;
    private static final SerialDescriptor descriptor;

    static {
        SemanticSearchData$$serializer semanticSearchData$$serializer = new SemanticSearchData$$serializer();
        f26129a = semanticSearchData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.choose.response.SemanticSearchData", semanticSearchData$$serializer, 7);
        pluginGeneratedSerialDescriptor.k("facets", true);
        pluginGeneratedSerialDescriptor.k("totalNumResults", true);
        pluginGeneratedSerialDescriptor.k("searchQuery", true);
        pluginGeneratedSerialDescriptor.k("normalizedQuery", true);
        pluginGeneratedSerialDescriptor.k("spellCheckedQuery", true);
        pluginGeneratedSerialDescriptor.k("slots", true);
        pluginGeneratedSerialDescriptor.k(com.appsflyer.sdk_base.referrer.Payload.CUSTOM, true);
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
        Lazy[] lazyArr = SemanticSearchData.f26123h;
        Object obj = null;
        boolean z = true;
        int i2 = 0;
        List list = null;
        Integer num = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        List list2 = null;
        String str4 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    continue;
                case 0:
                    list = (List) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), list);
                    i2 |= 1;
                    break;
                case 1:
                    num = (Integer) compositeDecoderB.m(serialDescriptor, 1, IntSerializer.f75624a, num);
                    i2 |= 2;
                    break;
                case 2:
                    str = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str);
                    i2 |= 4;
                    break;
                case 3:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                    i2 |= 8;
                    break;
                case 4:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                    i2 |= 16;
                    break;
                case 5:
                    list2 = (List) compositeDecoderB.m(serialDescriptor, 5, (DeserializationStrategy) lazyArr[5].getF71699b(), list2);
                    i2 |= 32;
                    break;
                case 6:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 6, JsonToStringSerializer.f25971a, str4);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return obj;
            }
            obj = null;
        }
        compositeDecoderB.c(serialDescriptor);
        return new SemanticSearchData(i2, list, num, str, str2, str3, list2, str4, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SemanticSearchData semanticSearchData = (SemanticSearchData) obj;
        semanticSearchData.getClass();
        String str = semanticSearchData.g;
        List list = semanticSearchData.f26128f;
        String str2 = semanticSearchData.f26127e;
        String str3 = semanticSearchData.d;
        String str4 = semanticSearchData.f26126c;
        Integer num = semanticSearchData.f26125b;
        List list2 = semanticSearchData.f26124a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SemanticSearchData.f26123h;
        if (compositeEncoderB.o(serialDescriptor) || list2 != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), list2);
        }
        if (compositeEncoderB.o(serialDescriptor) || num != null) {
            compositeEncoderB.h(serialDescriptor, 1, IntSerializer.f75624a, num);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 5, (SerializationStrategy) lazyArr[5].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 6, JsonToStringSerializer.f25971a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SemanticSearchData.f26123h;
        KSerializer kSerializerD = BuiltinSerializersKt.d((KSerializer) lazyArr[0].getF71699b());
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(IntSerializer.f75624a);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[5].getF71699b()), BuiltinSerializersKt.d(JsonToStringSerializer.f25971a)};
    }
}
