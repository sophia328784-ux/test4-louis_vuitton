package com.vuitton.android.data.dto.config.cache.mapper;

import com.vuitton.android.data.dto.config.cache.RegionCache;
import com.vuitton.foundation.model.domain.model.config.Region;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class PersonalisationConfigCacheMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f45550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f45551b;

    static {
        int[] iArr = new int[Region.values().length];
        try {
            iArr[Region.EU.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Region.US.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f45550a = iArr;
        int[] iArr2 = new int[RegionCache.values().length];
        try {
            iArr2[RegionCache.EU.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[RegionCache.US.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f45551b = iArr2;
    }
}
