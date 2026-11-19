package kotlin.reflect.jvm.internal.types;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CapturedKTypeKt {
    public static final List a(KClass kClass) {
        kClass.getClass();
        return SequencesKt.x(SequencesKt.j(SequencesKt.n(kClass, new Function1() { // from class: kotlin.reflect.jvm.internal.types.CapturedKTypeKt$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Class<?> declaringClass;
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                if (!kClass2.k() || (declaringClass = JvmClassMappingKt.b(kClass2).getDeclaringClass()) == null) {
                    return null;
                }
                return Reflection.f71922a.b(declaringClass);
            }
        }), new Function1() { // from class: kotlin.reflect.jvm.internal.types.CapturedKTypeKt$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KClass kClass2 = (KClass) obj;
                kClass2.getClass();
                return kClass2.getD();
            }
        }));
    }
}
