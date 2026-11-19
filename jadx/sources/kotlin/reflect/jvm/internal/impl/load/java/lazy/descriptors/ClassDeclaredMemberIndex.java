package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifier;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClassifierType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaField;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMember;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaRecordComponent;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaType;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaValueParameter;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes4.dex */
public class ClassDeclaredMemberIndex implements DeclaredMemberIndex {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JavaClass f72972a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f72973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f72974c;
    public final LinkedHashMap d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f72975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f72976f;

    public ClassDeclaredMemberIndex(JavaClass javaClass, Function1<? super JavaMember, Boolean> function1) {
        javaClass.getClass();
        function1.getClass();
        this.f72972a = javaClass;
        this.f72973b = function1;
        Function1 function2 = new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.ClassDeclaredMemberIndex$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final ClassDeclaredMemberIndex f72977b;

            {
                this.f72977b = this;
            }

            /* JADX WARN: Code duplicated, block: B:38:0x0096  */
            /* JADX WARN: Code duplicated, block: B:41:0x00a3  */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean zIsEmpty;
                FqName fqNameC;
                JavaMethod javaMethod = (JavaMethod) obj;
                javaMethod.getClass();
                boolean z = false;
                if (((Boolean) this.f72977b.f72973b.invoke(javaMethod)).booleanValue()) {
                    if (javaMethod.g().f72614a.isInterface()) {
                        String strB = javaMethod.getName().b();
                        int iHashCode = strB.hashCode();
                        if (iHashCode != -1776922004) {
                            if (iHashCode != -1295482945) {
                                if (iHashCode == 147696667 && strB.equals("hashCode")) {
                                    zIsEmpty = ((ArrayList) javaMethod.h()).isEmpty();
                                }
                            } else if (strB.equals("equals")) {
                                JavaValueParameter javaValueParameter = (JavaValueParameter) CollectionsKt.j0(javaMethod.h());
                                JavaType type = javaValueParameter != null ? javaValueParameter.getType() : null;
                                JavaClassifierType javaClassifierType = type instanceof JavaClassifierType ? (JavaClassifierType) type : null;
                                if (javaClassifierType != null) {
                                    JavaClassifier javaClassifierA = javaClassifierType.a();
                                    if ((javaClassifierA instanceof JavaClass) && (fqNameC = ((JavaClass) javaClassifierA).c()) != null && Intrinsics.c(fqNameC.f73679a.f73683a, "java.lang.Object")) {
                                        zIsEmpty = true;
                                    }
                                }
                            }
                            zIsEmpty = false;
                        } else if (strB.equals("toString")) {
                            zIsEmpty = ((ArrayList) javaMethod.h()).isEmpty();
                        } else {
                            zIsEmpty = false;
                        }
                        if (!zIsEmpty) {
                            z = true;
                        }
                    } else {
                        z = true;
                    }
                }
                return Boolean.valueOf(z);
            }
        };
        this.f72974c = function2;
        FilteringSequence filteringSequenceF = SequencesKt.f(CollectionsKt.o(javaClass.y()), function2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        FilteringSequence.AnonymousClass1 anonymousClass1 = new FilteringSequence.AnonymousClass1();
        while (anonymousClass1.hasNext()) {
            Object next = anonymousClass1.next();
            Name name = ((JavaMethod) next).getName();
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(next);
        }
        this.d = linkedHashMap;
        FilteringSequence filteringSequenceF2 = SequencesKt.f(CollectionsKt.o(this.f72972a.u()), this.f72973b);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        FilteringSequence.AnonymousClass1 anonymousClass2 = new FilteringSequence.AnonymousClass1();
        while (anonymousClass2.hasNext()) {
            Object next2 = anonymousClass2.next();
            linkedHashMap2.put(((JavaField) next2).getName(), next2);
        }
        this.f72975e = linkedHashMap2;
        ArrayList arrayListE = this.f72972a.e();
        Function1 function3 = this.f72973b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayListE) {
            if (((Boolean) function3.invoke(obj)).booleanValue()) {
                arrayList2.add(obj);
            }
        }
        int iG = MapsKt.g(CollectionsKt.t(arrayList2, 10));
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(iG < 16 ? 16 : iG);
        for (Object obj2 : arrayList2) {
            linkedHashMap3.put(((JavaRecordComponent) obj2).getName(), obj2);
        }
        this.f72976f = linkedHashMap3;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set a() {
        FilteringSequence filteringSequenceF = SequencesKt.f(CollectionsKt.o(this.f72972a.y()), this.f72974c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        FilteringSequence.AnonymousClass1 anonymousClass1 = new FilteringSequence.AnonymousClass1();
        while (anonymousClass1.hasNext()) {
            linkedHashSet.add(((JavaMethod) anonymousClass1.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set b() {
        return this.f72976f.keySet();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Set c() {
        FilteringSequence filteringSequenceF = SequencesKt.f(CollectionsKt.o(this.f72972a.u()), this.f72973b);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        FilteringSequence.AnonymousClass1 anonymousClass1 = new FilteringSequence.AnonymousClass1();
        while (anonymousClass1.hasNext()) {
            linkedHashSet.add(((JavaField) anonymousClass1.next()).getName());
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final Collection d(Name name) {
        name.getClass();
        List list = (List) this.d.get(name);
        return list != null ? list : EmptyList.f71768b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final JavaRecordComponent e(Name name) {
        name.getClass();
        return (JavaRecordComponent) this.f72976f.get(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.DeclaredMemberIndex
    public final JavaField f(Name name) {
        name.getClass();
        return (JavaField) this.f72975e.get(name);
    }
}
