package com.google.firebase.sessions.settings;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.PluginHelperInterfacesKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/google/firebase/sessions/settings/SessionConfigs.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/google/firebase/sessions/settings/SessionConfigs;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SessionConfigs$$serializer implements GeneratedSerializer<SessionConfigs> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SessionConfigs$$serializer f35591a;
    private static final SerialDescriptor descriptor;

    static {
        SessionConfigs$$serializer sessionConfigs$$serializer = new SessionConfigs$$serializer();
        f35591a = sessionConfigs$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.google.firebase.sessions.settings.SessionConfigs", sessionConfigs$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("sessionsEnabled", false);
        pluginGeneratedSerialDescriptor.k("sessionSamplingRate", false);
        pluginGeneratedSerialDescriptor.k("sessionTimeoutSeconds", false);
        pluginGeneratedSerialDescriptor.k("cacheDurationSeconds", false);
        pluginGeneratedSerialDescriptor.k("cacheUpdatedTimeSeconds", false);
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
        boolean z = true;
        int i2 = 0;
        Boolean bool = null;
        Double d = null;
        Integer num = null;
        Integer num2 = null;
        Long l = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                bool = (Boolean) compositeDecoderB.m(serialDescriptor, 0, BooleanSerializer.f75574a, bool);
                i2 |= 1;
            } else if (iN == 1) {
                d = (Double) compositeDecoderB.m(serialDescriptor, 1, DoubleSerializer.f75602a, d);
                i2 |= 2;
            } else if (iN == 2) {
                num = (Integer) compositeDecoderB.m(serialDescriptor, 2, IntSerializer.f75624a, num);
                i2 |= 4;
            } else if (iN == 3) {
                num2 = (Integer) compositeDecoderB.m(serialDescriptor, 3, IntSerializer.f75624a, num2);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                l = (Long) compositeDecoderB.m(serialDescriptor, 4, LongSerializer.f75635a, l);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SessionConfigs(i2, bool, d, num, num2, l, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SessionConfigs sessionConfigs = (SessionConfigs) obj;
        sessionConfigs.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.h(serialDescriptor, 0, BooleanSerializer.f75574a, sessionConfigs.f35587a);
        compositeEncoderB.h(serialDescriptor, 1, DoubleSerializer.f75602a, sessionConfigs.f35588b);
        IntSerializer intSerializer = IntSerializer.f75624a;
        compositeEncoderB.h(serialDescriptor, 2, intSerializer, sessionConfigs.f35589c);
        compositeEncoderB.h(serialDescriptor, 3, intSerializer, sessionConfigs.d);
        compositeEncoderB.h(serialDescriptor, 4, LongSerializer.f75635a, sessionConfigs.f35590e);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] d() {
        return PluginHelperInterfacesKt.f75668a;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        KSerializer kSerializerD = BuiltinSerializersKt.d(BooleanSerializer.f75574a);
        KSerializer kSerializerD2 = BuiltinSerializersKt.d(DoubleSerializer.f75602a);
        IntSerializer intSerializer = IntSerializer.f75624a;
        return new KSerializer[]{kSerializerD, kSerializerD2, BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(intSerializer), BuiltinSerializersKt.d(LongSerializer.f75635a)};
    }
}
