package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final enum j extends Predicates.f {
    public j() {
        super("IS_NULL", 2);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return obj == null;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.isNull()";
    }
}
