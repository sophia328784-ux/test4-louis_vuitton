package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.az;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDataDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialSectionDataDtoSerializer extends JsonContentPolymorphicSerializer<TutorialSectionDataDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TutorialSectionDataDtoSerializer f46583c = new TutorialSectionDataDtoSerializer(Reflection.f71922a.b(TutorialSectionDataDto.class));

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        if (JsonElementKt.c(jsonElement).containsKey("assets")) {
            return TutorialSectionDataDto.AssetListSectionDto.INSTANCE.serializer();
        }
        if (JsonElementKt.c(jsonElement).containsKey("steps")) {
            return TutorialSectionDataDto.StepsSectionDto.INSTANCE.serializer();
        }
        az.m(jsonElement, "Unknown TutorialSectionDataDto: ");
        return null;
    }
}
