package kotlinx.datetime.internal.format.parser;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/parser/ConstantNumberConsumer;", "Receiver", "Lkotlinx/datetime/internal/format/parser/NumberConsumer;", "", "expected", "<init>", "(Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConstantNumberConsumer<Receiver> extends NumberConsumer<Receiver> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f75438c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstantNumberConsumer(String str) {
        super(Integer.valueOf(str.length()), "the predefined string ".concat(str), null);
        str.getClass();
        this.f75438c = str;
    }

    @Override // kotlinx.datetime.internal.format.parser.NumberConsumer
    public final NumberConsumptionError a(Object obj, int i2, int i3, String str) {
        String string = str.subSequence(i2, i3).toString();
        String str2 = this.f75438c;
        if (Intrinsics.c(string, str2)) {
            return null;
        }
        return new NumberConsumptionError.WrongConstant(str2);
    }
}
