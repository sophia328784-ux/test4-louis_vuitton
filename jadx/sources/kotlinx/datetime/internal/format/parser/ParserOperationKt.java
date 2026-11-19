package kotlinx.datetime.internal.format.parser;

import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class ParserOperationKt {
    public static final ParserStructure a(Integer num, Integer num2, Integer num3, AssignableField assignableField, String str, boolean z) {
        int iIntValue;
        assignableField.getClass();
        str.getClass();
        int iIntValue2 = (num != null ? num.intValue() : 1) + (z ? 1 : 0);
        if (num2 != null) {
            iIntValue = num2.intValue();
            if (z) {
                iIntValue++;
            }
        } else {
            iIntValue = Integer.MAX_VALUE;
        }
        int iIntValue3 = num3 != null ? num3.intValue() : 0;
        int iMin = Math.min(iIntValue, iIntValue3);
        if (iIntValue2 >= iMin) {
            return b(z, assignableField, str, iIntValue2, iIntValue);
        }
        ParserStructure parserStructureB = b(z, assignableField, str, iIntValue2, iIntValue2);
        while (iIntValue2 < iMin) {
            EmptyList emptyList = EmptyList.f71768b;
            iIntValue2++;
            parserStructureB = new ParserStructure(emptyList, CollectionsKt.P(b(z, assignableField, str, iIntValue2, iIntValue2), ParserKt.a(CollectionsKt.P(new ParserStructure(CollectionsKt.O(new PlainStringParserOperation(" ")), emptyList), parserStructureB))));
        }
        if (iIntValue3 > iIntValue) {
            return ParserKt.a(CollectionsKt.P(new ParserStructure(CollectionsKt.O(new PlainStringParserOperation(StringsKt.H(iIntValue3 - iIntValue, " "))), EmptyList.f71768b), parserStructureB));
        }
        return iIntValue3 == iIntValue ? parserStructureB : new ParserStructure(EmptyList.f71768b, CollectionsKt.P(b(z, assignableField, str, iIntValue3 + 1, iIntValue), parserStructureB));
    }

    public static final ParserStructure b(boolean z, AssignableField assignableField, String str, int i2, int i3) {
        if (i3 < (z ? 1 : 0) + 1) {
            md.k("Check failed.");
            return null;
        }
        ListBuilder listBuilderV = CollectionsKt.v();
        if (z) {
            listBuilderV.add(new PlainStringParserOperation("-"));
        }
        listBuilderV.add(new NumberSpanParserOperation(CollectionsKt.O(new UnsignedIntConsumer(Integer.valueOf(i2 - (z ? 1 : 0)), Integer.valueOf(i3 - (z ? 1 : 0)), assignableField, str, z))));
        return new ParserStructure(CollectionsKt.r(listBuilderV), EmptyList.f71768b);
    }
}
