package com.sightcall.universal.ui;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.format.DateUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityOptionsCompat;
import androidx.fragment.app.DialogFragment;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.core.consent.ConsentDialogFragment;
import com.sightcall.graphik.dialog.UniversalRichDialogFragment;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.session.Reference;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.consent.ConsentRequestEvent;
import com.sightcall.universal.consent.ConsentResultEvent;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.displayname.DisplayNameAndLiveTranslation;
import com.sightcall.universal.displayname.DisplayNameRequestEvent;
import com.sightcall.universal.event.CallReportEvent;
import com.sightcall.universal.guest.HttpAcdRequest;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.steps.AcdCallStep;
import com.sightcall.universal.scenario.steps.AcdHttpCallStep;
import com.sightcall.universal.ui.UniversalLoadingActivity;
import com.sightcall.universal.util.Feature;
import com.sightcall.universal.util.Utils;
import defpackage.d21;
import defpackage.e51;
import defpackage.f31;
import defpackage.gy0;
import defpackage.hi;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.AcdModule;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.acd.AcdQueueEvent;
import net.rtccloud.sdk.event.acd.AcdReadyEvent;
import net.rtccloud.sdk.event.call.StatusEvent;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalLoadingActivity extends AppCompatActivity {
    private Button cancelAcd;
    private DialogFragment consentDialog;
    private boolean finishAndIgnoreRtcc;
    private KeyguardManager keyguardManager;
    private LinearLayout load;
    private TextView message;
    private TextView messageAcd;
    private View progress;
    private TextView title;
    private UniversalDisplayName universalDisplayName;
    CountDownTimer timeOutCountdownTimer = null;
    private Handler acdRequestTimeoutHandler = null;
    private final Runnable acdRequestTimeoutRunnable = new e51(this, 0);

    /* JADX INFO: renamed from: com.sightcall.universal.ui.UniversalLoadingActivity$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$scenario$Scenario$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;

        static {
            int[] iArr = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr;
            try {
                iArr[Call.Status.CREATING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.RINGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.PROCEEDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ACTIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ENDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[HttpAcdRequest.Status.values().length];
            $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status = iArr2;
            try {
                iArr2[HttpAcdRequest.Status.ATTENDEE_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[HttpAcdRequest.Status.WAITING_TIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[HttpAcdRequest.Status.SERVICE_CLOSED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[HttpAcdRequest.Status.SERVICE_UNAVAILABLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[HttpAcdRequest.Status.AGENT_UNAVAILABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[HttpAcdRequest.Status.UNKNOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            int[] iArr3 = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr3;
            try {
                iArr3[Rtcc.Status.NETWORK_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.DISCONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused13) {
            }
            int[] iArr4 = new int[Scenario.Status.values().length];
            $SwitchMap$com$sightcall$universal$scenario$Scenario$Status = iArr4;
            try {
                iArr4[Scenario.Status.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$sightcall$universal$scenario$Scenario$Status[Scenario.Status.ENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    private synchronized void acceptConsent(Reference.UseCase.Consent consent) {
        try {
            if (consent.status != Reference.UseCase.Consent.Status.Pending.INSTANCE) {
                Universal.logger().w("Consent already accepted or refused!");
            }
            consent.status = Reference.UseCase.Consent.Status.Accepted.INSTANCE;
            Rtcc.instance().bus().post(new ConsentResultEvent(consent));
        } catch (Throwable th) {
            throw th;
        }
    }

    private void cancelAcd() {
        Scenario scenario = Universal.scenario().get();
        Step step = scenario != null ? scenario.step() : null;
        if (step instanceof AcdCallStep) {
            new Thread(new f31((AcdCallStep) step, 3)).start();
        }
    }

    private void cancelTimeout() {
        CountDownTimer countDownTimer = this.timeOutCountdownTimer;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
    }

    private void cancelTimeoutAcd() {
        Handler handler = this.acdRequestTimeoutHandler;
        if (handler != null) {
            handler.removeCallbacks(this.acdRequestTimeoutRunnable);
        }
    }

    private void checkForConsent() {
        Session session = Session.get();
        if (session == null) {
            dismissConsentDialog();
            return;
        }
        Reference.UseCase.Consent consent = session.usecase.guest().consent;
        boolean zIgnoreConsent = session.config.ignoreConsent();
        if (consent == null || !consent.isPending() || zIgnoreConsent) {
            dismissConsentDialog();
        } else {
            showConsentDialog(consent);
        }
    }

    private void dismissConsentDialog() {
        DialogFragment dialogFragment = this.consentDialog;
        if (dialogFragment != null) {
            dialogFragment.dismiss();
            this.consentDialog = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishAndIgnoreRtcc() {
        this.finishAndIgnoreRtcc = true;
        dismissConsentDialog();
        finish();
    }

    private boolean finishIfUniversalIsNotLoading() {
        int i2;
        Call call;
        Scenario scenario = Universal.scenario().get();
        boolean z = true;
        if (scenario != null && ((i2 = AnonymousClass2.$SwitchMap$com$sightcall$universal$scenario$Scenario$Status[scenario.status().ordinal()]) == 1 || i2 == 2 ? (call = Rtcc.instance().call().get()) == null || call.status() != Call.Status.ACTIVE : i2 != 3)) {
            z = false;
        }
        if (z) {
            finishAndIgnoreRtcc();
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: instrumented$0$onCreate$-Landroid-os-Bundle--V, reason: not valid java name */
    public static /* synthetic */ void m75instrumented$0$onCreate$LandroidosBundleV(UniversalLoadingActivity universalLoadingActivity, View view) {
        Callback.n(view);
        try {
            universalLoadingActivity.lambda$onCreate$2(view);
        } finally {
            Callback.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public static Intent intent(Context context) {
        Class<? extends Activity> clsExtractActivityClassFromMetaData = Utils.extractActivityClassFromMetaData(context, "com.sightcall.universal.LoadingActivity");
        if (clsExtractActivityClassFromMetaData == null) {
            return null;
        }
        Intent intent = new Intent(context, clsExtractActivityClassFromMetaData);
        intent.addFlags(805306368);
        return intent;
    }

    private boolean isKeyguardLocked() {
        return this.keyguardManager.isKeyguardLocked();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$askDisplayName$4(DisplayNameAndLiveTranslation displayNameAndLiveTranslation, String str, Language language) {
        if (str != null) {
            Session.get().config.displayName(str);
        }
        if (language != null) {
            SDKInjector.getSdkInjector().getReferenceComponent().getLiveTranslationAPI().selectLanguage(language);
        }
        this.universalDisplayName.setVisibility(8);
        this.load.setVisibility(0);
        displayNameAndLiveTranslation.accept();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$cancelAcd$3(Step step) {
        ((AcdCallStep) step).cancelAcd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        Toast.makeText(this, R.string.universal_acd_request_timeout, 1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        runOnUiThread(new e51(this, 1));
        Universal.scenario().interrupt();
        finish();
    }

    private /* synthetic */ void lambda$onCreate$2(View view) {
        cancelAcd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$showConsentDialog$5(Reference.UseCase.Consent consent) {
        acceptConsent(consent);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$showConsentDialog$6(Reference.UseCase.Consent consent) {
        refuseConsent(consent);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$showConsentDialog$7(Reference.UseCase.Consent consent) {
        String str = consent.termsUrl;
        Uri uri = str != null ? Uri.parse(str) : null;
        if (uri != null) {
            try {
                startActivity(new Intent("android.intent.action.VIEW", uri));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    private CharSequence safeGetString(int i2) {
        try {
            return getText(i2);
        } catch (Exception unused) {
            return null;
        }
    }

    private void setText(TextView textView, int i2, Object... objArr) {
        setText(textView, safeGetString(i2, objArr));
    }

    private static void setVisibility(View view, int i2) {
        if (view != null) {
            view.setVisibility(i2);
        }
    }

    private void showConsentDialog(final Reference.UseCase.Consent consent) {
        dismissConsentDialog();
        ArrayList arrayList = new ArrayList();
        String str = consent.positiveButton;
        final int i2 = 0;
        final int i3 = 1;
        if (str != null) {
            arrayList.add(new UniversalRichDialogFragment.Action(str, true, new Function0(this) { // from class: f51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ UniversalLoadingActivity f69051c;

                {
                    this.f69051c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i4 = i2;
                    Reference.UseCase.Consent consent2 = consent;
                    UniversalLoadingActivity universalLoadingActivity = this.f69051c;
                    switch (i4) {
                        case 0:
                            return universalLoadingActivity.lambda$showConsentDialog$5(consent2);
                        case 1:
                            return universalLoadingActivity.lambda$showConsentDialog$6(consent2);
                        default:
                            return universalLoadingActivity.lambda$showConsentDialog$7(consent2);
                    }
                }
            }));
        }
        String str2 = consent.negativeButton;
        if (str2 != null) {
            arrayList.add(new UniversalRichDialogFragment.Action(str2, true, new Function0(this) { // from class: f51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ UniversalLoadingActivity f69051c;

                {
                    this.f69051c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i4 = i3;
                    Reference.UseCase.Consent consent2 = consent;
                    UniversalLoadingActivity universalLoadingActivity = this.f69051c;
                    switch (i4) {
                        case 0:
                            return universalLoadingActivity.lambda$showConsentDialog$5(consent2);
                        case 1:
                            return universalLoadingActivity.lambda$showConsentDialog$6(consent2);
                        default:
                            return universalLoadingActivity.lambda$showConsentDialog$7(consent2);
                    }
                }
            }));
        }
        String str3 = consent.termsLabel;
        if (str3 != null) {
            final int i4 = 2;
            arrayList.add(new UniversalRichDialogFragment.Action(str3, true, new Function0(this) { // from class: f51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ UniversalLoadingActivity f69051c;

                {
                    this.f69051c = this;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i5 = i4;
                    Reference.UseCase.Consent consent2 = consent;
                    UniversalLoadingActivity universalLoadingActivity = this.f69051c;
                    switch (i5) {
                        case 0:
                            return universalLoadingActivity.lambda$showConsentDialog$5(consent2);
                        case 1:
                            return universalLoadingActivity.lambda$showConsentDialog$6(consent2);
                        default:
                            return universalLoadingActivity.lambda$showConsentDialog$7(consent2);
                    }
                }
            }));
        }
        UniversalRichDialogFragment universalRichDialogFragment = new UniversalRichDialogFragment(consent.title, consent.message, (UniversalRichDialogFragment.Action[]) arrayList.toArray(new UniversalRichDialogFragment.Action[0]));
        universalRichDialogFragment.setCancelable(false);
        universalRichDialogFragment.show(getSupportFragmentManager(), ConsentDialogFragment.TAG);
        this.consentDialog = universalRichDialogFragment;
    }

    public static void start(Context context) {
        Intent intent;
        if (!Feature.LOADING_ACTIVITY.isEnabled(context) || (intent = intent(context)) == null || intent.resolveActivity(context.getPackageManager()) == null) {
            return;
        }
        if (intent.getComponent().getClassName().equals(UniversalLoadingActivity.class.getName())) {
            context.startActivity(intent, ActivityOptionsCompat.a(context).b());
        } else {
            context.startActivity(intent);
        }
    }

    private void startAcdRequestTimeout() {
        Session session;
        int i2;
        if (this.acdRequestTimeoutHandler != null || (session = Session.get()) == null || (i2 = session.usecase.acdRequestTimeout * 1000) <= 0) {
            return;
        }
        Handler handler = new Handler(getMainLooper());
        this.acdRequestTimeoutHandler = handler;
        handler.postDelayed(this.acdRequestTimeoutRunnable, i2);
    }

    private void updateUi() {
        HttpAcdRequest httpAcdRequestAgentRequest;
        AcdModule.Request request = Rtcc.instance().acd().get();
        if (request != null) {
            updateUiAsIndexedAcd(request);
            return;
        }
        Scenario scenario = Universal.scenario().get();
        Step step = scenario != null ? scenario.step() : null;
        if (!(step instanceof AcdHttpCallStep) || (httpAcdRequestAgentRequest = ((AcdHttpCallStep) step).agentRequest()) == null) {
            updateUiAsUndefined();
        } else {
            updateUiAsEstimatedAcd(httpAcdRequestAgentRequest);
        }
    }

    private void updateUiAsCancelAcd() {
        this.cancelAcd.setVisibility(0);
    }

    private void updateUiAsEstimatedAcd(HttpAcdRequest httpAcdRequest) {
        setText(this.title, R.string.universal_acd_title);
        int i2 = AnonymousClass2.$SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[httpAcdRequest.status().ordinal()];
        if (i2 == 1 || i2 == 2) {
            setText(this.message, safeGetString(R.string.universal_acd_message_estimated_wait_time, DateUtils.formatElapsedTime(httpAcdRequest.estimatedTime())));
            setVisibility(this.progress, 0);
        } else if (i2 == 3 || i2 == 4 || i2 == 5) {
            setVisibility(this.progress, 8);
            setText(this.message, (CharSequence) null);
        } else {
            setText(this.message, (CharSequence) null);
            setVisibility(this.progress, 0);
        }
        setVisibility(this.title, 0);
        setVisibility(this.message, 0);
    }

    private void updateUiAsIndexedAcd(AcdModule.Request request) {
        CharSequence charSequenceSafeGetString;
        setVisibility(this.progress, 0);
        boolean zIsCancelled = request.isCancelled();
        setText(this.title, R.string.universal_acd_title);
        setVisibility(this.title, !zIsCancelled ? 0 : 8);
        TextView textView = this.message;
        if (zIsCancelled) {
            charSequenceSafeGetString = null;
        } else {
            charSequenceSafeGetString = request.isReady() ? safeGetString(R.string.universal_acd_message_ready) : safeGetString(R.string.universal_acd_message_queue, Integer.valueOf(request.index()), Integer.valueOf(request.length()));
        }
        setText(textView, charSequenceSafeGetString);
        setVisibility(this.message, zIsCancelled ? 8 : 0);
        setVisibility(this.messageAcd, 0);
    }

    private void updateUiAsUndefined() {
        setVisibility(this.progress, 0);
        setText(this.title, (CharSequence) null);
        setVisibility(this.title, 8);
        setText(this.message, (CharSequence) null);
        setVisibility(this.message, 8);
    }

    public void askDisplayName(DisplayNameAndLiveTranslation displayNameAndLiveTranslation) {
        this.load.setVisibility(8);
        this.universalDisplayName.setVisibility(0);
        this.universalDisplayName.setup(displayNameAndLiveTranslation, Session.get().config.displayNameMode(), new gy0(this, displayNameAndLiveTranslation, 5));
    }

    @Override // android.app.Activity
    public void finish() {
        if (!isFinishing()) {
            super.finish();
        }
        cancelTimeout();
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
    }

    @Event
    public void onAcdQueueEvent(AcdQueueEvent acdQueueEvent) {
        cancelTimeout();
        updateUiAsIndexedAcd(acdQueueEvent.request());
        startAcdRequestTimeout();
        updateUiAsCancelAcd();
    }

    @Event
    public void onAcdReadyEvent(AcdReadyEvent acdReadyEvent) {
        cancelTimeout();
        cancelTimeoutAcd();
        updateUiAsIndexedAcd(acdReadyEvent.request());
    }

    @Event
    public void onCallReportEvent(CallReportEvent callReportEvent) {
        finishAndIgnoreRtcc();
    }

    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        int i2 = AnonymousClass2.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()];
        if (i2 == 4) {
            cancelTimeout();
        } else {
            if (i2 != 5) {
                return;
            }
            finishAndIgnoreRtcc();
        }
    }

    @Event
    public void onConsentRequestEvent(ConsentRequestEvent consentRequestEvent) {
        showConsentDialog(consentRequestEvent.consent());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Universal.logger().d("UniversalLoadingActivity.onCreate() Scenario status is " + Universal.scenario().status());
        setFinishOnTouchOutside(false);
        if (Utils.isLaunchedFromRecents(this)) {
            finishAndIgnoreRtcc();
            return;
        }
        if (finishIfUniversalIsNotLoading()) {
            return;
        }
        setContentView(R.layout.universal_activity_loading);
        this.keyguardManager = (KeyguardManager) getSystemService("keyguard");
        this.title = (TextView) findViewById(R.id.universal_loading_title);
        this.message = (TextView) findViewById(R.id.universal_loading_message);
        this.messageAcd = (TextView) findViewById(R.id.universal_loading_message_acd);
        this.progress = findViewById(R.id.universal_loading_progress);
        UniversalDisplayName universalDisplayName = (UniversalDisplayName) findViewById(R.id.display);
        this.universalDisplayName = universalDisplayName;
        universalDisplayName.setVisibility(8);
        this.load = (LinearLayout) findViewById(R.id.load);
        this.cancelAcd = (Button) findViewById(R.id.cancel_acd);
        updateUi();
        this.cancelAcd.setOnClickListener(new hi(this, 7));
        if (this.timeOutCountdownTimer == null) {
            this.timeOutCountdownTimer = new CountDownTimer(60000L, 10000L) { // from class: com.sightcall.universal.ui.UniversalLoadingActivity.1
                @Override // android.os.CountDownTimer
                public void onFinish() {
                    if (Rtcc.instance().call().get() == null) {
                        Toast.makeText(UniversalLoadingActivity.this, R.string.universal_acd_timeout, 1).show();
                        Universal.scenario().interrupt();
                        UniversalLoadingActivity.this.finishAndIgnoreRtcc();
                        Session session = Session.get();
                        if (session == null || session.config.callNotStartedUrl() == null) {
                            return;
                        }
                        String strCallNotStartedUrl = session.config.callNotStartedUrl();
                        try {
                            UniversalLoadingActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(Uri.parse(strCallNotStartedUrl).getQueryParameterNames().isEmpty() ? d21.j(strCallNotStartedUrl, "?reason=missed") : d21.j(strCallNotStartedUrl, "&reason=missed"))));
                        } catch (ActivityNotFoundException e2) {
                            e2.printStackTrace();
                        }
                    }
                }

                @Override // android.os.CountDownTimer
                public void onTick(long j2) {
                }
            }.start();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        cancelTimeout();
        cancelTimeoutAcd();
    }

    @Event
    public void onDisplayNameRequestEvent(DisplayNameRequestEvent displayNameRequestEvent) {
        askDisplayName(displayNameRequestEvent.displayNameAndLiveTranslation());
    }

    @Event
    public void onExternalAcdRequest(HttpAcdRequest httpAcdRequest) {
        cancelTimeout();
        updateUiAsEstimatedAcd(httpAcdRequest);
    }

    @Event
    public void onScenarioStatusEvent(Scenario.StatusEvent statusEvent) {
        finishIfUniversalIsNotLoading();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        Universal.register(this);
        if (finishIfUniversalIsNotLoading()) {
            return;
        }
        updateUi();
        checkForConsent();
    }

    @Event
    public void onStatusUpdate(Rtcc.Status status) {
        int i2 = AnonymousClass2.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()];
        if (i2 == 1 || i2 == 2) {
            this.message.setText(R.string.universal_network_connection_lost);
            this.cancelAcd.setVisibility(8);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        Universal.unregister(this);
        super.onStop();
        if (this.finishAndIgnoreRtcc || isChangingConfigurations() || !isFinishing()) {
            return;
        }
        dismissConsentDialog();
        Scenario scenario = Universal.scenario().get();
        Call call = Rtcc.instance().call().get();
        if (scenario == null || scenario.status() != Scenario.Status.ACTIVE) {
            return;
        }
        if (call == null || call.status() != Call.Status.ACTIVE) {
            if (isKeyguardLocked()) {
                Universal.logger().d("Keyguard is active, wait for user action");
            } else {
                scenario.interrupt();
            }
        }
    }

    public synchronized void refuseConsent(Reference.UseCase.Consent consent) {
        try {
            if (consent.status != Reference.UseCase.Consent.Status.Pending.INSTANCE) {
                Universal.logger().w("Consent already accepted or refused!");
            }
            consent.status = Reference.UseCase.Consent.Status.Refused.INSTANCE;
            Rtcc.instance().bus().post(new ConsentResultEvent(consent));
        } catch (Throwable th) {
            throw th;
        }
    }

    private String safeGetString(int i2, Object... objArr) {
        try {
            return getString(i2, objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    private static void setText(TextView textView, CharSequence charSequence) {
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    private void setText(TextView textView, int i2) {
        setText(textView, safeGetString(i2));
    }
}
