package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleHelper {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58270a;

        static {
            int[] iArr = new int[ImmersiveArticleSizeCardUiModel.values().length];
            try {
                iArr[ImmersiveArticleSizeCardUiModel.RATIO_16_9.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImmersiveArticleSizeCardUiModel.RATIO_9_16.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImmersiveArticleSizeCardUiModel.RATIO_2_3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImmersiveArticleSizeCardUiModel.RATIO_4_5.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ImmersiveArticleSizeCardUiModel.RATIO_1_1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f58270a = iArr;
        }
    }

    public static float a(ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel) {
        immersiveArticleSizeCardUiModel.getClass();
        int i2 = WhenMappings.f58270a[immersiveArticleSizeCardUiModel.ordinal()];
        if (i2 == 1) {
            return 1.7777778f;
        }
        if (i2 == 2) {
            return 0.5625f;
        }
        if (i2 == 3) {
            return 0.6666667f;
        }
        if (i2 != 4) {
            return i2 != 5 ? 0.5625f : 1.0f;
        }
        return 0.8f;
    }
}
