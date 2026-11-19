package com.vuitton.android.presentation.screen.authentication.accountmanager;

import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;", "", "Success", "Cancelled", "Failure", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Cancelled;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface KakaoCredentialResult {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Cancelled;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Cancelled implements KakaoCredentialResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Cancelled f53418a = new Cancelled();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Cancelled);
        }

        public final int hashCode() {
            return -1699153949;
        }

        public final String toString() {
            return "Cancelled";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Failure;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Failure implements KakaoCredentialResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f53419a;

        public Failure(String str) {
            this.f53419a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Failure) && Intrinsics.c(this.f53419a, ((Failure) obj).f53419a);
        }

        public final int hashCode() {
            String str = this.f53419a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.h("Failure(errorMessage=", this.f53419a, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult$Success;", "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoCredentialResult;", "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;", "socialLoginUiModel", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Success implements KakaoCredentialResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SocialLoginUiModel f53420a;

        public Success(SocialLoginUiModel socialLoginUiModel) {
            socialLoginUiModel.getClass();
            this.f53420a = socialLoginUiModel;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f53420a, ((Success) obj).f53420a);
        }

        public final int hashCode() {
            return this.f53420a.hashCode();
        }

        public final String toString() {
            return "Success(socialLoginUiModel=" + this.f53420a + ")";
        }
    }
}
