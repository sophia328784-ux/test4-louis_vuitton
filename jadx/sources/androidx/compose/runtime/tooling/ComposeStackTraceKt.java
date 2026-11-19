package androidx.compose.runtime.tooling;

import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ComposeStackTraceKt {
    public static final boolean a(Throwable th, Function0 function0) {
        DiagnosticComposeException diagnosticComposeException;
        th.getClass();
        List listB = PlatformImplementationsKt.f71866a.b(th);
        int size = listB.size();
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            if (((Throwable) listB.get(i2)) instanceof DiagnosticComposeException) {
                return false;
            }
        }
        try {
            ComposeStackTrace composeStackTrace = (ComposeStackTrace) function0.mo47invoke();
            if (composeStackTrace != null) {
                boolean z2 = composeStackTrace.f8552b;
                List list = composeStackTrace.f8551a;
                if (z2) {
                    int size2 = list.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        if (((ComposeStackTraceFrame) list.get(i3)).f8555b != null) {
                            z = true;
                            break;
                        }
                    }
                } else if (!list.isEmpty()) {
                    z = true;
                    break;
                }
            }
            if (z) {
                composeStackTrace.getClass();
                diagnosticComposeException = new DiagnosticComposeException(composeStackTrace);
            } else {
                diagnosticComposeException = null;
            }
        } catch (Throwable th2) {
            diagnosticComposeException = th2;
        }
        if (diagnosticComposeException != null) {
            ExceptionsKt.a(th, diagnosticComposeException);
        }
        return z;
    }
}
