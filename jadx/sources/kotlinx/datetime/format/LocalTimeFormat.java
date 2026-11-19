package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.LocalTime;
import kotlinx.datetime.internal.format.AppendableFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\t\nB\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/format/LocalTimeFormat;", "Lkotlinx/datetime/format/AbstractDateTimeFormat;", "Lkotlinx/datetime/LocalTime;", "Lkotlinx/datetime/format/IncompleteLocalTime;", "Lkotlinx/datetime/internal/format/CachedFormatStructure;", "Lkotlinx/datetime/format/TimeFieldContainer;", "actualFormat", "<init>", "(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V", "Builder", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalTimeFormat extends AbstractDateTimeFormat<LocalTime, IncompleteLocalTime> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f75317b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CachedFormatStructure f75318a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/format/LocalTimeFormat$Builder;", "Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;", "Lkotlinx/datetime/format/TimeFieldContainer;", "Lkotlinx/datetime/format/AbstractWithTimeBuilder;", "Lkotlinx/datetime/internal/format/AppendableFormatStructure;", "actualBuilder", "<init>", "(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder implements AbstractDateTimeFormatBuilder<TimeFieldContainer, Builder>, AbstractWithTimeBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppendableFormatStructure f75319a;

        public Builder(AppendableFormatStructure<TimeFieldContainer> appendableFormatStructure) {
            appendableFormatStructure.getClass();
            this.f75319a = appendableFormatStructure;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        /* JADX INFO: renamed from: a, reason: from getter */
        public final AppendableFormatStructure getF75309a() {
            return this.f75319a;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void b(String str, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.b(this, str, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void d() {
            t(new BasicFormatStructure(new FractionalSecondDirective(1, 9, null, 4, null)));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void e(Function1[] function1Arr, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.a(this, function1Arr, function1);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final AbstractDateTimeFormatBuilder h() {
            return new Builder(new AppendableFormatStructure());
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder
        public final void i(String str) {
            AbstractDateTimeFormatBuilder.DefaultImpls.d(this, str);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void j(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new MinuteDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void k(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new SecondDirective(padding)));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithTime
        public final void n(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new HourDirective(padding)));
        }

        public final void t(BasicFormatStructure basicFormatStructure) {
            this.f75319a.a(basicFormatStructure);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/LocalTimeFormat$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalTimeFormat(CachedFormatStructure<? super TimeFieldContainer> cachedFormatStructure) {
        super(null);
        cachedFormatStructure.getClass();
        this.f75318a = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    /* JADX INFO: renamed from: a, reason: from getter */
    public final CachedFormatStructure getF75308a() {
        return this.f75318a;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable b() {
        return LocalTimeFormatKt.f75321b;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object c(Copyable copyable) {
        IncompleteLocalTime incompleteLocalTime = (IncompleteLocalTime) copyable;
        incompleteLocalTime.getClass();
        return incompleteLocalTime.b();
    }
}
