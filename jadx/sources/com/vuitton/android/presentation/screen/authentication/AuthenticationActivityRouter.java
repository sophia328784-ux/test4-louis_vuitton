package com.vuitton.android.presentation.screen.authentication;

import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.vuitton.android.R;
import com.vuitton.android.presentation.extensions.FragmentTransactionExtKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginRouteName;
import com.vuitton.android.presentation.screen.authentication.login.legacy.WebViewLoginFragment;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.register.kisa.WebViewKisaFragment;
import com.vuitton.android.presentation.screen.authentication.register.legacy.WebViewRegisterFragment;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeFragment;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;", "", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticationActivityRouter {
    @Inject
    public AuthenticationActivityRouter() {
    }

    public static void a(FragmentActivity fragmentActivity, TrackingAuthOrigin trackingAuthOrigin) {
        FragmentManager supportFragmentManager;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
        WebViewKisaFragment.O.getClass();
        WebViewKisaFragment webViewKisaFragment = new WebViewKisaFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("KEY_TRACKING_AUTH_ORIGIN", trackingAuthOrigin);
        webViewKisaFragment.setArguments(bundle);
        fragmentTransactionD.i(R.id.fragment_container, webViewKisaFragment, WebViewKisaFragment.P, 1);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }

    public static void b(FragmentActivity fragmentActivity, String str) {
        FragmentTransaction fragmentTransactionD;
        List listM;
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        boolean z = false;
        if (supportFragmentManager != null && (listM = supportFragmentManager.M()) != null && (!listM.isEmpty())) {
            z = true;
        }
        FragmentManager supportFragmentManager2 = fragmentActivity.getSupportFragmentManager();
        if (supportFragmentManager2 != null) {
            fragmentTransactionD = supportFragmentManager2.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
        } else {
            fragmentTransactionD = null;
        }
        if (z) {
            if (fragmentTransactionD != null) {
                WebViewLoginFragment.L.getClass();
                WebViewLoginFragment webViewLoginFragmentA = WebViewLoginFragment.Companion.a(str);
                String str2 = WebViewLoginFragment.M;
                fragmentTransactionD.i(R.id.fragment_container, webViewLoginFragmentA, str2, 1);
                fragmentTransactionD.d(str2);
                FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            }
        } else if (fragmentTransactionD != null) {
            WebViewLoginFragment.L.getClass();
            fragmentTransactionD.m(R.id.fragment_container, WebViewLoginFragment.Companion.a(str), WebViewLoginFragment.M);
        }
        if (fragmentTransactionD != null) {
            fragmentTransactionD.e();
        }
    }

    public static void c(FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager;
        FragmentManager supportFragmentManager2;
        if (fragmentActivity != null && (supportFragmentManager2 = fragmentActivity.getSupportFragmentManager()) != null) {
            supportFragmentManager2.X();
        }
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
        fragmentTransactionD.n(R.anim.no_animation, R.anim.push_right_out, R.anim.no_animation, R.anim.push_right_out);
        WebViewLoginFragment.L.getClass();
        WebViewLoginFragment webViewLoginFragment = new WebViewLoginFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("KEY_WITH_POPUP", true);
        webViewLoginFragment.setArguments(bundle);
        String str = WebViewLoginFragment.M;
        fragmentTransactionD.i(R.id.fragment_container, webViewLoginFragment, str, 1);
        fragmentTransactionD.d(str);
        FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
        fragmentTransactionD.e();
    }

    public static void d(FragmentActivity fragmentActivity, String str) {
        FragmentTransaction fragmentTransactionD;
        FragmentManager supportFragmentManager;
        List listM;
        FragmentManager supportFragmentManager2;
        if (fragmentActivity == null || (supportFragmentManager2 = fragmentActivity.getSupportFragmentManager()) == null) {
            fragmentTransactionD = null;
        } else {
            fragmentTransactionD = supportFragmentManager2.d();
            NativeLoginFragment.Companion companion = NativeLoginFragment.A;
            NativeLoginRouteName nativeLoginRouteName = NativeLoginRouteName.LOGIN;
            companion.getClass();
            fragmentTransactionD.m(R.id.fragment_container, NativeLoginFragment.Companion.a(str, nativeLoginRouteName), NativeLoginFragment.B);
        }
        if (fragmentActivity != null && (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) != null && (listM = supportFragmentManager.M()) != null && !listM.isEmpty() && fragmentTransactionD != null) {
            fragmentTransactionD.d(NativeLoginFragment.B);
        }
        if (fragmentTransactionD != null) {
            fragmentTransactionD.e();
        }
    }

    public static void e(FragmentActivity fragmentActivity, boolean z, boolean z2, TrackingAuthOrigin trackingAuthOrigin) {
        FragmentManager supportFragmentManager;
        FragmentManager supportFragmentManager2;
        List listM;
        FragmentManager supportFragmentManager3;
        List listM2;
        FragmentManager supportFragmentManager4;
        if (z && z2) {
            a(fragmentActivity, trackingAuthOrigin);
            return;
        }
        FragmentTransaction fragmentTransactionD = null;
        if (z2) {
            if (fragmentActivity != null && (supportFragmentManager4 = fragmentActivity.getSupportFragmentManager()) != null) {
                fragmentTransactionD = supportFragmentManager4.d();
                NativeRegisterFragment.G.getClass();
                NativeRegisterFragment nativeRegisterFragment = new NativeRegisterFragment();
                Bundle bundle = new Bundle();
                if (trackingAuthOrigin != null) {
                    bundle.putSerializable("EXTRA_TRACKING_ORIGIN", trackingAuthOrigin);
                }
                nativeRegisterFragment.setArguments(bundle);
                fragmentTransactionD.m(R.id.fragment_container, nativeRegisterFragment, NativeRegisterFragment.H);
            }
            if (fragmentActivity != null && (supportFragmentManager3 = fragmentActivity.getSupportFragmentManager()) != null && (listM2 = supportFragmentManager3.M()) != null && !listM2.isEmpty() && fragmentTransactionD != null) {
                fragmentTransactionD.d(NativeRegisterFragment.H);
            }
            if (fragmentTransactionD != null) {
                fragmentTransactionD.e();
                return;
            }
            return;
        }
        boolean z3 = false;
        if (fragmentActivity != null && (supportFragmentManager2 = fragmentActivity.getSupportFragmentManager()) != null && (listM = supportFragmentManager2.M()) != null && (!listM.isEmpty())) {
            z3 = true;
        }
        if (fragmentActivity != null && (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) != null) {
            fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.push_left_in, R.anim.push_right_out, R.anim.push_left_in, R.anim.push_right_out);
        }
        if (z3) {
            if (fragmentTransactionD != null) {
                WebViewRegisterFragment.M.getClass();
                WebViewRegisterFragment webViewRegisterFragment = new WebViewRegisterFragment();
                String str = WebViewRegisterFragment.N;
                fragmentTransactionD.i(R.id.fragment_container, webViewRegisterFragment, str, 1);
                fragmentTransactionD.d(str);
                FragmentTransactionExtKt.a(fragmentTransactionD, fragmentActivity);
            }
        } else if (fragmentTransactionD != null) {
            WebViewRegisterFragment.M.getClass();
            fragmentTransactionD.m(R.id.fragment_container, new WebViewRegisterFragment(), WebViewRegisterFragment.N);
        }
        if (fragmentTransactionD != null) {
            fragmentTransactionD.e();
        }
    }

    public static void f(AuthenticationActivity authenticationActivity, LoginContext loginContext, boolean z) {
        loginContext.getClass();
        FragmentManager supportFragmentManager = authenticationActivity.getSupportFragmentManager();
        if (supportFragmentManager != null) {
            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.no_animation, R.anim.no_animation, R.anim.no_animation, R.anim.no_animation);
            WelcomeFragment.I.getClass();
            fragmentTransactionD.m(R.id.fragment_container, WelcomeFragment.Companion.a(loginContext, false, false, z), WelcomeFragment.J);
            fragmentTransactionD.e();
        }
    }

    public static void g(AuthenticationActivity authenticationActivity) {
        FragmentManager supportFragmentManager = authenticationActivity.getSupportFragmentManager();
        if (supportFragmentManager != null) {
            FragmentTransaction fragmentTransactionD = supportFragmentManager.d();
            fragmentTransactionD.n(R.anim.no_animation, R.anim.no_animation, R.anim.no_animation, R.anim.no_animation);
            WelcomeFragment.Companion companion = WelcomeFragment.I;
            LoginContext loginContext = LoginContext.DEFAULT;
            companion.getClass();
            fragmentTransactionD.m(R.id.fragment_container, WelcomeFragment.Companion.a(loginContext, true, true, true), WelcomeFragment.J);
            fragmentTransactionD.p = true;
            fragmentTransactionD.e();
        }
    }
}
