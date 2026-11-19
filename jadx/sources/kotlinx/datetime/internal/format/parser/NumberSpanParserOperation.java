package kotlinx.datetime.internal.format.parser;

import defpackage.lc0;
import defpackage.md;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$IntRef;
import kotlinx.datetime.internal.UtilKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/parser/NumberSpanParserOperation;", "Output", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "", "Lkotlinx/datetime/internal/format/parser/NumberConsumer;", "consumers", "<init>", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NumberSpanParserOperation<Output> implements ParserOperation<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f75449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75450c;

    public NumberSpanParserOperation(List<? extends NumberConsumer<? super Output>> list) {
        boolean z;
        list.getClass();
        this.f75448a = list;
        Iterator<T> it = list.iterator();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int iIntValue = 1;
            if (!it.hasNext()) {
                break;
            }
            Integer num = ((NumberConsumer) it.next()).f75441a;
            if (num != null) {
                iIntValue = num.intValue();
            }
            i3 += iIntValue;
        }
        this.f75449b = i3;
        List list2 = this.f75448a;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            Iterator it2 = list2.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (((NumberConsumer) it2.next()).f75441a == null) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        this.f75450c = z;
        List list3 = this.f75448a;
        if (!(list3 instanceof Collection) || !list3.isEmpty()) {
            Iterator it3 = list3.iterator();
            while (it3.hasNext()) {
                Integer num2 = ((NumberConsumer) it3.next()).f75441a;
                if ((num2 != null ? num2.intValue() : Integer.MAX_VALUE) <= 0) {
                    md.n("Failed requirement.");
                    throw null;
                }
            }
        }
        List list4 = this.f75448a;
        if (!(list4 instanceof Collection) || !list4.isEmpty()) {
            Iterator it4 = list4.iterator();
            while (it4.hasNext()) {
                if (((NumberConsumer) it4.next()).f75441a == null && (i2 = i2 + 1) < 0) {
                    CollectionsKt.s0();
                    throw null;
                }
            }
        }
        if (i2 <= 1) {
            return;
        }
        List list5 = this.f75448a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list5) {
            if (((NumberConsumer) obj).f75441a == null) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it5 = arrayList.iterator();
        while (it5.hasNext()) {
            arrayList2.add(((NumberConsumer) it5.next()).f75442b);
        }
        lc0.v("At most one variable-length numeric field in a row is allowed, but got several: ", arrayList2, ". Parsing is undefined: for example, with variable-length month number and variable-length day of month, '111' can be parsed as Jan 11th or Nov 1st.");
        throw null;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    public final Object a(Copyable copyable, String str, int i2) {
        int i3 = this.f75449b;
        if (i2 + i3 > str.length()) {
            ParseResult.Companion companion = ParseResult.f75458a;
            Function0<String> function0 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.NumberSpanParserOperation$consume$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return "Unexpected end of input: yet to parse ".concat(this.f75451c.b());
                }
            };
            companion.getClass();
            return new ParseError(i2, function0);
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        while (ref$IntRef.f71919b + i2 < str.length() && UtilKt.a(str.charAt(ref$IntRef.f71919b + i2))) {
            ref$IntRef.f71919b++;
        }
        if (ref$IntRef.f71919b < i3) {
            ParseResult.Companion companion2 = ParseResult.f75458a;
            Function0<String> function1 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.NumberSpanParserOperation$consume$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return "Only found " + ref$IntRef.f71919b + " digits in a row, but need to parse " + this.b();
                }
            };
            companion2.getClass();
            return new ParseError(i2, function1);
        }
        List list = this.f75448a;
        int size = list.size();
        final int i4 = 0;
        while (i4 < size) {
            Integer num = ((NumberConsumer) list.get(i4)).f75441a;
            int iIntValue = (num != null ? num.intValue() : (ref$IntRef.f71919b - i3) + 1) + i2;
            final NumberConsumptionError numberConsumptionErrorA = ((NumberConsumer) list.get(i4)).a(copyable, i2, iIntValue, str);
            if (numberConsumptionErrorA != null) {
                final String string = str.subSequence(i2, iIntValue).toString();
                ParseResult.Companion companion3 = ParseResult.f75458a;
                Function0<String> function2 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.NumberSpanParserOperation$consume$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return "Can not interpret the string '" + string + "' as " + ((NumberConsumer) this.f75448a.get(i4)).f75442b + ": " + numberConsumptionErrorA.a();
                    }
                };
                companion3.getClass();
                return new ParseError(i2, function2);
            }
            i4++;
            i2 = iIntValue;
        }
        ParseResult.f75458a.getClass();
        return Integer.valueOf(i2);
    }

    public final String b() {
        List<NumberConsumer> list = this.f75448a;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (NumberConsumer numberConsumer : list) {
            StringBuilder sb = new StringBuilder();
            Integer num = numberConsumer.f75441a;
            sb.append(num == null ? "at least one digit" : num + " digits");
            sb.append(" for ");
            sb.append(numberConsumer.f75442b);
            arrayList.add(sb.toString());
        }
        boolean z = this.f75450c;
        int i2 = this.f75449b;
        if (z) {
            return "a number with at least " + i2 + " digits: " + arrayList;
        }
        return "a number with exactly " + i2 + " digits: " + arrayList;
    }

    public final String toString() {
        return b();
    }
}
