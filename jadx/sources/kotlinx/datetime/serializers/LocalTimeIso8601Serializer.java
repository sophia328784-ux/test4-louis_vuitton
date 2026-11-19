package kotlinx.datetime.serializers;

import java.time.format.DateTimeParseException;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.format.LocalTimeFormat;
import kotlinx.datetime.format.LocalTimeFormatKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/LocalTimeIso8601Serializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/LocalTime;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalTimeIso8601Serializer implements KSerializer<LocalTime> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LocalTimeIso8601Serializer f75504a = new LocalTimeIso8601Serializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75505b = SerialDescriptorsKt.a("kotlinx.datetime.LocalTime", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75505b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        LocalTime.Companion companion = LocalTime.INSTANCE;
        String strX = decoder.x();
        Lazy lazy = LocalTimeFormatKt.f75320a;
        LocalTimeFormat localTimeFormat = (LocalTimeFormat) lazy.getF71699b();
        companion.getClass();
        strX.getClass();
        localTimeFormat.getClass();
        if (localTimeFormat != ((LocalTimeFormat) lazy.getF71699b())) {
            return (LocalTime) localTimeFormat.parse(strX);
        }
        try {
            return new LocalTime(java.time.LocalTime.parse(strX));
        } catch (DateTimeParseException e2) {
            throw new DateTimeFormatException(e2);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        LocalTime localTime = (LocalTime) obj;
        localTime.getClass();
        encoder.E(localTime.toString());
    }
}
