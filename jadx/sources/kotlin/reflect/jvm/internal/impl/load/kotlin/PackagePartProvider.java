package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
public interface PackagePartProvider {

    public static final class Empty implements PackagePartProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Empty f73261a = new Empty();

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider
        public final EmptyList a(String str) {
            str.getClass();
            return EmptyList.f71768b;
        }
    }

    EmptyList a(String str);
}
