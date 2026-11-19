package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.PreReleaseInfo;

/* JADX INFO: loaded from: classes4.dex */
public final class DeserializedDescriptorResolver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f73234b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set f73235c = SetsKt.h(KotlinClassHeader.Kind.CLASS);
    public static final Set d = ArraysKt.Z(new KotlinClassHeader.Kind[]{KotlinClassHeader.Kind.FILE_FACADE, KotlinClassHeader.Kind.MULTIFILE_CLASS_PART});

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final MetadataVersion f73236e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final MetadataVersion f73237f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public DeserializationComponents f73238a;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new MetadataVersion(1, 1, 2);
        f73236e = new MetadataVersion(1, 1, 11);
        f73237f = new MetadataVersion(1, 1, 13);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0020  */
    public final DeserializedPackageMemberScope a(PackageFragmentDescriptor packageFragmentDescriptor, KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        String[] strArr;
        Pair pairI;
        packageFragmentDescriptor.getClass();
        kotlinJvmBinaryClass.getClass();
        KotlinClassHeader kotlinClassHeaderC = kotlinJvmBinaryClass.c();
        String[] strArr2 = kotlinClassHeaderC.f73277c;
        if (strArr2 == null) {
            strArr2 = kotlinClassHeaderC.d;
        }
        if (strArr2 == null) {
            strArr2 = null;
        } else if (!d.contains(kotlinClassHeaderC.f73275a)) {
            strArr2 = null;
        }
        if (strArr2 != null && (strArr = kotlinJvmBinaryClass.c().f73278e) != null) {
            try {
                try {
                    pairI = JvmProtoBufUtil.i(strArr2, strArr);
                } catch (InvalidProtocolBufferException e2) {
                    throw new IllegalStateException("Could not read data from ".concat(kotlinJvmBinaryClass.e()), e2);
                }
            } catch (Throwable th) {
                c().f73990c.getClass();
                MetadataVersion metadataVersion = kotlinJvmBinaryClass.c().f73276b;
                MetadataVersion metadataVersionA = c().f73990c.a();
                metadataVersion.getClass();
                metadataVersionA.getClass();
                MetadataVersion metadataVersion2 = metadataVersion.f73585f ? MetadataVersion.g : MetadataVersion.f73584h;
                int i2 = metadataVersion2.f73569b;
                int i3 = metadataVersionA.f73569b;
                if (i2 > i3 || (i2 >= i3 && metadataVersion2.f73570c > metadataVersionA.f73570c)) {
                    metadataVersionA = metadataVersion2;
                }
                int i4 = metadataVersion.f73570c;
                int i5 = metadataVersion.f73569b;
                boolean z = false;
                if ((i5 != 1 || i4 != 0) && i5 != 0) {
                    int i6 = metadataVersionA.f73569b;
                    if (i5 > i6 || (i5 >= i6 && i4 > metadataVersionA.f73570c)) {
                        z = true;
                    }
                    z = !z;
                }
                if (z) {
                    throw th;
                }
                pairI = null;
            }
            if (pairI != null) {
                JvmNameResolver jvmNameResolver = (JvmNameResolver) pairI.f71705b;
                ProtoBuf$Package protoBuf$Package = (ProtoBuf$Package) pairI.f71706c;
                JvmPackagePartSource jvmPackagePartSource = new JvmPackagePartSource(kotlinJvmBinaryClass, protoBuf$Package, jvmNameResolver, d(kotlinJvmBinaryClass), e(kotlinJvmBinaryClass), b(kotlinJvmBinaryClass));
                return new DeserializedPackageMemberScope(packageFragmentDescriptor, protoBuf$Package, jvmNameResolver, kotlinJvmBinaryClass.c().f73276b, jvmPackagePartSource, c(), "scope for " + jvmPackagePartSource + " in " + packageFragmentDescriptor, new Function0() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver$$Lambda$0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        DeserializedDescriptorResolver.Companion companion = DeserializedDescriptorResolver.f73234b;
                        return EmptyList.f71768b;
                    }
                });
            }
        }
        return null;
    }

    public final DeserializedContainerAbiStability b(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        c().f73990c.getClass();
        int i2 = kotlinJvmBinaryClass.c().g;
        return ((i2 & 16) == 0 || (i2 & 32) != 0) ? DeserializedContainerAbiStability.STABLE : DeserializedContainerAbiStability.UNSTABLE;
    }

    public final DeserializationComponents c() {
        DeserializationComponents deserializationComponents = this.f73238a;
        if (deserializationComponents != null) {
            return deserializationComponents;
        }
        Intrinsics.h("components");
        throw null;
    }

    public final IncompatibleVersionErrorData d(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        c().f73990c.getClass();
        MetadataVersion metadataVersion = kotlinJvmBinaryClass.c().f73276b;
        MetadataVersion metadataVersionA = c().f73990c.a();
        metadataVersion.getClass();
        metadataVersionA.getClass();
        MetadataVersion metadataVersion2 = metadataVersion.f73585f ? MetadataVersion.g : MetadataVersion.f73584h;
        int i2 = metadataVersion2.f73569b;
        int i3 = metadataVersionA.f73569b;
        if (i2 > i3 || (i2 >= i3 && metadataVersion2.f73570c > metadataVersionA.f73570c)) {
            metadataVersionA = metadataVersion2;
        }
        int i4 = metadataVersion.f73570c;
        int i5 = metadataVersion.f73569b;
        boolean z = false;
        if ((i5 != 1 || i4 != 0) && i5 != 0) {
            int i6 = metadataVersionA.f73569b;
            if (i5 > i6 || (i5 >= i6 && i4 > metadataVersionA.f73570c)) {
                z = true;
            }
            z = !z;
        }
        if (z) {
            return null;
        }
        MetadataVersion metadataVersion3 = kotlinJvmBinaryClass.c().f73276b;
        MetadataVersion metadataVersion4 = MetadataVersion.g;
        MetadataVersion metadataVersionA2 = c().f73990c.a();
        MetadataVersion metadataVersionA3 = c().f73990c.a();
        boolean z2 = kotlinJvmBinaryClass.c().f73276b.f73585f;
        metadataVersionA3.getClass();
        MetadataVersion metadataVersion5 = z2 ? metadataVersion4 : MetadataVersion.f73584h;
        int i7 = metadataVersion5.f73569b;
        int i8 = metadataVersionA3.f73569b;
        if (i7 <= i8 && (i7 < i8 || metadataVersion5.f73570c <= metadataVersionA3.f73570c)) {
            metadataVersion5 = metadataVersionA3;
        }
        return new IncompatibleVersionErrorData(metadataVersion3, metadataVersion4, metadataVersionA2, metadataVersion5, kotlinJvmBinaryClass.e());
    }

    public final boolean e(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        c().f73990c.getClass();
        c().f73990c.getClass();
        return (kotlinJvmBinaryClass.c().g & 2) != 0 && Intrinsics.c(kotlinJvmBinaryClass.c().f73276b, f73236e);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    public final ClassData f(KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        String[] strArr;
        Pair pairF;
        KotlinClassHeader kotlinClassHeaderC = kotlinJvmBinaryClass.c();
        String[] strArr2 = kotlinClassHeaderC.f73277c;
        if (strArr2 == null) {
            strArr2 = kotlinClassHeaderC.d;
        }
        if (strArr2 == null) {
            strArr2 = null;
        } else if (!f73235c.contains(kotlinClassHeaderC.f73275a)) {
            strArr2 = null;
        }
        if (strArr2 != null && (strArr = kotlinJvmBinaryClass.c().f73278e) != null) {
            try {
                try {
                    pairF = JvmProtoBufUtil.f(strArr2, strArr);
                } catch (InvalidProtocolBufferException e2) {
                    throw new IllegalStateException("Could not read data from ".concat(kotlinJvmBinaryClass.e()), e2);
                }
            } catch (Throwable th) {
                c().f73990c.getClass();
                MetadataVersion metadataVersion = kotlinJvmBinaryClass.c().f73276b;
                MetadataVersion metadataVersionA = c().f73990c.a();
                metadataVersion.getClass();
                metadataVersionA.getClass();
                MetadataVersion metadataVersion2 = metadataVersion.f73585f ? MetadataVersion.g : MetadataVersion.f73584h;
                int i2 = metadataVersion2.f73569b;
                int i3 = metadataVersionA.f73569b;
                if (i2 > i3 || (i2 >= i3 && metadataVersion2.f73570c > metadataVersionA.f73570c)) {
                    metadataVersionA = metadataVersion2;
                }
                int i4 = metadataVersion.f73570c;
                int i5 = metadataVersion.f73569b;
                boolean z = false;
                if ((i5 != 1 || i4 != 0) && i5 != 0) {
                    int i6 = metadataVersionA.f73569b;
                    if (i5 > i6 || (i5 >= i6 && i4 > metadataVersionA.f73570c)) {
                        z = true;
                    }
                    z = !z;
                }
                if (z) {
                    throw th;
                }
                pairF = null;
            }
            if (pairF != null) {
                return new ClassData((JvmNameResolver) pairF.f71705b, (ProtoBuf$Class) pairF.f71706c, kotlinJvmBinaryClass.c().f73276b, new KotlinJvmBinarySourceElement(kotlinJvmBinaryClass, d(kotlinJvmBinaryClass), new PreReleaseInfo(e(kotlinJvmBinaryClass), null, 2, null), b(kotlinJvmBinaryClass)));
            }
        }
        return null;
    }
}
