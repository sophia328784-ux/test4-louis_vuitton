package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MemberScopeKt {
    public static final HashSet a(Iterable iterable) {
        iterable.getClass();
        HashSet hashSet = new HashSet();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            Set setE = ((MemberScope) it.next()).e();
            if (setE == null) {
                return null;
            }
            CollectionsKt.j(hashSet, setE);
        }
        return hashSet;
    }
}
