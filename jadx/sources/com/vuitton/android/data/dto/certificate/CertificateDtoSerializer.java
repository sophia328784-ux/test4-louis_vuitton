package com.vuitton.android.data.dto.certificate;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/certificate/CertificateDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/certificate/CertificateDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CertificateDtoSerializer extends JsonContentPolymorphicSerializer<CertificateDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final CertificateDtoSerializer f45184c = new CertificateDtoSerializer(Reflection.f71922a.b(CertificateDto.class));

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonElement jsonElement2 = (JsonElement) JsonElementKt.c(jsonElement).get("type");
        String strF = jsonElement2 != null ? JsonElementKt.d(jsonElement2).f() : null;
        if (Intrinsics.c(strF, CertificateType.DIAMOND.getValue())) {
            return CertificateDiamondDto.INSTANCE.serializer();
        }
        if (Intrinsics.c(strF, CertificateType.RUBY.getValue())) {
            return CertificateRubyDto.INSTANCE.serializer();
        }
        if (Intrinsics.c(strF, CertificateType.CAPUCINE.getValue())) {
            return CertificateCapucineDto.INSTANCE.serializer();
        }
        return Intrinsics.c(strF, CertificateType.VISIONNAIRE.getValue()) ? CertificateVisionnaireDto.INSTANCE.serializer() : UnknownCertificateDto.INSTANCE.serializer();
    }
}
