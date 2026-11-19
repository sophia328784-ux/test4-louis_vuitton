package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import com.vuitton.android.presentation.screen.tracking.LegalConsentsTrackingContentType;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyLegalConsentUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62143a;

        static {
            int[] iArr = new int[LegalConsentContextUiModel.values().length];
            try {
                iArr[LegalConsentContextUiModel.SHADE_FINDER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LegalConsentContextUiModel.TRY_ON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f62143a = iArr;
        }
    }

    public static final LegalConsentsTrackingContentType a(LegalConsentContextUiModel legalConsentContextUiModel) {
        legalConsentContextUiModel.getClass();
        int i2 = WhenMappings.f62143a[legalConsentContextUiModel.ordinal()];
        if (i2 == 1) {
            return LegalConsentsTrackingContentType.SHADE_FINDER;
        }
        if (i2 == 2) {
            return LegalConsentsTrackingContentType.TRY_ON;
        }
        v40.g();
        return null;
    }
}
