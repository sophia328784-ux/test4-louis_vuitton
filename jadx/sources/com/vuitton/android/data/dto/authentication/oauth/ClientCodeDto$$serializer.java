package com.vuitton.android.data.dto.authentication.oauth;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.platform.serialization.UUIDSerializer;
import defpackage.b21;
import java.util.UUID;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/oauth/ClientCodeDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ClientCodeDto$$serializer implements GeneratedSerializer<ClientCodeDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ClientCodeDto$$serializer f44567a;
    private static final SerialDescriptor descriptor;

    static {
        ClientCodeDto$$serializer clientCodeDto$$serializer = new ClientCodeDto$$serializer();
        f44567a = clientCodeDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.oauth.ClientCodeDto", clientCodeDto$$serializer, 4);
        pluginGeneratedSerialDescriptor.k("code_verifier", false);
        pluginGeneratedSerialDescriptor.k("state", false);
        pluginGeneratedSerialDescriptor.k(m.v, false);
        pluginGeneratedSerialDescriptor.k("guest_slas_token", true);
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
        UUID uuid = null;
        String strL2 = null;
        String str = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            if (iN == -1) {
                z = false;
            } else if (iN == 0) {
                strL = compositeDecoderB.l(serialDescriptor, 0);
                i2 |= 1;
            } else if (iN == 1) {
                uuid = (UUID) compositeDecoderB.w(serialDescriptor, 1, UUIDSerializer.f43525a, uuid);
                i2 |= 2;
            } else if (iN == 2) {
                strL2 = compositeDecoderB.l(serialDescriptor, 2);
                i2 |= 4;
            } else {
                if (iN != 3) {
                    b21.l(iN);
                    return null;
                }
                str = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str);
                i2 |= 8;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ClientCodeDto(i2, strL, uuid, strL2, str, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ClientCodeDto clientCodeDto = (ClientCodeDto) obj;
        clientCodeDto.getClass();
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        String str = clientCodeDto.f44564a;
        String str2 = clientCodeDto.d;
        compositeEncoderB.y(serialDescriptor, 0, str);
        compositeEncoderB.A(serialDescriptor, 1, UUIDSerializer.f43525a, clientCodeDto.f44565b);
        compositeEncoderB.y(serialDescriptor, 2, clientCodeDto.f44566c);
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str2);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{stringSerializer, UUIDSerializer.f43525a, stringSerializer, BuiltinSerializersKt.d(stringSerializer)};
    }
}
