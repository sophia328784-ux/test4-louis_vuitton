package com.vuitton.android.presentation.screen.certificates;

import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/certificates/CertificateRoute.Visionnaire.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Visionnaire;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CertificateRoute$Visionnaire$$serializer implements GeneratedSerializer<CertificateRoute.Visionnaire> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CertificateRoute$Visionnaire$$serializer f55611a;
    private static final SerialDescriptor descriptor;

    static {
        CertificateRoute$Visionnaire$$serializer certificateRoute$Visionnaire$$serializer = new CertificateRoute$Visionnaire$$serializer();
        f55611a = certificateRoute$Visionnaire$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.certificates.CertificateRoute.Visionnaire", certificateRoute$Visionnaire$$serializer, 2);
        pluginGeneratedSerialDescriptor.k("certificateId", false);
        pluginGeneratedSerialDescriptor.k("isNavigatingAfterScanSuccess", false);
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
        boolean zY = false;
        String strL = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else {
                if (iN != 1) {
                    b21.l(iN);
                    return null;
                }
                zY = compositeDecoderB.y(serialDescriptor, 1);
                i2 |= 2;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CertificateRoute.Visionnaire(i2, strL, zY, null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CertificateRoute.Visionnaire visionnaire = (CertificateRoute.Visionnaire) obj;
        visionnaire.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        compositeEncoderB.y(serialDescriptor, 0, visionnaire.f55609a);
        compositeEncoderB.x(serialDescriptor, 1, visionnaire.f55610b);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a, BooleanSerializer.f75574a};
    }
}
