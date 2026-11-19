package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public interface JavaClassFinder {
    ReflectJavaClass a(Request request);

    ReflectJavaPackage b(FqName fqName);

    void c(FqName fqName);

    public static final class Request {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ClassId f72834a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f72835b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final JavaClass f72836c;

        public /* synthetic */ Request(ClassId classId, byte[] bArr, JavaClass javaClass, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(classId, (i2 & 2) != 0 ? null : bArr, (i2 & 4) != 0 ? null : javaClass);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Request)) {
                return false;
            }
            Request request = (Request) obj;
            return Intrinsics.c(this.f72834a, request.f72834a) && Intrinsics.c(this.f72835b, request.f72835b) && Intrinsics.c(this.f72836c, request.f72836c);
        }

        public final int hashCode() {
            int iHashCode = this.f72834a.hashCode() * 31;
            byte[] bArr = this.f72835b;
            int iHashCode2 = (iHashCode + (bArr == null ? 0 : Arrays.hashCode(bArr))) * 31;
            JavaClass javaClass = this.f72836c;
            return iHashCode2 + (javaClass != null ? javaClass.hashCode() : 0);
        }

        public final String toString() {
            return "Request(classId=" + this.f72834a + ", previouslyFoundClassFileContent=" + Arrays.toString(this.f72835b) + ", outerClass=" + this.f72836c + ')';
        }

        public Request(ClassId classId, byte[] bArr, JavaClass javaClass) {
            classId.getClass();
            this.f72834a = classId;
            this.f72835b = bArr;
            this.f72836c = javaClass;
        }
    }
}
