package kotlinx.datetime.serializers;

import java.time.format.DateTimeParseException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.format.DateTimeFormat;
import kotlinx.datetime.format.LocalDateFormatKt;
import kotlinx.datetime.internal.UtilKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/LocalDateIso8601Serializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/LocalDate;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalDateIso8601Serializer implements KSerializer<LocalDate> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalDateIso8601Serializer f75502a = new LocalDateIso8601Serializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75503b = SerialDescriptorsKt.a("kotlinx.datetime.LocalDate", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75503b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        LocalDate.Companion companion = LocalDate.INSTANCE;
        String strX = decoder.x();
        DateTimeFormat dateTimeFormat = LocalDate.Formats.f75241a;
        Lazy lazy = LocalDateFormatKt.f75310a;
        DateTimeFormat dateTimeFormat2 = (DateTimeFormat) lazy.getF71699b();
        companion.getClass();
        strX.getClass();
        dateTimeFormat2.getClass();
        if (dateTimeFormat2 != ((DateTimeFormat) lazy.getF71699b())) {
            return (LocalDate) dateTimeFormat2.parse(strX);
        }
        try {
            return new LocalDate(java.time.LocalDate.parse(UtilKt.b(strX.toString())));
        } catch (DateTimeParseException e2) {
            throw new DateTimeFormatException(e2);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        LocalDate localDate = (LocalDate) obj;
        localDate.getClass();
        encoder.E(localDate.toString());
    }
}
