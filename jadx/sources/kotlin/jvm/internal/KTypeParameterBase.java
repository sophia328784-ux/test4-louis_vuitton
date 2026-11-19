package kotlin.jvm.internal;

import defpackage.ss;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.reflect.KTypeParameter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/jvm/internal/KTypeParameterBase;", "Lkotlin/reflect/KTypeParameter;", "", "Lkotlin/jvm/internal/TypeParameterContainer;", "container", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class KTypeParameterBase implements KTypeParameter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f71913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lazy f71914c;

    public KTypeParameterBase(Object obj) {
        obj.getClass();
        this.f71913b = obj;
        this.f71914c = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ss(this, 24));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KTypeParameterBase)) {
            return false;
        }
        KTypeParameterBase kTypeParameterBase = (KTypeParameterBase) obj;
        return Intrinsics.c(((TypeParameterReference) this).d, ((TypeParameterReference) kTypeParameterBase).d) && Intrinsics.c(this.f71913b, kTypeParameterBase.f71913b);
    }

    public final int hashCode() {
        return ((TypeParameterReference) this).d.hashCode() + (this.f71913b.hashCode() * 31);
    }

    public final String toString() {
        TypeParameterReference.INSTANCE.getClass();
        return TypeParameterReference.Companion.a(this);
    }
}
