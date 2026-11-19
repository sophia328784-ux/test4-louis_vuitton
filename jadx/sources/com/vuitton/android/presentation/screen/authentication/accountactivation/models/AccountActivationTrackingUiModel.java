package com.vuitton.android.presentation.screen.authentication.accountactivation.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\b\u0002\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\u0007\n\u000b\f\r\u000e\u000f\u0010¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "", "PasswordStepScreen", "ActivationCodeStepScreen", "ActivateYourAccountClick", "ContinuePasswordClick", "ResendCodeClick", "ConfirmActivationClick", "CloseClick", "Step", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AccountActivationTrackingUiModel {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivateYourAccountClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivateYourAccountClick implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivateYourAccountClick f53383a = new ActivateYourAccountClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivateYourAccountClick);
        }

        public final int hashCode() {
            return 683708050;
        }

        public final String toString() {
            return "ActivateYourAccountClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ActivationCodeStepScreen;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ActivationCodeStepScreen implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ActivationCodeStepScreen f53384a = new ActivationCodeStepScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ActivationCodeStepScreen);
        }

        public final int hashCode() {
            return 406629164;
        }

        public final String toString() {
            return "ActivationCodeStepScreen";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;", "step", "<init>", "(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CloseClick implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Step f53385a;

        public CloseClick(Step step) {
            step.getClass();
            this.f53385a = step;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof CloseClick) && this.f53385a == ((CloseClick) obj).f53385a;
        }

        public final int hashCode() {
            return this.f53385a.hashCode();
        }

        public final String toString() {
            return "CloseClick(step=" + this.f53385a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ConfirmActivationClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConfirmActivationClick implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ConfirmActivationClick f53386a = new ConfirmActivationClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ConfirmActivationClick);
        }

        public final int hashCode() {
            return 487110595;
        }

        public final String toString() {
            return "ConfirmActivationClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ContinuePasswordClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ContinuePasswordClick implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ContinuePasswordClick f53387a = new ContinuePasswordClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ContinuePasswordClick);
        }

        public final int hashCode() {
            return -1790801003;
        }

        public final String toString() {
            return "ContinuePasswordClick";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$PasswordStepScreen;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PasswordStepScreen implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final PasswordStepScreen f53388a = new PasswordStepScreen();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof PasswordStepScreen);
        }

        public final int hashCode() {
            return -969713564;
        }

        public final String toString() {
            return "PasswordStepScreen";
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$ResendCodeClick;", "Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResendCodeClick implements AccountActivationTrackingUiModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ResendCodeClick f53389a = new ResendCodeClick();

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof ResendCodeClick);
        }

        public final int hashCode() {
            return -1170874833;
        }

        public final String toString() {
            return "ResendCodeClick";
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationTrackingUiModel$Step[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationTrackingUiModel$Step[]) from 0x001e: INVOKE 
      (r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.models.AccountActivationTrackingUiModel$Step[])
     STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;", "", "", "value", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "PASSWORD", "ACTIVATION_CODE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Step {
        PASSWORD("account_creation_password_step"),
        ACTIVATION_CODE("account_creation_activation_code_step");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String value;

        static {
            $ENTRIES = EnumEntriesKt.a(stepArr);
        }

        public Step(String str) {
            super(str, i);
            this.value = str;
        }

        public static Step valueOf(String str) {
            return (Step) Enum.valueOf(Step.class, str);
        }

        public static Step[] values() {
            return (Step[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getValue() {
            return this.value;
        }
    }
}
