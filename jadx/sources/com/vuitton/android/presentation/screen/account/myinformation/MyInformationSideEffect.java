package com.vuitton.android.presentation.screen.account.myinformation;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0003\u0005\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;", "", "SeeMyInfo", "EditMyInfo", "EditPassword", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MyInformationSideEffect {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;", "EditionSuccess", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo$EditionSuccess;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class EditMyInfo extends MyInformationSideEffect {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo$EditionSuccess;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class EditionSuccess extends EditMyInfo {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final EditionSuccess f52523a = new EditionSuccess(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof EditionSuccess);
            }

            public final int hashCode() {
                return 356604123;
            }

            public final String toString() {
                return "EditionSuccess";
            }
        }

        public EditMyInfo(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;", "PasswordChangeSuccess", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword$PasswordChangeSuccess;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class EditPassword extends MyInformationSideEffect {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword$PasswordChangeSuccess;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditPassword;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class PasswordChangeSuccess extends EditPassword {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final PasswordChangeSuccess f52524a = new PasswordChangeSuccess(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof PasswordChangeSuccess);
            }

            public final int hashCode() {
                return -1839867389;
            }

            public final String toString() {
                return "PasswordChangeSuccess";
            }
        }

        public EditPassword(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;", "ShowAccountDeletedConfirmation", "AccountDeleteError", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$AccountDeleteError;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$ShowAccountDeletedConfirmation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class SeeMyInfo extends MyInformationSideEffect {

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$AccountDeleteError;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AccountDeleteError extends SeeMyInfo {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final AccountDeleteError f52525a = new AccountDeleteError(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof AccountDeleteError);
            }

            public final int hashCode() {
                return -395764763;
            }

            public final String toString() {
                return "AccountDeleteError";
            }
        }

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo$ShowAccountDeletedConfirmation;", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$SeeMyInfo;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ShowAccountDeletedConfirmation extends SeeMyInfo {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final ShowAccountDeletedConfirmation f52526a = new ShowAccountDeletedConfirmation(null);

            public final boolean equals(Object obj) {
                return this == obj || (obj instanceof ShowAccountDeletedConfirmation);
            }

            public final int hashCode() {
                return 288602643;
            }

            public final String toString() {
                return "ShowAccountDeletedConfirmation";
            }
        }

        public SeeMyInfo(DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
        }
    }

    public MyInformationSideEffect(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
