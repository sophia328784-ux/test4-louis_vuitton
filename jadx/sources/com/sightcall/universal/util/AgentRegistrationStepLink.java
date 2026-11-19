package com.sightcall.universal.util;

import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.steps.AgentRegistrationStep;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB!\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sightcall/universal/util/AgentRegistrationStepLink;", "Lcom/sightcall/universal/util/StepLink;", "config", "Lcom/sightcall/universal/model/Config;", "temporaryToken", "", "startWithOldLogin", "", "<init>", "(Lcom/sightcall/universal/model/Config;Ljava/lang/String;Z)V", "createStep", "Lcom/sightcall/universal/scenario/Step;", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AgentRegistrationStepLink extends StepLink {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final boolean startWithOldLogin;
    private final String temporaryToken;

    private AgentRegistrationStepLink(Config config, String str, boolean z) {
        super(config);
        this.temporaryToken = str;
        this.startWithOldLogin = z;
    }

    @Override // com.sightcall.universal.util.StepLink
    public Step createStep() {
        return AgentRegistrationStep.with(this.temporaryToken, getConfig(), this.startWithOldLogin);
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b¨\u0006\f"}, d2 = {"Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;", "", "<init>", "()V", "create", "Lcom/sightcall/universal/util/StepLink;", "temporaryToken", "", "config", "Lcom/sightcall/universal/model/Config;", "startWithOldLogin", "", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StepLink create(String temporaryToken, Config config, boolean startWithOldLogin) {
            temporaryToken.getClass();
            config.getClass();
            return new AgentRegistrationStepLink(config, temporaryToken, startWithOldLogin, null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ AgentRegistrationStepLink(Config config, String str, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(config, str, z);
    }
}
