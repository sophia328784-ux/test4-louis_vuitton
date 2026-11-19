package com.vuitton.foundation.model.domain.model.product;

import com.batch.android.s.b;
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/vuitton/foundation/model/domain/model/product/ProductId.$serializer", "Lkotlinx/serialization/internal/GeneratedSerializer;", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "descriptor", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "a", "()Lkotlinx/serialization/descriptors/SerialDescriptor;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Deprecated
public final /* synthetic */ class ProductId$$serializer implements GeneratedSerializer<ProductId> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductId$$serializer f67906a;
    private static final SerialDescriptor descriptor;

    static {
        ProductId$$serializer productId$$serializer = new ProductId$$serializer();
        f67906a = productId$$serializer;
        InlineClassDescriptor inlineClassDescriptor = new InlineClassDescriptor("com.vuitton.foundation.model.domain.model.product.ProductId", productId$$serializer);
        inlineClassDescriptor.k(b.a.f24015b, false);
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
        ProductId.Companion companion = ProductId.INSTANCE;
        strX.getClass();
        return new ProductId(strX);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        String str = ((ProductId) obj).f67905a;
        str.getClass();
        encoder.m(descriptor).E(str);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public final KSerializer[] e() {
        return new KSerializer[]{StringSerializer.f75684a};
    }
}
