package kotlin.reflect.jvm.internal.impl.load.kotlin;

import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.MetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoBufUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.IncompatibleVersionErrorData;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerAbiStability;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.PreReleaseInfo;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class JvmPackagePartSource implements DeserializedContainerSource {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JvmClassName f73243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JvmClassName f73244c;
    public final KotlinJvmBinaryClass d;

    public JvmPackagePartSource(KotlinJvmBinaryClass kotlinJvmBinaryClass, ProtoBuf$Package protoBuf$Package, NameResolver nameResolver, IncompatibleVersionErrorData<MetadataVersion> incompatibleVersionErrorData, boolean z, DeserializedContainerAbiStability deserializedContainerAbiStability) {
        JvmClassName jvmClassNameC;
        kotlinJvmBinaryClass.getClass();
        protoBuf$Package.getClass();
        nameResolver.getClass();
        deserializedContainerAbiStability.getClass();
        JvmClassName jvmClassName = new JvmClassName(JvmClassName.e(kotlinJvmBinaryClass.d()));
        KotlinClassHeader kotlinClassHeaderC = kotlinJvmBinaryClass.c();
        String str = kotlinClassHeaderC.f73275a != KotlinClassHeader.Kind.MULTIFILE_CLASS_PART ? null : kotlinClassHeaderC.f73279f;
        if (str != null) {
            jvmClassNameC = str.length() > 0 ? JvmClassName.c(str) : null;
        } else {
            jvmClassNameC = null;
        }
        this(jvmClassName, jvmClassNameC, null, protoBuf$Package, nameResolver, incompatibleVersionErrorData, new PreReleaseInfo(z, null, 2, null), deserializedContainerAbiStability, kotlinJvmBinaryClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource
    public final String a() {
        return fc.l(new StringBuilder("Class '"), c().a().f73679a.f73683a, '\'');
    }

    public final ClassId c() {
        FqName fqName;
        JvmClassName jvmClassName = this.f73243b;
        String str = jvmClassName.f73899a;
        int iLastIndexOf = str.lastIndexOf("/");
        if (iLastIndexOf == -1) {
            fqName = FqName.d;
            if (fqName == null) {
                JvmClassName.a(9);
                throw null;
            }
        } else {
            fqName = new FqName(str.substring(0, iLastIndexOf).replace('/', JwtParser.SEPARATOR_CHAR));
        }
        String strD = jvmClassName.d();
        strD.getClass();
        return new ClassId(fqName, Name.e(StringsKt.R('/', strD, strD)));
    }

    public final String toString() {
        return "JvmPackagePartSource: " + this.f73243b;
    }

    public JvmPackagePartSource(JvmClassName jvmClassName, JvmClassName jvmClassName2, JvmClassName jvmClassName3, ProtoBuf$Package protoBuf$Package, NameResolver nameResolver, IncompatibleVersionErrorData<MetadataVersion> incompatibleVersionErrorData, PreReleaseInfo preReleaseInfo, DeserializedContainerAbiStability deserializedContainerAbiStability, KotlinJvmBinaryClass kotlinJvmBinaryClass) {
        jvmClassName.getClass();
        protoBuf$Package.getClass();
        nameResolver.getClass();
        preReleaseInfo.getClass();
        deserializedContainerAbiStability.getClass();
        this.f73243b = jvmClassName;
        this.f73244c = jvmClassName2;
        this.d = kotlinJvmBinaryClass;
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.f73611k;
        generatedExtension.getClass();
        Integer num = (Integer) ProtoBufUtilKt.a(protoBuf$Package, generatedExtension);
        if (num != null) {
            nameResolver.getString(num.intValue());
        }
    }
}
