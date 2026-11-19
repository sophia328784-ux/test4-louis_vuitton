package com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers;

import com.vuitton.foundation.model.domain.model.product.vto.TutorialSectionType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class TutorialMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f62213a;

    static {
        int[] iArr = new int[TutorialSectionType.values().length];
        try {
            iArr[TutorialSectionType.ASSET_LIST.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[TutorialSectionType.STEPS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f62213a = iArr;
    }
}
