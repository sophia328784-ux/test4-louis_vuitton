package com.vuitton.foundation.model.domain.model.careservices.bff;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.InlineClassDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class CareServiceId$$serializer implements GeneratedSerializer<CareServiceId> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CareServiceId$$serializer f66880a;
    private static final SerialDescriptor descriptor;

    static {
        CareServiceId$$serializer careServiceId$$serializer = new CareServiceId$$serializer();
        f66880a = careServiceId$$serializer;
        InlineClassDescriptor inlineClassDescriptor = new InlineClassDescriptor("com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId", careServiceId$$serializer);
        inlineClassDescriptor.k("value", false);
        descriptor = inlineClassDescriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return descriptor;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        String strX = decoder.o(descriptor).x();
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        strX.getClass();
        return new CareServiceId(strX);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        String str = ((CareServiceId) obj).f66879a;
        str.getClass();
        encoder.m(descriptor).E(str);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a};
    }
}
