package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class TypeEnhancementInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f73190a;

    public TypeEnhancementInfo(Map<Integer, JavaTypeQualifiers> map) {
        map.getClass();
        this.f73190a = map;
    }

    public final TypeEnhancementInfo a() {
        Map map = this.f73190a;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.g(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            JavaTypeQualifiers javaTypeQualifiers = (JavaTypeQualifiers) entry.getValue();
            NullabilityQualifier nullabilityQualifier = javaTypeQualifiers.f73110a;
            MutabilityQualifier mutabilityQualifier = javaTypeQualifiers.f73111b;
            boolean z = javaTypeQualifiers.f73112c;
            JavaTypeQualifiers.Companion companion = JavaTypeQualifiers.f73108e;
            javaTypeQualifiers.getClass();
            linkedHashMap.put(key, new JavaTypeQualifiers(nullabilityQualifier, mutabilityQualifier, z, true));
        }
        return new TypeEnhancementInfo(linkedHashMap);
    }
}
