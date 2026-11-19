package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.KotlinMetadataFinder;

/* JADX INFO: loaded from: classes4.dex */
public interface KotlinClassFinder extends KotlinMetadataFinder {
    Result.KotlinClass a(ClassId classId, MetadataVersion metadataVersion);

    Result.KotlinClass c(JavaClass javaClass, MetadataVersion metadataVersion);

    public static abstract class Result {
        public Result(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final class KotlinClass extends Result {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final KotlinJvmBinaryClass f73256a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public KotlinClass(KotlinJvmBinaryClass kotlinJvmBinaryClass, byte[] bArr) {
                super(null);
                kotlinJvmBinaryClass.getClass();
                this.f73256a = kotlinJvmBinaryClass;
            }

            public /* synthetic */ KotlinClass(KotlinJvmBinaryClass kotlinJvmBinaryClass, byte[] bArr, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(kotlinJvmBinaryClass, (i2 & 2) != 0 ? null : bArr);
            }
        }
    }
}
