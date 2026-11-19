package kotlin.reflect.jvm.internal.impl;

import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.jvm.internal.impl.load.java.JvmAnnotationNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SpecialJvmAnnotations {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f72232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ClassId f72233b;

    static {
        List<FqName> listP = CollectionsKt.P(JvmAnnotationNames.f72869a, JvmAnnotationNames.f72874h, JvmAnnotationNames.f72875i, JvmAnnotationNames.f72871c, JvmAnnotationNames.d, JvmAnnotationNames.f72873f);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ClassId.Companion companion = ClassId.d;
        for (FqName fqName : listP) {
            companion.getClass();
            linkedHashSet.add(ClassId.Companion.b(fqName));
        }
        f72232a = linkedHashSet;
        ClassId.Companion companion2 = ClassId.d;
        FqName fqName2 = JvmAnnotationNames.g;
        fqName2.getClass();
        companion2.getClass();
        f72233b = ClassId.Companion.b(fqName2);
    }
}
