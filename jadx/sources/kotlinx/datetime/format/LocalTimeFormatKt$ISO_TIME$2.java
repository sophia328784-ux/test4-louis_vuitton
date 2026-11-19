package kotlinx.datetime.format;

import io.jsonwebtoken.JwtParser;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlinx.datetime.internal.format.AppendableFormatStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Lkotlinx/datetime/format/LocalTimeFormat;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class LocalTimeFormatKt$ISO_TIME$2 extends Lambda implements Function0<LocalTimeFormat> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LocalTimeFormatKt$ISO_TIME$2 f75322c = new LocalTimeFormatKt$ISO_TIME$2(0);

    /* JADX INFO: renamed from: kotlinx.datetime.format.LocalTimeFormatKt$ISO_TIME$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
    final class AnonymousClass1 extends Lambda implements Function1<DateTimeFormatBuilder.WithTime, Unit> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f75323c = new AnonymousClass1(1);

        /* JADX INFO: renamed from: kotlinx.datetime.format.LocalTimeFormatKt$ISO_TIME$2$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
        final class C03271 extends Lambda implements Function1<DateTimeFormatBuilder.WithTime, Unit> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final C03271 f75324c = new C03271(1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((DateTimeFormatBuilder.WithTime) obj).getClass();
                return Unit.f71739a;
            }
        }

        /* JADX INFO: renamed from: kotlinx.datetime.format.LocalTimeFormatKt$ISO_TIME$2$1$2, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
        final class AnonymousClass2 extends Lambda implements Function1<DateTimeFormatBuilder.WithTime, Unit> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final AnonymousClass2 f75325c = new AnonymousClass2(1);

            /* JADX INFO: renamed from: kotlinx.datetime.format.LocalTimeFormatKt$ISO_TIME$2$1$2$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithTime;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
            final class C03281 extends Lambda implements Function1<DateTimeFormatBuilder.WithTime, Unit> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public static final C03281 f75326c = new C03281(1);

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    DateTimeFormatBuilder.WithTime withTime = (DateTimeFormatBuilder.WithTime) obj;
                    withTime.getClass();
                    DateTimeFormatBuilderKt.b(withTime, JwtParser.SEPARATOR_CHAR);
                    withTime.d();
                    return Unit.f71739a;
                }
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DateTimeFormatBuilder.WithTime withTime = (DateTimeFormatBuilder.WithTime) obj;
                withTime.getClass();
                DateTimeFormatBuilderKt.b(withTime, ':');
                withTime.k(Padding.ZERO);
                DateTimeFormatBuilderKt.c(withTime, "", C03281.f75326c);
                return Unit.f71739a;
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            DateTimeFormatBuilder.WithTime withTime = (DateTimeFormatBuilder.WithTime) obj;
            withTime.getClass();
            withTime.n(Padding.ZERO);
            DateTimeFormatBuilderKt.b(withTime, ':');
            withTime.j(Padding.ZERO);
            DateTimeFormatBuilderKt.a(withTime, new Function1[]{C03271.f75324c}, AnonymousClass2.f75325c);
            return Unit.f71739a;
        }
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        LocalTimeFormat.Companion companion = LocalTimeFormat.f75317b;
        AnonymousClass1 anonymousClass1 = AnonymousClass1.f75323c;
        companion.getClass();
        anonymousClass1.getClass();
        LocalTimeFormat.Builder builder = new LocalTimeFormat.Builder(new AppendableFormatStructure());
        anonymousClass1.invoke(builder);
        return new LocalTimeFormat(AbstractDateTimeFormatBuilder.DefaultImpls.c(builder));
    }
}
