package kotlin.reflect.jvm;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.internal.PropertyReference;
import kotlin.reflect.KCallable;
import kotlin.reflect.KFunction;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectKCallable;
import kotlin.reflect.jvm.internal.ReflectKProperty;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ReflectJvmMapping {
    /* JADX WARN: Code duplicated, block: B:10:0x001e  */
    public static final Field a(KProperty kProperty) {
        ReflectKProperty reflectKProperty;
        kProperty.getClass();
        FqName fqName = UtilKt.f72187a;
        if (kProperty instanceof ReflectKProperty) {
            reflectKProperty = (ReflectKProperty) kProperty;
        } else if (kProperty instanceof PropertyReference) {
            KCallable kCallableCompute = ((PropertyReference) kProperty).compute();
            if (kCallableCompute instanceof ReflectKProperty) {
                reflectKProperty = (ReflectKProperty) kCallableCompute;
            } else {
                reflectKProperty = null;
            }
        } else {
            reflectKProperty = null;
        }
        if (reflectKProperty != null) {
            return reflectKProperty.z();
        }
        return null;
    }

    public static final Method b(KFunction kFunction) {
        Caller callerX;
        kFunction.getClass();
        ReflectKCallable reflectKCallableA = UtilKt.a(kFunction);
        Member memberB = (reflectKCallableA == null || (callerX = reflectKCallableA.x()) == null) ? null : callerX.b();
        if (memberB instanceof Method) {
            return (Method) memberB;
        }
        return null;
    }
}
