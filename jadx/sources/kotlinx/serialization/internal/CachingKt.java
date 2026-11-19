package kotlinx.serialization.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class CachingKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f75582a;

    static {
        boolean z;
        try {
            Class.forName("java.lang.ClassValue");
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        f75582a = z;
    }

    public static final SerializerCache a(Function1 function1) {
        return f75582a ? new ClassValueCache(function1) : new ConcurrentHashMapCache(function1);
    }

    public static final ParametrizedSerializerCache b(Function2 function2) {
        return f75582a ? new ClassValueParametrizedCache(function2) : new ConcurrentHashMapParametrizedCache(function2);
    }
}
