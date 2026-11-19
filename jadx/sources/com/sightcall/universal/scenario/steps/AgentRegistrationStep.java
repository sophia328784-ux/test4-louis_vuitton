package com.sightcall.universal.scenario.steps;

import android.content.Context;
import android.widget.Toast;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.messaging.FirebaseMessaging;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.RegisterCallback;
import com.sightcall.universal.agent.registration.NewRegistrationMapperKt;
import com.sightcall.universal.agent.registration.OldRegistration;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.util.Lazy;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes3.dex */
public class AgentRegistrationStep extends Step implements OnSuccessListener<String>, RegisterCallback, OnFailureListener {
    private static final OldLogger logger = OldLogger.get("AgentRegistrationStep");
    private final Config config;
    private final Context context = Universal.context();
    private final Lazy<Environment> defaultEnvironment = Universal.settings().defaultEnvironment();
    private Environment environmentToRestore;
    private final boolean startWithOldLogin;
    private final String temporaryToken;

    private AgentRegistrationStep(String str, Config config, boolean z) {
        this.config = config;
        this.temporaryToken = str;
        this.startWithOldLogin = z;
    }

    public static AgentRegistrationStep with(String str, boolean z) {
        return with(str, new Config(), z);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void interrupt() {
        super.interrupt();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
        this.environmentToRestore = this.defaultEnvironment.get();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        if (is(Step.State.ACTIVE)) {
            Toast.makeText(this.context, R.string.universal_agent_fcm_token_error, 1).show();
            failure(new Step[0]);
        }
    }

    @Override // com.sightcall.universal.agent.RegisterCallback
    public void onRegisterError(RegisterCallback.Error error) {
        if (is(Step.State.ACTIVE)) {
            Toast.makeText(this.context, R.string.universal_agent_registration_error, 1).show();
            failure(new Step[0]);
        }
    }

    @Override // com.sightcall.universal.agent.RegisterCallback
    public void onRegisterSuccess(RegisterCallback.Success success) {
        if (is(Step.State.ACTIVE)) {
            Toast.makeText(this.context, R.string.universal_agent_registration_success, 1).show();
            success(new Step[0]);
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(String str) {
        if (is(Step.State.ACTIVE)) {
            logger.i("Override default environment to [%s]", this.config.environment());
            this.defaultEnvironment.set(this.config.environment());
            Universal.agent().register(this.startWithOldLogin ? new OldRegistration.Builder(this.context).temporaryToken(this.temporaryToken).fcmToken(str).build() : NewRegistrationMapperKt.createNewRegistrationRequest(this.temporaryToken, str, this.context.getString(R.string.google_app_id)), this, this.startWithOldLogin);
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
        this.defaultEnvironment.set(this.environmentToRestore);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        FirebaseMessaging.c().e().e(this).c(this);
    }

    public static AgentRegistrationStep with(String str, Config config, boolean z) {
        return new AgentRegistrationStep(str, config, z);
    }
}
