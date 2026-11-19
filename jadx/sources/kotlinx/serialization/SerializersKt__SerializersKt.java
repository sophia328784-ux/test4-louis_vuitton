package kotlinx.serialization;

import defpackage.hq;
import defpackage.tg0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.SerializerCache;
import kotlinx.serialization.modules.SerializersModule;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/serialization/SerializersKt")
abstract /* synthetic */ class SerializersKt__SerializersKt {
    /* JADX WARN: Code duplicated, block: B:16:0x0053  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00e7 A[RETURN] */
    public static final KSerializer a(SerializersModule serializersModule, KType kType, boolean z) {
        KSerializer kSerializerA;
        KSerializer kSerializerB;
        KSerializer polymorphicSerializer;
        KClass kClassC = Platform_commonKt.c(kType);
        boolean f74407e = kType.getF74407e();
        List<KTypeProjection> d = kType.getD();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(d, 10));
        for (KTypeProjection kTypeProjection : d) {
            kTypeProjection.getClass();
            KType kType2 = kTypeProjection.f71960b;
            if (kType2 == null) {
                tg0.n(kType2, "Star projections in type arguments are not allowed, but had ");
                return null;
            }
            arrayList.add(kType2);
        }
        if (arrayList.isEmpty()) {
            if (!JvmClassMappingKt.b(kClassC).isInterface() || serializersModule.b(kClassC, EmptyList.f71768b) == null) {
                SerializerCache serializerCache = SerializersCacheKt.f75525a;
                if (f74407e) {
                    kSerializerA = SerializersCacheKt.f75526b.a(kClassC);
                } else {
                    kSerializerA = SerializersCacheKt.f75525a.a(kClassC);
                    if (kSerializerA == null) {
                        kSerializerA = null;
                    }
                }
            } else {
                kSerializerA = null;
            }
        } else if (serializersModule.getF75841f()) {
            kSerializerA = null;
        } else {
            SerializerCache serializerCache2 = SerializersCacheKt.f75525a;
            Object objA = !f74407e ? SerializersCacheKt.f75527c.a(kClassC, arrayList) : SerializersCacheKt.d.a(kClassC, arrayList);
            Result.Companion companion = Result.INSTANCE;
            if (objA instanceof Result.Failure) {
                objA = null;
            }
            kSerializerA = (KSerializer) objA;
        }
        if (kSerializerA != null) {
            return kSerializerA;
        }
        if (arrayList.isEmpty()) {
            kSerializerB = SerializersKt.d(kClassC);
            if (kSerializerB == null && (kSerializerB = serializersModule.b(kClassC, EmptyList.f71768b)) == null) {
                if (JvmClassMappingKt.b(kClassC).isInterface()) {
                    polymorphicSerializer = new PolymorphicSerializer(kClassC);
                    kSerializerB = polymorphicSerializer;
                } else {
                    kSerializerB = null;
                }
            }
            if (kSerializerB != null) {
                if (f74407e) {
                    return BuiltinSerializersKt.d(kSerializerB);
                }
                return kSerializerB;
            }
        } else {
            ArrayList arrayListF = SerializersKt.f(serializersModule, arrayList, z);
            if (arrayListF != null) {
                KSerializer kSerializerA2 = SerializersKt.a(kClassC, arrayListF, new hq(3, arrayList));
                if (kSerializerA2 == null) {
                    kSerializerB = serializersModule.b(kClassC, arrayListF);
                    if (kSerializerB == null) {
                        if (JvmClassMappingKt.b(kClassC).isInterface()) {
                            polymorphicSerializer = new PolymorphicSerializer(kClassC);
                            kSerializerB = polymorphicSerializer;
                        } else {
                            kSerializerB = null;
                        }
                    }
                } else {
                    kSerializerB = kSerializerA2;
                }
                if (kSerializerB != null) {
                    if (f74407e) {
                        return BuiltinSerializersKt.d(kSerializerB);
                    }
                    return kSerializerB;
                }
            }
        }
        return null;
    }
}
