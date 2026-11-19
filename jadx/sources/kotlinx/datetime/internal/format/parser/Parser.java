package kotlinx.datetime.internal.format.parser;

import defpackage.mt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function0;
import kotlinx.datetime.internal.format.parser.Copyable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081@\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003:\u0001\u0004\u0088\u0001\u0005\u0092\u0001\b\u0012\u0004\u0012\u00028\u00000\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/parser/Parser;", "Lkotlinx/datetime/internal/format/parser/Copyable;", "Output", "", "ParserState", "commands", "Lkotlinx/datetime/internal/format/parser/ParserStructure;", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
@JvmInline
public abstract class Parser<Output extends Copyable<Output>> {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\u00020\u0002B%\u0012\u0006\u0010\u0003\u001a\u00028\u0001\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/datetime/internal/format/parser/Parser$ParserState;", "Output", "", "output", "Lkotlinx/datetime/internal/format/parser/ParserStructure;", "parserStructure", "", "inputPosition", "<init>", "(Ljava/lang/Object;Lkotlinx/datetime/internal/format/parser/ParserStructure;I)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class ParserState<Output> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f75459a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ParserStructure f75460b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f75461c;

        public ParserState(Output output, ParserStructure<? super Output> parserStructure, int i2) {
            parserStructure.getClass();
            this.f75459a = output;
            this.f75460b = parserStructure;
            this.f75461c = i2;
        }
    }

    public static Copyable a(ParserStructure parserStructure, String str, Copyable copyable) throws ParseException {
        copyable.getClass();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayListU = CollectionsKt.U(new ParserState(copyable, parserStructure, 0));
        while (true) {
            ParserState parserState = (ParserState) CollectionsKt.d0(arrayListU);
            if (parserState != null) {
                Copyable copyable2 = (Copyable) ((Copyable) parserState.f75459a).copy();
                int iIntValue = parserState.f75461c;
                ParserStructure parserStructure2 = parserState.f75460b;
                List list = parserStructure2.f75466a;
                List list2 = parserStructure2.f75467b;
                int size = list.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        if (!list2.isEmpty()) {
                            int size2 = list2.size() - 1;
                            if (size2 < 0) {
                                break;
                            }
                            while (true) {
                                int i3 = size2 - 1;
                                arrayListU.add(new ParserState(copyable2, (ParserStructure) list2.get(size2), iIntValue));
                                if (i3 < 0) {
                                    break;
                                }
                                size2 = i3;
                            }
                        } else {
                            if (iIntValue != str.length()) {
                                arrayList.add(new ParseError(iIntValue, new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.Parser$parse$1$3
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final /* bridge */ /* synthetic */ Object mo47invoke() {
                                        return "There is more input to consume";
                                    }
                                }));
                                break;
                            }
                            return copyable2;
                        }
                    } else {
                        Object objA = ((ParserOperation) parserStructure2.f75466a.get(i2)).a(copyable2, str, iIntValue);
                        if (!(objA instanceof Integer)) {
                            if (objA instanceof ParseError) {
                                arrayList.add((ParseError) objA);
                                break;
                            }
                            mt.f(objA, "Unexpected parse result: ");
                            return null;
                        }
                        iIntValue = ((Number) objA).intValue();
                        i2++;
                    }
                }
            } else {
                if (arrayList.size() > 1) {
                    CollectionsKt.m0(new Comparator() { // from class: kotlinx.datetime.internal.format.parser.Parser$match-impl$$inlined$sortByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(Object obj, Object obj2) {
                            return Integer.valueOf(((ParseError) obj2).f75456a).compareTo(Integer.valueOf(((ParseError) obj).f75456a));
                        }
                    }, arrayList);
                }
                throw new ParseException(arrayList);
            }
        }
    }
}
