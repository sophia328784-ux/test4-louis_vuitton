package org.apache.commons.lang3.mutable;

import java.util.function.Supplier;

/* JADX INFO: loaded from: classes3.dex */
public interface Mutable<T> extends Supplier<T> {
    @Override // java.util.function.Supplier
    default Object get() {
        return getValue();
    }

    Object getValue();
}
