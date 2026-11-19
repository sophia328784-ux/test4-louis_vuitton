package kotlin.reflect.jvm.internal.impl.km.internal;

import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.DeprecationLevel;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.km.InconsistentKotlinMetadataException;
import kotlin.reflect.jvm.internal.impl.km.KmClass;
import kotlin.reflect.jvm.internal.impl.km.KmClassifier;
import kotlin.reflect.jvm.internal.impl.km.KmConstantValue;
import kotlin.reflect.jvm.internal.impl.km.KmConstructor;
import kotlin.reflect.jvm.internal.impl.km.KmContract;
import kotlin.reflect.jvm.internal.impl.km.KmDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.km.KmEffect;
import kotlin.reflect.jvm.internal.impl.km.KmEffectExpression;
import kotlin.reflect.jvm.internal.impl.km.KmEffectInvocationKind;
import kotlin.reflect.jvm.internal.impl.km.KmEffectType;
import kotlin.reflect.jvm.internal.impl.km.KmEnumEntry;
import kotlin.reflect.jvm.internal.impl.km.KmFlexibleTypeUpperBound;
import kotlin.reflect.jvm.internal.impl.km.KmFunction;
import kotlin.reflect.jvm.internal.impl.km.KmProperty;
import kotlin.reflect.jvm.internal.impl.km.KmType;
import kotlin.reflect.jvm.internal.impl.km.KmTypeAlias;
import kotlin.reflect.jvm.internal.impl.km.KmTypeParameter;
import kotlin.reflect.jvm.internal.impl.km.KmTypeProjection;
import kotlin.reflect.jvm.internal.impl.km.KmValueParameter;
import kotlin.reflect.jvm.internal.impl.km.KmVariance;
import kotlin.reflect.jvm.internal.impl.km.KmVersion;
import kotlin.reflect.jvm.internal.impl.km.KmVersionRequirement;
import kotlin.reflect.jvm.internal.impl.km.KmVersionRequirementLevel;
import kotlin.reflect.jvm.internal.impl.km.KmVersionRequirementVersionKind;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Contract;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Effect;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Expression;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirement;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReadersKt {

    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f72786a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f72787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f72788c;
        public static final /* synthetic */ int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ int[] f72789e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ int[] f72790f;
        public static final /* synthetic */ int[] g;

        static {
            int[] iArr = new int[ProtoBuf$TypeParameter.Variance.values().length];
            try {
                iArr[ProtoBuf$TypeParameter.Variance.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ProtoBuf$TypeParameter.Variance.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ProtoBuf$TypeParameter.Variance.INV.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f72786a = iArr;
            int[] iArr2 = new int[ProtoBuf$Type.Argument.Projection.values().length];
            try {
                iArr2[ProtoBuf$Type.Argument.Projection.IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ProtoBuf$Type.Argument.Projection.OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ProtoBuf$Type.Argument.Projection.INV.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[ProtoBuf$Type.Argument.Projection.STAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            f72787b = iArr2;
            int[] iArr3 = new int[ProtoBuf$VersionRequirement.VersionKind.values().length];
            try {
                iArr3[ProtoBuf$VersionRequirement.VersionKind.LANGUAGE_VERSION.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[ProtoBuf$VersionRequirement.VersionKind.COMPILER_VERSION.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[ProtoBuf$VersionRequirement.VersionKind.API_VERSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            f72788c = iArr3;
            int[] iArr4 = new int[DeprecationLevel.values().length];
            try {
                iArr4[DeprecationLevel.WARNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr4[DeprecationLevel.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr4[DeprecationLevel.HIDDEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            d = iArr4;
            int[] iArr5 = new int[ProtoBuf$Effect.EffectType.values().length];
            try {
                iArr5[ProtoBuf$Effect.EffectType.RETURNS_CONSTANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr5[ProtoBuf$Effect.EffectType.CALLS.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr5[ProtoBuf$Effect.EffectType.RETURNS_NOT_NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
            f72789e = iArr5;
            int[] iArr6 = new int[ProtoBuf$Effect.InvocationKind.values().length];
            try {
                iArr6[ProtoBuf$Effect.InvocationKind.AT_MOST_ONCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr6[ProtoBuf$Effect.InvocationKind.EXACTLY_ONCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr6[ProtoBuf$Effect.InvocationKind.AT_LEAST_ONCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused19) {
            }
            f72790f = iArr6;
            int[] iArr7 = new int[ProtoBuf$Expression.ConstantValue.values().length];
            try {
                iArr7[ProtoBuf$Expression.ConstantValue.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr7[ProtoBuf$Expression.ConstantValue.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr7[ProtoBuf$Expression.ConstantValue.NULL.ordinal()] = 3;
            } catch (NoSuchFieldError unused22) {
            }
            g = iArr7;
        }
    }

    public static final int a(int i2) {
        return Flags.b(Flags.f73574c.d(i2).booleanValue(), (ProtoBuf$Visibility) Flags.d.d(i2), (ProtoBuf$Modality) Flags.f73575e.d(i2));
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0099 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x009b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x009d  */
    /* JADX WARN: Code duplicated, block: B:26:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c9  */
    public static final KmVersionRequirement b(int i2, ReadContext readContext) {
        VersionRequirement.Version version;
        VersionRequirement.Version version2;
        int i3;
        DeprecationLevel deprecationLevel;
        Integer numValueOf;
        String string;
        VersionRequirement versionRequirement;
        KmVersionRequirementVersionKind kmVersionRequirementVersionKind;
        KmVersionRequirementLevel kmVersionRequirementLevel;
        VersionRequirement.Version version3;
        KmVersionRequirement kmVersionRequirement = new KmVersionRequirement();
        VersionRequirement.Companion companion = VersionRequirement.f73590f;
        NameResolver nameResolver = readContext.f72779a;
        VersionRequirementTable versionRequirementTable = readContext.f72781c;
        companion.getClass();
        nameResolver.getClass();
        versionRequirementTable.getClass();
        ProtoBuf$VersionRequirement protoBuf$VersionRequirement = (ProtoBuf$VersionRequirement) CollectionsKt.G(i2, versionRequirementTable.f73602a);
        if (protoBuf$VersionRequirement == null) {
            versionRequirement = null;
        } else {
            VersionRequirement.Version.Companion companion2 = VersionRequirement.Version.d;
            Integer numValueOf2 = (protoBuf$VersionRequirement.f73541c & 1) == 1 ? Integer.valueOf(protoBuf$VersionRequirement.d) : null;
            Integer numValueOf3 = (protoBuf$VersionRequirement.f73541c & 2) == 2 ? Integer.valueOf(protoBuf$VersionRequirement.f73542e) : null;
            companion2.getClass();
            if (numValueOf3 != null) {
                version = new VersionRequirement.Version(numValueOf3.intValue() & 255, (numValueOf3.intValue() >> 8) & 255, (numValueOf3.intValue() >> 16) & 255);
            } else {
                if (numValueOf2 != null) {
                    version2 = new VersionRequirement.Version(numValueOf2.intValue() & 7, (numValueOf2.intValue() >> 3) & 15, (numValueOf2.intValue() >> 7) & CertificateBody.profileType);
                } else {
                    version = VersionRequirement.Version.f73596e;
                }
                ProtoBuf$VersionRequirement.Level level = protoBuf$VersionRequirement.f73543f;
                level.getClass();
                i3 = VersionRequirement.Companion.WhenMappings.f73595a[level.ordinal()];
                if (i3 != 1) {
                    deprecationLevel = DeprecationLevel.WARNING;
                } else if (i3 != 2) {
                    deprecationLevel = DeprecationLevel.ERROR;
                } else {
                    if (i3 == 3) {
                        v40.g();
                        return null;
                    }
                    deprecationLevel = DeprecationLevel.HIDDEN;
                }
                DeprecationLevel deprecationLevel2 = deprecationLevel;
                if ((protoBuf$VersionRequirement.f73541c & 8) == 8) {
                    numValueOf = Integer.valueOf(protoBuf$VersionRequirement.g);
                } else {
                    numValueOf = null;
                }
                if ((protoBuf$VersionRequirement.f73541c & 16) == 16) {
                    string = nameResolver.getString(protoBuf$VersionRequirement.f73544h);
                } else {
                    string = null;
                }
                ProtoBuf$VersionRequirement.VersionKind versionKind = protoBuf$VersionRequirement.f73545i;
                versionKind.getClass();
                versionRequirement = new VersionRequirement(version2, versionKind, deprecationLevel2, numValueOf, string);
            }
            version2 = version;
            ProtoBuf$VersionRequirement.Level level2 = protoBuf$VersionRequirement.f73543f;
            level2.getClass();
            i3 = VersionRequirement.Companion.WhenMappings.f73595a[level2.ordinal()];
            if (i3 != 1) {
                deprecationLevel = DeprecationLevel.WARNING;
            } else if (i3 != 2) {
                deprecationLevel = DeprecationLevel.ERROR;
            } else {
                if (i3 == 3) {
                    v40.g();
                    return null;
                }
                deprecationLevel = DeprecationLevel.HIDDEN;
            }
            DeprecationLevel deprecationLevel3 = deprecationLevel;
            if ((protoBuf$VersionRequirement.f73541c & 8) == 8) {
                numValueOf = Integer.valueOf(protoBuf$VersionRequirement.g);
            } else {
                numValueOf = null;
            }
            if ((protoBuf$VersionRequirement.f73541c & 16) == 16) {
                string = nameResolver.getString(protoBuf$VersionRequirement.f73544h);
            } else {
                string = null;
            }
            ProtoBuf$VersionRequirement.VersionKind versionKind2 = protoBuf$VersionRequirement.f73545i;
            versionKind2.getClass();
            versionRequirement = new VersionRequirement(version2, versionKind2, deprecationLevel3, numValueOf, string);
        }
        if (versionRequirement == null && !readContext.d) {
            throw new InconsistentKotlinMetadataException("No VersionRequirement with the given id in the table", null, 2, null);
        }
        ProtoBuf$VersionRequirement.VersionKind versionKind3 = versionRequirement != null ? versionRequirement.f73592b : null;
        int i4 = versionKind3 == null ? -1 : WhenMappings.f72788c[versionKind3.ordinal()];
        if (i4 == -1) {
            kmVersionRequirementVersionKind = KmVersionRequirementVersionKind.UNKNOWN;
        } else if (i4 == 1) {
            kmVersionRequirementVersionKind = KmVersionRequirementVersionKind.LANGUAGE_VERSION;
        } else if (i4 == 2) {
            kmVersionRequirementVersionKind = KmVersionRequirementVersionKind.COMPILER_VERSION;
        } else {
            if (i4 != 3) {
                v40.g();
                return null;
            }
            kmVersionRequirementVersionKind = KmVersionRequirementVersionKind.API_VERSION;
        }
        DeprecationLevel deprecationLevel4 = versionRequirement != null ? versionRequirement.f73593c : null;
        int i5 = deprecationLevel4 == null ? -1 : WhenMappings.d[deprecationLevel4.ordinal()];
        if (i5 == -1) {
            kmVersionRequirementLevel = KmVersionRequirementLevel.HIDDEN;
        } else if (i5 == 1) {
            kmVersionRequirementLevel = KmVersionRequirementLevel.WARNING;
        } else if (i5 != 2) {
            if (i5 != 3) {
                v40.g();
                return null;
            }
            kmVersionRequirementLevel = KmVersionRequirementLevel.HIDDEN;
        } else {
            kmVersionRequirementLevel = KmVersionRequirementLevel.ERROR;
        }
        kmVersionRequirementVersionKind.getClass();
        kmVersionRequirement.f72758a = kmVersionRequirementVersionKind;
        kmVersionRequirementLevel.getClass();
        kmVersionRequirement.f72759b = kmVersionRequirementLevel;
        kmVersionRequirement.f72760c = versionRequirement != null ? versionRequirement.d : null;
        kmVersionRequirement.d = versionRequirement != null ? versionRequirement.f73594e : null;
        if (versionRequirement == null || (version3 = versionRequirement.f73591a) == null) {
            version3 = VersionRequirement.Version.f73596e;
        }
        kmVersionRequirement.f72761e = new KmVersion(version3.f73597a, version3.f73598b, version3.f73599c);
        return kmVersionRequirement;
    }

    /* JADX WARN: Code duplicated, block: B:82:0x025a  */
    public static KmClass c(ProtoBuf$Class protoBuf$Class, NameResolver nameResolver, boolean z, int i2) {
        boolean z2 = false;
        boolean z3 = (i2 & 2) != 0 ? false : z;
        EmptyList emptyList = EmptyList.f71768b;
        protoBuf$Class.getClass();
        nameResolver.getClass();
        emptyList.getClass();
        KmClass kmClass = new KmClass();
        ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Class.B;
        protoBuf$TypeTable.getClass();
        TypeTable typeTable = new TypeTable(protoBuf$TypeTable);
        VersionRequirementTable.Companion companion = VersionRequirementTable.f73600b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTable = protoBuf$Class.D;
        protoBuf$VersionRequirementTable.getClass();
        companion.getClass();
        ReadContext readContext = new ReadContext(nameResolver, typeTable, VersionRequirementTable.Companion.a(protoBuf$VersionRequirementTable), z3, null, emptyList, 16, null);
        List list = protoBuf$Class.f73332h;
        list.getClass();
        ReadContext readContextB = readContext.b(list);
        List list2 = readContextB.f72784h;
        TypeTable typeTable2 = readContextB.f72780b;
        kmClass.f72691a = protoBuf$Class.f73330e;
        int i3 = protoBuf$Class.f73331f;
        NameResolver nameResolver2 = readContextB.f72779a;
        String strA = ReadUtilsKt.a(nameResolver2, i3);
        strA.getClass();
        kmClass.f72692b = strA;
        List<ProtoBuf$TypeParameter> list3 = protoBuf$Class.f73332h;
        list3.getClass();
        for (ProtoBuf$TypeParameter protoBuf$TypeParameter : list3) {
            protoBuf$TypeParameter.getClass();
            kmClass.f72693c.add(h(protoBuf$TypeParameter, readContextB));
        }
        Iterator it = ProtoTypeTableUtilKt.j(protoBuf$Class, typeTable2).iterator();
        while (it.hasNext()) {
            kmClass.d.add(g((ProtoBuf$Type) it.next(), readContextB));
        }
        List<ProtoBuf$Constructor> list4 = protoBuf$Class.q;
        list4.getClass();
        for (ProtoBuf$Constructor protoBuf$Constructor : list4) {
            protoBuf$Constructor.getClass();
            KmConstructor kmConstructor = new KmConstructor(protoBuf$Constructor.f73351e);
            List<ProtoBuf$ValueParameter> list5 = protoBuf$Constructor.f73352f;
            list5.getClass();
            for (ProtoBuf$ValueParameter protoBuf$ValueParameter : list5) {
                protoBuf$ValueParameter.getClass();
                kmConstructor.f72705b.add(i(protoBuf$ValueParameter, readContextB));
            }
            List<Integer> list6 = protoBuf$Constructor.g;
            list6.getClass();
            for (Integer num : list6) {
                num.getClass();
                kmConstructor.f72706c.add(b(num.intValue(), readContextB));
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                ((MetadataExtensions) it2.next()).f(kmConstructor, protoBuf$Constructor, readContextB);
            }
            kmClass.f72696h.add(kmConstructor);
        }
        List list7 = protoBuf$Class.r;
        list7.getClass();
        List list8 = protoBuf$Class.s;
        list8.getClass();
        List list9 = protoBuf$Class.t;
        list9.getClass();
        j(kmClass, list7, list8, list9, readContextB);
        if ((protoBuf$Class.d & 4) == 4) {
            nameResolver2.getString(protoBuf$Class.g);
        }
        List<Integer> list10 = protoBuf$Class.l;
        list10.getClass();
        for (Integer num2 : list10) {
            num2.getClass();
            kmClass.f72697i.add(nameResolver2.getString(num2.intValue()));
        }
        Iterator it3 = protoBuf$Class.u.iterator();
        while (true) {
            if (!it3.hasNext()) {
                List<Integer> list11 = protoBuf$Class.v;
                list11.getClass();
                for (Integer num3 : list11) {
                    num3.getClass();
                    kmClass.l.add(ReadUtilsKt.a(nameResolver2, num3.intValue()));
                }
                if ((protoBuf$Class.d & 8) == 8) {
                    nameResolver2.getString(protoBuf$Class.x);
                }
                int i4 = protoBuf$Class.d;
                ProtoBuf$Type protoBuf$TypeA = (i4 & 16) == 16 ? protoBuf$Class.y : (i4 & 32) == 32 ? typeTable2.a(protoBuf$Class.z) : null;
                if (protoBuf$TypeA == null) {
                    if ((protoBuf$Class.d & 8) == 8) {
                        List list12 = protoBuf$Class.s;
                        list12.getClass();
                        Iterator it4 = list12.iterator();
                        Object obj = null;
                        while (true) {
                            if (!it4.hasNext()) {
                                if (!z2) {
                                    break;
                                }
                                break;
                            }
                            Object next = it4.next();
                            ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) next;
                            protoBuf$Property.getClass();
                            if (ProtoTypeTableUtilKt.g(protoBuf$Property, typeTable2) == null && Intrinsics.c(nameResolver2.getString(protoBuf$Property.g), nameResolver2.getString(protoBuf$Class.x))) {
                                if (!z2) {
                                    obj = next;
                                    z2 = true;
                                }
                            }
                            obj = null;
                            break;
                        }
                        ProtoBuf$Property protoBuf$Property2 = (ProtoBuf$Property) obj;
                        if (protoBuf$Property2 != null) {
                            protoBuf$TypeA = ProtoTypeTableUtilKt.i(protoBuf$Property2, typeTable2);
                        } else {
                            protoBuf$TypeA = null;
                        }
                    } else {
                        protoBuf$TypeA = null;
                    }
                }
                kmClass.m = protoBuf$TypeA != null ? g(protoBuf$TypeA, readContextB) : null;
                Iterator it5 = ProtoTypeTableUtilKt.a(protoBuf$Class, typeTable2).iterator();
                while (it5.hasNext()) {
                    kmClass.o.add(g((ProtoBuf$Type) it5.next(), readContextB));
                }
                List<Integer> list13 = protoBuf$Class.C;
                list13.getClass();
                for (Integer num4 : list13) {
                    num4.getClass();
                    kmClass.p.add(b(num4.intValue(), readContextB));
                }
                Iterator it6 = list2.iterator();
                while (it6.hasNext()) {
                    ((MetadataExtensions) it6.next()).l(kmClass, protoBuf$Class, readContextB);
                }
                return kmClass;
            }
            ProtoBuf$EnumEntry protoBuf$EnumEntry = (ProtoBuf$EnumEntry) it3.next();
            if ((protoBuf$EnumEntry.d & 1) != 1) {
                throw new InconsistentKotlinMetadataException("No name for EnumEntry", null, 2, null);
            }
            kmClass.f72698j.add(nameResolver2.getString(protoBuf$EnumEntry.f73382e));
            KmEnumEntry kmEnumEntry = new KmEnumEntry(nameResolver2.getString(protoBuf$EnumEntry.f73382e));
            Iterator it7 = list2.iterator();
            while (it7.hasNext()) {
                ((MetadataExtensions) it7.next()).a(kmEnumEntry, protoBuf$EnumEntry, readContextB);
            }
            kmClass.f72699k.add(kmEnumEntry);
        }
    }

    public static final KmEffectExpression d(ProtoBuf$Expression protoBuf$Expression, ReadContext readContext) {
        Boolean bool;
        KmEffectExpression kmEffectExpression = new KmEffectExpression();
        kmEffectExpression.f72710a = protoBuf$Expression.d;
        ProtoBuf$Type protoBuf$TypeA = null;
        if ((protoBuf$Expression.f73388c & 4) == 4) {
            ProtoBuf$Expression.ConstantValue constantValue = protoBuf$Expression.f73390f;
            if (constantValue == null) {
                md.n("Required value was null.");
                return null;
            }
            int i2 = WhenMappings.g[constantValue.ordinal()];
            if (i2 == 1) {
                bool = Boolean.TRUE;
            } else if (i2 == 2) {
                bool = Boolean.FALSE;
            } else {
                if (i2 != 3) {
                    v40.g();
                    return null;
                }
                bool = null;
            }
            new KmConstantValue(bool);
        }
        TypeTable typeTable = readContext.f72780b;
        typeTable.getClass();
        int i3 = protoBuf$Expression.f73388c;
        if ((i3 & 8) == 8) {
            protoBuf$TypeA = protoBuf$Expression.g;
        } else if ((i3 & 16) == 16) {
            protoBuf$TypeA = typeTable.a(protoBuf$Expression.f73391h);
        }
        if (protoBuf$TypeA != null) {
            g(protoBuf$TypeA, readContext);
        }
        List<ProtoBuf$Expression> list = protoBuf$Expression.f73392i;
        list.getClass();
        for (ProtoBuf$Expression protoBuf$Expression2 : list) {
            protoBuf$Expression2.getClass();
            kmEffectExpression.f72711b.add(d(protoBuf$Expression2, readContext));
        }
        List<ProtoBuf$Expression> list2 = protoBuf$Expression.f73393j;
        list2.getClass();
        for (ProtoBuf$Expression protoBuf$Expression3 : list2) {
            protoBuf$Expression3.getClass();
            kmEffectExpression.f72712c.add(d(protoBuf$Expression3, readContext));
        }
        return kmEffectExpression;
    }

    public static final KmFunction e(ProtoBuf$Function protoBuf$Function, ReadContext readContext) {
        ArrayList arrayList;
        KmEffectType kmEffectType;
        KmFunction kmFunction = new KmFunction(protoBuf$Function.f73402e, readContext.f72779a.getString(protoBuf$Function.g));
        List list = protoBuf$Function.f73406j;
        list.getClass();
        ReadContext readContextB = readContext.b(list);
        TypeTable typeTable = readContextB.f72780b;
        List<ProtoBuf$TypeParameter> list2 = protoBuf$Function.f73406j;
        list2.getClass();
        for (ProtoBuf$TypeParameter protoBuf$TypeParameter : list2) {
            protoBuf$TypeParameter.getClass();
            kmFunction.f72718b.add(h(protoBuf$TypeParameter, readContextB));
        }
        ProtoBuf$Type protoBuf$TypeF = ProtoTypeTableUtilKt.f(protoBuf$Function, typeTable);
        if (protoBuf$TypeF != null) {
            g(protoBuf$TypeF, readContextB);
        }
        List list3 = protoBuf$Function.p;
        list3.getClass();
        Iterator it = list3.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = kmFunction.f72720e;
            if (!zHasNext) {
                break;
            }
            ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) it.next();
            protoBuf$ValueParameter.getClass();
            arrayList.add(i(protoBuf$ValueParameter, readContextB));
        }
        if (protoBuf$Function.p.isEmpty()) {
            List list4 = protoBuf$Function.m;
            list4.getClass();
            if (!list4.isEmpty()) {
                Iterator it2 = ProtoTypeTableUtilKt.b(protoBuf$Function, typeTable).iterator();
                while (it2.hasNext()) {
                    g((ProtoBuf$Type) it2.next(), readContextB);
                    arrayList.add(new KmValueParameter(0, "_"));
                }
            }
        }
        List<ProtoBuf$ValueParameter> list5 = protoBuf$Function.q;
        list5.getClass();
        for (ProtoBuf$ValueParameter protoBuf$ValueParameter2 : list5) {
            protoBuf$ValueParameter2.getClass();
            kmFunction.d.add(i(protoBuf$ValueParameter2, readContextB));
        }
        g(ProtoTypeTableUtilKt.h(protoBuf$Function, typeTable), readContextB);
        if ((protoBuf$Function.d & 256) == 256) {
            ProtoBuf$Contract protoBuf$Contract = protoBuf$Function.t;
            protoBuf$Contract.getClass();
            KmContract kmContract = new KmContract();
            for (ProtoBuf$Effect protoBuf$Effect : protoBuf$Contract.f73364c) {
                if ((protoBuf$Effect.f73369c & 1) == 1) {
                    ProtoBuf$Effect.EffectType effectType = protoBuf$Effect.d;
                    KmEffectInvocationKind kmEffectInvocationKind = null;
                    if (effectType == null) {
                        md.n("Required value was null.");
                        return null;
                    }
                    int i2 = WhenMappings.f72789e[effectType.ordinal()];
                    if (i2 == 1) {
                        kmEffectType = KmEffectType.RETURNS_CONSTANT;
                    } else if (i2 == 2) {
                        kmEffectType = KmEffectType.CALLS;
                    } else {
                        if (i2 != 3) {
                            v40.g();
                            return null;
                        }
                        kmEffectType = KmEffectType.RETURNS_NOT_NULL;
                    }
                    if ((protoBuf$Effect.f73369c & 4) == 4) {
                        ProtoBuf$Effect.InvocationKind invocationKind = protoBuf$Effect.g;
                        if (invocationKind == null) {
                            md.n("Required value was null.");
                            return null;
                        }
                        int i3 = WhenMappings.f72790f[invocationKind.ordinal()];
                        if (i3 == 1) {
                            kmEffectInvocationKind = KmEffectInvocationKind.AT_MOST_ONCE;
                        } else if (i3 == 2) {
                            kmEffectInvocationKind = KmEffectInvocationKind.EXACTLY_ONCE;
                        } else {
                            if (i3 != 3) {
                                v40.g();
                                return null;
                            }
                            kmEffectInvocationKind = KmEffectInvocationKind.AT_LEAST_ONCE;
                        }
                    }
                    KmEffect kmEffect = new KmEffect(kmEffectType, kmEffectInvocationKind);
                    List<ProtoBuf$Expression> list6 = protoBuf$Effect.f73370e;
                    list6.getClass();
                    for (ProtoBuf$Expression protoBuf$Expression : list6) {
                        protoBuf$Expression.getClass();
                        kmEffect.f72709a.add(d(protoBuf$Expression, readContextB));
                    }
                    if ((protoBuf$Effect.f73369c & 2) == 2) {
                        ProtoBuf$Expression protoBuf$Expression2 = protoBuf$Effect.f73371f;
                        protoBuf$Expression2.getClass();
                        d(protoBuf$Expression2, readContextB);
                    }
                    kmContract.f72708a.add(kmEffect);
                }
            }
        }
        List<Integer> list7 = protoBuf$Function.s;
        list7.getClass();
        for (Integer num : list7) {
            num.getClass();
            kmFunction.f72721f.add(b(num.intValue(), readContextB));
        }
        Iterator it3 = readContextB.f72784h.iterator();
        while (it3.hasNext()) {
            ((MetadataExtensions) it3.next()).q(kmFunction, protoBuf$Function, readContextB);
        }
        return kmFunction;
    }

    public static final KmProperty f(ProtoBuf$Property protoBuf$Property, ReadContext readContext) {
        ArrayList arrayList;
        protoBuf$Property.getClass();
        KmProperty kmProperty = new KmProperty(protoBuf$Property.f73438e, readContext.f72779a.getString(protoBuf$Property.g), (protoBuf$Property.d & 256) == 256 ? protoBuf$Property.r : a(protoBuf$Property.f73438e), (protoBuf$Property.d & 512) == 512 ? protoBuf$Property.s : a(protoBuf$Property.f73438e));
        List list = protoBuf$Property.f73442j;
        list.getClass();
        ReadContext readContextB = readContext.b(list);
        TypeTable typeTable = readContextB.f72780b;
        List<ProtoBuf$TypeParameter> list2 = protoBuf$Property.f73442j;
        list2.getClass();
        for (ProtoBuf$TypeParameter protoBuf$TypeParameter : list2) {
            protoBuf$TypeParameter.getClass();
            kmProperty.d.add(h(protoBuf$TypeParameter, readContextB));
        }
        ProtoBuf$Type protoBuf$TypeG = ProtoTypeTableUtilKt.g(protoBuf$Property, typeTable);
        if (protoBuf$TypeG != null) {
            g(protoBuf$TypeG, readContextB);
        }
        List list3 = protoBuf$Property.p;
        list3.getClass();
        Iterator it = list3.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            arrayList = kmProperty.f72730f;
            if (!zHasNext) {
                break;
            }
            ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) it.next();
            protoBuf$ValueParameter.getClass();
            arrayList.add(i(protoBuf$ValueParameter, readContextB));
        }
        if (protoBuf$Property.p.isEmpty()) {
            List list4 = protoBuf$Property.m;
            list4.getClass();
            if (!list4.isEmpty()) {
                Iterator it2 = ProtoTypeTableUtilKt.c(protoBuf$Property, typeTable).iterator();
                while (it2.hasNext()) {
                    g((ProtoBuf$Type) it2.next(), readContextB);
                    arrayList.add(new KmValueParameter(0, "_"));
                }
            }
        }
        if ((protoBuf$Property.d & 128) == 128) {
            ProtoBuf$ValueParameter protoBuf$ValueParameter2 = protoBuf$Property.q;
            protoBuf$ValueParameter2.getClass();
            i(protoBuf$ValueParameter2, readContextB);
        }
        g(ProtoTypeTableUtilKt.i(protoBuf$Property, typeTable), readContextB);
        List<Integer> list5 = protoBuf$Property.t;
        list5.getClass();
        for (Integer num : list5) {
            num.getClass();
            kmProperty.g.add(b(num.intValue(), readContextB));
        }
        Iterator it3 = readContextB.f72784h.iterator();
        while (it3.hasNext()) {
            ((MetadataExtensions) it3.next()).h(kmProperty, protoBuf$Property, readContextB);
        }
        return kmProperty;
    }

    public static final KmType g(ProtoBuf$Type protoBuf$Type, ReadContext readContext) {
        KmClassifier typeParameter;
        KmVariance kmVariance;
        TypeTable typeTable = readContext.f72780b;
        NameResolver nameResolver = readContext.f72779a;
        KmType kmType = new KmType((protoBuf$Type.f73472f ? 1 : 0) + (protoBuf$Type.r << 1));
        if (protoBuf$Type.s()) {
            typeParameter = new KmClassifier.Class(ReadUtilsKt.a(nameResolver, protoBuf$Type.f73475j));
        } else {
            int i2 = protoBuf$Type.d;
            if ((i2 & 128) == 128) {
                typeParameter = new KmClassifier.TypeAlias(ReadUtilsKt.a(nameResolver, protoBuf$Type.m));
            } else if ((i2 & 32) == 32) {
                typeParameter = new KmClassifier.TypeParameter(protoBuf$Type.f73476k);
            } else {
                if ((i2 & 64) != 64) {
                    throw new InconsistentKotlinMetadataException("No classifier (class, type alias or type parameter) recorded for Type", null, 2, null);
                }
                Integer numA = readContext.a(protoBuf$Type.l);
                if (numA == null) {
                    throw new InconsistentKotlinMetadataException("No type parameter id for " + nameResolver.getString(protoBuf$Type.l), null, 2, null);
                }
                typeParameter = new KmClassifier.TypeParameter(numA.intValue());
            }
        }
        kmType.f72738b = typeParameter;
        for (ProtoBuf$Type.Argument argument : protoBuf$Type.f73471e) {
            ProtoBuf$Type.Argument.Projection projection = argument.d;
            if (projection == null) {
                md.n("Required value was null.");
                return null;
            }
            int i3 = WhenMappings.f72787b[projection.ordinal()];
            if (i3 == 1) {
                kmVariance = KmVariance.IN;
            } else if (i3 == 2) {
                kmVariance = KmVariance.OUT;
            } else if (i3 == 3) {
                kmVariance = KmVariance.INVARIANT;
            } else {
                if (i3 != 4) {
                    v40.g();
                    return null;
                }
                kmVariance = null;
            }
            ArrayList arrayList = kmType.f72739c;
            if (kmVariance != null) {
                typeTable.getClass();
                int i4 = argument.f73480c;
                ProtoBuf$Type protoBuf$TypeA = (i4 & 2) == 2 ? argument.f73481e : (i4 & 4) == 4 ? typeTable.a(argument.f73482f) : null;
                if (protoBuf$TypeA == null) {
                    throw new InconsistentKotlinMetadataException("No type argument for non-STAR projection in Type", null, 2, null);
                }
                arrayList.add(new KmTypeProjection(kmVariance, g(protoBuf$TypeA, readContext)));
            } else {
                arrayList.add(KmTypeProjection.f72750c);
            }
        }
        typeTable.getClass();
        int i5 = protoBuf$Type.d;
        ProtoBuf$Type protoBuf$TypeA2 = (i5 & 1024) == 1024 ? protoBuf$Type.p : (i5 & 2048) == 2048 ? typeTable.a(protoBuf$Type.q) : null;
        kmType.d = protoBuf$TypeA2 != null ? g(protoBuf$TypeA2, readContext) : null;
        ProtoBuf$Type protoBuf$TypeE = ProtoTypeTableUtilKt.e(protoBuf$Type, typeTable);
        kmType.f72740e = protoBuf$TypeE != null ? g(protoBuf$TypeE, readContext) : null;
        int i6 = protoBuf$Type.d;
        ProtoBuf$Type protoBuf$TypeA3 = (i6 & 4) == 4 ? protoBuf$Type.f73473h : (i6 & 8) == 8 ? typeTable.a(protoBuf$Type.f73474i) : null;
        kmType.f72741f = protoBuf$TypeA3 != null ? new KmFlexibleTypeUpperBound(g(protoBuf$TypeA3, readContext), (protoBuf$Type.d & 2) == 2 ? nameResolver.getString(protoBuf$Type.g) : null) : null;
        Iterator it = readContext.f72784h.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).j(kmType, protoBuf$Type, readContext);
        }
        return kmType;
    }

    public static final KmTypeParameter h(ProtoBuf$TypeParameter protoBuf$TypeParameter, ReadContext readContext) {
        KmVariance kmVariance;
        ProtoBuf$TypeParameter.Variance variance = protoBuf$TypeParameter.f73509h;
        if (variance == null) {
            md.n("Required value was null.");
            return null;
        }
        int i2 = WhenMappings.f72786a[variance.ordinal()];
        if (i2 == 1) {
            kmVariance = KmVariance.IN;
        } else if (i2 == 2) {
            kmVariance = KmVariance.OUT;
        } else {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            kmVariance = KmVariance.INVARIANT;
        }
        boolean z = protoBuf$TypeParameter.g;
        KmTypeParameter kmTypeParameter = new KmTypeParameter(z ? 1 : 0, readContext.f72779a.getString(protoBuf$TypeParameter.f73508f), protoBuf$TypeParameter.f73507e, kmVariance);
        Iterator it = ProtoTypeTableUtilKt.m(protoBuf$TypeParameter, readContext.f72780b).iterator();
        while (it.hasNext()) {
            kmTypeParameter.f72748e.add(g((ProtoBuf$Type) it.next(), readContext));
        }
        Iterator it2 = readContext.f72784h.iterator();
        while (it2.hasNext()) {
            ((MetadataExtensions) it2.next()).d(kmTypeParameter, protoBuf$TypeParameter, readContext);
        }
        return kmTypeParameter;
    }

    public static final KmValueParameter i(ProtoBuf$ValueParameter protoBuf$ValueParameter, ReadContext readContext) {
        ProtoBuf$Type protoBuf$TypeA;
        int i2 = protoBuf$ValueParameter.f73528e;
        int i3 = protoBuf$ValueParameter.f73529f;
        NameResolver nameResolver = readContext.f72779a;
        KmValueParameter kmValueParameter = new KmValueParameter(i2, nameResolver.getString(i3));
        TypeTable typeTable = readContext.f72780b;
        g(ProtoTypeTableUtilKt.k(protoBuf$ValueParameter, typeTable), readContext);
        int i4 = protoBuf$ValueParameter.d;
        if ((i4 & 16) == 16) {
            protoBuf$TypeA = protoBuf$ValueParameter.f73531i;
        } else {
            protoBuf$TypeA = (i4 & 32) == 32 ? typeTable.a(protoBuf$ValueParameter.f73532j) : null;
        }
        if (protoBuf$TypeA != null) {
            g(protoBuf$TypeA, readContext);
        }
        if ((protoBuf$ValueParameter.d & 64) == 64) {
            ProtoBuf$Annotation.Argument.Value value = protoBuf$ValueParameter.l;
            value.getClass();
            ReadUtilsKt.c(value, nameResolver);
        }
        Iterator it = readContext.f72784h.iterator();
        while (it.hasNext()) {
            ((MetadataExtensions) it.next()).m(kmValueParameter, protoBuf$ValueParameter, readContext);
        }
        return kmValueParameter;
    }

    public static final void j(KmDeclarationContainer kmDeclarationContainer, List list, List list2, List list3, ReadContext readContext) {
        ArrayList arrayListC = kmDeclarationContainer.c();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayListC.add(e((ProtoBuf$Function) it.next(), readContext));
        }
        ArrayList arrayListA = kmDeclarationContainer.a();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayListA.add(f((ProtoBuf$Property) it2.next(), readContext));
        }
        ArrayList arrayListB = kmDeclarationContainer.b();
        Iterator it3 = list3.iterator();
        while (it3.hasNext()) {
            ProtoBuf$TypeAlias protoBuf$TypeAlias = (ProtoBuf$TypeAlias) it3.next();
            KmTypeAlias kmTypeAlias = new KmTypeAlias(protoBuf$TypeAlias.f73494e, readContext.f72779a.getString(protoBuf$TypeAlias.f73495f));
            List list4 = protoBuf$TypeAlias.g;
            list4.getClass();
            ReadContext readContextB = readContext.b(list4);
            TypeTable typeTable = readContextB.f72780b;
            List<ProtoBuf$TypeParameter> list5 = protoBuf$TypeAlias.g;
            list5.getClass();
            for (ProtoBuf$TypeParameter protoBuf$TypeParameter : list5) {
                protoBuf$TypeParameter.getClass();
                kmTypeAlias.f72743b.add(h(protoBuf$TypeParameter, readContextB));
            }
            g(ProtoTypeTableUtilKt.l(protoBuf$TypeAlias, typeTable), readContextB);
            g(ProtoTypeTableUtilKt.d(protoBuf$TypeAlias, typeTable), readContextB);
            List<ProtoBuf$Annotation> list6 = protoBuf$TypeAlias.l;
            list6.getClass();
            for (ProtoBuf$Annotation protoBuf$Annotation : list6) {
                protoBuf$Annotation.getClass();
                kmTypeAlias.f72744c.add(ReadUtilsKt.b(protoBuf$Annotation, readContextB.f72779a));
            }
            List<Integer> list7 = protoBuf$TypeAlias.m;
            list7.getClass();
            for (Integer num : list7) {
                num.getClass();
                kmTypeAlias.d.add(b(num.intValue(), readContextB));
            }
            Iterator it4 = readContextB.f72784h.iterator();
            while (it4.hasNext()) {
                ((MetadataExtensions) it4.next()).p(kmTypeAlias, protoBuf$TypeAlias, readContextB);
            }
            arrayListB.add(kmTypeAlias);
        }
    }
}
