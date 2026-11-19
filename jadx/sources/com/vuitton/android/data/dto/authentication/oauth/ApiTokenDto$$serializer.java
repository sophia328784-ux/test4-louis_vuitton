package com.vuitton.android.data.dto.authentication.oauth;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.b21;
import defpackage.fc;
import java.util.Arrays;
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
import kotlinx.serialization.json.JsonNames;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/android/data/dto/authentication/oauth/ApiTokenDto.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ApiTokenDto$$serializer implements GeneratedSerializer<ApiTokenDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ApiTokenDto$$serializer f44557a;
    private static final SerialDescriptor descriptor;

    static {
        ApiTokenDto$$serializer apiTokenDto$$serializer = new ApiTokenDto$$serializer();
        f44557a = apiTokenDto$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto", apiTokenDto$$serializer, 7);
        pluginGeneratedSerialDescriptor.k(LVConstants.SFID_ACCESS_TOKEN, true);
        pluginGeneratedSerialDescriptor.k("sfid_refresh_token", true);
        pluginGeneratedSerialDescriptor.k(LVConstants.SLAS_ACCESS_TOKEN, true);
        pluginGeneratedSerialDescriptor.k("usid", true);
        pluginGeneratedSerialDescriptor.k("sfid_user_identifier", true);
        final String[] strArr = {"sfid_user_identifer"};
        pluginGeneratedSerialDescriptor.l(new JsonNames(strArr) { // from class: com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto$$serializer$annotationImpl$kotlinx_serialization_json_JsonNames$0

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ String[] f44558f;

            {
                strArr.getClass();
                this.f44558f = strArr;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonNames.class;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonNames) && Arrays.equals(names(), ((JsonNames) obj).names());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return Arrays.hashCode(this.f44558f) ^ 397397176;
            }

            @Override // kotlinx.serialization.json.JsonNames
            public final /* synthetic */ String[] names() {
                return this.f44558f;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return fc.h("@kotlinx.serialization.json.JsonNames(names=", Arrays.toString(this.f44558f), ")");
            }
        });
        pluginGeneratedSerialDescriptor.k("sot_token", true);
        pluginGeneratedSerialDescriptor.k("sfid_access_token_expiration", true);
        final String[] strArr2 = {"sfid_token_expiry_date"};
        pluginGeneratedSerialDescriptor.l(new JsonNames(strArr2) { // from class: com.vuitton.android.data.dto.authentication.oauth.ApiTokenDto$$serializer$annotationImpl$kotlinx_serialization_json_JsonNames$0

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ String[] f44558f;

            {
                strArr2.getClass();
                this.f44558f = strArr2;
            }

            @Override // java.lang.annotation.Annotation
            public final /* synthetic */ Class annotationType() {
                return JsonNames.class;
            }

            @Override // java.lang.annotation.Annotation
            public final boolean equals(Object obj) {
                return (obj instanceof JsonNames) && Arrays.equals(names(), ((JsonNames) obj).names());
            }

            @Override // java.lang.annotation.Annotation
            public final int hashCode() {
                return Arrays.hashCode(this.f44558f) ^ 397397176;
            }

            @Override // kotlinx.serialization.json.JsonNames
            public final /* synthetic */ String[] names() {
                return this.f44558f;
            }

            @Override // java.lang.annotation.Annotation
            public final String toString() {
                return fc.h("@kotlinx.serialization.json.JsonNames(names=", Arrays.toString(this.f44558f), ")");
            }
        });
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
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (z) {
            int iN = compositeDecoderB.n(serialDescriptor);
            switch (iN) {
                case -1:
                    z = false;
                    break;
                case 0:
                    str = (String) compositeDecoderB.m(serialDescriptor, 0, StringSerializer.f75684a, str);
                    i2 |= 1;
                    break;
                case 1:
                    str2 = (String) compositeDecoderB.m(serialDescriptor, 1, StringSerializer.f75684a, str2);
                    i2 |= 2;
                    break;
                case 2:
                    str3 = (String) compositeDecoderB.m(serialDescriptor, 2, StringSerializer.f75684a, str3);
                    i2 |= 4;
                    break;
                case 3:
                    str4 = (String) compositeDecoderB.m(serialDescriptor, 3, StringSerializer.f75684a, str4);
                    i2 |= 8;
                    break;
                case 4:
                    str5 = (String) compositeDecoderB.m(serialDescriptor, 4, StringSerializer.f75684a, str5);
                    i2 |= 16;
                    break;
                case 5:
                    str6 = (String) compositeDecoderB.m(serialDescriptor, 5, StringSerializer.f75684a, str6);
                    i2 |= 32;
                    break;
                case 6:
                    str7 = (String) compositeDecoderB.m(serialDescriptor, 6, StringSerializer.f75684a, str7);
                    i2 |= 64;
                    break;
                default:
                    b21.l(iN);
                    return null;
            }
        }
        compositeDecoderB.c(serialDescriptor);
        return new ApiTokenDto(i2, str, str2, str3, str4, str5, str6, str7, (SerializationConstructorMarker) null);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ApiTokenDto apiTokenDto = (ApiTokenDto) obj;
        apiTokenDto.getClass();
        String str = apiTokenDto.g;
        String str2 = apiTokenDto.f44556f;
        String str3 = apiTokenDto.f44555e;
        String str4 = apiTokenDto.d;
        String str5 = apiTokenDto.f44554c;
        String str6 = apiTokenDto.f44553b;
        String str7 = apiTokenDto.f44552a;
        SerialDescriptor serialDescriptor = descriptor;
        CompositeEncoder compositeEncoderB = encoder.b(serialDescriptor);
        if (compositeEncoderB.o(serialDescriptor) || str7 != null) {
            compositeEncoderB.h(serialDescriptor, 0, StringSerializer.f75684a, str7);
        }
        if (compositeEncoderB.o(serialDescriptor) || str6 != null) {
            compositeEncoderB.h(serialDescriptor, 1, StringSerializer.f75684a, str6);
        }
        if (compositeEncoderB.o(serialDescriptor) || str5 != null) {
            compositeEncoderB.h(serialDescriptor, 2, StringSerializer.f75684a, str5);
        }
        if (compositeEncoderB.o(serialDescriptor) || str4 != null) {
            compositeEncoderB.h(serialDescriptor, 3, StringSerializer.f75684a, str4);
        }
        if (compositeEncoderB.o(serialDescriptor) || str3 != null) {
            compositeEncoderB.h(serialDescriptor, 4, StringSerializer.f75684a, str3);
        }
        if (compositeEncoderB.o(serialDescriptor) || str2 != null) {
            compositeEncoderB.h(serialDescriptor, 5, StringSerializer.f75684a, str2);
        }
        if (compositeEncoderB.o(serialDescriptor) || str != null) {
            compositeEncoderB.h(serialDescriptor, 6, StringSerializer.f75684a, str);
        }
        compositeEncoderB.c(serialDescriptor);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        StringSerializer stringSerializer = StringSerializer.f75684a;
        return new KSerializer[]{BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer), BuiltinSerializersKt.d(stringSerializer)};
    }
}
