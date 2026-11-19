package com.dynamicyield.sdk.wrapper.core.models.event;

import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
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
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SubmissionEventProperties;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SubmissionEventProperties$$serializer implements GeneratedSerializer<SubmissionEventProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SubmissionEventProperties$$serializer f26370a;
    private static final SerialDescriptor descriptor;

    static {
        SubmissionEventProperties$$serializer submissionEventProperties$$serializer = new SubmissionEventProperties$$serializer();
        f26370a = submissionEventProperties$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.SubmissionEventProperties", submissionEventProperties$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("dyType", false);
        pluginGeneratedSerialDescriptor.k("value", false);
        pluginGeneratedSerialDescriptor.k("currency", true);
        pluginGeneratedSerialDescriptor.k("uniqueTransactionId", true);
        pluginGeneratedSerialDescriptor.k("cart", false);
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
        Lazy[] lazyArr = SubmissionEventProperties.f26366f;
        int i2 = 0;
        String strL = null;
        CurrencyType currencyType = null;
        String str = null;
        List list = null;
        float fR = 0.0f;
        boolean z = true;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                fR = compositeDecoderB.r(serialDescriptor, 1);
                i2 |= 2;
            } else if (iN == 2) {
                currencyType = (CurrencyType) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), currencyType);
                i2 |= 4;
            } else if (iN == 3) {
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SubmissionEventProperties(i2, strL, fR, currencyType, str, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SubmissionEventProperties submissionEventProperties = (SubmissionEventProperties) obj;
        submissionEventProperties.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, submissionEventProperties.f26338a);
        Lazy[] lazyArr = SubmissionEventProperties.f26366f;
        float f2 = submissionEventProperties.f26367b;
        String str = submissionEventProperties.d;
        CurrencyType currencyType = submissionEventProperties.f26368c;
        compositeEncoderB.t(serialDescriptor, 1, f2);
        if (compositeEncoderB.o(serialDescriptor) || currencyType != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), currencyType);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str);
        }
        compositeEncoderB.A(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), submissionEventProperties.f26369e);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SubmissionEventProperties.f26366f;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, FloatSerializer.f75616a, BuiltinSerializersKt.d((KSerializer) lazyArr[2].getF71699b()), BuiltinSerializersKt.d(stringSerializer), lazyArr[4].getF71699b()};
    }
}
