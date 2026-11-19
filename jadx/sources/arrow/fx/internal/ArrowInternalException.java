package arrow.fx.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0010\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Larrow/fx/internal/ArrowInternalException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "message", "<init>", "(Ljava/lang/String;)V", "arrow-fx"}, k = 1, mv = {1, 4, 2})
public class ArrowInternalException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f20610b;

    public /* synthetic */ ArrowInternalException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "Arrow-kt internal error. Please let us know and create a ticket at https://github.com/arrow-kt/arrow/issues/new/choose" : str);
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f20610b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArrowInternalException() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrowInternalException(String str) {
        super(str);
        str.getClass();
        this.f20610b = str;
    }
}
