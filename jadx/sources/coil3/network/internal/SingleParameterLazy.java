package coil3.network.internal;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u00060\u0003j\u0002`\u0004B\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcoil3/network/internal/SingleParameterLazy;", "P", "T", "", "Lkotlinx/atomicfu/locks/SynchronizedObject;", "Lkotlin/Function1;", "initializer", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "io.coil-kt.coil3:coil-network-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SingleParameterLazy<P, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Function1 f21586a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f21587b = UNINITIALIZED.f21588a;

    public SingleParameterLazy(Function1<? super P, ? extends T> function1) {
        this.f21586a = function1;
    }

    public final Object a(Object obj) {
        Object objInvoke;
        Object obj2 = this.f21587b;
        UNINITIALIZED uninitialized = UNINITIALIZED.f21588a;
        if (obj2 != uninitialized) {
            return obj2;
        }
        synchronized (this) {
            objInvoke = this.f21587b;
            if (objInvoke == uninitialized) {
                Function1 function1 = this.f21586a;
                function1.getClass();
                objInvoke = function1.invoke(obj);
                this.f21587b = objInvoke;
                this.f21586a = null;
            }
        }
        return objInvoke;
    }
}
