package kotlinx.datetime.internal.format;

import defpackage.md;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.formatter.SignedFormatter;
import kotlinx.datetime.internal.format.parser.ParserKt;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.SignParser;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/internal/format/SignedFormatStructure;", "T", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "Lkotlinx/datetime/internal/format/FormatStructure;", "format", "", "withPlusSign", "<init>", "(Lkotlinx/datetime/internal/format/FormatStructure;Z)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedFormatStructure<T> implements NonConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormatStructure f75410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f75412c;

    public SignedFormatStructure(FormatStructure<? super T> formatStructure, boolean z) {
        formatStructure.getClass();
        this.f75410a = formatStructure;
        this.f75411b = z;
        ListBuilder listBuilderV = CollectionsKt.v();
        FormatStructureKt.a(listBuilderV, formatStructure);
        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
        ArrayList arrayList = new ArrayList();
        ListIterator listIterator = listBuilderR.listIterator(0);
        while (listIterator.hasNext()) {
            FieldSign d = ((FieldFormatDirective) listIterator.next()).getF75415a().getD();
            if (d != null) {
                arrayList.add(d);
            }
        }
        Set setB0 = CollectionsKt.B0(arrayList);
        this.f75412c = setB0;
        if (setB0.isEmpty()) {
            md.n("Signed format must contain at least one field with a sign");
            throw null;
        }
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: a */
    public final FormatterStructure getF75385b() {
        return new SignedFormatter(this.f75410a.getF75385b(), new SignedFormatStructure$formatter$1(this), this.f75411b);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: b */
    public final ParserStructure getF75386c() {
        return ParserKt.a(CollectionsKt.P(new ParserStructure(CollectionsKt.O(new SignParser(new Function2<Object, Boolean, Unit>() { // from class: kotlinx.datetime.internal.format.SignedFormatStructure$parser$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                for (FieldSign fieldSign : this.f75414c.f75412c) {
                    fieldSign.getF75338a().c(obj, Boolean.valueOf(zBooleanValue != Intrinsics.c(fieldSign.getF75338a().f75409a.get(obj), Boolean.TRUE)));
                }
                return Unit.f71739a;
            }
        }, this.f75411b, "sign for " + this.f75412c)), EmptyList.f71768b), this.f75410a.getF75386c()));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignedFormatStructure)) {
            return false;
        }
        SignedFormatStructure signedFormatStructure = (SignedFormatStructure) obj;
        return Intrinsics.c(this.f75410a, signedFormatStructure.f75410a) && this.f75411b == signedFormatStructure.f75411b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f75411b) + (this.f75410a.hashCode() * 31);
    }

    public final String toString() {
        return "SignedFormatStructure(" + this.f75410a + ')';
    }
}
