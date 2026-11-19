package kotlin.reflect.jvm.internal.impl.descriptors;

import defpackage.tr;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class MultiFieldValueClassRepresentation<Type extends RigidTypeMarker> extends ValueClassRepresentation<Type> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f72382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f72383b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiFieldValueClassRepresentation(List<? extends Pair<Name, ? extends Type>> list) {
        super(null);
        list.getClass();
        this.f72382a = list;
        this.f72383b = MapsKt.n(list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueClassRepresentation
    public final boolean a(Name name) {
        name.getClass();
        return this.f72383b.containsKey(name);
    }

    public final String toString() {
        return tr.m(new StringBuilder("MultiFieldValueClassRepresentation(underlyingPropertyNamesToTypes="), this.f72382a, ')');
    }
}
