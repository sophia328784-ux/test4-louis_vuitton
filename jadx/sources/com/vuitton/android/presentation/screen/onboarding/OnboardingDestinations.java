package com.vuitton.android.presentation.screen.onboarding;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations;", "", "ToLoginPage", "ToRegisterPage", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToRegisterPage;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface OnboardingDestinations {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToLoginPage;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToLoginPage implements OnboardingDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToLoginPage f59472a = new ToLoginPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToLoginPage);
        }

        public final int hashCode() {
            return 1140752291;
        }

        public final String toString() {
            return "ToLoginPage";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations$ToRegisterPage;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingDestinations;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToRegisterPage implements OnboardingDestinations {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ToRegisterPage f59473a = new ToRegisterPage();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ToRegisterPage);
        }

        public final int hashCode() {
            return 1773053415;
        }

        public final String toString() {
            return "ToRegisterPage";
        }
    }
}
