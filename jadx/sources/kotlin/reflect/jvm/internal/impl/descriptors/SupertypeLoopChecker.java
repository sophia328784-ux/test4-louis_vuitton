package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;

/* JADX INFO: loaded from: classes4.dex */
public interface SupertypeLoopChecker {

    public static final class EMPTY implements SupertypeLoopChecker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EMPTY f72407a = new EMPTY();

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker
        public final Collection a(TypeConstructor typeConstructor, Collection collection, Function1 function1, Function1 function2) {
            typeConstructor.getClass();
            collection.getClass();
            return collection;
        }
    }

    Collection a(TypeConstructor typeConstructor, Collection collection, Function1 function1, Function1 function2);
}
