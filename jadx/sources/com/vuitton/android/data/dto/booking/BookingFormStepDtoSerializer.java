package com.vuitton.android.data.dto.booking;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.md;
import defpackage.v40;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonDecoder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.internal.StringOpsKt;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/booking/BookingFormStepDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingFormStepDtoSerializer implements KSerializer<BookingFormStepDto> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BookingFormStepDtoSerializer f44719a = new BookingFormStepDtoSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialDescriptorImpl f44720b = SerialDescriptorsKt.d("BookingFormStepDto", new SerialDescriptor[0]);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f44721a;

        static {
            int[] iArr = new int[BookingStepType.values().length];
            try {
                iArr[BookingStepType.SINGLE_TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BookingStepType.MULTIPLE_TEXT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BookingStepType.DATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BookingStepType.SLOT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BookingStepType.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f44721a = iArr;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f44720b;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002a  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e2  */
    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        String d;
        Object next;
        DeserializationStrategy deserializationStrategySerializer;
        String d2;
        String d3;
        String d4;
        String d5;
        BookingDisclaimerDto bookingDisclaimerDto;
        Boolean boolB;
        Boolean boolB2;
        decoder.getClass();
        List list = null;
        if (!(decoder instanceof JsonDecoder)) {
            md.n("Failed requirement.");
            return null;
        }
        JsonDecoder jsonDecoder = (JsonDecoder) decoder;
        JsonObject jsonObjectC = JsonElementKt.c(jsonDecoder.h());
        JsonElement jsonElement = (JsonElement) jsonObjectC.get("type");
        if (jsonElement != null) {
            JsonPrimitive jsonPrimitiveD = JsonElementKt.d(jsonElement);
            if (jsonPrimitiveD instanceof JsonNull) {
                d = null;
            } else {
                d = jsonPrimitiveD.getD();
            }
        } else {
            d = null;
        }
        String str = d == null ? "" : d;
        JsonElement jsonObject = (JsonElement) jsonObjectC.get(DbParams.KEY_DATA);
        if (jsonObject == null) {
            jsonObject = new JsonObject(MapsKt.c());
        }
        BookingStepType.INSTANCE.getClass();
        Iterator<E> it = BookingStepType.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((BookingStepType) next).getTypeName(), str));
        BookingStepType bookingStepType = (BookingStepType) next;
        if (bookingStepType == null) {
            bookingStepType = BookingStepType.UNKNOWN;
        }
        int i2 = WhenMappings.f44721a[bookingStepType.ordinal()];
        if (i2 == 1) {
            deserializationStrategySerializer = BookingFormStepDataDto.SingleTextDataDto.INSTANCE.serializer();
        } else if (i2 == 2) {
            deserializationStrategySerializer = BookingFormStepDataDto.MultipleTextDataDto.INSTANCE.serializer();
        } else if (i2 == 3) {
            deserializationStrategySerializer = BookingFormStepDataDto.DateDataDto.INSTANCE.serializer();
        } else if (i2 == 4) {
            deserializationStrategySerializer = BookingFormStepDataDto.SlotDataDto.INSTANCE.serializer();
        } else {
            if (i2 != 5) {
                v40.g();
                return null;
            }
            deserializationStrategySerializer = BookingFormStepDataDto.UnknownDataDto.INSTANCE.serializer();
        }
        JsonElement jsonElement2 = (JsonElement) jsonObjectC.get(b.a.f24015b);
        if (jsonElement2 != null) {
            JsonPrimitive jsonPrimitiveD2 = JsonElementKt.d(jsonElement2);
            if (jsonPrimitiveD2 instanceof JsonNull) {
                d2 = null;
            } else {
                d2 = jsonPrimitiveD2.getD();
            }
        } else {
            d2 = null;
        }
        if (d2 == null) {
            d2 = "";
        }
        JsonElement jsonElement3 = (JsonElement) jsonObjectC.get("title");
        if (jsonElement3 != null) {
            JsonPrimitive jsonPrimitiveD3 = JsonElementKt.d(jsonElement3);
            if (jsonPrimitiveD3 instanceof JsonNull) {
                d3 = null;
            } else {
                d3 = jsonPrimitiveD3.getD();
            }
        } else {
            d3 = null;
        }
        if (d3 == null) {
            d3 = "";
        }
        JsonElement jsonElement4 = (JsonElement) jsonObjectC.get("subtitle");
        if (jsonElement4 != null) {
            JsonPrimitive jsonPrimitiveD4 = JsonElementKt.d(jsonElement4);
            d4 = jsonPrimitiveD4 instanceof JsonNull ? null : jsonPrimitiveD4.getD();
        } else {
            d4 = null;
        }
        JsonElement jsonElement5 = (JsonElement) jsonObjectC.get("description");
        if (jsonElement5 != null) {
            JsonPrimitive jsonPrimitiveD5 = JsonElementKt.d(jsonElement5);
            d5 = jsonPrimitiveD5 instanceof JsonNull ? null : jsonPrimitiveD5.getD();
        } else {
            d5 = null;
        }
        JsonElement jsonElement6 = (JsonElement) jsonObjectC.get("disclaimer");
        if (jsonElement6 != null) {
            Json f75815a = jsonDecoder.getF75768c();
            f75815a.getClass();
            bookingDisclaimerDto = (BookingDisclaimerDto) TreeJsonDecoderKt.a(f75815a, jsonElement6, BuiltinSerializersKt.d(BookingDisclaimerDto.INSTANCE.serializer()));
        } else {
            bookingDisclaimerDto = null;
        }
        JsonElement jsonElement7 = (JsonElement) jsonObjectC.get("mandatory");
        boolean zBooleanValue = false;
        boolean zBooleanValue2 = (jsonElement7 == null || (boolB2 = StringOpsKt.b(JsonElementKt.d(jsonElement7).getD())) == null) ? false : boolB2.booleanValue();
        JsonElement jsonElement8 = (JsonElement) jsonObjectC.get("updateFormAfterEditing");
        if (jsonElement8 != null && (boolB = StringOpsKt.b(JsonElementKt.d(jsonElement8).getD())) != null) {
            zBooleanValue = boolB.booleanValue();
        }
        boolean z = zBooleanValue;
        JsonElement jsonElement9 = (JsonElement) jsonObjectC.get("disruptedStepsAfterEditing");
        if (jsonElement9 != null) {
            Json f75815a2 = jsonDecoder.getF75768c();
            f75815a2.getClass();
            list = (List) TreeJsonDecoderKt.a(f75815a2, jsonElement9, new ArrayListSerializer(StringSerializer.f75684a));
        }
        if (list == null) {
            list = EmptyList.f71768b;
        }
        Json f75815a3 = jsonDecoder.getF75768c();
        DeserializationStrategy deserializationStrategy = deserializationStrategySerializer;
        f75815a3.getClass();
        deserializationStrategy.getClass();
        return new BookingFormStepDto(d2, str, d3, d4, d5, bookingDisclaimerDto, zBooleanValue2, z, list, (BookingFormStepDataDto) TreeJsonDecoderKt.a(f75815a3, jsonObject, deserializationStrategy));
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        ((BookingFormStepDto) obj).getClass();
        throw new NotImplementedError("Serialization not implemented");
    }
}
