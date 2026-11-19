package kotlin.reflect.jvm.internal.impl.util;

import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final class NullableArrayMapAccessor<K, V, T extends V> extends AbstractArrayMapOwner.AbstractArrayMapAccessor<K, V, T> implements ReadOnlyProperty<AbstractArrayMapOwner<K, V>, V> {
    public NullableArrayMapAccessor(int i2) {
        super(i2);
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final Object b(Object obj, KProperty kProperty) {
        AbstractArrayMapOwner abstractArrayMapOwner = (AbstractArrayMapOwner) obj;
        abstractArrayMapOwner.getClass();
        kProperty.getClass();
        return abstractArrayMapOwner.f().get(this.f74326a);
    }
}
