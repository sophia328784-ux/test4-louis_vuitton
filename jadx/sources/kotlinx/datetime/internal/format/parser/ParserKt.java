package kotlinx.datetime.internal.format.parser;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class ParserKt {
    public static final ParserStructure a(List list) {
        list.getClass();
        EmptyList emptyList = EmptyList.f71768b;
        ParserStructure parserStructure = new ParserStructure(emptyList, emptyList);
        if (!list.isEmpty()) {
            ListIterator listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                parserStructure = b((ParserStructure) listIterator.previous(), parserStructure);
            }
        }
        return c(parserStructure, EmptyList.f71768b);
    }

    public static final ParserStructure b(ParserStructure parserStructure, ParserStructure parserStructure2) {
        boolean zIsEmpty = parserStructure.f75467b.isEmpty();
        List list = parserStructure.f75466a;
        if (zIsEmpty) {
            return new ParserStructure(CollectionsKt.Y(list, parserStructure2.f75466a), parserStructure2.f75467b);
        }
        List list2 = parserStructure.f75467b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(b((ParserStructure) it.next(), parserStructure2));
        }
        return new ParserStructure(list, arrayList);
    }

    public static final ParserStructure c(ParserStructure parserStructure, List list) {
        List listO;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayListZ0 = CollectionsKt.z0(list);
        ArrayList arrayListZ1 = null;
        for (ParserOperation parserOperation : parserStructure.f75466a) {
            if (parserOperation instanceof NumberSpanParserOperation) {
                if (arrayListZ1 != null) {
                    arrayListZ1.addAll(((NumberSpanParserOperation) parserOperation).f75448a);
                } else {
                    arrayListZ1 = CollectionsKt.z0(((NumberSpanParserOperation) parserOperation).f75448a);
                }
            } else if (parserOperation instanceof UnconditionalModification) {
                arrayListZ0.add(parserOperation);
            } else {
                if (arrayListZ1 != null) {
                    arrayList.add(new NumberSpanParserOperation(arrayListZ1));
                    arrayListZ1 = null;
                }
                arrayList.add(parserOperation);
            }
        }
        List list2 = parserStructure.f75467b;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            ParserStructure parserStructureC = c((ParserStructure) it.next(), arrayListZ0);
            if (parserStructureC.f75466a.isEmpty()) {
                List listO2 = parserStructureC.f75467b;
                if (listO2.isEmpty()) {
                    listO2 = CollectionsKt.O(parserStructureC);
                }
                listO = listO2;
            } else {
                listO = CollectionsKt.O(parserStructureC);
            }
            CollectionsKt.j(arrayList2, listO);
        }
        boolean zIsEmpty = arrayList2.isEmpty();
        List listO3 = arrayList2;
        if (zIsEmpty) {
            listO3 = CollectionsKt.O(new ParserStructure(arrayListZ0, EmptyList.f71768b));
        }
        List list3 = listO3;
        if (arrayListZ1 == null) {
            return new ParserStructure(arrayList, list3);
        }
        List<ParserStructure> list4 = list3;
        if (!(list4 instanceof Collection) || !list4.isEmpty()) {
            Iterator it2 = list4.iterator();
            while (it2.hasNext()) {
                ParserOperation parserOperation2 = (ParserOperation) CollectionsKt.firstOrNull(((ParserStructure) it2.next()).f75466a);
                if (parserOperation2 != null && (parserOperation2 instanceof NumberSpanParserOperation)) {
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list4, 10));
                    for (ParserStructure parserStructure2 : list4) {
                        List list5 = parserStructure2.f75466a;
                        List list6 = parserStructure2.f75467b;
                        ParserOperation parserOperation3 = (ParserOperation) CollectionsKt.firstOrNull(list5);
                        arrayList3.add(parserOperation3 instanceof NumberSpanParserOperation ? new ParserStructure(CollectionsKt.Y(CollectionsKt.O(new NumberSpanParserOperation(CollectionsKt.Y(arrayListZ1, ((NumberSpanParserOperation) parserOperation3).f75448a))), CollectionsKt.w(list5, 1)), list6) : parserOperation3 == null ? new ParserStructure(CollectionsKt.O(new NumberSpanParserOperation(arrayListZ1)), list6) : new ParserStructure(CollectionsKt.Y(CollectionsKt.O(new NumberSpanParserOperation(arrayListZ1)), list5), list6));
                    }
                    return new ParserStructure(arrayList, arrayList3);
                }
            }
        }
        arrayList.add(new NumberSpanParserOperation(arrayListZ1));
        return new ParserStructure(arrayList, list3);
    }
}
