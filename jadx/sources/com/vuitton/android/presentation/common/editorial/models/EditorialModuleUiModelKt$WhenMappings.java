package com.vuitton.android.presentation.common.editorial.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class EditorialModuleUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f50855a;

    static {
        int[] iArr = new int[RatioUiModel.values().length];
        try {
            iArr[RatioUiModel.RATIO_2X3.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[RatioUiModel.RATIO_4X5.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[RatioUiModel.RATIO_16X9.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[RatioUiModel.RATIO_9X16.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[RatioUiModel.RATIO_1X1.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[RatioUiModel.FULLSCREEN.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f50855a = iArr;
    }
}
