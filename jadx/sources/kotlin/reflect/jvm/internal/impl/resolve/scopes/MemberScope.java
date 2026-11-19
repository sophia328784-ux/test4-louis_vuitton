package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public interface MemberScope extends ResolutionScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f73929a = Companion.f73930a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Companion f73930a = new Companion();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Function1 f73931b = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$$Lambda$0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                MemberScope.Companion companion = MemberScope.Companion.f73930a;
                ((Name) obj).getClass();
                return Boolean.TRUE;
            }
        };
    }

    public static final class Empty extends MemberScopeImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Empty f73933b = new Empty();

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set a() {
            return EmptySet.f71770b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set d() {
            return EmptySet.f71770b;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public final Set e() {
            return EmptySet.f71770b;
        }
    }

    Set a();

    Collection b(Name name, LookupLocation lookupLocation);

    Collection c(Name name, LookupLocation lookupLocation);

    Set d();

    Set e();
}
