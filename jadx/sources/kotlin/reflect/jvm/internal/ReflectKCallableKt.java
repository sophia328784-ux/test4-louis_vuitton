package kotlin.reflect.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.CallableReference;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReflectKCallableKt {
    public static final boolean a(ReflectKCallable reflectKCallable) {
        reflectKCallable.getClass();
        return reflectKCallable.C() != CallableReference.NO_RECEIVER;
    }
}
