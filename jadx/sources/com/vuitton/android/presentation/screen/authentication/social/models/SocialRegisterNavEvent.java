package com.vuitton.android.presentation.screen.authentication.social.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;", "", "ToSocialRegister", "ToKisaForSocialRegister", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SocialRegisterNavEvent {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "model", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToKisaForSocialRegister extends SocialRegisterNavEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SocialLoginUiModel f54200a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ToKisaForSocialRegister(SocialLoginUiModel socialLoginUiModel) {
            super(null);
            socialLoginUiModel.getClass();
            this.f54200a = socialLoginUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToKisaForSocialRegister) && Intrinsics.c(this.f54200a, ((ToKisaForSocialRegister) obj).f54200a);
        }

        public final int hashCode() {
            return this.f54200a.hashCode();
        }

        public final String toString() {
            return "ToKisaForSocialRegister(model=" + this.f54200a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "model", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ToSocialRegister extends SocialRegisterNavEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SocialLoginUiModel f54201a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ToSocialRegister(SocialLoginUiModel socialLoginUiModel) {
            super(null);
            socialLoginUiModel.getClass();
            this.f54201a = socialLoginUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ToSocialRegister) && Intrinsics.c(this.f54201a, ((ToSocialRegister) obj).f54201a);
        }

        public final int hashCode() {
            return this.f54201a.hashCode();
        }

        public final String toString() {
            return "ToSocialRegister(model=" + this.f54201a + ")";
        }
    }

    public SocialRegisterNavEvent(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
