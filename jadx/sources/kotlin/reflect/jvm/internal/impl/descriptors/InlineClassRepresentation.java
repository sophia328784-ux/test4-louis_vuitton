package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class InlineClassRepresentation<Type extends RigidTypeMarker> extends ValueClassRepresentation<Type> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Name f72378a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RigidTypeMarker f72379b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InlineClassRepresentation(Name name, Type type) {
        super(null);
        name.getClass();
        type.getClass();
        this.f72378a = name;
        this.f72379b = type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation
    public final boolean a(Name name) {
        name.getClass();
        return Intrinsics.c(this.f72378a, name);
    }

    public final String toString() {
        return "InlineClassRepresentation(underlyingPropertyName=" + this.f72378a + ", underlyingType=" + this.f72379b + ')';
    }
}
