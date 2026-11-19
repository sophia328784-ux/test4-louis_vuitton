package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.util.concurrent.ConcurrentHashMap;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;

/* JADX INFO: loaded from: classes4.dex */
public final class PackagePartScopeCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializedDescriptorResolver f72574a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReflectKotlinClassFinder f72575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f72576c;

    public PackagePartScopeCache(DeserializedDescriptorResolver deserializedDescriptorResolver, ReflectKotlinClassFinder reflectKotlinClassFinder) {
        deserializedDescriptorResolver.getClass();
        reflectKotlinClassFinder.getClass();
        this.f72574a = deserializedDescriptorResolver;
        this.f72575b = reflectKotlinClassFinder;
        this.f72576c = new ConcurrentHashMap();
    }
}
