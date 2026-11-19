package com.vuitton.android.presentation.screen.authentication.accountactivation;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.s2;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AccountActivationActivity extends Hilt_AccountActivationActivity {
    public static final Companion r = new Companion(null);
    public AuthenticationActivityRouter p;
    public final ViewModelLazy q;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;", "", "", "EXTRA_CID", "Ljava/lang/String;", "EXTRA_TRACKING_ORIGIN", "", "PASSWORD_STEP_INDEX", "I", "ACCOUNT_ACTIVATION_STEP_INDEX", "TrackingOrigin", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        /* JADX WARN: Enum visitor error
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$Companion$TrackingOrigin[], still in use, count: 1, list:
          (r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$Companion$TrackingOrigin[]) from 0x002a: INVOKE 
          (r0v1 com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$Companion$TrackingOrigin[])
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
        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion$TrackingOrigin;", "", "", "value", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "THANK_YOU_PAGE", "OSA", "LINK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class TrackingOrigin {
            THANK_YOU_PAGE("thank_you_page"),
            OSA("osa"),
            LINK("email");

            private static final /* synthetic */ EnumEntries $ENTRIES;
            private final String value;

            static {
                $ENTRIES = EnumEntriesKt.a(trackingOriginArr);
            }

            public TrackingOrigin(String str) {
                super(str, i);
                this.value = str;
            }

            public static TrackingOrigin valueOf(String str) {
                return (TrackingOrigin) Enum.valueOf(TrackingOrigin.class, str);
            }

            public static TrackingOrigin[] values() {
                return (TrackingOrigin[]) $VALUES.clone();
            }

            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getValue() {
                return this.value;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, TrackingOrigin trackingOrigin) {
            context.getClass();
            str.getClass();
            trackingOrigin.getClass();
            Intent intent = new Intent(context, (Class<?>) AccountActivationActivity.class);
            intent.putExtra("EXTRA_CID", str);
            intent.putExtra("EXTRA_TRACKING_ORIGIN", trackingOrigin.getValue());
            return intent;
        }
    }

    public AccountActivationActivity() {
        final Function0 function0 = null;
        this.q = new ViewModelLazy(Reflection.f71922a.b(AccountActivationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        EdgeToEdgeKt.b(this, false, SystemIcons.f43534c, 1);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(556449710, true, new s2(this, 0)));
    }
}
