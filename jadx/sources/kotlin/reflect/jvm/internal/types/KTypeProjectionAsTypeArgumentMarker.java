package kotlin.reflect.jvm.internal.types;

import kotlin.Metadata;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.jvm.internal.impl.types.model.TypeArgumentMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/reflect/jvm/internal/types/KTypeProjectionAsTypeArgumentMarker;", "Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;", "Lkotlin/reflect/KTypeProjection;", "value", "<init>", "(Lkotlin/reflect/KTypeProjection;)V", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KTypeProjectionAsTypeArgumentMarker implements TypeArgumentMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KTypeProjection f74426a;

    public KTypeProjectionAsTypeArgumentMarker(KTypeProjection kTypeProjection) {
        kTypeProjection.getClass();
        this.f74426a = kTypeProjection;
    }
}
