package kotlinx.datetime.serializers;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lkotlinx/datetime/serializers/DateBasedDateTimeUnitSerializer;", "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DateBasedDateTimeUnitSerializer extends AbstractPolymorphicSerializer<DateTimeUnit.DateBased> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DateBasedDateTimeUnitSerializer f75490a = new DateBasedDateTimeUnitSerializer();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy f75491b = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, DateBasedDateTimeUnitSerializer$impl$2.f75492c);

    @Override // kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    /* JADX INFO: renamed from: a */
    public final SerialDescriptor getF19838b() {
        return ((SealedClassSerializer) f75491b.getF71699b()).getF19838b();
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final DeserializationStrategy f(CompositeDecoder compositeDecoder, String str) {
        return ((SealedClassSerializer) f75491b.getF71699b()).f(compositeDecoder, str);
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public final SerializationStrategy g(Encoder encoder, Object obj) {
        DateTimeUnit.DateBased dateBased = (DateTimeUnit.DateBased) obj;
        dateBased.getClass();
        return ((SealedClassSerializer) f75491b.getF71699b()).g(encoder, dateBased);
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    /* JADX INFO: renamed from: h */
    public final KClass getF75517a() {
        return Reflection.f71922a.b(DateTimeUnit.DateBased.class);
    }
}
