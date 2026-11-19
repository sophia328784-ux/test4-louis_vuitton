package kotlinx.datetime.internal.format.parser;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/datetime/internal/format/parser/ParseError;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class ParserKt$formatError$1 extends Lambda implements Function1<ParseError, CharSequence> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ParserKt$formatError$1 f75463c = new ParserKt$formatError$1(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ParseError parseError = (ParseError) obj;
        parseError.getClass();
        StringBuilder sb = new StringBuilder("position ");
        sb.append(parseError.f75456a);
        sb.append(": '");
        return fc.l(sb, (String) parseError.f75457b.mo47invoke(), '\'');
    }
}
