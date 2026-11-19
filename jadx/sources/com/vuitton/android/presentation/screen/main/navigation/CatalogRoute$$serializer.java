package com.vuitton.android.presentation.screen.main.navigation;

import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
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
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/main/navigation/CatalogRoute.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CatalogRoute$$serializer implements GeneratedSerializer<CatalogRoute> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CatalogRoute$$serializer f59160a;
    private static final SerialDescriptor descriptor;

    static {
        CatalogRoute$$serializer catalogRoute$$serializer = new CatalogRoute$$serializer();
        f59160a = catalogRoute$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.main.navigation.CatalogRoute", catalogRoute$$serializer, 12);
        pluginGeneratedSerialDescriptor.k("catalogDeepLinkType", true);
        pluginGeneratedSerialDescriptor.k("rmsCode", true);
        pluginGeneratedSerialDescriptor.k("storeModeToken", true);
        pluginGeneratedSerialDescriptor.k("storeModeLaunchMode", true);
        pluginGeneratedSerialDescriptor.k("skuList", true);
        pluginGeneratedSerialDescriptor.k("sku", true);
        pluginGeneratedSerialDescriptor.k("isFromNativeShare", true);
        pluginGeneratedSerialDescriptor.k("plpId", true);
        pluginGeneratedSerialDescriptor.k("section", true);
        pluginGeneratedSerialDescriptor.k("category", true);
        pluginGeneratedSerialDescriptor.k("subCategory", true);
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
        Lazy[] lazyArr = CatalogRoute.m;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        boolean z = true;
        String str5 = null;
        int i2 = 0;
        CatalogDeepLinkType catalogDeepLinkType = null;
        String str6 = null;
        String str7 = null;
        StoreModeLaunchMode storeModeLaunchMode = null;
        List list = null;
        String str8 = null;
        boolean zY = false;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    zY = zY;
                    z = false;
                    zY = zY;
                    break;
                case 0:
                    catalogDeepLinkType = (CatalogDeepLinkType) compositeDecoderB.m(serialDescriptor, 0, (DeserializationStrategy) lazyArr[0].getF71699b(), catalogDeepLinkType);
                    i2 |= 1;
                    z = z;
                    zY = zY;
                    break;
                case 1:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str6);
                    i2 |= 2;
                    z = z;
                    zY = zY;
                    break;
                case 2:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str7);
                    i2 |= 4;
                    z = z;
                    zY = zY;
                    break;
                case 3:
                    storeModeLaunchMode = (StoreModeLaunchMode) compositeDecoderB.m(serialDescriptor, 3, (DeserializationStrategy) lazyArr[3].getF71699b(), storeModeLaunchMode);
                    i2 |= 8;
                    z = z;
                    zY = zY;
                    break;
                case 4:
                    list = (List) compositeDecoderB.m(serialDescriptor, 4, (DeserializationStrategy) lazyArr[4].getF71699b(), list);
                    i2 |= 16;
                    z = z;
                    zY = zY;
                    break;
                case 5:
                    str8 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str8);
                    i2 |= 32;
                    z = z;
                    zY = zY;
                    break;
                case 6:
                    zY = compositeDecoderB.y(serialDescriptor, 6);
                    i2 |= 64;
                    z = z;
                    break;
                case 7:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 7, StringSerializer.f75684a, str5);
                    i2 |= 128;
                    z = z;
                    zY = zY;
                    break;
                case 8:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str4);
                    i2 |= 256;
                    z = z;
                    zY = zY;
                    break;
                case 9:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 9, StringSerializer.f75684a, str3);
                    i2 |= 512;
                    z = z;
                    zY = zY;
                    break;
                case 10:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 10, StringSerializer.f75684a, str2);
                    i2 |= 1024;
                    z = z;
                    zY = zY;
                    break;
                case 11:
                    str = (String) compositeDecoderB.m(serialDescriptor, 11, StringSerializer.f75684a, str);
                    i2 |= 2048;
                    z = z;
                    zY = zY;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new CatalogRoute(i2, catalogDeepLinkType, str6, str7, storeModeLaunchMode, list, str8, zY, str5, str4, str3, str2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        CatalogRoute catalogRoute = (CatalogRoute) obj;
        catalogRoute.getClass();
        String str = catalogRoute.l;
        String str2 = catalogRoute.f59159k;
        String str3 = catalogRoute.f59158j;
        String str4 = catalogRoute.f59157i;
        String str5 = catalogRoute.f59156h;
        boolean z = catalogRoute.g;
        String str6 = catalogRoute.f59155f;
        List list = catalogRoute.f59154e;
        StoreModeLaunchMode storeModeLaunchMode = catalogRoute.d;
        String str7 = catalogRoute.f59153c;
        String str8 = catalogRoute.f59152b;
        CatalogDeepLinkType catalogDeepLinkType = catalogRoute.f59151a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = CatalogRoute.m;
        if (compositeEncoderB.o(serialDescriptor) || catalogDeepLinkType != null) {
            compositeEncoderB.h(serialDescriptor, 0, (SerializationStrategy) lazyArr[0].getF71699b(), catalogDeepLinkType);
        }
        if (compositeEncoderB.o(serialDescriptor) || str8 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || storeModeLaunchMode != null) {
            compositeEncoderB.h(serialDescriptor, 3, (SerializationStrategy) lazyArr[3].getF71699b(), storeModeLaunchMode);
        }
        if (compositeEncoderB.o(serialDescriptor) || list != null) {
            compositeEncoderB.h(serialDescriptor, 4, (SerializationStrategy) lazyArr[4].getF71699b(), list);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || z) {
            compositeEncoderB.x(serialDescriptor, 6, z);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 7, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 9, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 10, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 11, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = CatalogRoute.m;
        KSerializer kSerializerD = BuiltinSerializersKt.d((KSerializer) lazyArr[0].getF71699b());
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{kSerializerD, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[3].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[4].getF71699b()), BuiltinSerializersKt.d(stringSerializer), BooleanSerializer.f75574a, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
