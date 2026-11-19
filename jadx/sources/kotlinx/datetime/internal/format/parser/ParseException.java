package kotlinx.datetime.internal.format.parser;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/parser/ParseException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "errors", "", "Lkotlinx/datetime/internal/format/parser/ParseError;", "(Ljava/util/List;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ParseException extends Exception {
    /* JADX WARN: Illegal instructions before constructor call */
    public ParseException(List<ParseError> list) {
        String string;
        list.getClass();
        if (list.size() == 1) {
            string = "Position " + list.get(0).f75456a + ": " + ((String) list.get(0).f75457b.mo47invoke());
        } else {
            StringBuilder sb = new StringBuilder(list.size() * 33);
            CollectionsKt.J(list, sb, ", ", "Errors: ", null, ParserKt$formatError$1.f75463c, 56);
            string = sb.toString();
        }
        super(string);
    }
}
