package kotlin.reflect.jvm.internal.impl.resolve.scopes;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DescriptorKindExclude {

    public static final class NonExtensions extends DescriptorKindExclude {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NonExtensions f73907a = new NonExtensions();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f73908b;

        static {
            DescriptorKindFilter.Companion companion = DescriptorKindFilter.f73910c;
            companion.getClass();
            int i2 = DescriptorKindFilter.f73915j;
            companion.getClass();
            int i3 = DescriptorKindFilter.f73913h;
            companion.getClass();
            f73908b = (~(DescriptorKindFilter.f73914i | i3)) & i2;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude
        public final int a() {
            return f73908b;
        }
    }

    public static final class TopLevelPackages extends DescriptorKindExclude {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final TopLevelPackages f73909a = new TopLevelPackages();

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindExclude
        public final int a() {
            return 0;
        }
    }

    public abstract int a();

    public final String toString() {
        return getClass().getSimpleName();
    }
}
