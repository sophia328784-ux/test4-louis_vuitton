package com.vuitton.android.presentation.screen.authentication.register.kisa;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.android.presentation.screen.authentication.AuthenticationActivityRouter;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.webview.AnalyticsWebInterface;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import com.vuitton.android.presentation.utils.SecurityUtils;
import com.vuitton.foundation.logger.Logger;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ys0;
import java.io.Serializable;
import java.net.URLEncoder;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J!\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "", "onResume", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class WebViewKisaFragment extends Hilt_WebViewKisaFragment {
    public static final Companion O = new Companion(null);
    public static final String P = "WebViewKisaFragment";
    public EnvironmentProvider F;
    public LinkHandler G;
    public AnalyticsWebInterface H;
    public AkamaiSecurityHelper I;
    public Logger J;
    public AuthenticationActivityRouter K;
    public final ViewModelLazy L;
    public TrackingAuthOrigin M;
    public boolean N;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment$Companion;", "", "", "KEY_DEEPLINK_VALUES", "Ljava/lang/String;", "KEY_CID", "KEY_TRACKING_AUTH_ORIGIN", "TAG", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public WebViewKisaFragment() {
        final Function0 function0 = null;
        this.L = new ViewModelLazy(Reflection.f71922a.b(AuthenticationViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment$special$$inlined$activityViewModels$default$2
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
        Serializable serializable;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        TrackingAuthOrigin trackingAuthOrigin = null;
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializable = arguments.getSerializable("KEY_TRACKING_AUTH_ORIGIN", TrackingAuthOrigin.class);
            } else {
                Serializable serializable2 = arguments.getSerializable("KEY_TRACKING_AUTH_ORIGIN");
                serializable = (TrackingAuthOrigin) (serializable2 instanceof TrackingAuthOrigin ? serializable2 : null);
            }
            trackingAuthOrigin = (TrackingAuthOrigin) serializable;
        }
        this.M = trackingAuthOrigin;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        String str;
        ArrayList<String> stringArrayList;
        layoutInflater.getClass();
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 11, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        Bundle arguments = getArguments();
        String strEncode = (arguments == null || (stringArrayList = arguments.getStringArrayList("KEY_DEEPLINK_VALUES")) == null || stringArrayList.isEmpty() || Intrinsics.c(stringArrayList.get(0), "null")) ? null : URLEncoder.encode(stringArrayList.get(0), Charsets.UTF_8.name());
        if (strEncode != null) {
            str = strEncode;
        } else {
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                strEncode = arguments2.getString("KEY_CID");
                str = strEncode;
            } else {
                str = null;
            }
        }
        EnvironmentProvider environmentProvider = this.F;
        if (environmentProvider == null) {
            Intrinsics.h("environmentProvider");
            throw null;
        }
        String strConcat = environmentProvider.j().concat("identiity");
        EnvironmentProvider environmentProvider2 = this.F;
        if (environmentProvider2 == null) {
            Intrinsics.h("environmentProvider");
            throw null;
        }
        String strConcat2 = environmentProvider2.j().concat("login_error");
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setContent(new ComposableLambdaImpl(-1971312336, true, new ys0(this, strConcat, strConcat2, str, 10)));
        return composeView;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        SecurityUtils.a(getActivity());
        super.onDestroyView();
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.kisa.Hilt_WebViewKisaFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.N) {
            return;
        }
        ((AuthenticationViewModel) this.L.getF71699b()).I0(new AuthenticationTrackingUiModel.KisaConsentsScreen(this.M));
        this.N = true;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.register.kisa.Hilt_WebViewKisaFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        SecurityUtils.b(getActivity());
    }
}
