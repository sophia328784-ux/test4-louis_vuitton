package kotlinx.datetime.internal.format;

import defpackage.fc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.formatter.ConcatenatedFormatter;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserKt;
import kotlinx.datetime.internal.format.parser.ParserStructure;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;", "T", "Lkotlinx/datetime/internal/format/FormatStructure;", "", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "formats", "<init>", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class ConcatenatedFormatStructure<T> implements FormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75389a;

    public ConcatenatedFormatStructure(List<? extends NonConcatenatedFormatStructure<? super T>> list) {
        list.getClass();
        this.f75389a = list;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public FormatterStructure a() {
        List list = this.f75389a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((NonConcatenatedFormatStructure) it.next()).a());
        }
        return arrayList.size() == 1 ? (FormatterStructure) CollectionsKt.h0(arrayList) : new ConcatenatedFormatter(arrayList);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    public ParserStructure b() {
        List list = this.f75389a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((NonConcatenatedFormatStructure) it.next()).b());
        }
        return ParserKt.a(arrayList);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConcatenatedFormatStructure) {
            return Intrinsics.c(this.f75389a, ((ConcatenatedFormatStructure) obj).f75389a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75389a.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("ConcatenatedFormatStructure("), CollectionsKt.K(this.f75389a, ", ", null, null, null, 62), ')');
    }
}
