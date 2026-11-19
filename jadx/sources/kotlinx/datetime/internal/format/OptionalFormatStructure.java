package kotlinx.datetime.internal.format;

import com.sightcall.universal.fcm.messages.Test;
import defpackage.lc0;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.format.formatter.ConditionalFormatter;
import kotlinx.datetime.internal.format.formatter.ConstantStringFormatterStructure;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ParserKt;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.UnconditionalModification;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\tB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lkotlinx/datetime/internal/format/OptionalFormatStructure;", "T", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "", "onZero", "Lkotlinx/datetime/internal/format/FormatStructure;", "format", "<init>", "(Ljava/lang/String;Lkotlinx/datetime/internal/format/FormatStructure;)V", "PropertyWithDefault", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OptionalFormatStructure<T> implements NonConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75402a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FormatStructure f75403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f75404c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0002\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u0000*\u0004\b\u0002\u0010\u00022\u00020\u0003:\u0001\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/datetime/internal/format/OptionalFormatStructure$PropertyWithDefault;", "T", "E", "", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PropertyWithDefault<T, E> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Companion f75405c = new Companion(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Accessor f75406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f75407b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/internal/format/OptionalFormatStructure$PropertyWithDefault$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        public PropertyWithDefault(Accessor accessor, Object obj, DefaultConstructorMarker defaultConstructorMarker) {
            this.f75406a = accessor;
            this.f75407b = obj;
        }
    }

    public OptionalFormatStructure(String str, FormatStructure<? super T> formatStructure) {
        str.getClass();
        formatStructure.getClass();
        this.f75402a = str;
        this.f75403b = formatStructure;
        ListBuilder listBuilderV = CollectionsKt.v();
        FormatStructureKt.a(listBuilderV, formatStructure);
        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listBuilderR, 10));
        ListIterator listIterator = listBuilderR.listIterator(0);
        while (listIterator.hasNext()) {
            arrayList.add(((FieldFormatDirective) listIterator.next()).getF75392a());
        }
        List<FieldSpec> listY0 = CollectionsKt.y0(CollectionsKt.A0(arrayList));
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(listY0, 10));
        for (FieldSpec fieldSpec : listY0) {
            PropertyWithDefault.f75405c.getClass();
            fieldSpec.getClass();
            Object f75397c = fieldSpec.getF75397c();
            if (f75397c == null) {
                lc0.v("The field '", fieldSpec.getF75396b(), "' does not define a default value");
                throw null;
            }
            arrayList2.add(new PropertyWithDefault(fieldSpec.getF75395a(), f75397c, null));
        }
        this.f75404c = arrayList2;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: a */
    public final FormatterStructure getF75385b() {
        FormatterStructure f75385b = this.f75403b.getF75385b();
        ArrayList<PropertyWithDefault> arrayList = this.f75404c;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        for (PropertyWithDefault propertyWithDefault : arrayList) {
            arrayList2.add(new ComparisonPredicate(propertyWithDefault.f75407b, new OptionalFormatStructure$PropertyWithDefault$isDefaultComparisonPredicate$1(propertyWithDefault.f75406a)));
        }
        boolean zIsEmpty = arrayList2.isEmpty();
        Truth truth = Truth.f75419a;
        Predicate conjunctionPredicate = zIsEmpty ? truth : arrayList2.size() == 1 ? (Predicate) CollectionsKt.h0(arrayList2) : new ConjunctionPredicate(arrayList2);
        boolean z = conjunctionPredicate instanceof Truth;
        String str = this.f75402a;
        return z ? new ConstantStringFormatterStructure(str) : new ConditionalFormatter(CollectionsKt.P(new Pair(new OptionalFormatStructure$formatter$1(1, conjunctionPredicate, Predicate.class, Test.KEY, "test(Ljava/lang/Object;)Z", 0), new ConstantStringFormatterStructure(str)), new Pair(new OptionalFormatStructure$formatter$2(1, truth, Truth.class, Test.KEY, "test(Ljava/lang/Object;)Z", 0), f75385b)));
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: b */
    public final ParserStructure getF75386c() {
        EmptyList emptyList = EmptyList.f71768b;
        return new ParserStructure(emptyList, CollectionsKt.P(this.f75403b.getF75386c(), ParserKt.a(CollectionsKt.P(new ConstantFormatStructure(this.f75402a).getF75386c(), new ParserStructure(this.f75404c.isEmpty() ? emptyList : CollectionsKt.O(new UnconditionalModification(new Function1<Object, Unit>() { // from class: kotlinx.datetime.internal.format.OptionalFormatStructure$parser$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                for (OptionalFormatStructure.PropertyWithDefault propertyWithDefault : this.f75408c.f75404c) {
                    propertyWithDefault.f75406a.c(obj, propertyWithDefault.f75407b);
                }
                return Unit.f71739a;
            }
        })), emptyList)))));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof OptionalFormatStructure)) {
            return false;
        }
        OptionalFormatStructure optionalFormatStructure = (OptionalFormatStructure) obj;
        return Intrinsics.c(this.f75402a, optionalFormatStructure.f75402a) && Intrinsics.c(this.f75403b, optionalFormatStructure.f75403b);
    }

    public final int hashCode() {
        return this.f75403b.hashCode() + (this.f75402a.hashCode() * 31);
    }

    public final String toString() {
        return "Optional(" + this.f75402a + ", " + this.f75403b + ')';
    }
}
