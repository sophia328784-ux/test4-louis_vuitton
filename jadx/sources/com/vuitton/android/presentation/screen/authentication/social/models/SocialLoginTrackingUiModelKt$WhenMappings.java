package com.vuitton.android.presentation.screen.authentication.social.models;

import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class SocialLoginTrackingUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f54182a;

    static {
        int[] iArr = new int[SocialAuthMode.values().length];
        try {
            iArr[SocialAuthMode.LINE.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[SocialAuthMode.KAKAO.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f54182a = iArr;
    }
}
