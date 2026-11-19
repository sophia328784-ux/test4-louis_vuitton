package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ValueClassRepresentation<Type extends RigidTypeMarker> {
    public ValueClassRepresentation(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public abstract boolean a(Name name);
}
