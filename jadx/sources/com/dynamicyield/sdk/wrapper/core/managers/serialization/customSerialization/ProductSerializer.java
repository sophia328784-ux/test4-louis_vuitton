package com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization;

import com.dynamicyield.sdk.wrapper.core.models.choose.response.DefaultRecsProductData;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsProductData;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ProductSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/RecsProductData;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProductSerializer extends JsonContentPolymorphicSerializer<RecsProductData> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ProductSerializer f25977c = new ProductSerializer(Reflection.f71922a.b(RecsProductData.class));
    public static final DeserializationStrategy d = DefaultRecsProductData.INSTANCE.serializer();

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        return d;
    }
}
