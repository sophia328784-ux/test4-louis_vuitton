package com.google.common.base;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Predicates {

    public static final class AndPredicate<T> implements Predicate<T>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f33485b;

        public AndPredicate(List list) {
            this.f33485b = list;
        }

        @Override // com.google.common.base.Predicate
        public final boolean apply(Object obj) {
            int i2 = 0;
            while (true) {
                List list = this.f33485b;
                if (i2 >= list.size()) {
                    return true;
                }
                if (!((Predicate) list.get(i2)).apply(obj)) {
                    return false;
                }
                i2++;
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof AndPredicate) {
                return this.f33485b.equals(((AndPredicate) obj).f33485b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f33485b.hashCode() + 306654252;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Predicates.and(");
            boolean z = true;
            for (T t : this.f33485b) {
                if (!z) {
                    sb.append(',');
                }
                sb.append(t);
                z = false;
            }
            sb.append(')');
            return sb.toString();
        }
    }

    public enum ObjectPredicate implements Predicate<Object> {
        ALWAYS_TRUE { // from class: com.google.common.base.Predicates.ObjectPredicate.1
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return true;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysTrue()";
            }
        },
        ALWAYS_FALSE { // from class: com.google.common.base.Predicates.ObjectPredicate.2
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return false;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.alwaysFalse()";
            }
        },
        IS_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.3
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return obj == null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.isNull()";
            }
        },
        NOT_NULL { // from class: com.google.common.base.Predicates.ObjectPredicate.4
            @Override // com.google.common.base.Predicate
            public final boolean apply(Object obj) {
                return obj != null;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "Predicates.notNull()";
            }
        }
    }

    public static Predicate a() {
        ObjectPredicate objectPredicate = ObjectPredicate.ALWAYS_TRUE;
        objectPredicate.getClass();
        return objectPredicate;
    }

    public static Predicate b(Predicate predicate, Predicate predicate2) {
        predicate.getClass();
        return new AndPredicate(Arrays.asList(predicate, predicate2));
    }
}
