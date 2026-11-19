package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;

/* JADX INFO: loaded from: classes4.dex */
class AbstractTypeChecker$$Lambda$1 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeCheckerState f74162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypeSystemContext f74163c;
    public final RigidTypeMarker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RigidTypeMarker f74164e;

    public AbstractTypeChecker$$Lambda$1(TypeCheckerState typeCheckerState, TypeSystemContext typeSystemContext, RigidTypeMarker rigidTypeMarker, RigidTypeMarker rigidTypeMarker2) {
        this.f74162b = typeCheckerState;
        this.f74163c = typeSystemContext;
        this.d = rigidTypeMarker;
        this.f74164e = rigidTypeMarker2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        TypeSystemContext typeSystemContext = this.f74163c;
        typeSystemContext.getClass();
        RigidTypeMarker rigidTypeMarker = this.d;
        rigidTypeMarker.getClass();
        return Boolean.valueOf(AbstractTypeChecker.i(this.f74162b, typeSystemContext, typeSystemContext.n(rigidTypeMarker), this.f74164e));
    }
}
