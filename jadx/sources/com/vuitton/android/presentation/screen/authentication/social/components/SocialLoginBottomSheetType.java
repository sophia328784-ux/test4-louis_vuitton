package com.vuitton.android.presentation.screen.authentication.social.components;

import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;", "", "AuthSelection", "SocialSignInDebug", "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;", "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SocialLoginBottomSheetType {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;", "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;", "", "isSignUp", "<init>", "(Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class AuthSelection extends SocialLoginBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f54161a;

        public AuthSelection(boolean z) {
            super(null);
            this.f54161a = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof AuthSelection) && this.f54161a == ((AuthSelection) obj).f54161a;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f54161a);
        }

        public final String toString() {
            return tr.i("AuthSelection(isSignUp=", ")", this.f54161a);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;", "Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType;", "", "isSignUp", "Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;", "provider", "<init>", "(ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SocialSignInDebug extends SocialLoginBottomSheetType {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f54162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SocialAuthMode f54163b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SocialSignInDebug(boolean z, SocialAuthMode socialAuthMode) {
            super(null);
            socialAuthMode.getClass();
            this.f54162a = z;
            this.f54163b = socialAuthMode;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SocialSignInDebug)) {
                return false;
            }
            SocialSignInDebug socialSignInDebug = (SocialSignInDebug) obj;
            return this.f54162a == socialSignInDebug.f54162a && this.f54163b == socialSignInDebug.f54163b;
        }

        public final int hashCode() {
            return this.f54163b.hashCode() + (Boolean.hashCode(this.f54162a) * 31);
        }

        public final String toString() {
            return "SocialSignInDebug(isSignUp=" + this.f54162a + ", provider=" + this.f54163b + ")";
        }
    }

    public SocialLoginBottomSheetType(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
