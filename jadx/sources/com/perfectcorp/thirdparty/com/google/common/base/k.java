package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final enum k extends Predicates.f {
    public k() {
        super("NOT_NULL", 3);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return obj != null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.notNull()";
    }
}
