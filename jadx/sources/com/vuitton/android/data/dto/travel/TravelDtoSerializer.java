package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/travel/TravelDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelDtoSerializer extends JsonContentPolymorphicSerializer<TravelDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TravelDtoSerializer f46928c = new TravelDtoSerializer(Reflection.f71922a.b(TravelDto.class));

    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonElement jsonElement2 = (JsonElement) JsonElementKt.c(jsonElement).get("type");
        String strF = jsonElement2 != null ? JsonElementKt.d(jsonElement2).f() : null;
        if (strF != null) {
            int iHashCode = strF.hashCode();
            if (iHashCode != -1271823248) {
                if (iHashCode != 99467700) {
                    if (iHashCode == 110621192 && strF.equals("train")) {
                        return TrainTravelDto.INSTANCE.serializer();
                    }
                } else if (strF.equals("hotel")) {
                    return HotelTravelDto.INSTANCE.serializer();
                }
            } else if (strF.equals("flight")) {
                return FlightTravelDto.INSTANCE.serializer();
            }
        }
        return UnknownTravelDto.INSTANCE.serializer();
    }
}
