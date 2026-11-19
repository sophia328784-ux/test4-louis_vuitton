package com.google.firebase.sessions;

import defpackage.b21;
import java.util.Map;
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
import kotlinx.serialization.internal.PluginHelperInterfacesKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/google/firebase/sessions/SessionData.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/google/firebase/sessions/SessionData;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "com.google.firebase-firebase-sessions"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Deprecated
public /* synthetic */ class SessionData$$serializer implements GeneratedSerializer<SessionData> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SessionData$$serializer f35463a;
    private static final SerialDescriptor descriptor;

    static {
        SessionData$$serializer sessionData$$serializer = new SessionData$$serializer();
        f35463a = sessionData$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.google.firebase.sessions.SessionData", sessionData$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("sessionDetails", false);
        pluginGeneratedSerialDescriptor.k("backgroundTime", true);
        pluginGeneratedSerialDescriptor.k("processDataMap", true);
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
        Lazy[] lazyArr = SessionData.d;
        boolean z = true;
        int i2 = 0;
        SessionDetails sessionDetails = null;
        Time time = null;
        Map map = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                sessionDetails = (SessionDetails) compositeDecoderB.w(serialDescriptor, 0, SessionDetails$$serializer.f35469a, sessionDetails);
                i2 |= 1;
            } else if (iN == 1) {
                time = (Time) compositeDecoderB.m(serialDescriptor, 1, Time$$serializer.f35540a, time);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                map = (Map) compositeDecoderB.m(serialDescriptor, 2, (DeserializationStrategy) lazyArr[2].getF71699b(), map);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SessionData(i2, sessionDetails, time, map, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SessionData sessionData = (SessionData) obj;
        sessionData.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SessionData.d;
        SessionDetails$$serializer sessionDetails$$serializer = SessionDetails$$serializer.f35469a;
        SessionDetails sessionDetails = sessionData.f35460a;
        Map map = sessionData.f35462c;
        Time time = sessionData.f35461b;
        compositeEncoderB.A(serialDescriptor, 0, sessionDetails$$serializer, sessionDetails);
        if (compositeEncoderB.o(serialDescriptor) || time != null) {
            compositeEncoderB.h(serialDescriptor, 1, Time$$serializer.f35540a, time);
        }
        if (compositeEncoderB.o(serialDescriptor) || map != null) {
            compositeEncoderB.h(serialDescriptor, 2, (SerializationStrategy) lazyArr[2].getF71699b(), map);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] d() {
        return PluginHelperInterfacesKt.f75668a;
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{SessionDetails$$serializer.f35469a, BuiltinSerializersKt.d(Time$$serializer.f35540a), BuiltinSerializersKt.d((KSerializer) SessionData.d[2].getF71699b())};
    }
}
