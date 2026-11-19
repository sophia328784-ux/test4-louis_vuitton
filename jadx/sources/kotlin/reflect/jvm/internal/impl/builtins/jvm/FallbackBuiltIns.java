package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes4.dex */
final class FallbackBuiltIns extends KotlinBuiltIns {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final KotlinBuiltIns f72304h;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        FallbackBuiltIns fallbackBuiltIns = new FallbackBuiltIns(new LockBasedStorageManager("FallbackBuiltIns"));
        fallbackBuiltIns.c(true);
        f72304h = fallbackBuiltIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns
    public final /* bridge */ /* synthetic */ PlatformDependentDeclarationFilter q() {
        return PlatformDependentDeclarationFilter.All.f72444a;
    }
}
