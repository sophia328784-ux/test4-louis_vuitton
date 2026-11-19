package kotlinx.datetime.format;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.datetime.UtcOffset;
import kotlinx.datetime.internal.format.AppendableFormatStructure;
import kotlinx.datetime.internal.format.BasicFormatStructure;
import kotlinx.datetime.internal.format.CachedFormatStructure;
import kotlinx.datetime.internal.format.FormatStructure;
import kotlinx.datetime.internal.format.SignedFormatStructure;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\t\nB\u0015\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/format/UtcOffsetFormat;", "Lkotlinx/datetime/format/AbstractDateTimeFormat;", "Lkotlinx/datetime/UtcOffset;", "Lkotlinx/datetime/format/IncompleteUtcOffset;", "Lkotlinx/datetime/internal/format/CachedFormatStructure;", "Lkotlinx/datetime/format/UtcOffsetFieldContainer;", "actualFormat", "<init>", "(Lkotlinx/datetime/internal/format/CachedFormatStructure;)V", "Builder", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UtcOffsetFormat extends AbstractDateTimeFormat<UtcOffset, IncompleteUtcOffset> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f75353b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CachedFormatStructure f75354a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0003B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/format/UtcOffsetFormat$Builder;", "Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;", "Lkotlinx/datetime/format/UtcOffsetFieldContainer;", "Lkotlinx/datetime/format/AbstractWithOffsetBuilder;", "Lkotlinx/datetime/internal/format/AppendableFormatStructure;", "actualBuilder", "<init>", "(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder implements AbstractDateTimeFormatBuilder<UtcOffsetFieldContainer, Builder>, AbstractWithOffsetBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AppendableFormatStructure f75355a;

        public Builder(AppendableFormatStructure<UtcOffsetFieldContainer> appendableFormatStructure) {
            appendableFormatStructure.getClass();
            this.f75355a = appendableFormatStructure;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        /* JADX INFO: renamed from: a, reason: from getter */
        public final AppendableFormatStructure getF75355a() {
            return this.f75355a;
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void b(String str, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.b(this, str, function1);
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final void e(Function1[] function1Arr, Function1 function1) {
            AbstractDateTimeFormatBuilder.DefaultImpls.a(this, function1Arr, function1);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void g(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new UtcOffsetMinuteOfHourDirective(padding)));
        }

        @Override // kotlinx.datetime.format.AbstractDateTimeFormatBuilder
        public final AbstractDateTimeFormatBuilder h() {
            return new Builder(new AppendableFormatStructure());
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder
        public final void i(String str) {
            AbstractDateTimeFormatBuilder.DefaultImpls.d(this, str);
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void r(Padding padding) {
            padding.getClass();
            t(new SignedFormatStructure(new BasicFormatStructure(new UtcOffsetWholeHoursDirective(padding)), true));
        }

        @Override // kotlinx.datetime.format.DateTimeFormatBuilder.WithUtcOffset
        public final void s(Padding padding) {
            padding.getClass();
            t(new BasicFormatStructure(new UtcOffsetSecondOfMinuteDirective(padding)));
        }

        public final void t(FormatStructure formatStructure) {
            formatStructure.getClass();
            this.f75355a.a(formatStructure);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/UtcOffsetFormat$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static UtcOffsetFormat a(Function1 function1) {
            function1.getClass();
            Builder builder = new Builder(new AppendableFormatStructure());
            function1.invoke(builder);
            return new UtcOffsetFormat(AbstractDateTimeFormatBuilder.DefaultImpls.c(builder));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UtcOffsetFormat(CachedFormatStructure<? super UtcOffsetFieldContainer> cachedFormatStructure) {
        super(null);
        cachedFormatStructure.getClass();
        this.f75354a = cachedFormatStructure;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    /* JADX INFO: renamed from: a, reason: from getter */
    public final CachedFormatStructure getF75354a() {
        return this.f75354a;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Copyable b() {
        return UtcOffsetFormatKt.d;
    }

    @Override // kotlinx.datetime.format.AbstractDateTimeFormat
    public final Object c(Copyable copyable) {
        IncompleteUtcOffset incompleteUtcOffset = (IncompleteUtcOffset) copyable;
        incompleteUtcOffset.getClass();
        return incompleteUtcOffset.a();
    }
}
