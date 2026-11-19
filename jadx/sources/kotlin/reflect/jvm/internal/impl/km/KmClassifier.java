package kotlin.reflect.jvm.internal.impl.km;

import defpackage.fc;
import defpackage.tr;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KmClassifier {

    public static final class Class extends KmClassifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72700a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Class(String str) {
            super(null);
            str.getClass();
            this.f72700a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Class) && Intrinsics.c(this.f72700a, ((Class) obj).f72700a);
        }

        public final int hashCode() {
            return this.f72700a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("Class(name="), this.f72700a, ')');
        }
    }

    public static final class TypeAlias extends KmClassifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f72701a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TypeAlias(String str) {
            super(null);
            str.getClass();
            this.f72701a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TypeAlias) && Intrinsics.c(this.f72701a, ((TypeAlias) obj).f72701a);
        }

        public final int hashCode() {
            return this.f72701a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("TypeAlias(name="), this.f72701a, ')');
        }
    }

    public static final class TypeParameter extends KmClassifier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f72702a;

        public TypeParameter(int i2) {
            super(null);
            this.f72702a = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TypeParameter) && this.f72702a == ((TypeParameter) obj).f72702a;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f72702a);
        }

        public final String toString() {
            return tr.k(new StringBuilder("TypeParameter(id="), this.f72702a, ')');
        }
    }

    public KmClassifier(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
