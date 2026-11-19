package com.google.common.base;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Functions {

    public static final class ConstantFunction<E> implements Function<Object, E>, Serializable {
        private static final long serialVersionUID = 0;

        @Override // com.google.common.base.Function
        public final Object apply(Object obj) {
            return null;
        }

        @Override // com.google.common.base.Function
        public final boolean equals(Object obj) {
            return obj instanceof ConstantFunction;
        }

        public final int hashCode() {
            return 0;
        }

        public final String toString() {
            return "Functions.constant(null)";
        }
    }

    public static Function a() {
        return new ConstantFunction();
    }
}
