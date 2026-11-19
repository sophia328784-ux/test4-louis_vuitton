package kotlinx.datetime.internal.format;

import defpackage.lc0;
import kotlin.Metadata;
import kotlin.reflect.KMutableProperty1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003B\u001d\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/datetime/internal/format/PropertyAccessor;", "Object", "Field", "Lkotlinx/datetime/internal/format/Accessor;", "Lkotlin/reflect/KMutableProperty1;", "property", "<init>", "(Lkotlin/reflect/KMutableProperty1;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PropertyAccessor<Object, Field> implements Accessor<Object, Field> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final KMutableProperty1 f75409a;

    public PropertyAccessor(KMutableProperty1<Object, Field> kMutableProperty1) {
        kMutableProperty1.getClass();
        this.f75409a = kMutableProperty1;
    }

    @Override // kotlinx.datetime.internal.format.Accessor
    public final Object a(Object obj) {
        return this.f75409a.get(obj);
    }

    @Override // kotlinx.datetime.internal.format.Accessor
    public final Object b(Object obj) {
        Object objA = a(obj);
        if (objA != null) {
            return objA;
        }
        lc0.w("Field ", getName(), " is not set");
        return null;
    }

    @Override // kotlinx.datetime.internal.format.parser.AssignableField
    public final Object c(Object obj, Object obj2) {
        KMutableProperty1 kMutableProperty1 = this.f75409a;
        Object obj3 = kMutableProperty1.get(obj);
        if (obj3 == null) {
            kMutableProperty1.o(obj, obj2);
            return null;
        }
        if (obj3.equals(obj2)) {
            return null;
        }
        return obj3;
    }

    @Override // kotlinx.datetime.internal.format.parser.AssignableField
    public final String getName() {
        return this.f75409a.getName();
    }
}
