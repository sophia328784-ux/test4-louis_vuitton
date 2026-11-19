package com.vuitton.foundation.model.domain.model.privacy;

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
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/privacy/Consent.FunctionalConsent.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class Consent$FunctionalConsent$$serializer implements GeneratedSerializer<Consent.FunctionalConsent> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Consent$FunctionalConsent$$serializer f67890a;
    private static final SerialDescriptor descriptor;

    static {
        Consent$FunctionalConsent$$serializer consent$FunctionalConsent$$serializer = new Consent$FunctionalConsent$$serializer();
        f67890a = consent$FunctionalConsent$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.foundation.model.domain.model.privacy.Consent.FunctionalConsent", consent$FunctionalConsent$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("value", false);
        pluginGeneratedSerialDescriptor.k("consentValue", false);
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
        Lazy[] lazyArr = Consent.FunctionalConsent.f67889e;
        SerializationConstructorMarker serializationConstructorMarker = null;
        boolean z = true;
        int i2 = 0;
        ConsentValue consentValue = null;
        ConsentValue consentValue2 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                consentValue = (ConsentValue) compositeDecoderB.w(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), consentValue);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                consentValue2 = (ConsentValue) compositeDecoderB.w(serialDescriptor, 1, (DeserializationStrategy) lazyArr[1].getF71699b(), consentValue2);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new Consent.FunctionalConsent(i2, consentValue, consentValue2, serializationConstructorMarker);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Consent.FunctionalConsent functionalConsent = (Consent.FunctionalConsent) obj;
        functionalConsent.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.A(serialDescriptor, 0, (SerializationStrategy) Consent.f67880b[0].getF71699b(), functionalConsent.f67882a);
        compositeEncoderB.A(serialDescriptor, 1, (SerializationStrategy) Consent.FunctionalConsent.f67889e[1].getF71699b(), functionalConsent.d);
        compositeEncoderB.c(serialDescriptor);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = Consent.FunctionalConsent.f67889e;
        return new KSerializer[]{lazyArr[0].getF71699b(), lazyArr[1].getF71699b()};
    }
}
