package com.vuitton.android.presentation;

import androidx.media3.database.StandaloneDatabaseProvider;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import defpackage.q;
import defpackage.w1;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/CacheFactory;", "", "Ljava/io/File;", "cacheDir", "Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;", "cacheEvictor", "Landroidx/media3/database/StandaloneDatabaseProvider;", "exoplayerDatabaseProvider", "<init>", "(Ljava/io/File;Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;Landroidx/media3/database/StandaloneDatabaseProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CacheFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f50467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Lazy f50468b;

    public CacheFactory(File file, LeastRecentlyUsedCacheEvictor leastRecentlyUsedCacheEvictor, StandaloneDatabaseProvider standaloneDatabaseProvider) {
        file.getClass();
        leastRecentlyUsedCacheEvictor.getClass();
        standaloneDatabaseProvider.getClass();
        this.f50467a = LazyKt.b(new q(file, leastRecentlyUsedCacheEvictor, standaloneDatabaseProvider, 19));
        this.f50468b = LazyKt.b(new w1(this, 13));
    }
}
