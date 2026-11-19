package com.vuitton.android.presentation.screen.storemode.models.mapper;

import com.vuitton.foundation.model.domain.model.storemode.StoreModeType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class StoreModeSectionMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f65090a;

    static {
        int[] iArr = new int[StoreModeType.values().length];
        try {
            iArr[StoreModeType.SIMPLE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        f65090a = iArr;
    }
}
