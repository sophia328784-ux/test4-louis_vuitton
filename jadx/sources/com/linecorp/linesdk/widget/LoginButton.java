package com.linecorp.linesdk.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.dynatrace.android.callback.Callback;
import com.linecorp.linesdk.LoginDelegate;
import com.linecorp.linesdk.LoginListener;
import com.linecorp.linesdk.Scope;
import com.linecorp.linesdk.auth.LineAuthenticationConfig;
import com.linecorp.linesdk.auth.LineAuthenticationParams;
import com.linecorp.linesdk.auth.internal.LineAuthenticationActivity;
import com.linecorp.linesdk.internal.EncryptorHolder;
import com.linecorp.linesdk.internal.FragmentWrapper;
import com.linecorp.linesdk.internal.LoginDelegateImpl;
import com.linecorp.linesdk.internal.LoginHandler;
import com.linecorp.linesdk.widget.LoginButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import defpackage.bx;
import defpackage.v7;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class LoginButton extends AppCompatTextView {
    private LineAuthenticationParams authenticationParams;
    private String channelId;
    private FragmentWrapper fragmentWrapper;
    private View.OnClickListener internalListener;
    private boolean isLineAppAuthEnabled;
    private LoginDelegate loginDelegate;
    private LoginHandler loginHandler;

    public LoginButton(Context context) {
        super(context);
        this.isLineAppAuthEnabled = true;
        LineAuthenticationParams.Builder builder = new LineAuthenticationParams.Builder();
        builder.f36126a = Arrays.asList(Scope.f36100c);
        this.authenticationParams = new LineAuthenticationParams(builder);
        this.loginHandler = new LoginHandler();
        final int i2 = 0;
        this.internalListener = new View.OnClickListener(this) { // from class: ha0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LoginButton f69671c;

            {
                this.f69671c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                LoginButton loginButton = this.f69671c;
                switch (i3) {
                    case 0:
                        LoginButton.m38instrumented$0$new$LandroidcontentContextV(loginButton, view);
                        break;
                    case 1:
                        LoginButton.m39xc8b4abaa(loginButton, view);
                        break;
                    default:
                        LoginButton.m40x4de12e11(loginButton, view);
                        break;
                }
            }
        };
        init();
    }

    private Activity getActivity() {
        Context context = getContext();
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof Activity) {
            return (Activity) context;
        }
        v7.h("Cannot find an Activity");
        return null;
    }

    private void init() {
        setAllCaps(false);
        setGravity(17);
        setText(R.string.btn_line_login);
        setTextColor(ContextCompat.getColor(getContext(), R.color.text_login_btn));
        setBackgroundResource(R.drawable.background_login_btn);
        super.setOnClickListener(this.internalListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$new$-Landroid-content-Context--V, reason: not valid java name */
    public static /* synthetic */ void m38instrumented$0$new$LandroidcontentContextV(LoginButton loginButton, View view) {
        Callback.n(view);
        try {
            loginButton.lambda$new$0(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$new$-Landroid-content-Context-Landroid-util-AttributeSet--V, reason: not valid java name */
    public static /* synthetic */ void m39xc8b4abaa(LoginButton loginButton, View view) {
        Callback.n(view);
        try {
            loginButton.lambda$new$0(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$new$-Landroid-content-Context-Landroid-util-AttributeSet-I-V, reason: not valid java name */
    public static /* synthetic */ void m40x4de12e11(LoginButton loginButton, View view) {
        Callback.n(view);
        try {
            loginButton.lambda$new$0(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$setOnClickListener$-Landroid-view-View$OnClickListener--V, reason: not valid java name */
    public static /* synthetic */ void m41xfd968b64(LoginButton loginButton, View.OnClickListener onClickListener, View view) {
        Callback.n(view);
        try {
            loginButton.lambda$setOnClickListener$1(onClickListener, view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    private /* synthetic */ void lambda$new$0(View view) {
        String str = this.channelId;
        if (str == null) {
            v7.h("Channel id should be set.");
            return;
        }
        if (str.isEmpty()) {
            v7.h("Channel id should not be empty.");
            return;
        }
        FragmentWrapper fragmentWrapper = this.fragmentWrapper;
        String str2 = this.channelId;
        if (fragmentWrapper != null) {
            performLoginWithFragment(str2, fragmentWrapper);
        } else {
            performLoginWithActivity(str2, getActivity());
        }
    }

    private /* synthetic */ void lambda$setOnClickListener$1(View.OnClickListener onClickListener, View view) {
        this.internalListener.onClick(view);
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    private void performLoginWithActivity(String str, Activity activity) {
        Intent intent;
        LoginHandler loginHandler = this.loginHandler;
        boolean z = this.isLineAppAuthEnabled;
        LineAuthenticationParams lineAuthenticationParams = this.authenticationParams;
        loginHandler.getClass();
        if (z) {
            LineAuthenticationConfig lineAuthenticationConfig = new LineAuthenticationConfig(new LineAuthenticationConfig.Builder(str, activity));
            EncryptorHolder.a(activity);
            int i2 = LineAuthenticationActivity.f36152e;
            intent = new Intent(activity, (Class<?>) LineAuthenticationActivity.class);
            intent.putExtra("authentication_config", lineAuthenticationConfig);
            intent.putExtra("authentication_params", lineAuthenticationParams);
        } else {
            LineAuthenticationConfig.Builder builder = new LineAuthenticationConfig.Builder(str, activity);
            builder.f36121e = true;
            LineAuthenticationConfig lineAuthenticationConfig2 = new LineAuthenticationConfig(builder);
            EncryptorHolder.a(activity);
            int i3 = LineAuthenticationActivity.f36152e;
            intent = new Intent(activity, (Class<?>) LineAuthenticationActivity.class);
            intent.putExtra("authentication_config", lineAuthenticationConfig2);
            intent.putExtra("authentication_params", lineAuthenticationParams);
        }
        activity.startActivityForResult(intent, 1);
    }

    private void performLoginWithFragment(String str, FragmentWrapper fragmentWrapper) {
        Intent intent;
        LoginHandler loginHandler = this.loginHandler;
        Activity activity = getActivity();
        boolean z = this.isLineAppAuthEnabled;
        LineAuthenticationParams lineAuthenticationParams = this.authenticationParams;
        loginHandler.getClass();
        if (z) {
            LineAuthenticationConfig lineAuthenticationConfig = new LineAuthenticationConfig(new LineAuthenticationConfig.Builder(str, activity));
            EncryptorHolder.a(activity);
            int i2 = LineAuthenticationActivity.f36152e;
            intent = new Intent(activity, (Class<?>) LineAuthenticationActivity.class);
            intent.putExtra("authentication_config", lineAuthenticationConfig);
            intent.putExtra("authentication_params", lineAuthenticationParams);
        } else {
            LineAuthenticationConfig.Builder builder = new LineAuthenticationConfig.Builder(str, activity);
            builder.f36121e = true;
            LineAuthenticationConfig lineAuthenticationConfig2 = new LineAuthenticationConfig(builder);
            EncryptorHolder.a(activity);
            int i3 = LineAuthenticationActivity.f36152e;
            intent = new Intent(activity, (Class<?>) LineAuthenticationActivity.class);
            intent.putExtra("authentication_config", lineAuthenticationConfig2);
            intent.putExtra("authentication_params", lineAuthenticationParams);
        }
        Fragment fragment = fragmentWrapper.f36174a;
        if (fragment != null) {
            fragment.startActivityForResult(intent, 1);
            return;
        }
        androidx.fragment.app.Fragment fragment2 = fragmentWrapper.f36175b;
        if (fragment2 != null) {
            fragment2.startActivityForResult(intent, 1);
        }
    }

    public void addLoginListener(LoginListener loginListener) {
        if (this.loginDelegate != null) {
            this.loginHandler.f36194a.add(loginListener);
        } else {
            v7.h("You must set LoginDelegate through setLoginDelegate()  first");
        }
    }

    public void enableLineAppAuthentication(boolean z) {
        this.isLineAppAuthEnabled = z;
    }

    public void removeLoginListener(LoginListener loginListener) {
        this.loginHandler.f36194a.remove(loginListener);
    }

    public void setAuthenticationParams(LineAuthenticationParams lineAuthenticationParams) {
        this.authenticationParams = lineAuthenticationParams;
    }

    public void setChannelId(String str) {
        this.channelId = str;
    }

    public void setFragment(Fragment fragment) {
        this.fragmentWrapper = new FragmentWrapper(fragment);
    }

    public void setLoginDelegate(LoginDelegate loginDelegate) {
        if (loginDelegate instanceof LoginDelegateImpl) {
            this.loginDelegate = loginDelegate;
        } else {
            v7.h("Unexpected LoginDelegate, please use the provided Factory to create the instance");
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(new bx(this, onClickListener, 3));
    }

    public void setFragment(androidx.fragment.app.Fragment fragment) {
        this.fragmentWrapper = new FragmentWrapper(fragment);
    }

    public LoginButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isLineAppAuthEnabled = true;
        LineAuthenticationParams.Builder builder = new LineAuthenticationParams.Builder();
        builder.f36126a = Arrays.asList(Scope.f36100c);
        this.authenticationParams = new LineAuthenticationParams(builder);
        this.loginHandler = new LoginHandler();
        final int i2 = 1;
        this.internalListener = new View.OnClickListener(this) { // from class: ha0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LoginButton f69671c;

            {
                this.f69671c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i3 = i2;
                LoginButton loginButton = this.f69671c;
                switch (i3) {
                    case 0:
                        LoginButton.m38instrumented$0$new$LandroidcontentContextV(loginButton, view);
                        break;
                    case 1:
                        LoginButton.m39xc8b4abaa(loginButton, view);
                        break;
                    default:
                        LoginButton.m40x4de12e11(loginButton, view);
                        break;
                }
            }
        };
        init();
    }

    public LoginButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.isLineAppAuthEnabled = true;
        LineAuthenticationParams.Builder builder = new LineAuthenticationParams.Builder();
        builder.f36126a = Arrays.asList(Scope.f36100c);
        this.authenticationParams = new LineAuthenticationParams(builder);
        this.loginHandler = new LoginHandler();
        final int i3 = 2;
        this.internalListener = new View.OnClickListener(this) { // from class: ha0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ LoginButton f69671c;

            {
                this.f69671c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i4 = i3;
                LoginButton loginButton = this.f69671c;
                switch (i4) {
                    case 0:
                        LoginButton.m38instrumented$0$new$LandroidcontentContextV(loginButton, view);
                        break;
                    case 1:
                        LoginButton.m39xc8b4abaa(loginButton, view);
                        break;
                    default:
                        LoginButton.m40x4de12e11(loginButton, view);
                        break;
                }
            }
        };
        init();
    }
}
