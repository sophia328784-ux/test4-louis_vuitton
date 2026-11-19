package com.vuitton.android.presentation.screen.account.myinformation.components;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen;", "", "DeletedAccountConfirmation", "DeleteAccount", "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeleteAccount;", "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeletedAccountConfirmation;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class MyInformationBottomSheetScreen {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeleteAccount;", "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeleteAccount extends MyInformationBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DeleteAccount f52596a = new DeleteAccount(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DeleteAccount);
        }

        public final int hashCode() {
            return -311246946;
        }

        public final String toString() {
            return "DeleteAccount";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen$DeletedAccountConfirmation;", "Lcom/vuitton/android/presentation/screen/account/myinformation/components/MyInformationBottomSheetScreen;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class DeletedAccountConfirmation extends MyInformationBottomSheetScreen {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final DeletedAccountConfirmation f52597a = new DeletedAccountConfirmation(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof DeletedAccountConfirmation);
        }

        public final int hashCode() {
            return -380515827;
        }

        public final String toString() {
            return "DeletedAccountConfirmation";
        }
    }

    public MyInformationBottomSheetScreen(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
