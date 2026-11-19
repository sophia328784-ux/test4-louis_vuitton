package kotlinx.datetime.internal.format;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class FormatStructureKt {
    public static final void a(ListBuilder listBuilder, FormatStructure formatStructure) {
        if (formatStructure instanceof BasicFormatStructure) {
            listBuilder.add(((BasicFormatStructure) formatStructure).f75384a);
            return;
        }
        if (formatStructure instanceof ConcatenatedFormatStructure) {
            Iterator it = ((ConcatenatedFormatStructure) formatStructure).f75389a.iterator();
            while (it.hasNext()) {
                a(listBuilder, (NonConcatenatedFormatStructure) it.next());
            }
            return;
        }
        if (formatStructure instanceof ConstantFormatStructure) {
            return;
        }
        if (formatStructure instanceof SignedFormatStructure) {
            a(listBuilder, ((SignedFormatStructure) formatStructure).f75410a);
            return;
        }
        if (!(formatStructure instanceof AlternativesParsingFormatStructure)) {
            if (formatStructure instanceof OptionalFormatStructure) {
                a(listBuilder, ((OptionalFormatStructure) formatStructure).f75403b);
            }
        } else {
            AlternativesParsingFormatStructure alternativesParsingFormatStructure = (AlternativesParsingFormatStructure) formatStructure;
            a(listBuilder, alternativesParsingFormatStructure.f75381a);
            Iterator it2 = alternativesParsingFormatStructure.f75382b.iterator();
            while (it2.hasNext()) {
                a(listBuilder, (FormatStructure) it2.next());
            }
        }
    }
}
