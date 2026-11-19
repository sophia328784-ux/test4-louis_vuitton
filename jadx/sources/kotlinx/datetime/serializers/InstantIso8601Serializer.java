package kotlinx.datetime.serializers;

import kotlin.Metadata;
import kotlinx.datetime.DateTimeFormatException;
import kotlinx.datetime.Instant;
import kotlinx.datetime.format.DateTimeComponents;
import kotlinx.datetime.format.DateTimeComponentsFormat;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/InstantIso8601Serializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/Instant;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstantIso8601Serializer implements KSerializer<Instant> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final InstantIso8601Serializer f75500a = new InstantIso8601Serializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75501b = SerialDescriptorsKt.a("kotlinx.datetime.Instant", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return f75501b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        Instant.Companion companion = Instant.INSTANCE;
        String strX = decoder.x();
        DateTimeComponentsFormat dateTimeComponentsFormat = DateTimeComponents.Formats.f75264a;
        companion.getClass();
        strX.getClass();
        dateTimeComponentsFormat.getClass();
        try {
            return ((DateTimeComponents) dateTimeComponentsFormat.parse(strX)).a();
        } catch (IllegalArgumentException e2) {
            throw new DateTimeFormatException("Failed to parse an instant from '" + ((Object) strX) + '\'', e2);
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        Instant instant = (Instant) obj;
        instant.getClass();
        encoder.E(instant.toString());
    }
}
