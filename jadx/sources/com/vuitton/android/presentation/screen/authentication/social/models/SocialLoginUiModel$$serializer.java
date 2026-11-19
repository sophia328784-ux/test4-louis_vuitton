package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
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
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SocialLoginUiModel$$serializer implements GeneratedSerializer<SocialLoginUiModel> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SocialLoginUiModel$$serializer f54192a;
    private static final SerialDescriptor descriptor;

    static {
        SocialLoginUiModel$$serializer socialLoginUiModel$$serializer = new SocialLoginUiModel$$serializer();
        f54192a = socialLoginUiModel$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel", socialLoginUiModel$$serializer, 12);
        pluginGeneratedSerialDescriptor.k("email", true);
        pluginGeneratedSerialDescriptor.k("firstName", true);
        pluginGeneratedSerialDescriptor.k("lastName", true);
        pluginGeneratedSerialDescriptor.k("civility", true);
        pluginGeneratedSerialDescriptor.k("rawNonce", true);
        pluginGeneratedSerialDescriptor.k("nonce", true);
        pluginGeneratedSerialDescriptor.k("identityToken", true);
        pluginGeneratedSerialDescriptor.k("displayName", true);
        pluginGeneratedSerialDescriptor.k("profilePicUrl", true);
        pluginGeneratedSerialDescriptor.k("origin", true);
        pluginGeneratedSerialDescriptor.k("entryPoint", true);
        pluginGeneratedSerialDescriptor.k("provider", true);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        Lazy[] lazyArr;
        decoder.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeDecoder compositeDecoderB = decoder.b(serialDescriptor);
        Lazy[] lazyArr2 = SocialLoginUiModel.m;
        SocialAuthMode socialAuthMode = null;
        TrackingAuthEntryPoint trackingAuthEntryPoint = null;
        TrackingAuthOrigin trackingAuthOrigin = null;
        boolean z = true;
        String str = null;
        int i2 = 0;
        String strL = null;
        String strL2 = null;
        String strL3 = null;
        String strL4 = null;
        String strL5 = null;
        String strL6 = null;
        String strL7 = null;
        String strL8 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    lazyArr = lazyArr2;
                    strL = compositeDecoderB.l(serialDescriptor, 0);
                    i2 |= 1;
                    lazyArr2 = lazyArr;
                    z = z;
                    break;
                case 1:
                    strL2 = compositeDecoderB.l(serialDescriptor, 1);
                    i2 |= 2;
                    lazyArr2 = lazyArr2;
                    break;
                case 2:
                    strL3 = compositeDecoderB.l(serialDescriptor, 2);
                    i2 |= 4;
                    lazyArr2 = lazyArr2;
                    break;
                case 3:
                    strL4 = compositeDecoderB.l(serialDescriptor, 3);
                    i2 |= 8;
                    lazyArr2 = lazyArr2;
                    break;
                case 4:
                    strL5 = compositeDecoderB.l(serialDescriptor, 4);
                    i2 |= 16;
                    lazyArr2 = lazyArr2;
                    break;
                case 5:
                    strL6 = compositeDecoderB.l(serialDescriptor, 5);
                    i2 |= 32;
                    lazyArr2 = lazyArr2;
                    break;
                case 6:
                    strL7 = compositeDecoderB.l(serialDescriptor, 6);
                    i2 |= 64;
                    lazyArr2 = lazyArr2;
                    break;
                case 7:
                    strL8 = compositeDecoderB.l(serialDescriptor, 7);
                    i2 |= 128;
                    lazyArr2 = lazyArr2;
                    break;
                case 8:
                    lazyArr = lazyArr2;
                    str = (String) compositeDecoderB.m(serialDescriptor, 8, StringSerializer.f75684a, str);
                    i2 |= 256;
                    lazyArr2 = lazyArr;
                    z = z;
                    break;
                case 9:
                    lazyArr = lazyArr2;
                    trackingAuthOrigin = (TrackingAuthOrigin) compositeDecoderB.m(serialDescriptor, 9, (DeserializationStrategy) lazyArr[9].getF71699b(), trackingAuthOrigin);
                    i2 |= 512;
                    lazyArr2 = lazyArr;
                    z = z;
                    break;
                case 10:
                    lazyArr = lazyArr2;
                    trackingAuthEntryPoint = (TrackingAuthEntryPoint) compositeDecoderB.m(serialDescriptor, 10, (DeserializationStrategy) lazyArr[10].getF71699b(), trackingAuthEntryPoint);
                    i2 |= 1024;
                    lazyArr2 = lazyArr;
                    z = z;
                    break;
                case 11:
                    lazyArr = lazyArr2;
                    socialAuthMode = (SocialAuthMode) compositeDecoderB.m(serialDescriptor, 11, (DeserializationStrategy) lazyArr[11].getF71699b(), socialAuthMode);
                    i2 |= 2048;
                    lazyArr2 = lazyArr;
                    z = z;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SocialLoginUiModel(i2, strL, strL2, strL3, strL4, strL5, strL6, strL7, strL8, str, trackingAuthOrigin, trackingAuthEntryPoint, socialAuthMode, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SocialLoginUiModel socialLoginUiModel = (SocialLoginUiModel) obj;
        socialLoginUiModel.getClass();
        SocialAuthMode socialAuthMode = socialLoginUiModel.l;
        TrackingAuthEntryPoint trackingAuthEntryPoint = socialLoginUiModel.f54191k;
        TrackingAuthOrigin trackingAuthOrigin = socialLoginUiModel.f54190j;
        String str = socialLoginUiModel.f54189i;
        String str2 = socialLoginUiModel.f54188h;
        String str3 = socialLoginUiModel.g;
        String str4 = socialLoginUiModel.f54187f;
        String str5 = socialLoginUiModel.f54186e;
        String str6 = socialLoginUiModel.d;
        String str7 = socialLoginUiModel.f54185c;
        String str8 = socialLoginUiModel.f54184b;
        String str9 = socialLoginUiModel.f54183a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        Lazy[] lazyArr = SocialLoginUiModel.m;
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str9, "")) {
            compositeEncoderB.y(serialDescriptor, 0, str9);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str8, "")) {
            compositeEncoderB.y(serialDescriptor, 1, str8);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str7, "")) {
            compositeEncoderB.y(serialDescriptor, 2, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str6, "")) {
            compositeEncoderB.y(serialDescriptor, 3, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str5, "")) {
            compositeEncoderB.y(serialDescriptor, 4, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str4, "")) {
            compositeEncoderB.y(serialDescriptor, 5, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str3, "")) {
            compositeEncoderB.y(serialDescriptor, 6, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str2, "")) {
            compositeEncoderB.y(serialDescriptor, 7, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 8, StringSerializer.f75684a, str);
        }
        if (compositeEncoderB.o(serialDescriptor) || trackingAuthOrigin != null) {
            compositeEncoderB.h(serialDescriptor, 9, (SerializationStrategy) lazyArr[9].getF71699b(), trackingAuthOrigin);
        }
        if (compositeEncoderB.o(serialDescriptor) || trackingAuthEntryPoint != null) {
            compositeEncoderB.h(serialDescriptor, 10, (SerializationStrategy) lazyArr[10].getF71699b(), trackingAuthEntryPoint);
        }
        if (compositeEncoderB.o(serialDescriptor) || socialAuthMode != null) {
            compositeEncoderB.h(serialDescriptor, 11, (SerializationStrategy) lazyArr[11].getF71699b(), socialAuthMode);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        Lazy[] lazyArr = SocialLoginUiModel.m;
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, stringSerializer, BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d((KSerializer) lazyArr[9].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[10].getF71699b()), BuiltinSerializersKt.d((KSerializer) lazyArr[11].getF71699b())};
    }
}
