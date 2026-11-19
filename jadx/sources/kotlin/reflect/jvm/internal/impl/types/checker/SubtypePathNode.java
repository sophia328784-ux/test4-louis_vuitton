package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* JADX INFO: loaded from: classes4.dex */
final class SubtypePathNode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KotlinType f74292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SubtypePathNode f74293b;

    public SubtypePathNode(KotlinType kotlinType, SubtypePathNode subtypePathNode) {
        kotlinType.getClass();
        this.f74292a = kotlinType;
        this.f74293b = subtypePathNode;
    }
}
