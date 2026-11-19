package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinClassFinderKt {
    public static final KotlinJvmBinaryClass a(KotlinClassFinder kotlinClassFinder, ClassId classId, MetadataVersion metadataVersion) {
        kotlinClassFinder.getClass();
        classId.getClass();
        metadataVersion.getClass();
        KotlinClassFinder.Result.KotlinClass kotlinClassA = kotlinClassFinder.a(classId, metadataVersion);
        if (kotlinClassA != null) {
            return kotlinClassA.f73256a;
        }
        return null;
    }
}
