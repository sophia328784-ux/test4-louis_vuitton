package com.vuitton.android.data.dto.plp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.MapsKt;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductListSectionDtoSerializer implements KSerializer<ProductListSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProductListSectionDtoSerializer f46386a = new ProductListSectionDtoSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f46387b = SerialDescriptorsKt.d("ProductListSectionDto", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f46387b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        DeserializationStrategy deserializationStrategySerializer;
        decoder.getClass();
        if (!(decoder instanceof JsonDecoder)) {
            md.n("Failed requirement.");
            return null;
        }
        JsonDecoder jsonDecoder = (JsonDecoder) decoder;
        JsonObject jsonObjectC = JsonElementKt.c(jsonDecoder.h());
        JsonElement jsonElement = (JsonElement) jsonObjectC.get("type");
        String d = jsonElement != null ? JsonElementKt.d(jsonElement).getD() : null;
        if (d == null) {
            d = "";
        }
        JsonElement jsonObject = (JsonElement) jsonObjectC.get(DbParams.KEY_DATA);
        if (jsonObject == null) {
            jsonObject = new JsonObject(MapsKt.c());
        }
        switch (d) {
            case "halfEdito":
                deserializationStrategySerializer = ProductListSectionDataDto.HalfEditoDto.INSTANCE.serializer();
                break;
            case "products":
                deserializationStrategySerializer = ProductListSectionDataDto.ProductsDto.INSTANCE.serializer();
                break;
            case "productFullscreen":
                deserializationStrategySerializer = ProductListSectionDataDto.ProductFullscreenDto.INSTANCE.serializer();
                break;
            case "productHighlight":
                deserializationStrategySerializer = ProductListSectionDataDto.ProductHighlightDto.INSTANCE.serializer();
                break;
            case "productSlider":
                deserializationStrategySerializer = ProductListSectionDataDto.ProductSliderDto.INSTANCE.serializer();
                break;
            case "curatedText":
                deserializationStrategySerializer = ProductListSectionDataDto.CuratedTextDto.INSTANCE.serializer();
                break;
            default:
                deserializationStrategySerializer = ProductListSectionDataDto.UnknownSectionDataDto.INSTANCE.serializer();
                break;
        }
        JsonElement jsonElement2 = (JsonElement) jsonObjectC.get(b.a.f24015b);
        String d2 = jsonElement2 != null ? JsonElementKt.d(jsonElement2).getD() : null;
        String str = d2 != null ? d2 : "";
        Json f75815a = jsonDecoder.getF75815a();
        DeserializationStrategy deserializationStrategy = deserializationStrategySerializer;
        f75815a.getClass();
        deserializationStrategy.getClass();
        return new ProductListSectionDto(str, d, (ProductListSectionDataDto) TreeJsonDecoderKt.a(f75815a, jsonObject, deserializationStrategy));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((ProductListSectionDto) obj).getClass();
        throw new NotImplementedError("Serialization not implemented");
    }
}
