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
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/MonthBasedDateTimeUnitSerializer;", "Lkotlinx/serialization/KSerializer;", "Lkotlinx/datetime/DateTimeUnit$MonthBased;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MonthBasedDateTimeUnitSerializer implements KSerializer<DateTimeUnit.MonthBased> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final MonthBasedDateTimeUnitSerializer f75506a = new MonthBasedDateTimeUnitSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75507b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, MonthBasedDateTimeUnitSerializer$descriptor$2.f75508c);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return (SerialDescriptor) f75507b.getF71699b();
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public final Object b(Decoder decoder) {
        decoder.getClass();
        SerialDescriptor f19838b = getF19838b();
        CompositeDecoder compositeDecoderB = decoder.b(f19838b);
        boolean z = false;
        int iJ = 0;
        while (true) {
            MonthBasedDateTimeUnitSerializer monthBasedDateTimeUnitSerializer = f75506a;
            int iN = compositeDecoderB.n(monthBasedDateTimeUnitSerializer.getF19838b());
            if (iN == -1) {
                compositeDecoderB.c(f19838b);
                if (z) {
                    return new DateTimeUnit.MonthBased(iJ);
                }
                throw new MissingFieldException("months", getF19838b().getF75659a());
            }
            if (iN != 0) {
                DateTimeUnitSerializersKt.a(iN);
                throw null;
            }
            iJ = compositeDecoderB.j(monthBasedDateTimeUnitSerializer.getF19838b(), 0);
            z = true;
        }
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public final void c(Encoder encoder, Object obj) {
        DateTimeUnit.MonthBased monthBased = (DateTimeUnit.MonthBased) obj;
        monthBased.getClass();
        SerialDescriptor f19838b = getF19838b();
        CompositeEncoder compositeEncoderB = encoder.b(f19838b);
        compositeEncoderB.u(0, monthBased.f75234b, f75506a.getF19838b());
        compositeEncoderB.c(f19838b);
    }
}
