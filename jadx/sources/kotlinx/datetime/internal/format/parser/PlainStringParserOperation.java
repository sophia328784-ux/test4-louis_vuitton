package kotlinx.datetime.internal.format.parser;

import defpackage.b21;
import defpackage.fc;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlinx.datetime.internal.UtilKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/parser/PlainStringParserOperation;", "Output", "Lkotlinx/datetime/internal/format/parser/ParserOperation;", "", "string", "<init>", "(Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PlainStringParserOperation<Output> implements ParserOperation<Output> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75468a;

    public PlainStringParserOperation(String str) {
        str.getClass();
        this.f75468a = str;
        if (str.length() <= 0) {
            md.n("Empty string is not allowed");
            throw null;
        }
        if (UtilKt.a(str.charAt(0))) {
            b21.n(fc.h("String '", str, "' starts with a digit"));
            throw null;
        }
        if (UtilKt.a(str.charAt(str.length() - 1))) {
            b21.n(fc.h("String '", str, "' ends with a digit"));
            throw null;
        }
    }

    @Override // kotlinx.datetime.internal.format.parser.ParserOperation
    public final Object a(Copyable copyable, final String str, final int i2) {
        String str2 = this.f75468a;
        if (str2.length() + i2 > str.length()) {
            ParseResult.Companion companion = ParseResult.f75458a;
            Function0<String> function0 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.PlainStringParserOperation$consume$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return fc.l(new StringBuilder("Unexpected end of input: yet to parse '"), this.f75469c.f75468a, '\'');
                }
            };
            companion.getClass();
            return new ParseError(i2, function0);
        }
        int length = str2.length();
        for (final int i3 = 0; i3 < length; i3++) {
            if (str.charAt(i2 + i3) != str2.charAt(i3)) {
                ParseResult.Companion companion2 = ParseResult.f75458a;
                Function0<String> function1 = new Function0<String>() { // from class: kotlinx.datetime.internal.format.parser.PlainStringParserOperation$consume$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        StringBuilder sb = new StringBuilder("Expected ");
                        sb.append(this.f75470c.f75468a);
                        sb.append(" but got ");
                        int i4 = i3;
                        int i5 = i2;
                        sb.append(str.subSequence(i5, i4 + i5 + 1).toString());
                        return sb.toString();
                    }
                };
                companion2.getClass();
                return new ParseError(i2, function1);
            }
        }
        ParseResult.Companion companion3 = ParseResult.f75458a;
        int length2 = str2.length() + i2;
        companion3.getClass();
        return Integer.valueOf(length2);
    }

    public final String toString() {
        return fc.l(new StringBuilder("'"), this.f75468a, '\'');
    }
}
