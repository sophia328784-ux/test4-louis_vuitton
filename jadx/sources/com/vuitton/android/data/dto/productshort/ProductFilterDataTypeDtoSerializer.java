package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductFilterDataTypeDtoSerializer extends JsonContentPolymorphicSerializer<ProductFilterDataTypeDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ProductFilterDataTypeDtoSerializer f46604c = new ProductFilterDataTypeDtoSerializer(Reflection.f71922a.b(ProductFilterDataTypeDto.class));

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonObject jsonObjectC = JsonElementKt.c(jsonElement);
        if (jsonObjectC.containsKey("totalRange") && jsonObjectC.containsKey("stepValue") && jsonObjectC.containsKey("unit")) {
            return ProductFilterDataTypeDto.Range.INSTANCE.serializer();
        }
        return (jsonObjectC.containsKey("values") && jsonObjectC.containsKey("multiSelect") && jsonObjectC.containsKey("clearAllFiltersId")) ? ProductFilterDataTypeDto.Simple.INSTANCE.serializer() : ProductFilterDataTypeDto.UnknownProductFilterDataTypeDto.INSTANCE.serializer();
    }
}
