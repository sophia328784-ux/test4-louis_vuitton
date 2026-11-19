package okio.internal;

import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _JavaIoKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f77492a = Logger.getLogger("okio.Okio");

    public static final boolean a(AssertionError assertionError) {
        if (assertionError.getCause() != null) {
            String message = assertionError.getMessage();
            if (message != null ? StringsKt.k(message, "getsockname failed", false) : false) {
                return true;
            }
        }
        return false;
    }
}
