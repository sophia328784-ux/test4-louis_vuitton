package kotlinx.datetime.serializers;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.MissingFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/TimeBasedDateTimeUnitSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$TimeBased;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TimeBasedDateTimeUnitSerializer implements KSerializer<DateTimeUnit.TimeBased> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeBasedDateTimeUnitSerializer f75510a = new TimeBasedDateTimeUnitSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75511b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, TimeBasedDateTimeUnitSerializer$descriptor$2.f75512c);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return (SerialDescriptor) f75511b.getF71699b();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor f19838b = getF19838b();
        CompositeDecoder compositeDecoderB = decoder.b(f19838b);
        long jF = 0;
        boolean z = false;
        while (true) {
            TimeBasedDateTimeUnitSerializer timeBasedDateTimeUnitSerializer = f75510a;
            int iN = compositeDecoderB.n(timeBasedDateTimeUnitSerializer.getF19838b());
            if (iN == -1) {
                compositeDecoderB.c(f19838b);
                if (z) {
                    return new DateTimeUnit.TimeBased(jF);
                }
                throw new MissingFieldException("nanoseconds", getF19838b().getF75659a());
            }
            if (iN != 0) {
                DateTimeUnitSerializersKt.a(iN);
                throw null;
            }
            jF = compositeDecoderB.f(timeBasedDateTimeUnitSerializer.getF19838b(), 0);
            z = true;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        DateTimeUnit.TimeBased timeBased = (DateTimeUnit.TimeBased) obj;
        timeBased.getClass();
        SerialDescriptor f19838b = getF19838b();
        CompositeEncoder compositeEncoderB = encoder.b(f19838b);
        compositeEncoderB.D(f75510a.getF19838b(), 0, timeBased.f75235b);
        compositeEncoderB.c(f19838b);
    }
}
