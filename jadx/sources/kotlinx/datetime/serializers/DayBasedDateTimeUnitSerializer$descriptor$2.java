package kotlinx.datetime.serializers;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.IntSerializer;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class DayBasedDateTimeUnitSerializer$descriptor$2 extends Lambda implements Function0<SerialDescriptor> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DayBasedDateTimeUnitSerializer$descriptor$2 f75498c = new DayBasedDateTimeUnitSerializer$descriptor$2(0);

    /* JADX INFO: renamed from: kotlinx.datetime.serializers.DayBasedDateTimeUnitSerializer$descriptor$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function1<ClassSerialDescriptorBuilder, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f75499c = new AnonymousClass1(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
            classSerialDescriptorBuilder.getClass();
            classSerialDescriptorBuilder.a("days", IntSerializer.f75625b, EmptyList.f71768b, false);
            return Unit.f71739a;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return SerialDescriptorsKt.c("kotlinx.datetime.DayBased", new SerialDescriptor[0], AnonymousClass1.f75499c);
    }
}
