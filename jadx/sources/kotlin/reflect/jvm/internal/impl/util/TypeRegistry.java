package kotlin.reflect.jvm.internal.impl.util;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes4.dex */
public abstract class TypeRegistry<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f74374a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicInteger f74375b = new AtomicInteger(0);

    public abstract int a(ConcurrentHashMap concurrentHashMap, String str, Function1 function1);

    public final int b(KClass kClass) {
        kClass.getClass();
        String strW = kClass.w();
        strW.getClass();
        return a(this.f74374a, strW, new TypeRegistry$$Lambda$0(this));
    }
}
