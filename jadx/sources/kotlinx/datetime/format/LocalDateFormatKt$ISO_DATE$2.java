package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.datetime.LocalDate;
import kotlinx.datetime.internal.format.AppendableFormatStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Lkotlinx/datetime/format/DateTimeFormat;", "Lkotlinx/datetime/LocalDate;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class LocalDateFormatKt$ISO_DATE$2 extends Lambda implements Function0<DateTimeFormat<LocalDate>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LocalDateFormatKt$ISO_DATE$2 f75313c = new LocalDateFormatKt$ISO_DATE$2(0);

    /* JADX INFO: renamed from: kotlinx.datetime.format.LocalDateFormatKt$ISO_DATE$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithDate;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function1<DateTimeFormatBuilder.WithDate, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f75314c = new AnonymousClass1(1);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            DateTimeFormatBuilder.WithDate withDate = (DateTimeFormatBuilder.WithDate) obj;
            withDate.getClass();
            withDate.l(Padding.ZERO);
            DateTimeFormatBuilderKt.b(withDate, '-');
            Padding padding = Padding.ZERO;
            withDate.c(padding);
            DateTimeFormatBuilderKt.b(withDate, '-');
            withDate.p(padding);
            return Unit.f71739a;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        LocalDateFormat.Companion companion = LocalDateFormat.f75307b;
        AnonymousClass1 anonymousClass1 = AnonymousClass1.f75314c;
        companion.getClass();
        anonymousClass1.getClass();
        LocalDateFormat.Builder builder = new LocalDateFormat.Builder(new AppendableFormatStructure());
        anonymousClass1.invoke(builder);
        return new LocalDateFormat(AbstractDateTimeFormatBuilder.DefaultImpls.c(builder));
    }
}
