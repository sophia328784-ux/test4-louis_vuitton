package com.sightcall.universal.util;

import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.steps.PermissionsStep;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0014¨\u0006\t"}, d2 = {"Lcom/sightcall/universal/util/CallStepLink;", "Lcom/sightcall/universal/util/StepLink;", "config", "Lcom/sightcall/universal/model/Config;", "<init>", "(Lcom/sightcall/universal/model/Config;)V", "createStep", "Lcom/sightcall/universal/scenario/Step;", "Companion", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CallStepLink extends StepLink {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ CallStepLink(Config config, DefaultConstructorMarker defaultConstructorMarker) {
        this(config);
    }

    @Override // com.sightcall.universal.util.StepLink
    public Step createStep() {
        Step stepNextStep = PermissionsStep.nextStep(getConfig());
        stepNextStep.getClass();
        return stepNextStep;
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/util/CallStepLink$Companion;", "", "<init>", "()V", "create", "Lcom/sightcall/universal/util/StepLink;", "config", "Lcom/sightcall/universal/model/Config;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StepLink create(Config config) {
            config.getClass();
            return new CallStepLink(config, null);
        }

        private Companion() {
        }
    }

    private CallStepLink(Config config) {
        super(config);
    }
}
