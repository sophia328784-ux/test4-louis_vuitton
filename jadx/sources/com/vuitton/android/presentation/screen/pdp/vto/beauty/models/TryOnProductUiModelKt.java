package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TryOnProductUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62192a;

        static {
            int[] iArr = new int[BeautyProductTypeUiModel.values().length];
            try {
                iArr[BeautyProductTypeUiModel.LIPSTICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyProductTypeUiModel.EYESHADOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyProductTypeUiModel.LIPLINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BeautyProductTypeUiModel.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f62192a = iArr;
        }
    }

    public static final String a(BeautyProductTypeUiModel beautyProductTypeUiModel) {
        beautyProductTypeUiModel.getClass();
        int i2 = WhenMappings.f62192a[beautyProductTypeUiModel.ordinal()];
        if (i2 == 1) {
            return "lips";
        }
        if (i2 == 2) {
            return "eyes";
        }
        if (i2 == 3) {
            return "lip_liner";
        }
        if (i2 == 4) {
            return "none";
        }
        v40.g();
        return null;
    }
}
