package kotlinx.datetime.serializers;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.datetime.DateTimeUnit;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlinx/serialization/SealedClassSerializer;", "Lkotlinx/datetime/DateTimeUnit$DateBased;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class DateBasedDateTimeUnitSerializer$impl$2 extends Lambda implements Function0<SealedClassSerializer<DateTimeUnit.DateBased>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DateBasedDateTimeUnitSerializer$impl$2 f75492c = new DateBasedDateTimeUnitSerializer$impl$2(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        return new SealedClassSerializer("kotlinx.datetime.DateTimeUnit.DateBased", reflectionFactory.b(DateTimeUnit.DateBased.class), new KClass[]{reflectionFactory.b(DateTimeUnit.DayBased.class), reflectionFactory.b(DateTimeUnit.MonthBased.class)}, new KSerializer[]{DayBasedDateTimeUnitSerializer.f75496a, MonthBasedDateTimeUnitSerializer.f75506a});
    }
}
