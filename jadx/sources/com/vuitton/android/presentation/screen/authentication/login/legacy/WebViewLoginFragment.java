package com.vuitton.android.presentation.screen.authentication.login.legacy;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.R;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.utils.SecurityUtils;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.r31;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WebViewLoginFragment extends Hilt_WebViewLoginFragment {
    public static final Companion L = new Companion(null);
    public static final String M = "WebViewLoginFragment";
    public EnvironmentProvider F;
    public LinkHandler G;
    public AnalyticsWebInterface H;
    public AkamaiSecurityHelper I;
    public Logger J;
    public final ViewModelLazy K;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;", "", "", "KEY_WITH_POPUP", "Ljava/lang/String;", "KEY_EMAIL", "TAG", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static WebViewLoginFragment a(String str) {
            WebViewLoginFragment webViewLoginFragment = new WebViewLoginFragment();
            Bundle bundle = new Bundle();
            if (str != null && str.length() != 0) {
                bundle.putString("KEY_EMAIL", str);
            }
            webViewLoginFragment.setArguments(bundle);
            return webViewLoginFragment;
        }
    }

    public WebViewLoginFragment() {
        final Function0 function0 = null;
        this.K = new ViewModelLazy(Reflection.f71922a.b(AuthenticationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.requireActivity().getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((AuthenticationViewModel) this.K.getF71699b()).I0(AuthenticationTrackingUiModel.SignInScreen.f53708a);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 11, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("KEY_EMAIL") : null;
        EnvironmentProvider environmentProvider = this.F;
        if (environmentProvider == null) {
            Intrinsics.h("environmentProvider");
            throw null;
        }
        String strConcat = environmentProvider.j().concat("identiity");
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(1835916495, true, new r31(this, strConcat, string, 10)));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        SecurityUtils.a(getActivity());
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.legacy.Hilt_WebViewLoginFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        FragmentActivity activity;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        SecurityUtils.b(getActivity());
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean("KEY_WITH_POPUP") || (activity = getActivity()) == null) {
            return;
        }
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.mylv_salesforces_register_fail);
        string.getClass();
        GenericBottomSheet.Companion.b(companion, string, null, null, 28).show(activity.getSupportFragmentManager(), GenericBottomSheet.S);
    }
}
