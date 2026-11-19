package kotlinx.datetime;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0007\b\u0016¢\u0006\u0002\u0010\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u000f\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB\u0017\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lkotlinx/datetime/IllegalTimeZoneException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "()V", "message", "", "(Ljava/lang/String;)V", "cause", "", "(Ljava/lang/Throwable;)V", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class IllegalTimeZoneException extends IllegalArgumentException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalTimeZoneException(String str, Throwable th) {
        super(str, th);
        str.getClass();
        th.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalTimeZoneException(String str) {
        super(str);
        str.getClass();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IllegalTimeZoneException(Throwable th) {
        super(th);
        th.getClass();
    }

    public IllegalTimeZoneException() {
    }
}
