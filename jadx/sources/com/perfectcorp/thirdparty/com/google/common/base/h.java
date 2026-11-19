package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final enum h extends Predicates.f {
    public h() {
        super("ALWAYS_TRUE", 0);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return true;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.alwaysTrue()";
    }
}
