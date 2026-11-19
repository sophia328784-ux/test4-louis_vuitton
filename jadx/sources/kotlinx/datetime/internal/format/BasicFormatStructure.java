package kotlinx.datetime.internal.format;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/BasicFormatStructure;", "T", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "Lkotlinx/datetime/internal/format/FieldFormatDirective;", "directive", "<init>", "(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BasicFormatStructure<T> implements NonConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FieldFormatDirective f75384a;

    public BasicFormatStructure(FieldFormatDirective<? super T> fieldFormatDirective) {
        fieldFormatDirective.getClass();
        this.f75384a = fieldFormatDirective;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final FormatterStructure a() {
        return this.f75384a.a();
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public final ParserStructure b() {
        return this.f75384a.b();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof BasicFormatStructure) {
            return Intrinsics.c(this.f75384a, ((BasicFormatStructure) obj).f75384a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75384a.hashCode();
    }

    public final String toString() {
        return "BasicFormatStructure(" + this.f75384a + ')';
    }
}
