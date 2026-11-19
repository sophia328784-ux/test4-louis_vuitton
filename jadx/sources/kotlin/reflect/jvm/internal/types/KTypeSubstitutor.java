package kotlin.reflect.jvm.internal.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.full.KClassifiers;
import kotlin.reflect.jvm.internal.SystemPropertiesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.model.RigidTypeMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;", "", "", "Lkotlin/reflect/KTypeParameter;", "Lkotlin/reflect/KTypeProjection;", "substitution", "<init>", "(Ljava/util/Map;)V", "Companion", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class KTypeSubstitutor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f74427b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final KTypeSubstitutor f74428c = new KTypeSubstitutor(MapsKt.c());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f74429a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;", "", "kotlin-reflection"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public KTypeSubstitutor(Map<KTypeParameter, KTypeProjection> map) {
        map.getClass();
        this.f74429a = map;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x010a  */
    public final KTypeProjection a(KType kType) {
        KTypeProjection kTypeProjectionA;
        KType kTypeA;
        AbstractKType d;
        AbstractKType f74424c;
        kType.getClass();
        boolean z = kType instanceof AbstractKType;
        AbstractKType abstractKType = z ? (AbstractKType) kType : null;
        AbstractKType f74424c2 = abstractKType != null ? abstractKType.getF74424c() : null;
        AbstractKType abstractKType2 = z ? (AbstractKType) kType : null;
        AbstractKType d2 = abstractKType2 != null ? abstractKType2.getD() : null;
        boolean z2 = false;
        if (f74424c2 != null && d2 != null) {
            KTypeProjection kTypeProjectionA2 = a(f74424c2);
            KType kType2 = kTypeProjectionA2.f71960b;
            AbstractKType abstractKType3 = kType2 instanceof AbstractKType ? (AbstractKType) kType2 : null;
            if (abstractKType3 != null && (f74424c = abstractKType3.getF74424c()) != null) {
                kTypeProjectionA2 = new KTypeProjection(kTypeProjectionA2.f71959a, f74424c);
            }
            KTypeProjection kTypeProjectionA3 = a(d2);
            KType kType3 = kTypeProjectionA3.f71960b;
            AbstractKType abstractKType4 = kType3 instanceof AbstractKType ? (AbstractKType) kType3 : null;
            if (abstractKType4 != null && (d = abstractKType4.getD()) != null) {
                kTypeProjectionA3 = new KTypeProjection(kTypeProjectionA3.f71959a, d);
            }
            KVariance kVariance = kTypeProjectionA2.f71959a;
            KType kType4 = kTypeProjectionA2.f71960b;
            kType4.getClass();
            KType kType5 = kTypeProjectionA3.f71960b;
            kType5.getClass();
            if (SystemPropertiesKt.f72181a) {
                KotlinType kotlinType = ((DescriptorKType) kType4).f74413c;
                kotlinType.getClass();
                KotlinType kotlinType2 = ((DescriptorKType) kType5).f74413c;
                kotlinType2.getClass();
                kTypeA = new DescriptorKType(KotlinTypeFactory.a((SimpleType) kotlinType, (SimpleType) kotlinType2), null, 2, null);
            } else {
                FlexibleKType.f74423f.getClass();
                kTypeA = FlexibleKType.Companion.a((AbstractKType) kType4, (AbstractKType) kType5, false, null);
            }
            return new KTypeProjection(kVariance, kTypeA);
        }
        KClassifier f74442c = kType.getF74442c();
        if (f74442c == null) {
            KTypeProjection.INSTANCE.getClass();
            return KTypeProjection.Companion.a(kType);
        }
        KTypeProjection kTypeProjection = (KTypeProjection) this.f74429a.get(f74442c);
        if (kTypeProjection == null) {
            KTypeProjection.Companion companion = KTypeProjection.INSTANCE;
            if (!kType.getD().isEmpty()) {
                List d3 = kType.getD();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(d3, 10));
                Iterator it = d3.iterator();
                while (it.hasNext()) {
                    KType kType6 = ((KTypeProjection) it.next()).f71960b;
                    if (kType6 != null) {
                        kTypeProjectionA = a(kType6);
                    } else {
                        KTypeProjection.INSTANCE.getClass();
                        kTypeProjectionA = KTypeProjection.d;
                    }
                    arrayList.add(kTypeProjectionA);
                }
                boolean f74443e = kType.getF74443e();
                List f74444f = kType.getF74444f();
                AbstractKType abstractKType5 = z ? (AbstractKType) kType : null;
                kType = KClassifiers.d(f74442c, arrayList, f74443e, f74444f, abstractKType5 != null ? abstractKType5.getF74448k() : null);
            }
            companion.getClass();
            return KTypeProjection.Companion.a(kType);
        }
        KVariance kVariance2 = kTypeProjection.f71959a;
        KType kType7 = kTypeProjection.f71960b;
        if (kType7 == null) {
            return kTypeProjection;
        }
        RigidTypeMarker rigidTypeMarker = (RigidTypeMarker) kType7;
        AbstractKType abstractKTypeG = ((AbstractKType) rigidTypeMarker).G(kType.getF74443e() || kType7.getF74443e());
        if (abstractKTypeG != null) {
            AbstractKType abstractKType6 = z ? (AbstractKType) kType : null;
            if (abstractKType6 == null || !abstractKType6.getF74445h()) {
                AbstractKType abstractKType7 = rigidTypeMarker instanceof AbstractKType ? (AbstractKType) rigidTypeMarker : null;
                if (abstractKType7 != null && abstractKType7.getF74445h() && !kType.getF74443e()) {
                    z2 = true;
                }
            } else {
                z2 = true;
            }
            abstractKTypeG = abstractKTypeG.D(z2);
        }
        abstractKTypeG.getClass();
        return new KTypeProjection(kVariance2, abstractKTypeG);
    }
}
