package com.vuitton.android.presentation.screen.onboarding.models;

import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OnboardingMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f59582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f59583b;

        static {
            int[] iArr = new int[OnboardingState.values().length];
            try {
                iArr[OnboardingState.NOT_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OnboardingState.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OnboardingState.GEOLOCATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[OnboardingState.NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[OnboardingState.ICONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[OnboardingState.DONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f59582a = iArr;
            int[] iArr2 = new int[OnboardingStateUiModel.values().length];
            try {
                iArr2[OnboardingStateUiModel.NOT_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[OnboardingStateUiModel.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[OnboardingStateUiModel.GEOLOCATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[OnboardingStateUiModel.NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[OnboardingStateUiModel.ICONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[OnboardingStateUiModel.DONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused12) {
            }
            f59583b = iArr2;
        }
    }

    public static final OnboardingStateUiModel a(OnboardingState onboardingState) {
        switch (WhenMappings.f59582a[onboardingState.ordinal()]) {
            case 1:
                return OnboardingStateUiModel.NOT_STARTED;
            case 2:
                return OnboardingStateUiModel.START;
            case 3:
                return OnboardingStateUiModel.GEOLOCATION;
            case 4:
                return OnboardingStateUiModel.NOTIFICATION;
            case 5:
                return OnboardingStateUiModel.ICONS;
            case 6:
                return OnboardingStateUiModel.DONE;
            default:
                v40.g();
                return null;
        }
    }
}
