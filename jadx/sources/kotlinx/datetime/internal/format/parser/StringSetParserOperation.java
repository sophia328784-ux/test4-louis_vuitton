package kotlinx.datetime.internal.format.parser;

import defpackage.b21;
import defpackage.d21;
import defpackage.fc;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000bB1\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0006\u0012\u0006\u0010\b\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lkotlinx/datetime/internal/format/parser/StringSetParserOperation;", "Output", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "", "", "strings", "Lkotlinx/datetime/internal/format/parser/AssignableField;", "setter", "whatThisExpects", "<init>", "(Ljava/util/Collection;Lkotlinx/datetime/internal/format/parser/AssignableField;Ljava/lang/String;)V", "TrieNode", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StringSetParserOperation<Output> implements ParserOperation<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssignableField f75477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f75478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TrieNode f75479c;

    /* JADX WARN: Multi-variable type inference failed */
    public StringSetParserOperation(Collection<String> collection, AssignableField<? super Output, String> assignableField, String str) {
        collection.getClass();
        assignableField.getClass();
        str.getClass();
        this.f75477a = assignableField;
        this.f75478b = str;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        boolean z = false;
        int i2 = 3;
        this.f75479c = new TrieNode(null, z, i2, 0 == true ? 1 : 0);
        for (String str2 : collection) {
            if (str2.length() <= 0) {
                tg0.n(this.f75478b, "Found an empty string in ");
                throw null;
            }
            TrieNode trieNode = this.f75479c;
            int length = str2.length();
            for (int i3 = 0; i3 < length; i3++) {
                char cCharAt = str2.charAt(i3);
                List list = trieNode.f75480a;
                final String strValueOf = String.valueOf(cCharAt);
                int iP = CollectionsKt.p(list, list.size(), new Function1<Pair<? extends String, ? extends TrieNode>, Integer>() { // from class: kotlinx.datetime.internal.format.parser.StringSetParserOperation$special$$inlined$binarySearchBy$default$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return Integer.valueOf(ComparisonsKt.a((String) ((Pair) obj).f71705b, strValueOf));
                    }
                });
                if (iP < 0) {
                    TrieNode trieNode2 = new TrieNode(objArr2 == true ? 1 : 0, z, i2, objArr == true ? 1 : 0);
                    list.add((-iP) - 1, new Pair(String.valueOf(cCharAt), trieNode2));
                    trieNode = trieNode2;
                } else {
                    trieNode = (TrieNode) ((Pair) list.get(iP)).f71706c;
                }
            }
            if (trieNode.f75481b) {
                b21.n(fc.h("The string '", str2, "' was passed several times"));
                throw null;
            }
            trieNode.f75481b = true;
        }
        b(this.f75479c);
    }

    public static final void b(TrieNode trieNode) {
        List list = trieNode.f75480a;
        List<Pair> list2 = trieNode.f75480a;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((TrieNode) ((Pair) it.next()).f71706c);
        }
        ArrayList arrayList = new ArrayList();
        for (Pair pair : list2) {
            String str = (String) pair.f71705b;
            TrieNode trieNode2 = (TrieNode) pair.f71706c;
            boolean z = trieNode2.f75481b;
            List list3 = trieNode2.f75480a;
            if (z || list3.size() != 1) {
                arrayList.add(new Pair(str, trieNode2));
            } else {
                Pair pair2 = (Pair) CollectionsKt.h0(list3);
                String str2 = (String) pair2.f71705b;
                arrayList.add(new Pair(d21.j(str, str2), (TrieNode) pair2.f71706c));
            }
        }
        list2.clear();
        list2.addAll(CollectionsKt.o0(arrayList, new Comparator() { // from class: kotlinx.datetime.internal.format.parser.StringSetParserOperation$_init_$reduceTrie$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.a((String) ((Pair) obj).f71705b, (String) ((Pair) obj2).f71705b);
            }
        }));
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    public final Object a(Copyable copyable, final String str, final int i2) {
        String str2;
        TrieNode trieNode;
        int i3;
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.f71919b = i2;
        TrieNode trieNode2 = this.f75479c;
        Integer numValueOf = null;
        loop0: while (ref$IntRef.f71919b <= str.length()) {
            if (trieNode2.f75481b) {
                numValueOf = Integer.valueOf(ref$IntRef.f71919b);
            }
            Iterator it = trieNode2.f75480a.iterator();
            do {
                if (!it.hasNext()) {
                    break loop0;
                }
                Pair pair = (Pair) it.next();
                str2 = (String) pair.f71705b;
                trieNode = (TrieNode) pair.f71706c;
                i3 = ref$IntRef.f71919b;
                str2.getClass();
            } while (!StringsKt.O(str, i3, str2, false));
            ref$IntRef.f71919b = str2.length() + ref$IntRef.f71919b;
            trieNode2 = trieNode;
        }
        if (numValueOf == null) {
            ParseResult.Companion companion = ParseResult.f75458a;
            Function0<String> function0 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.StringSetParserOperation$consume$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return "Expected " + this.f75482c.f75478b + " but got " + str.subSequence(i2, ref$IntRef.f71919b).toString();
                }
            };
            companion.getClass();
            return new ParseError(i2, function0);
        }
        final String string = str.subSequence(i2, numValueOf.intValue()).toString();
        final AssignableField assignableField = this.f75477a;
        final Object objC = assignableField.c(copyable, string);
        if (objC == null) {
            ParseResult.f75458a.getClass();
            return numValueOf;
        }
        ParseResult.Companion companion2 = ParseResult.f75458a;
        Function0<String> function1 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.ParserOperationKt$setWithoutReassigning$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return "Attempting to assign conflicting values '" + objC + "' and '" + string + "' to field '" + assignableField.getName() + '\'';
            }
        };
        companion2.getClass();
        return new ParseError(i2, function1);
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B-\u0012\u001a\b\u0002\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00000\u00030\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/datetime/internal/format/parser/StringSetParserOperation$TrieNode;", "", "", "Lkotlin/Pair;", "", "children", "", "isTerminal", "<init>", "(Ljava/util/List;Z)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TrieNode {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f75480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f75481b;

        public /* synthetic */ TrieNode(List list, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new ArrayList() : list, (i2 & 2) != 0 ? false : z);
        }

        public TrieNode(List<Pair<String, TrieNode>> list, boolean z) {
            list.getClass();
            this.f75480a = list;
            this.f75481b = z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public TrieNode() {
            this(null, false, 3, 0 == true ? 1 : 0);
        }
    }
}
