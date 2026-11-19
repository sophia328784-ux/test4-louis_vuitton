package com.vuitton.android.presentation.screen.certificates;

import android.content.Context;
import android.content.Intent;
import android.nfc.NfcAdapter;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.chat.ChatComposeContainer;
import com.vuitton.android.presentation.chat.ChatHostActivity;
import com.vuitton.android.presentation.chat.ChatLifecycleObserver;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.screen.certificates.nfc.NfcManager;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.vk;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/chat/ChatHostActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class CertificateActivity extends Hilt_CertificateActivity implements ChatHostActivity {
    public static final Companion x = new Companion(null);
    public final ViewModelLazy p;
    public ContributionLinkNavigator q;
    public ContactUsNavigator r;
    public ChatLifecycleObserver s;
    public ChatAttachable t;
    public LVEventSender u;
    public Logger v;
    public NfcManager w;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;", "", "", "KEY_ID", "Ljava/lang/String;", "KEY_IS_DEEPLINK_TO_ADD_SCREEN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, String str, int i2) {
            if ((i2 & 2) != 0) {
                str = null;
            }
            boolean z = (i2 & 4) == 0;
            companion.getClass();
            context.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) CertificateActivity.class).putExtra("ID", str).putExtra("IS_DEEPLINK_TO_ADD", z);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public CertificateActivity() {
        final Function0 function0 = null;
        this.p = new ViewModelLazy(Reflection.f71922a.b(CertificateViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.certificates.CertificateActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.certificates.CertificateActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.certificates.CertificateActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        ChatLifecycleObserver chatLifecycleObserver = this.s;
        if (chatLifecycleObserver != null) {
            if (chatLifecycleObserver != null) {
                chatLifecycleObserver.d(i2, i3, intent);
            } else {
                Intrinsics.h("chatLifecycleObserver");
                throw null;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemBarStyle.f684e.getClass();
        int i2 = 0;
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ChatComposeContainer chatComposeContainer = new ChatComposeContainer(this);
        Lifecycle f13561b = getF13561b();
        ChatLifecycleObserver chatLifecycleObserver = this.s;
        if (chatLifecycleObserver == null) {
            Intrinsics.h("chatLifecycleObserver");
            throw null;
        }
        f13561b.a(chatLifecycleObserver);
        chatComposeContainer.a(new ComposableLambdaImpl(-290853004, true, new vk(this, i2)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        NfcManager nfcManager = this.w;
        if (nfcManager == null) {
            Intrinsics.h("nfcManager");
            throw null;
        }
        nfcManager.f55925a.getClass();
        NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter(this);
        if (defaultAdapter != null) {
            defaultAdapter.disableReaderMode(this);
        }
        super.onPause();
    }
}
