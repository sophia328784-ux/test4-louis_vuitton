package kotlin;

import kotlin.internal.PlatformImplementationsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"kotlin/ExceptionsKt__ExceptionsKt"}, k = 4, mv = {2, 4, 0}, xi = 49)
public abstract class ExceptionsKt extends ExceptionsKt__ExceptionsKt {
    public static void a(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            PlatformImplementationsKt.f71866a.a(th, th2);
        }
    }
}
