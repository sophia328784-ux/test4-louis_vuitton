package kotlin.properties;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/properties/ObservableProperty;", "V", "Lkotlin/properties/ReadWriteProperty;", "", "initialValue", "<init>", "(Ljava/lang/Object;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class ObservableProperty<V> implements ReadWriteProperty<Object, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f71939a;

    public ObservableProperty(V v) {
        this.f71939a = v;
    }

    @Override // kotlin.properties.ReadWriteProperty
    public final void a(Object obj, KProperty kProperty) {
        kProperty.getClass();
        Object obj2 = this.f71939a;
        d(kProperty);
        this.f71939a = obj;
        c(kProperty, obj2, obj);
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final Object b(Object obj, KProperty kProperty) {
        kProperty.getClass();
        return this.f71939a;
    }

    public void c(KProperty kProperty, Object obj, Object obj2) {
        kProperty.getClass();
    }

    public void d(KProperty kProperty) {
        kProperty.getClass();
    }

    public final String toString() {
        return o60.r(new StringBuilder("ObservableProperty(value="), this.f71939a, ')');
    }
}
