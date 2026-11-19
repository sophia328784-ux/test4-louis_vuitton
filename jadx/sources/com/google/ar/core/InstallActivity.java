package com.google.ar.core;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.ar.core.exceptions.FatalException;
import com.google.ar.core.exceptions.UnavailableDeviceNotCompatibleException;
import com.google.ar.core.exceptions.UnavailableUserDeclinedInstallationException;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class InstallActivity extends Activity {
    private static final int BOX_SIZE_DP = 280;
    private static final int INSTALLING_TEXT_BOTTOM_MARGIN_DP = 30;
    static final String INSTALL_BEHAVIOR_KEY = "behavior";
    static final String MESSAGE_TYPE_KEY = "message";
    private static final String TAG = "ARCore-InstallActivity";
    private boolean finished;
    private ArCoreApk.InstallBehavior installBehavior;
    private boolean installStarted;
    private ArCoreApk.UserMessageType messageType;
    private boolean waitingForCompletion;
    private final ContextThemeWrapper themeWrapper = new ContextThemeWrapper(this, android.R.style.Theme.Material.Light.Dialog.Alert);
    private x lastEvent = x.f33447b;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: animateToSpinner, reason: merged with bridge method [inline-methods] */
    public void b() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        float f2 = displayMetrics.density * 280.0f;
        int width = getWindow().getDecorView().getWidth();
        int height = getWindow().getDecorView().getHeight();
        setContentView(new RelativeLayout(this));
        int i2 = (int) f2;
        getWindow().getDecorView().setMinimumWidth(i2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.addUpdateListener(new u(this, width, i2, height));
        valueAnimatorOfFloat.addListener(new v(this));
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: closeInstaller, reason: merged with bridge method [inline-methods] */
    public void e() {
        startActivity(new Intent(this, (Class<?>) InstallActivity.class).setFlags(67108864));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: finishWithFailure, reason: merged with bridge method [inline-methods] */
    public void c(Exception exc) {
        l lVar = l.m;
        lVar.f33419b = exc;
        lVar.b();
        this.finished = true;
        super.finish();
    }

    private boolean isOptional() {
        return this.installBehavior == ArCoreApk.InstallBehavior.OPTIONAL;
    }

    private void showEducationDialog() {
        setContentView(com.vuitton.android.R.layout.__arcore_education);
        findViewById(com.vuitton.android.R.id.__arcore_cancelButton).setOnClickListener(new t(this, 0));
        if (!isOptional()) {
            findViewById(com.vuitton.android.R.id.__arcore_cancelButton).setVisibility(8);
        }
        findViewById(com.vuitton.android.R.id.__arcore_continueButton).setOnClickListener(new t(this));
        TextView textView = (TextView) findViewById(com.vuitton.android.R.id.__arcore_messageText);
        ArCoreApk.UserMessageType userMessageType = ArCoreApk.UserMessageType.APPLICATION;
        ArCoreApk.Availability availability = ArCoreApk.Availability.UNKNOWN_ERROR;
        if (this.messageType.ordinal() != 1) {
            textView.setText(com.vuitton.android.R.string.__arcore_install_app);
        } else {
            textView.setText(com.vuitton.android.R.string.__arcore_install_feature);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showSpinner, reason: merged with bridge method [inline-methods] */
    public void a() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = (int) (displayMetrics.density * 280.0f);
        getWindow().setLayout(i2, i2);
        RelativeLayout relativeLayout = new RelativeLayout(this.themeWrapper);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        ProgressBar progressBar = new ProgressBar(this.themeWrapper);
        progressBar.setIndeterminate(true);
        progressBar.setLayoutParams(layoutParams);
        relativeLayout.addView(progressBar);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        layoutParams2.bottomMargin = (int) (displayMetrics.density * 30.0f);
        TextView textView = new TextView(this.themeWrapper);
        textView.setText(com.vuitton.android.R.string.__arcore_installing);
        textView.setLayoutParams(layoutParams2);
        relativeLayout.addView(textView);
        setContentView(relativeLayout);
        getWindow().setLayout(i2, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: startInstaller, reason: merged with bridge method [inline-methods] */
    public void d() {
        this.installStarted = true;
        this.lastEvent = x.f33447b;
        y yVarA = l.m.a(this);
        w wVar = new w(this);
        if (yVarA.f33454h == null) {
            try {
                yVarA.g = getPackageManager().getPackageInstaller();
                ac acVar = new ac(yVarA, wVar);
                yVarA.f33454h = acVar;
                yVarA.g.registerSessionCallback(acVar);
            } catch (NullPointerException unused) {
                wVar.b(new FatalException("Unable to obtain Android PackageInstaller; is this a Play Instant App?"));
            }
        }
        if (yVarA.f33452e == null) {
            ad adVar = new ad(yVarA, wVar);
            yVarA.f33452e = adVar;
            yVarA.f33453f = this;
            if (Build.VERSION.SDK_INT >= 33) {
                registerReceiver(adVar, new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"), 2);
            } else {
                registerReceiver(adVar, new IntentFilter("com.google.android.play.core.install.ACTION_INSTALL_STATUS"));
            }
        }
        try {
            yVarA.d(new ag(yVarA, this, wVar));
        } catch (ah unused2) {
            y.e(this, wVar);
        }
    }

    public final /* synthetic */ void f(x xVar) {
        this.lastEvent = xVar;
    }

    @Override // android.app.Activity
    public void finish() {
        c(new UnavailableUserDeclinedInstallationException());
    }

    public final /* synthetic */ boolean g() {
        return this.waitingForCompletion;
    }

    @Override // android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        super.onActivityResult(i2, i3, intent);
        new StringBuilder(String.valueOf(i3).length() + 16);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            if (bundle != null) {
                c(new FatalException("Install activity was suspended and recreated."));
                return;
            }
            this.messageType = (ArCoreApk.UserMessageType) getIntent().getSerializableExtra(MESSAGE_TYPE_KEY);
            ArCoreApk.InstallBehavior installBehavior = (ArCoreApk.InstallBehavior) getIntent().getSerializableExtra(INSTALL_BEHAVIOR_KEY);
            this.installBehavior = installBehavior;
            if (this.messageType != null && installBehavior != null) {
                setTheme(android.R.style.Theme.Material.Light.Dialog.Alert);
                getWindow().requestFeature(1);
                setFinishOnTouchOutside(isOptional());
                if (this.messageType == ArCoreApk.UserMessageType.USER_ALREADY_INFORMED) {
                    a();
                    return;
                }
                AtomicReference atomicReference = new AtomicReference(ArCoreApk.Availability.UNKNOWN_CHECKING);
                l.m.a(this).c(this, new s(this, atomicReference));
                int iOrdinal = ((ArCoreApk.Availability) atomicReference.get()).ordinal();
                if (iOrdinal != 0 && iOrdinal == 3) {
                    c(new UnavailableDeviceNotCompatibleException());
                    return;
                }
                showEducationDialog();
                return;
            }
            c(new FatalException("Install activity launched without config data."));
        } catch (RuntimeException e2) {
            c(new FatalException("Exception starting install flow", e2));
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (!this.finished) {
            l.m.b();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        PushAutoTrackHelper.onNewIntent(this, intent);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (!this.installStarted) {
            if (this.messageType == ArCoreApk.UserMessageType.USER_ALREADY_INFORMED) {
                d();
            }
        } else {
            if (this.finished) {
                return;
            }
            synchronized (this) {
                try {
                    x xVar = this.lastEvent;
                    if (xVar == x.f33447b) {
                        finish();
                    } else if (xVar == x.f33446a) {
                        this.waitingForCompletion = true;
                    } else {
                        c(l.m.f33419b);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("didResume", true);
    }
}
