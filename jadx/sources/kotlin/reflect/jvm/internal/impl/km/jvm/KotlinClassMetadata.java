package kotlin.reflect.jvm.internal.impl.km.jvm;

import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.km.KmLambda;
import kotlin.reflect.jvm.internal.impl.km.KmPackage;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadContext;
import kotlin.reflect.jvm.internal.impl.km.internal.ReadersKt;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmExceptionUtilsKt;
import kotlin.reflect.jvm.internal.impl.km.jvm.internal.JvmReadUtils;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KotlinClassMetadata {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f72802a = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static final class Unknown extends KotlinClassMetadata {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unknown(Metadata metadata, boolean z) {
            super(null);
            metadata.getClass();
            new JvmMetadataVersion(metadata.mv());
            metadata.xi();
        }
    }

    public KotlinClassMetadata(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public static final class FileFacade extends KotlinClassMetadata {
        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public FileFacade(Metadata metadata, boolean z) {
            this(JvmReadUtils.b(metadata), new JvmMetadataVersion(metadata.mv()), metadata.xi());
            metadata.getClass();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FileFacade(KmPackage kmPackage, JvmMetadataVersion jvmMetadataVersion, int i2) {
            super(null);
            kmPackage.getClass();
            jvmMetadataVersion.getClass();
        }
    }

    public static final class MultiFileClassFacade extends KotlinClassMetadata {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f72804b;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public MultiFileClassFacade(Metadata metadata, boolean z) {
            this(ArraysKt.d(metadata.d1()), new JvmMetadataVersion(metadata.mv()), metadata.xi());
            metadata.getClass();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultiFileClassFacade(List<String> list, JvmMetadataVersion jvmMetadataVersion, int i2) {
            super(null);
            list.getClass();
            jvmMetadataVersion.getClass();
            this.f72804b = list;
        }
    }

    public static final class MultiFileClassPart extends KotlinClassMetadata {
        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public MultiFileClassPart(Metadata metadata, boolean z) {
            this(JvmReadUtils.b(metadata), metadata.xs(), new JvmMetadataVersion(metadata.mv()), metadata.xi());
            metadata.getClass();
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MultiFileClassPart(KmPackage kmPackage, String str, JvmMetadataVersion jvmMetadataVersion, int i2) {
            super(null);
            kmPackage.getClass();
            str.getClass();
            jvmMetadataVersion.getClass();
        }
    }

    public static final class Class extends KotlinClassMetadata {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final KmClass f72803b;

        /* JADX WARN: Illegal instructions before constructor call */
        public Class(Metadata metadata, boolean z) throws InvalidProtocolBufferException {
            metadata.getClass();
            Pair pairF = JvmProtoBufUtil.f(JvmExceptionUtilsKt.a(metadata), metadata.d2());
            this(ReadersKt.c((ProtoBuf$Class) pairF.f71706c, (JvmNameResolver) pairF.f71705b, JvmReadUtils.a(metadata), 4), new JvmMetadataVersion(metadata.mv()), metadata.xi());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Class(KmClass kmClass, JvmMetadataVersion jvmMetadataVersion, int i2) {
            super(null);
            kmClass.getClass();
            jvmMetadataVersion.getClass();
            this.f72803b = kmClass;
        }
    }

    public static final class SyntheticClass extends KotlinClassMetadata {
        public SyntheticClass(Metadata metadata, boolean z) throws InvalidProtocolBufferException {
            metadata.getClass();
            String[] strArrD1 = metadata.d1();
            KmLambda kmLambda = null;
            strArrD1 = strArrD1.length == 0 ? null : strArrD1;
            if (strArrD1 != null) {
                Pair pairG = JvmProtoBufUtil.g(strArrD1, metadata.d2());
                JvmNameResolver jvmNameResolver = (JvmNameResolver) pairG.f71705b;
                ProtoBuf$Function protoBuf$Function = (ProtoBuf$Function) pairG.f71706c;
                boolean zA = JvmReadUtils.a(metadata);
                protoBuf$Function.getClass();
                jvmNameResolver.getClass();
                KmLambda kmLambda2 = new KmLambda();
                ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Function.r;
                protoBuf$TypeTable.getClass();
                TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
                VersionRequirementTable.f73600b.getClass();
                ReadersKt.e(protoBuf$Function, new ReadContext(jvmNameResolver, typeTable, VersionRequirementTable.f73601c, zA, null, null, 48, null));
                kmLambda = kmLambda2;
            }
            this(kmLambda, new JvmMetadataVersion(metadata.mv()), metadata.xi());
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SyntheticClass(KmLambda kmLambda, JvmMetadataVersion jvmMetadataVersion, int i2) {
            super(null);
            jvmMetadataVersion.getClass();
        }
    }
}
