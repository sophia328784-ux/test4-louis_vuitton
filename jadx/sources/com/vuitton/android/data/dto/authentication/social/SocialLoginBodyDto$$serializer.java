package com.vuitton.android.data.dto.authentication.social;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class SocialLoginBodyDto$$serializer implements GeneratedSerializer<SocialLoginBodyDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SocialLoginBodyDto$$serializer f44602a;
    private static final SerialDescriptor descriptor;

    static {
        SocialLoginBodyDto$$serializer socialLoginBodyDto$$serializer = new SocialLoginBodyDto$$serializer();
        f44602a = socialLoginBodyDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.social.SocialLoginBodyDto", socialLoginBodyDto$$serializer, 3);
        pluginGeneratedSerialDescriptor.k("identityToken", false);
        pluginGeneratedSerialDescriptor.k("authorizationCode", true);
        pluginGeneratedSerialDescriptor.k("rawNonce", false);
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
        String strL2 = null;
        String strL3 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                strL2 = compositeDecoderB.l(serialDescriptor, 1);
                i2 |= 2;
            } else {
                if (iN != 2) {
                    b21.l(iN);
                    return null;
                }
                strL3 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new SocialLoginBodyDto(i2, strL, strL2, strL3, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        SocialLoginBodyDto socialLoginBodyDto = (SocialLoginBodyDto) obj;
        socialLoginBodyDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = socialLoginBodyDto.f44599a;
        String str2 = socialLoginBodyDto.f44600b;
        compositeEncoderB.y(serialDescriptor, 0, str);
        if (compositeEncoderB.o(serialDescriptor) || !Intrinsics.c(str2, " ")) {
            compositeEncoderB.y(serialDescriptor, 1, str2);
        }
        compositeEncoderB.y(serialDescriptor, 2, socialLoginBodyDto.f44601c);
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, stringSerializer, stringSerializer};
    }
}
