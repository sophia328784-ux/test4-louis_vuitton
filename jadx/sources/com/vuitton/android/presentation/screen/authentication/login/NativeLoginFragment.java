package com.vuitton.android.presentation.screen.authentication.login;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.fragment.app.Fragment;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.vuitton.android.presentation.utils.SecurityUtils;
import defpackage.lf0;
import defpackage.v40;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeLoginFragment extends Fragment {
    public static final Companion A = new Companion(null);
    public static final String B = "NativeLoginFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "EMAIL_PARAM", "ROUTE_PARAM", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static NativeLoginFragment a(String str, NativeLoginRouteName nativeLoginRouteName) {
            nativeLoginRouteName.getClass();
            NativeLoginFragment nativeLoginFragment = new NativeLoginFragment();
            Bundle bundle = new Bundle();
            bundle.putString("ROUTE_PARAM", nativeLoginRouteName.name());
            if (str != null && str.length() != 0) {
                bundle.putString("EMAIL_PARAM", str);
            }
            nativeLoginFragment.setArguments(bundle);
            return nativeLoginFragment;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        NativeLoginRoute login;
        layoutInflater.getClass();
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("EMAIL_PARAM") : null;
        if (string == null) {
            string = "";
        }
        for (NativeLoginRouteName nativeLoginRouteName : NativeLoginRouteName.a()) {
            String strName = nativeLoginRouteName.name();
            Bundle arguments2 = getArguments();
            if (Intrinsics.c(strName, arguments2 != null ? arguments2.getString("ROUTE_PARAM") : null)) {
                int i2 = NativeLoginFragmentKt$WhenMappings.f53593a[nativeLoginRouteName.ordinal()];
                if (i2 == 1) {
                    login = new NativeLoginRoute.Login(string);
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return null;
                    }
                    login = new NativeLoginRoute.ForgetPassword("");
                }
                Context contextRequireContext = requireContext();
                contextRequireContext.getClass();
                ComposeView composeView = new ComposeView(contextRequireContext, null, 0, 6, null);
                composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
                SecurityUtils.b(getActivity());
                composeView.setContent(new ComposableLambdaImpl(-560306008, true, new lf0(login, this, 0)));
                return composeView;
            }
        }
        zy0.c("Collection contains no element matching the predicate.");
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        SecurityUtils.a(getActivity());
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        SecurityUtils.b(getActivity());
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }
}
