package kotlin.properties;

import defpackage.fc;
import defpackage.lc0;
import kotlin.Metadata;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlin/properties/NotNullVar;", "", "T", "Lkotlin/properties/ReadWriteProperty;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class NotNullVar<T> implements ReadWriteProperty<Object, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f71938a;

    @Override // kotlin.properties.ReadWriteProperty
    public final void a(Object obj, KProperty kProperty) {
        kProperty.getClass();
        obj.getClass();
        this.f71938a = obj;
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final Object b(Object obj, KProperty kProperty) {
        kProperty.getClass();
        Object obj2 = this.f71938a;
        if (obj2 != null) {
            return obj2;
        }
        lc0.w("Property ", kProperty.getName(), " should be initialized before get.");
        return null;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("NotNullProperty(");
        if (this.f71938a != null) {
            str = "value=" + this.f71938a;
        } else {
            str = "value not initialized yet";
        }
        return fc.l(sb, str, ')');
    }
}
