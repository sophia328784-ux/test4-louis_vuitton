package kotlinx.serialization.internal;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lkotlinx/serialization/internal/KTypeWrapper;", "Lkotlin/reflect/KType;", "origin", "<init>", "(Lkotlin/reflect/KType;)V", "kotlinx-serialization-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class KTypeWrapper implements KType {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KType f75626b;

    public KTypeWrapper(KType kType) {
        kType.getClass();
        this.f75626b = kType;
    }

    @Override // kotlin.reflect.KType
    public final KClassifier a() {
        return this.f75626b.a();
    }

    @Override // kotlin.reflect.KType
    public final List b() {
        return this.f75626b.b();
    }

    @Override // kotlin.reflect.KType
    public final boolean d() {
        return this.f75626b.d();
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        KTypeWrapper kTypeWrapper = obj instanceof KTypeWrapper ? (KTypeWrapper) obj : null;
        KType kType = kTypeWrapper != null ? kTypeWrapper.f75626b : null;
        KType kType2 = this.f75626b;
        if (!Intrinsics.c(kType2, kType)) {
            return false;
        }
        KClassifier kClassifierA = kType2.a();
        if (kClassifierA instanceof KClass) {
            KType kType3 = obj instanceof KType ? (KType) obj : null;
            KClassifier kClassifierA2 = kType3 != null ? kType3.a() : null;
            if (kClassifierA2 != null && (kClassifierA2 instanceof KClass)) {
                return JvmClassMappingKt.b((KClass) kClassifierA).equals(JvmClassMappingKt.b((KClass) kClassifierA2));
            }
        }
        return false;
    }

    @Override // kotlin.reflect.KAnnotatedElement
    public final List getAnnotations() {
        return this.f75626b.getAnnotations();
    }

    public final int hashCode() {
        return this.f75626b.hashCode();
    }

    public final String toString() {
        return "KTypeWrapper: " + this.f75626b;
    }
}
