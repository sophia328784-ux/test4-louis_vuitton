package com.vuitton.android.presentation.screen.thankyou.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;", "", "Success", "Loading", "Error", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ThankYouViewState {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Loading extends ThankYouViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Loading f65300a = new Loading(null);
    }

    public ThankYouViewState(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;", "feedback", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;", "featureFlags", "<init>", "(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Error extends ThankYouViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ThankYouFeedbackUiModel f65298a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ThankYouFeatureFlags f65299b;

        public /* synthetic */ Error(ThankYouFeedbackUiModel thankYouFeedbackUiModel, ThankYouFeatureFlags thankYouFeatureFlags, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? new ThankYouFeedbackUiModel(null, null, 0, false, 15, null) : thankYouFeedbackUiModel, (i2 & 2) != 0 ? new ThankYouFeatureFlags(false, false, false, 7, null) : thankYouFeatureFlags);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Error)) {
                return false;
            }
            Error error = (Error) obj;
            return Intrinsics.c(this.f65298a, error.f65298a) && Intrinsics.c(this.f65299b, error.f65299b);
        }

        public final int hashCode() {
            return this.f65299b.hashCode() + (this.f65298a.hashCode() * 31);
        }

        public final String toString() {
            return "Error(feedback=" + this.f65298a + ", featureFlags=" + this.f65299b + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(ThankYouFeedbackUiModel thankYouFeedbackUiModel, ThankYouFeatureFlags thankYouFeatureFlags) {
            super(null);
            thankYouFeedbackUiModel.getClass();
            thankYouFeatureFlags.getClass();
            this.f65298a = thankYouFeedbackUiModel;
            this.f65299b = thankYouFeatureFlags;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Error() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;", "Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;", "checkoutConfirmationDetail", "", "displayName", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;", "feedback", "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;", "featureFlags", "<init>", "(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success extends ThankYouViewState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CheckoutConfirmationDetailUiModel f65301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f65302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ThankYouFeedbackUiModel f65303c;
        public final ThankYouFeatureFlags d;

        public /* synthetic */ Success(CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, String str, ThankYouFeedbackUiModel thankYouFeedbackUiModel, ThankYouFeatureFlags thankYouFeatureFlags, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(checkoutConfirmationDetailUiModel, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? new ThankYouFeedbackUiModel(null, null, 0, false, 15, null) : thankYouFeedbackUiModel, (i2 & 8) != 0 ? new ThankYouFeatureFlags(false, false, false, 7, null) : thankYouFeatureFlags);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Success)) {
                return false;
            }
            Success success = (Success) obj;
            return Intrinsics.c(this.f65301a, success.f65301a) && Intrinsics.c(this.f65302b, success.f65302b) && Intrinsics.c(this.f65303c, success.f65303c) && Intrinsics.c(this.d, success.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + ((this.f65303c.hashCode() + fc.b(this.f65301a.hashCode() * 31, 31, this.f65302b)) * 31);
        }

        public final String toString() {
            return "Success(checkoutConfirmationDetail=" + this.f65301a + ", displayName=" + this.f65302b + ", feedback=" + this.f65303c + ", featureFlags=" + this.d + ")";
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(CheckoutConfirmationDetailUiModel checkoutConfirmationDetailUiModel, String str, ThankYouFeedbackUiModel thankYouFeedbackUiModel, ThankYouFeatureFlags thankYouFeatureFlags) {
            super(null);
            checkoutConfirmationDetailUiModel.getClass();
            str.getClass();
            thankYouFeedbackUiModel.getClass();
            thankYouFeatureFlags.getClass();
            this.f65301a = checkoutConfirmationDetailUiModel;
            this.f65302b = str;
            this.f65303c = thankYouFeedbackUiModel;
            this.d = thankYouFeatureFlags;
        }
    }
}
