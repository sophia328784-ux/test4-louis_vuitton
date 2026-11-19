package kotlinx.datetime.internal.format.parser;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B1\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lkotlinx/datetime/internal/format/parser/SignParser;", "Output", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "Lkotlin/Function2;", "", "", "isNegativeSetter", "withPlusSign", "", "whatThisExpects", "<init>", "(Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignParser<Output> implements ParserOperation<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function2 f75473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f75475c;

    public SignParser(Function2<? super Output, ? super Boolean, Unit> function2, boolean z, String str) {
        function2.getClass();
        str.getClass();
        this.f75473a = function2;
        this.f75474b = z;
        this.f75475c = str;
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    public final Object a(Copyable copyable, String str, int i2) {
        if (i2 >= str.length()) {
            ParseResult.f75458a.getClass();
            return Integer.valueOf(i2);
        }
        final char cCharAt = str.charAt(i2);
        Function2 function2 = this.f75473a;
        if (cCharAt == '-') {
            function2.invoke(copyable, Boolean.TRUE);
            ParseResult.f75458a.getClass();
            return Integer.valueOf(i2 + 1);
        }
        if (cCharAt == '+' && this.f75474b) {
            function2.invoke(copyable, Boolean.FALSE);
            ParseResult.f75458a.getClass();
            return Integer.valueOf(i2 + 1);
        }
        ParseResult.Companion companion = ParseResult.f75458a;
        Function0<String> function0 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.SignParser$consume$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return "Expected " + this.f75476c.f75475c + " but got " + cCharAt;
            }
        };
        companion.getClass();
        return new ParseError(i2, function0);
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF75475c() {
        return this.f75475c;
    }
}
