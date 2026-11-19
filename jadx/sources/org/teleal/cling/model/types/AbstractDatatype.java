package org.teleal.cling.model.types;

import defpackage.cj;
import java.lang.reflect.ParameterizedType;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractDatatype<V> implements Datatype<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Datatype.Builtin f78500a;

    @Override // org.teleal.cling.model.types.Datatype
    public String a(Object obj) {
        if (obj == null) {
            return "";
        }
        if (b(obj)) {
            return obj.toString();
        }
        throw new InvalidValueException(cj.i(obj, "Value is not valid: "));
    }

    @Override // org.teleal.cling.model.types.Datatype
    public boolean b(Object obj) {
        return obj == null || f().isAssignableFrom(obj.getClass());
    }

    @Override // org.teleal.cling.model.types.Datatype
    public final String c() {
        if (this instanceof CustomDatatype) {
            return ((CustomDatatype) this).f78501b;
        }
        Datatype.Builtin builtin = this.f78500a;
        return builtin != null ? builtin.c() : f().getSimpleName();
    }

    @Override // org.teleal.cling.model.types.Datatype
    public final Datatype.Builtin d() {
        return this.f78500a;
    }

    @Override // org.teleal.cling.model.types.Datatype
    public Object e(String str) {
        return null;
    }

    public Class f() {
        return (Class) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }

    public String toString() {
        return "(" + getClass().getSimpleName() + ")";
    }
}
