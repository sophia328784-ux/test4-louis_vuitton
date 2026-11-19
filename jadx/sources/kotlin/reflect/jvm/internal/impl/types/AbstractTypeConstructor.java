package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractTypeConstructor extends ClassifierBasedTypeConstructor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotNullLazyValue f74167c;

    public static final class Supertypes {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Collection f74173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f74174b;

        public Supertypes(Collection<? extends KotlinType> collection) {
            collection.getClass();
            this.f74173a = collection;
            this.f74174b = CollectionsKt.O(ErrorUtils.f74312c);
        }
    }

    public AbstractTypeConstructor(StorageManager storageManager) {
        storageManager.getClass();
        this.f74167c = storageManager.f(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractTypeConstructor f74168b;

            {
                this.f74168b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return new AbstractTypeConstructor.Supertypes(this.f74168b.b());
            }
        }, new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$$Lambda$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ((Boolean) obj).getClass();
                return new AbstractTypeConstructor.Supertypes(CollectionsKt.O(ErrorUtils.f74312c));
            }
        }, new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final AbstractTypeConstructor f74170b;

            {
                this.f74170b = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AbstractTypeConstructor.Supertypes supertypes = (AbstractTypeConstructor.Supertypes) obj;
                supertypes.getClass();
                final AbstractTypeConstructor abstractTypeConstructor = this.f74170b;
                List listA = abstractTypeConstructor.e().a(abstractTypeConstructor, supertypes.f74173a, new Function1(abstractTypeConstructor) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$$Lambda$3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final AbstractTypeConstructor f74171b;

                    {
                        this.f74171b = abstractTypeConstructor;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        Collection collectionI;
                        TypeConstructor typeConstructor = (TypeConstructor) obj2;
                        typeConstructor.getClass();
                        this.f74171b.getClass();
                        AbstractTypeConstructor abstractTypeConstructor2 = typeConstructor instanceof AbstractTypeConstructor ? (AbstractTypeConstructor) typeConstructor : null;
                        if (abstractTypeConstructor2 != null) {
                            collectionI = CollectionsKt.Y(((AbstractTypeConstructor.Supertypes) abstractTypeConstructor2.f74167c.mo47invoke()).f74173a, abstractTypeConstructor2.d(false));
                        } else {
                            collectionI = typeConstructor.i();
                            collectionI.getClass();
                        }
                        return collectionI;
                    }
                }, new Function1(abstractTypeConstructor) { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$$Lambda$4

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final AbstractTypeConstructor f74172b;

                    {
                        this.f74172b = abstractTypeConstructor;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        KotlinType kotlinType = (KotlinType) obj2;
                        kotlinType.getClass();
                        this.f74172b.k(kotlinType);
                        return Unit.f71739a;
                    }
                });
                if (listA.isEmpty()) {
                    KotlinType kotlinTypeC = abstractTypeConstructor.c();
                    List listO = kotlinTypeC != null ? CollectionsKt.O(kotlinTypeC) : null;
                    if (listO == null) {
                        listO = EmptyList.f71768b;
                    }
                    listA = listO;
                }
                List listY0 = listA instanceof List ? (List) listA : null;
                if (listY0 == null) {
                    listY0 = CollectionsKt.y0(listA);
                }
                List listJ = abstractTypeConstructor.j(listY0);
                listJ.getClass();
                supertypes.f74174b = listJ;
                return Unit.f71739a;
            }
        });
    }

    public abstract Collection b();

    public KotlinType c() {
        return null;
    }

    public Collection d(boolean z) {
        return EmptyList.f71768b;
    }

    public abstract SupertypeLoopChecker e();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final List i() {
        return ((Supertypes) this.f74167c.mo47invoke()).f74174b;
    }

    public List j(List list) {
        list.getClass();
        return list;
    }

    public void k(KotlinType kotlinType) {
        kotlinType.getClass();
    }
}
