package kotlinx.datetime.serializers;

import java.time.format.DateTimeFormatter;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.UtcOffsetJvmKt;
import kotlinx.datetime.format.UtcOffsetFormat;
import kotlinx.datetime.format.UtcOffsetFormatKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.PrimitiveKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/UtcOffsetSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/UtcOffset;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UtcOffsetSerializer implements KSerializer<UtcOffset> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final UtcOffsetSerializer f75514a = new UtcOffsetSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PrimitiveSerialDescriptor f75515b = SerialDescriptorsKt.a("kotlinx.datetime.UtcOffset", PrimitiveKind.STRING.f75546a);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public final SerialDescriptor a() {
        return f75515b;
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        UtcOffset.Companion companion = UtcOffset.INSTANCE;
        String strX = decoder.x();
        Lazy lazy = UtcOffsetFormatKt.f75356a;
        UtcOffsetFormat utcOffsetFormat = (UtcOffsetFormat) lazy.getF71699b();
        companion.getClass();
        strX.getClass();
        utcOffsetFormat.getClass();
        if (utcOffsetFormat == ((UtcOffsetFormat) lazy.getF71699b())) {
            DateTimeFormatter dateTimeFormatter = (DateTimeFormatter) UtcOffsetJvmKt.f75247a.getF71699b();
            dateTimeFormatter.getClass();
            return UtcOffsetJvmKt.a(strX, dateTimeFormatter);
        }
        if (utcOffsetFormat == ((UtcOffsetFormat) UtcOffsetFormatKt.f75357b.getF71699b())) {
            DateTimeFormatter dateTimeFormatter2 = (DateTimeFormatter) UtcOffsetJvmKt.f75248b.getF71699b();
            dateTimeFormatter2.getClass();
            return UtcOffsetJvmKt.a(strX, dateTimeFormatter2);
        }
        if (utcOffsetFormat != ((UtcOffsetFormat) UtcOffsetFormatKt.f75358c.getF71699b())) {
            return (UtcOffset) utcOffsetFormat.parse(strX);
        }
        DateTimeFormatter dateTimeFormatter3 = (DateTimeFormatter) UtcOffsetJvmKt.f75249c.getF71699b();
        dateTimeFormatter3.getClass();
        return UtcOffsetJvmKt.a(strX, dateTimeFormatter3);
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        UtcOffset utcOffset = (UtcOffset) obj;
        utcOffset.getClass();
        encoder.E(utcOffset.toString());
    }
}
