package kotlinx.datetime.internal.format.parser;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lkotlinx/datetime/internal/format/parser/ParseError;", "", "", "position", "Lkotlin/Function0;", "", "message", "<init>", "(ILkotlin/jvm/functions/Function0;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ParseError {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f75456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f75457b;

    public ParseError(int i2, Function0<String> function0) {
        function0.getClass();
        this.f75456a = i2;
        this.f75457b = function0;
    }
}
