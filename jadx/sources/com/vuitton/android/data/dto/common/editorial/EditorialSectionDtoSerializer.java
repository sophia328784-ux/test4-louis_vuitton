package com.vuitton.android.data.dto.common.editorial;

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
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EditorialSectionDtoSerializer implements KSerializer<EditorialSectionDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final EditorialSectionDtoSerializer f45347a = new EditorialSectionDtoSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f45348b = SerialDescriptorsKt.d("FeedSectionDto", new SerialDescriptor[0]);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f45348b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:75:0x0141  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        String strF;
        DeserializationStrategy deserializationStrategySerializer;
        String strF2;
        decoder.getClass();
        if (!(decoder instanceof JsonDecoder)) {
            md.n("Failed requirement.");
            return null;
        }
        JsonDecoder jsonDecoder = (JsonDecoder) decoder;
        JsonObject jsonObjectC = JsonElementKt.c(jsonDecoder.h());
        JsonElement jsonElement = (JsonElement) jsonObjectC.get(b.a.f24015b);
        String str = "";
        if (jsonElement == null || (strF = JsonElementKt.d(jsonElement).getD()) == null) {
            strF = "";
        }
        JsonElement jsonElement2 = (JsonElement) jsonObjectC.get("type");
        if (jsonElement2 != null && (strF2 = JsonElementKt.d(jsonElement2).getD()) != null) {
            str = strF2;
        }
        JsonElement jsonObject = (JsonElement) jsonObjectC.get(DbParams.KEY_DATA);
        if (jsonObject == null) {
            jsonObject = new JsonObject(MapsKt.c());
        }
        switch (str) {
            case "carouselLargeSingle":
                deserializationStrategySerializer = EditorialModuleDto.CarouselLargeSingleSectionDto.INSTANCE.serializer();
                break;
            case "carouselMedium":
                deserializationStrategySerializer = EditorialModuleDto.CarouselMediumSectionDto.INSTANCE.serializer();
                break;
            case "slideshow":
                deserializationStrategySerializer = EditorialModuleDto.SlideShowSectionDto.INSTANCE.serializer();
                break;
            case "card":
                deserializationStrategySerializer = EditorialModuleDto.CardSectionDto.INSTANCE.serializer();
                break;
            case "live":
                deserializationStrategySerializer = EditorialModuleDto.LiveSectionDto.INSTANCE.serializer();
                break;
            case "event":
                deserializationStrategySerializer = EditorialModuleDto.EventSectionDto.INSTANCE.serializer();
                break;
            case "productCarousel":
                deserializationStrategySerializer = EditorialModuleDto.ProductCarouselSectionDto.INSTANCE.serializer();
                break;
            case "authentication":
                deserializationStrategySerializer = EditorialModuleDto.AuthenticationSectionDto.INSTANCE.serializer();
                break;
            case "notification":
                deserializationStrategySerializer = EditorialModuleDto.NotificationSectionDto.INSTANCE.serializer();
                break;
            case "gridSmall":
                deserializationStrategySerializer = EditorialModuleDto.GridSmallSectionDto.INSTANCE.serializer();
                break;
            case "highlightCard":
                deserializationStrategySerializer = EditorialModuleDto.HighlightCardSectionDto.INSTANCE.serializer();
                break;
            case "carouselLargeMultiple":
                deserializationStrategySerializer = EditorialModuleDto.CarouselLargeMultipleSectionDto.INSTANCE.serializer();
                break;
            case "pushCard":
                deserializationStrategySerializer = EditorialModuleDto.PushCardSectionDto.INSTANCE.serializer();
                break;
            case "carouselSmall":
                deserializationStrategySerializer = EditorialModuleDto.CarouselSmallSectionDto.INSTANCE.serializer();
                break;
            default:
                deserializationStrategySerializer = EditorialModuleDto.UnknownSectionDto.INSTANCE.serializer();
                break;
        }
        Json jsonA = jsonDecoder.getF75768c();
        DeserializationStrategy deserializationStrategy = deserializationStrategySerializer;
        jsonA.getClass();
        deserializationStrategy.getClass();
        return new EditorialSectionDto(strF, str, (EditorialModuleDto) TreeJsonDecoderKt.a(jsonA, jsonObject, deserializationStrategy));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((EditorialSectionDto) obj).getClass();
        throw new NotImplementedError("Serialization not implemented");
    }
}
