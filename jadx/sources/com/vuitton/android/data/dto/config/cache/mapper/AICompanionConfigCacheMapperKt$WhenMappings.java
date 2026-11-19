package com.vuitton.android.data.dto.config.cache.mapper;

import com.vuitton.android.data.dto.config.cache.LiveVideoStatusCache;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class AICompanionConfigCacheMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f45546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f45547b;

    static {
        int[] iArr = new int[LiveVideoStatus.values().length];
        try {
            iArr[LiveVideoStatus.LIVE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_UPCOMING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_DONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[LiveVideoStatus.LIVE_REPLAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f45546a = iArr;
        int[] iArr2 = new int[LiveVideoStatusCache.values().length];
        try {
            iArr2[LiveVideoStatusCache.LIVE.ordinal()] = 1;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[LiveVideoStatusCache.LIVE_UPCOMING.ordinal()] = 2;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[LiveVideoStatusCache.LIVE_DONE.ordinal()] = 3;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            iArr2[LiveVideoStatusCache.LIVE_REPLAY.ordinal()] = 4;
        } catch (NoSuchFieldError unused8) {
        }
        f45547b = iArr2;
    }
}
