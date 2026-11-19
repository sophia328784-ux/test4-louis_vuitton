package com.dynamicyield.sdk.wrapper.core.models.event;

import com.appsflyer.sdk_base.referrer.Payload;
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
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/InformAffinityEventProperties;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
@Deprecated
public /* synthetic */ class InformAffinityEventProperties$$serializer implements GeneratedSerializer<InformAffinityEventProperties> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InformAffinityEventProperties$$serializer f26324a;
    private static final SerialDescriptor descriptor;

    static {
        InformAffinityEventProperties$$serializer informAffinityEventProperties$$serializer = new InformAffinityEventProperties$$serializer();
        f26324a = informAffinityEventProperties$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.dynamicyield.sdk.wrapper.core.models.event.InformAffinityEventProperties", informAffinityEventProperties$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("dyType", false);
        pluginGeneratedSerialDescriptor.k(Payload.SOURCE, true);
        pluginGeneratedSerialDescriptor.k(DbParams.KEY_DATA, false);
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
        Lazy[] lazyArr = InformAffinityEventProperties.d;
        boolean z = true;
        int i2 = 0;
        String strL = null;
        String str = null;
        List list = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                str = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                list = (List) compositeDecoderB.w(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), list);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new InformAffinityEventProperties(i2, strL, str, list, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        InformAffinityEventProperties informAffinityEventProperties = (InformAffinityEventProperties) obj;
        informAffinityEventProperties.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, informAffinityEventProperties.f26338a);
        String str = informAffinityEventProperties.f26322b;
        Lazy[] lazyArr = InformAffinityEventProperties.d;
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str);
        }
        compositeEncoderB.A(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), informAffinityEventProperties.f26323c);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = InformAffinityEventProperties.d;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), lazyArr[2].getF71699b()};
    }
}
