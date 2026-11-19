package kotlin.collections;

import defpackage.b21;
import defpackage.fc;
import defpackage.lt;
import defpackage.md;
import defpackage.n00;
import defpackage.w1;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.builders.ListBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableIterable;
import kotlin.ranges.IntRange;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    public static Object A(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return B((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        zy0.c("Collection is empty.");
        return null;
    }

    public static LinkedHashSet A0(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        CollectionsKt___CollectionsKt.h(iterable, linkedHashSet);
        return linkedHashSet;
    }

    public static Object B(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.get(0);
        }
        zy0.c("List is empty.");
        return null;
    }

    public static Set B0(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            CollectionsKt___CollectionsKt.h(iterable, linkedHashSet);
            int size = linkedHashSet.size();
            if (size != 0) {
                return size != 1 ? linkedHashSet : SetsKt.h(linkedHashSet.iterator().next());
            }
            return EmptySet.f71770b;
        }
        Collection collection = (Collection) iterable;
        int size2 = collection.size();
        if (size2 == 0) {
            return EmptySet.f71770b;
        }
        if (size2 == 1) {
            return SetsKt.h(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(MapsKt.g(collection.size()));
        CollectionsKt___CollectionsKt.h(iterable, linkedHashSet2);
        return linkedHashSet2;
    }

    public static Object C(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return list.get(0);
        }
        Iterator it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        return null;
    }

    public static ArrayList C0(Iterable iterable, int i2, int i3) {
        iterable.getClass();
        if (i2 <= 0 || i3 <= 0) {
            b21.n(i2 != i3 ? fc.f(i2, i3, "Both size ", " and step ", " must be greater than zero.") : n00.m(i2, "size ", " must be greater than zero."));
            return null;
        }
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            it.getClass();
            Iterator itO = !it.hasNext() ? EmptyIterator.f71767b : SequencesKt.o(new SlidingWindowKt$windowedIterator$1(i2, i3, it, null));
            while (itO.hasNext()) {
                arrayList.add((List) itO.next());
            }
            return arrayList;
        }
        List list = (List) iterable;
        int size = list.size();
        ArrayList arrayList2 = new ArrayList((size / i3) + (size % i3 == 0 ? 0 : 1));
        int i4 = 0;
        while (i4 >= 0 && i4 < size) {
            int i5 = size - i4;
            if (i2 <= i5) {
                i5 = i2;
            }
            ArrayList arrayList3 = new ArrayList(i5);
            for (int i6 = 0; i6 < i5; i6++) {
                arrayList3.add(list.get(i6 + i4));
            }
            arrayList2.add(arrayList3);
            i4 += i3;
        }
        return arrayList2;
    }

    public static ArrayList D(Iterable iterable) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            j(arrayList, (Iterable) it.next());
        }
        return arrayList;
    }

    public static IndexingIterable D0(Iterable iterable) {
        iterable.getClass();
        return new IndexingIterable(new w1(iterable, 24));
    }

    public static IntRange E(Collection collection) {
        collection.getClass();
        return new IntRange(0, collection.size() - 1);
    }

    public static ArrayList E0(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Iterator it = iterable.iterator();
        Iterator it2 = iterable2.iterator();
        ArrayList arrayList = new ArrayList(Math.min(t(iterable, 10), t(iterable2, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(new Pair(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static int F(List list) {
        list.getClass();
        return list.size() - 1;
    }

    public static Object G(int i2, List list) {
        list.getClass();
        if (i2 < 0 || i2 >= list.size()) {
            return null;
        }
        return list.get(i2);
    }

    public static int H(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(obj);
        }
        int i2 = 0;
        for (Object obj2 : iterable) {
            if (i2 < 0) {
                t0();
                throw null;
            }
            if (Intrinsics.c(obj, obj2)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public static LinkedHashSet I(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Collection collectionC = CollectionsKt__MutableCollectionsKt.c(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (collectionC.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static /* synthetic */ void J(Iterable iterable, StringBuilder sb, String str, String str2, String str3, Function1 function1, int i2) {
        if ((i2 & 2) != 0) {
            str = ", ";
        }
        String str4 = str;
        String str5 = (i2 & 4) != 0 ? "" : str2;
        String str6 = (i2 & 8) != 0 ? "" : str3;
        if ((i2 & 64) != 0) {
            function1 = null;
        }
        CollectionsKt___CollectionsKt.g(iterable, sb, str4, str5, str6, "...", function1);
    }

    public static String K(Iterable iterable, CharSequence charSequence, String str, String str2, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence2 = charSequence;
        String str3 = (i2 & 2) != 0 ? "" : str;
        String str4 = (i2 & 4) != 0 ? "" : str2;
        if ((i2 & 32) != 0) {
            function1 = null;
        }
        iterable.getClass();
        charSequence2.getClass();
        str3.getClass();
        StringBuilder sb = new StringBuilder();
        CollectionsKt___CollectionsKt.g(iterable, sb, charSequence2, str3, str4, "...", function1);
        return sb.toString();
    }

    public static Object L(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return M((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            zy0.c("Collection is empty.");
            return null;
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = it.next();
        }
        return next;
    }

    public static Object M(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return fc.e(1, list);
        }
        zy0.c("List is empty.");
        return null;
    }

    public static Object N(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return fc.e(1, list);
    }

    public static List O(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        listSingletonList.getClass();
        return listSingletonList;
    }

    public static List P(Object... objArr) {
        objArr.getClass();
        if (objArr.length <= 0) {
            return EmptyList.f71768b;
        }
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        return listAsList;
    }

    public static List Q(Object obj) {
        return obj != null ? O(obj) : EmptyList.f71768b;
    }

    public static Comparable R(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Comparable comparable = (Comparable) it.next();
        while (it.hasNext()) {
            Comparable comparable2 = (Comparable) it.next();
            if (comparable.compareTo(comparable2) < 0) {
                comparable = comparable2;
            }
        }
        return comparable;
    }

    public static ArrayList S(Iterable iterable, Object obj) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList(t(iterable, 10));
        boolean z = false;
        for (Object obj2 : iterable) {
            boolean z2 = true;
            if (!z && Intrinsics.c(obj2, obj)) {
                z = true;
                z2 = false;
            }
            if (z2) {
                arrayList.add(obj2);
            }
        }
        return arrayList;
    }

    public static List T(ArrayList arrayList, Iterable iterable) {
        iterable.getClass();
        Collection collectionC = CollectionsKt__MutableCollectionsKt.c(iterable);
        if (collectionC.isEmpty()) {
            return y0(arrayList);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (!collectionC.contains(obj)) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    public static ArrayList U(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static ArrayList V(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        if (iterable instanceof Collection) {
            return Y((Collection) iterable, iterable2);
        }
        ArrayList arrayList = new ArrayList();
        j(arrayList, iterable);
        j(arrayList, iterable2);
        return arrayList;
    }

    public static ArrayList W(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return X(obj, (Collection) iterable);
        }
        ArrayList arrayList = new ArrayList();
        j(arrayList, iterable);
        arrayList.add(obj);
        return arrayList;
    }

    public static ArrayList X(Object obj, Collection collection) {
        collection.getClass();
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(obj);
        return arrayList;
    }

    public static ArrayList Y(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            ArrayList arrayList = new ArrayList(collection);
            j(arrayList, iterable);
            return arrayList;
        }
        Collection collection2 = (Collection) iterable;
        ArrayList arrayList2 = new ArrayList(collection2.size() + collection.size());
        arrayList2.addAll(collection);
        arrayList2.addAll(collection2);
        return arrayList2;
    }

    public static void Z(Iterable iterable, lt ltVar) {
        iterable.getClass();
        CollectionsKt__MutableCollectionsKt.d(iterable, ltVar, true);
    }

    public static void a0(List list, Function1 function1) {
        int size;
        list.getClass();
        function1.getClass();
        if (!(list instanceof RandomAccess)) {
            if ((list instanceof KMappedMarker) && !(list instanceof KMutableIterable)) {
                TypeIntrinsics.g(list, "kotlin.collections.MutableIterable");
                throw null;
            }
            try {
                CollectionsKt__MutableCollectionsKt.d(list, function1, true);
                return;
            } catch (ClassCastException e2) {
                Intrinsics.f(e2, TypeIntrinsics.class.getName());
                throw e2;
            }
        }
        int size2 = list.size() - 1;
        int i2 = 0;
        if (size2 >= 0) {
            int i3 = 0;
            while (true) {
                Object obj = list.get(i2);
                if (!((Boolean) function1.invoke(obj)).booleanValue()) {
                    if (i3 != i2) {
                        list.set(i3, obj);
                    }
                    i3++;
                }
                if (i2 == size2) {
                    break;
                } else {
                    i2++;
                }
            }
            i2 = i3;
        }
        if (i2 >= list.size() || i2 > (size = list.size() - 1)) {
            return;
        }
        while (true) {
            list.remove(size);
            if (size == i2) {
                return;
            } else {
                size--;
            }
        }
    }

    public static Object b0(ArrayList arrayList) {
        if (!arrayList.isEmpty()) {
            return arrayList.remove(0);
        }
        zy0.c("List is empty.");
        return null;
    }

    public static Object c0(List list) {
        list.getClass();
        if (!list.isEmpty()) {
            return list.remove(list.size() - 1);
        }
        zy0.c("List is empty.");
        return null;
    }

    public static Object d0(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.remove(list.size() - 1);
    }

    public static void e0(Iterable iterable, Function1 function1) {
        CollectionsKt__MutableCollectionsKt.d(iterable, function1, false);
    }

    public static List f0(Iterable iterable) {
        iterable.getClass();
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return y0(iterable);
        }
        List listI = CollectionsKt___CollectionsKt.i(iterable);
        Collections.reverse(listI);
        return listI;
    }

    public static Object g0(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            return h0((List) iterable);
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            zy0.c("Collection is empty.");
            return null;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        md.n("Collection has more than one element.");
        return null;
    }

    public static Object h0(List list) {
        list.getClass();
        int size = list.size();
        if (size == 0) {
            zy0.c("List is empty.");
            return null;
        }
        if (size == 1) {
            return list.get(0);
        }
        md.n("List has more than one element.");
        return null;
    }

    public static Object i0(Iterable iterable) {
        iterable.getClass();
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.size() == 1) {
                return list.get(0);
            }
            return null;
        }
        Iterator it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        if (it.hasNext()) {
            return null;
        }
        return next;
    }

    public static void j(Collection collection, Iterable iterable) {
        collection.getClass();
        iterable.getClass();
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }

    public static Object j0(List list) {
        list.getClass();
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    public static void k(Collection collection, Object[] objArr) {
        collection.getClass();
        objArr.getClass();
        List listAsList = Arrays.asList(objArr);
        listAsList.getClass();
        collection.addAll(listAsList);
    }

    public static List k0(List list, IntRange intRange) {
        list.getClass();
        intRange.getClass();
        return intRange.isEmpty() ? EmptyList.f71768b : y0(list.subList(intRange.f71951b, intRange.f71952c + 1));
    }

    public static ArrayList l(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new ArrayAsCollection(objArr, true));
    }

    public static void l0(List list) {
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static List m(List list) {
        list.getClass();
        return new ReversedListReadOnly(list);
    }

    public static void m0(Comparator comparator, List list) {
        list.getClass();
        comparator.getClass();
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }

    public static List n(ArrayList arrayList) {
        return new ReversedList(arrayList);
    }

    public static List n0(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List listI = CollectionsKt___CollectionsKt.i(iterable);
            l0(listI);
            return listI;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return y0(iterable);
        }
        Object[] array = collection.toArray(new Comparable[0]);
        Comparable[] comparableArr = (Comparable[]) array;
        comparableArr.getClass();
        if (comparableArr.length > 1) {
            Arrays.sort(comparableArr);
        }
        return ArraysKt.d(array);
    }

    public static CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1 o(Iterable iterable) {
        iterable.getClass();
        return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(iterable);
    }

    public static List o0(Iterable iterable, Comparator comparator) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            List listI = CollectionsKt___CollectionsKt.i(iterable);
            m0(comparator, listI);
            return listI;
        }
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return y0(iterable);
        }
        Object[] array = collection.toArray(new Object[0]);
        array.getClass();
        if (array.length > 1) {
            Arrays.sort(array, comparator);
        }
        List listAsList = Arrays.asList(array);
        listAsList.getClass();
        return listAsList;
    }

    public static int p(List list, int i2, Function1 function1) {
        list.getClass();
        CollectionsKt__CollectionsKt.b(list.size(), i2);
        int i3 = i2 - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int iIntValue = ((Number) function1.invoke(list.get(i5))).intValue();
            if (iIntValue < 0) {
                i4 = i5 + 1;
            } else {
                if (iIntValue <= 0) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return -(i4 + 1);
    }

    public static LinkedHashSet p0(Iterable iterable, Iterable iterable2) {
        iterable.getClass();
        iterable2.getClass();
        Collection collectionC = CollectionsKt__MutableCollectionsKt.c(iterable2);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : iterable) {
            if (!collectionC.contains(obj)) {
                linkedHashSet.add(obj);
            }
        }
        return linkedHashSet;
    }

    public static int q(ArrayList arrayList, Comparable comparable) {
        int size = arrayList.size();
        arrayList.getClass();
        CollectionsKt__CollectionsKt.b(arrayList.size(), size);
        int i2 = size - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int iA = ComparisonsKt.a((Comparable) arrayList.get(i4), comparable);
            if (iA < 0) {
                i3 = i4 + 1;
            } else {
                if (iA <= 0) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static List q0(Iterable iterable, int i2) {
        iterable.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i2 == 0) {
            return EmptyList.f71768b;
        }
        if (iterable instanceof Collection) {
            if (i2 >= ((Collection) iterable).size()) {
                return y0(iterable);
            }
            if (i2 == 1) {
                return O(A(iterable));
            }
        }
        ArrayList arrayList = new ArrayList(i2);
        Iterator it = iterable.iterator();
        int i3 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i3++;
            if (i3 == i2) {
                break;
            }
        }
        return CollectionsKt__CollectionsKt.a(arrayList);
    }

    public static ListBuilder r(List list) {
        list.getClass();
        ListBuilder listBuilder = (ListBuilder) list;
        listBuilder.o();
        listBuilder.d = true;
        return listBuilder.f71797c > 0 ? listBuilder : ListBuilder.f71795f;
    }

    public static List r0(int i2, List list) {
        list.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i2 == 0) {
            return EmptyList.f71768b;
        }
        int size = list.size();
        if (i2 >= size) {
            return y0(list);
        }
        if (i2 == 1) {
            return O(M(list));
        }
        ArrayList arrayList = new ArrayList(i2);
        if (list instanceof RandomAccess) {
            for (int i3 = size - i2; i3 < size; i3++) {
                arrayList.add(list.get(i3));
            }
        } else {
            ListIterator listIterator = list.listIterator(size - i2);
            while (listIterator.hasNext()) {
                arrayList.add(listIterator.next());
            }
        }
        return arrayList;
    }

    public static ArrayList s(Iterable iterable, int i2) {
        iterable.getClass();
        return C0(iterable, i2, i2);
    }

    public static void s0() {
        throw new ArithmeticException("Count overflow has happened.");
    }

    public static int t(Iterable iterable, int i2) {
        iterable.getClass();
        return iterable instanceof Collection ? ((Collection) iterable).size() : i2;
    }

    public static void t0() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static boolean u(Iterable iterable, Object obj) {
        iterable.getClass();
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(obj);
        }
        return H(iterable, obj) >= 0;
    }

    public static boolean[] u0(Collection collection) {
        collection.getClass();
        boolean[] zArr = new boolean[collection.size()];
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            zArr[i2] = ((Boolean) it.next()).booleanValue();
            i2++;
        }
        return zArr;
    }

    public static ListBuilder v() {
        return new ListBuilder(0, 1, null);
    }

    public static float[] v0(Collection collection) {
        collection.getClass();
        float[] fArr = new float[collection.size()];
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            fArr[i2] = ((Number) it.next()).floatValue();
            i2++;
        }
        return fArr;
    }

    public static List w(Iterable iterable, int i2) {
        ArrayList arrayList;
        iterable.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested element count ", " is less than zero."));
            return null;
        }
        if (i2 == 0) {
            return y0(iterable);
        }
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size() - i2;
            if (size <= 0) {
                return EmptyList.f71768b;
            }
            if (size == 1) {
                return O(L(iterable));
            }
            arrayList = new ArrayList(size);
            if (iterable instanceof List) {
                if (iterable instanceof RandomAccess) {
                    List list = (List) iterable;
                    int size2 = list.size();
                    while (i2 < size2) {
                        arrayList.add(list.get(i2));
                        i2++;
                    }
                } else {
                    ListIterator listIterator = ((List) iterable).listIterator(i2);
                    while (listIterator.hasNext()) {
                        arrayList.add(listIterator.next());
                    }
                }
                return arrayList;
            }
        } else {
            arrayList = new ArrayList();
        }
        int i3 = 0;
        for (Object obj : iterable) {
            if (i3 >= i2) {
                arrayList.add(obj);
            } else {
                i3++;
            }
        }
        return CollectionsKt__CollectionsKt.a(arrayList);
    }

    public static HashSet w0(ArrayList arrayList) {
        arrayList.getClass();
        HashSet hashSet = new HashSet(MapsKt.g(t(arrayList, 12)));
        CollectionsKt___CollectionsKt.h(arrayList, hashSet);
        return hashSet;
    }

    public static List x(int i2, List list) {
        list.getClass();
        if (i2 < 0) {
            b21.n(n00.m(i2, "Requested element count ", " is less than zero."));
            return null;
        }
        List list2 = list;
        int size = list.size() - i2;
        if (size < 0) {
            size = 0;
        }
        return q0(list2, size);
    }

    public static int[] x0(Collection collection) {
        collection.getClass();
        int[] iArr = new int[collection.size()];
        Iterator it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            iArr[i2] = ((Number) it.next()).intValue();
            i2++;
        }
        return iArr;
    }

    public static ArrayList y(Collection collection, Function1 function1) {
        collection.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static List y0(Iterable iterable) {
        iterable.getClass();
        if (!(iterable instanceof Collection)) {
            return CollectionsKt__CollectionsKt.a(CollectionsKt___CollectionsKt.i(iterable));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return EmptyList.f71768b;
        }
        if (size != 1) {
            return new ArrayList(collection);
        }
        return O(iterable instanceof List ? ((List) iterable).get(0) : collection.iterator().next());
    }

    public static ArrayList z(Iterable iterable) {
        iterable.getClass();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static ArrayList z0(Collection collection) {
        collection.getClass();
        return new ArrayList(collection);
    }
}
