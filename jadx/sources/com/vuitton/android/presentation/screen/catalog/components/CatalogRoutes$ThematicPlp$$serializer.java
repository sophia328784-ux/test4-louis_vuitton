package com.vuitton.android.presentation.screen.catalog.components;

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
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/catalog/components/CatalogRoutes.ThematicPlp.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/catalog/components/CatalogRoutes$ThematicPlp;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CatalogRoutes$ThematicPlp$$serializer implements GeneratedSerializer<CatalogRoutes.ThematicPlp> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CatalogRoutes$ThematicPlp$$serializer f55295a;
    private static final SerialDescriptor descriptor;

    static {
        CatalogRoutes$ThematicPlp$$serializer catalogRoutes$ThematicPlp$$serializer = new CatalogRoutes$ThematicPlp$$serializer();
        f55295a = catalogRoutes$ThematicPlp$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.catalog.components.CatalogRoutes.ThematicPlp", catalogRoutes$ThematicPlp$$serializer, 5);
        pluginGeneratedSerialDescriptor.k("categoryId", false);
        pluginGeneratedSerialDescriptor.k("subcategoryId", false);
        pluginGeneratedSerialDescriptor.k("plpTitle", false);
        pluginGeneratedSerialDescriptor.k("plpId", true);
        pluginGeneratedSerialDescriptor.k("themeId", true);
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
        String strL = null;
        String str = null;
        String strL2 = null;
        String str2 = null;
        String str3 = null;
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
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else if (iN == 3) {
                str2 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str2);
                i2 |= 8;
            } else {
                if (iN != 4) {
                    b21.l(iN);
                    return null;
                }
                str3 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str3);
                i2 |= 16;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CatalogRoutes.ThematicPlp(i2, strL, str, strL2, str2, str3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CatalogRoutes.ThematicPlp thematicPlp = (CatalogRoutes.ThematicPlp) obj;
        thematicPlp.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = thematicPlp.f55291a;
        String str2 = thematicPlp.f55294e;
        String str3 = thematicPlp.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        StringSerializer stringSerializer = StringSerializer.f75684a;
        compositeEncoderB.h(serialDescriptor, 1, stringSerializer, thematicPlp.f55292b);
        compositeEncoderB.y(serialDescriptor, 2, thematicPlp.f55293c);
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 3, stringSerializer, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 4, stringSerializer, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, BuiltinSerializersKt.d(stringSerializer), stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
