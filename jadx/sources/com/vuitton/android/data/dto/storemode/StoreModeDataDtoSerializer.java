package com.vuitton.android.data.dto.storemode;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeDataDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeDataDtoSerializer extends JsonContentPolymorphicSerializer<StoreModeDataDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final StoreModeDataDtoSerializer f46859c = new StoreModeDataDtoSerializer(Reflection.f71922a.b(StoreModeDataDto.class));

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonObject jsonObjectC = JsonElementKt.c(jsonElement);
        return (jsonObjectC.containsKey("title") && jsonObjectC.containsKey("description") && jsonObjectC.containsKey("image") && jsonObjectC.containsKey("link")) ? StoreModeDataDto.StoreModeSimpleDto.INSTANCE.serializer() : StoreModeDataDto.UnknownStoreModeDataDto.INSTANCE.serializer();
    }
}
