package kotlin.reflect.jvm.internal.impl.resolve.sam;

import kotlin.reflect.jvm.internal.impl.storage.CacheWithNullableValues;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;

/* JADX INFO: loaded from: classes4.dex */
public final class SamConversionResolverImpl implements SamConversionResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Iterable f73903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CacheWithNullableValues f73904b;

    public SamConversionResolverImpl(StorageManager storageManager, Iterable<? extends Object> iterable) {
        storageManager.getClass();
        iterable.getClass();
        this.f73903a = iterable;
        this.f73904b = storageManager.h();
    }
}
