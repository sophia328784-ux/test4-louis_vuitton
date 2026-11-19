package kotlin.reflect.jvm.internal.types;

import defpackage.cj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.full.KClassifiers;
import kotlin.reflect.jvm.internal.KTypeParameterImpl;
import kotlin.reflect.jvm.internal.KotlinReflectionInternalError;
import kotlin.reflect.jvm.internal.StandardKTypes;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001c\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0001\"\u0006\b\u0000\u0010\u0000\u0018\u0001H\u0082\b¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"T", "Lkotlin/reflect/KClass;", "mutableClassOf", "()Lkotlin/reflect/KClass;", "kotlin-reflection"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MutableCollectionKClassKt {
    public static final MutableCollectionKClass a(final FqName fqName, final KClass kClass) {
        fqName.getClass();
        kClass.getClass();
        return new MutableCollectionKClass(kClass, fqName.f73679a.f73683a, new Function1(kClass, fqName) { // from class: kotlin.reflect.jvm.internal.types.MutableCollectionKClassKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final KClass f74433b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final FqName f74434c;

            {
                this.f74433b = kClass;
                this.f74434c = fqName;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KClass kClass2 = this.f74433b;
                FqName fqName2 = this.f74434c;
                MutableCollectionKClass mutableCollectionKClass = (MutableCollectionKClass) obj;
                mutableCollectionKClass.getClass();
                List d = kClass2.getD();
                ArrayList arrayList = new ArrayList(CollectionsKt.t(d, 10));
                Iterator it = d.iterator();
                while (it.hasNext()) {
                    KTypeParameterImpl kTypeParameterImpl = new KTypeParameterImpl(mutableCollectionKClass, ((KTypeParameter) it.next()).getName(), (Intrinsics.c(fqName2, StandardNames.FqNames.J) || Intrinsics.c(fqName2, StandardNames.FqNames.I)) ? KVariance.OUT : KVariance.INVARIANT, false);
                    kTypeParameterImpl.g = CollectionsKt.O(StandardKTypes.f72179b);
                    arrayList.add(kTypeParameterImpl);
                }
                return arrayList;
            }
        }, new Function1(fqName, kClass) { // from class: kotlin.reflect.jvm.internal.types.MutableCollectionKClassKt$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final FqName f74435b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final KClass f74436c;

            {
                this.f74435b = fqName;
                this.f74436c = kClass;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KClass kClassH;
                MutableCollectionKClass mutableCollectionKClass = (MutableCollectionKClass) obj;
                mutableCollectionKClass.getClass();
                FqName fqName2 = StandardNames.FqNames.K;
                FqName fqName3 = this.f74435b;
                if (Intrinsics.c(fqName3, fqName2)) {
                    KTypeProjection.INSTANCE.getClass();
                    KType kTypeB = Reflection.b(Iterable.class, KTypeProjection.d);
                    ReflectionFactory reflectionFactory = Reflection.f71922a;
                    kClassH = ((AbstractKType) reflectionFactory.d(kTypeB)).h();
                    if (kClassH == null) {
                        throw new KotlinReflectionInternalError(cj.l(reflectionFactory, Iterable.class, new StringBuilder("No mutable collection class found: ")));
                    }
                } else if (Intrinsics.c(fqName3, StandardNames.FqNames.L)) {
                    KTypeProjection.INSTANCE.getClass();
                    KType kTypeB2 = Reflection.b(Collection.class, KTypeProjection.d);
                    ReflectionFactory reflectionFactory2 = Reflection.f71922a;
                    kClassH = ((AbstractKType) reflectionFactory2.d(kTypeB2)).h();
                    if (kClassH == null) {
                        throw new KotlinReflectionInternalError(cj.l(reflectionFactory2, Collection.class, new StringBuilder("No mutable collection class found: ")));
                    }
                } else if (Intrinsics.c(fqName3, StandardNames.FqNames.N)) {
                    KTypeProjection.INSTANCE.getClass();
                    KType kTypeB3 = Reflection.b(Collection.class, KTypeProjection.d);
                    ReflectionFactory reflectionFactory3 = Reflection.f71922a;
                    kClassH = ((AbstractKType) reflectionFactory3.d(kTypeB3)).h();
                    if (kClassH == null) {
                        throw new KotlinReflectionInternalError(cj.l(reflectionFactory3, Collection.class, new StringBuilder("No mutable collection class found: ")));
                    }
                } else if (Intrinsics.c(fqName3, StandardNames.FqNames.M)) {
                    KTypeProjection.INSTANCE.getClass();
                    KType kTypeB4 = Reflection.b(Iterator.class, KTypeProjection.d);
                    ReflectionFactory reflectionFactory4 = Reflection.f71922a;
                    kClassH = ((AbstractKType) reflectionFactory4.d(kTypeB4)).h();
                    if (kClassH == null) {
                        throw new KotlinReflectionInternalError(cj.l(reflectionFactory4, Iterator.class, new StringBuilder("No mutable collection class found: ")));
                    }
                } else {
                    kClassH = null;
                }
                List<KTypeParameter> list = mutableCollectionKClass.d;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                for (KTypeParameter kTypeParameter : list) {
                    KTypeProjection.Companion companion = KTypeProjection.INSTANCE;
                    AbstractKType abstractKTypeC = KClassifiers.c(kTypeParameter, null, 7);
                    companion.getClass();
                    arrayList.add(KTypeProjection.Companion.a(abstractKTypeC));
                }
                ArrayList arrayListV = ArraysKt.v(new KClass[]{this.f74436c, kClassH});
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayListV, 10));
                Iterator it = arrayListV.iterator();
                while (it.hasNext()) {
                    arrayList2.add(KClassifiers.c((KClass) it.next(), arrayList, 6));
                }
                return arrayList2;
            }
        });
    }
}
