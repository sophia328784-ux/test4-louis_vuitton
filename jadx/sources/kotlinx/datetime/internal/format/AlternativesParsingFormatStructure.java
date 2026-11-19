package kotlinx.datetime.internal.format;

import defpackage.tr;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;", "T", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "Lkotlinx/datetime/internal/format/FormatStructure;", "mainFormat", "", "formats", "<init>", "(Lkotlinx/datetime/internal/format/FormatStructure;Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AlternativesParsingFormatStructure<T> implements NonConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormatStructure f75381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f75382b;

    public AlternativesParsingFormatStructure(FormatStructure<? super T> formatStructure, List<? extends FormatStructure<? super T>> list) {
        formatStructure.getClass();
        list.getClass();
        this.f75381a = formatStructure;
        this.f75382b = list;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: a */
    public final FormatterStructure getF75385b() {
        return this.f75381a.getF75385b();
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: b */
    public final ParserStructure getF75386c() {
        EmptyList emptyList = EmptyList.f71768b;
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(this.f75381a.getF75386c());
        Iterator it = this.f75382b.iterator();
        while (it.hasNext()) {
            listBuilderV.add(((FormatStructure) it.next()).getF75386c());
        }
        return new ParserStructure(emptyList, CollectionsKt.r(listBuilderV));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AlternativesParsingFormatStructure)) {
            return false;
        }
        AlternativesParsingFormatStructure alternativesParsingFormatStructure = (AlternativesParsingFormatStructure) obj;
        return Intrinsics.c(this.f75381a, alternativesParsingFormatStructure.f75381a) && Intrinsics.c(this.f75382b, alternativesParsingFormatStructure.f75382b);
    }

    public final int hashCode() {
        return this.f75382b.hashCode() + (this.f75381a.hashCode() * 31);
    }

    public final String toString() {
        return tr.m(new StringBuilder("AlternativesParsing("), this.f75382b, ')');
    }
}
