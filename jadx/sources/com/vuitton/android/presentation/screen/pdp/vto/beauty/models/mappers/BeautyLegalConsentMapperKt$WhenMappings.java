package com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.foundation.model.domain.model.legal.LegalConsentContext;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class BeautyLegalConsentMapperKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f62209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int[] f62210b;

    static {
        int[] iArr = new int[LegalConsentContext.values().length];
        try {
            iArr[LegalConsentContext.TRY_ON.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[LegalConsentContext.SHADE_FINDER.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f62209a = iArr;
        int[] iArr2 = new int[LegalConsentContextUiModel.values().length];
        try {
            iArr2[LegalConsentContextUiModel.TRY_ON.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[LegalConsentContextUiModel.SHADE_FINDER.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        f62210b = iArr2;
    }
}
