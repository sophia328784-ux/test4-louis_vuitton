package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/datetime/format/UtcOffsetFormat;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class UtcOffsetFormatKt$FOUR_DIGIT_OFFSET$2 extends Lambda implements Function0<UtcOffsetFormat> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UtcOffsetFormatKt$FOUR_DIGIT_OFFSET$2 f75359c = new UtcOffsetFormatKt$FOUR_DIGIT_OFFSET$2(0);

    /* JADX INFO: renamed from: kotlinx.datetime.format.UtcOffsetFormatKt$FOUR_DIGIT_OFFSET$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithUtcOffset;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function1<DateTimeFormatBuilder.WithUtcOffset, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f75360c = new AnonymousClass1(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            DateTimeFormatBuilder.WithUtcOffset withUtcOffset = (DateTimeFormatBuilder.WithUtcOffset) obj;
            withUtcOffset.getClass();
            withUtcOffset.r(Padding.ZERO);
            withUtcOffset.g(Padding.ZERO);
            return Unit.f71739a;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        UtcOffsetFormat.Companion companion = UtcOffsetFormat.f75353b;
        AnonymousClass1 anonymousClass1 = AnonymousClass1.f75360c;
        companion.getClass();
        return UtcOffsetFormat.Companion.a(anonymousClass1);
    }
}
