package com.perfectcorp.thirdparty.com.google.common.base;

/* JADX INFO: loaded from: classes3.dex */
final enum i extends Predicates.f {
    public i() {
        super("ALWAYS_FALSE", 1);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
    public final boolean apply(Object obj) {
        return false;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "Predicates.alwaysFalse()";
    }
}
