package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyWrappedType extends WrappedType {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StorageManager f74210c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotNullLazyValue f74211e;

    public LazyWrappedType(StorageManager storageManager, Function0<? extends KotlinType> function0) {
        storageManager.getClass();
        function0.getClass();
        this.f74210c = storageManager;
        this.d = function0;
        this.f74211e = storageManager.c(function0);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.KotlinType
    /* JADX INFO: renamed from: J0 */
    public final KotlinType M0(final KotlinTypeRefiner kotlinTypeRefiner) {
        kotlinTypeRefiner.getClass();
        return new LazyWrappedType(this.f74210c, new Function0(kotlinTypeRefiner, this) { // from class: kotlin.reflect.jvm.internal.impl.types.LazyWrappedType$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KotlinTypeRefiner f74212b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final LazyWrappedType f74213c;

            {
                this.f74212b = kotlinTypeRefiner;
                this.f74213c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.f74212b.f((KotlinTypeMarker) this.f74213c.d.mo47invoke());
            }
        });
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    public final KotlinType L0() {
        return (KotlinType) this.f74211e.mo47invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.WrappedType
    public final boolean M0() {
        return this.f74211e.y();
    }
}
