package kotlin.time;

import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.internal.jdk8.JDK8PlatformImplementations;
import kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$1;
import kotlin.internal.jdk8.JDK8PlatformImplementations$getSystemClock$2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-stdlib"}, k = 2, mv = {2, 4, 0}, xi = 48)
public abstract class InstantJvmKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Clock f74578a;

    static {
        PlatformImplementationsKt.f71866a.getClass();
        f74578a = JDK8PlatformImplementations.c(26) ? new JDK8PlatformImplementations$getSystemClock$1() : new JDK8PlatformImplementations$getSystemClock$2();
    }
}
