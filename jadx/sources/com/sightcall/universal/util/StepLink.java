package com.sightcall.universal.util;

import android.content.Context;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import defpackage.hv0;
import kotlin.LazyKt;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0011\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001d\u0010\b\u001a\u0004\u0018\u00010\t8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/universal/util/StepLink;", "Lcom/sightcall/universal/util/Deeplink;", "config", "Lcom/sightcall/universal/model/Config;", "<init>", "(Lcom/sightcall/universal/model/Config;)V", "getConfig", "()Lcom/sightcall/universal/model/Config;", "step", "Lcom/sightcall/universal/scenario/Step;", "getStep", "()Lcom/sightcall/universal/scenario/Step;", "step$delegate", "Lkotlin/Lazy;", "execute", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "createStep", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class StepLink extends Deeplink {
    private final Config config;

    /* JADX INFO: renamed from: step$delegate, reason: from kotlin metadata */
    private final kotlin.Lazy step;

    public StepLink(Config config) {
        config.getClass();
        this.config = config;
        this.step = LazyKt.b(new hv0(this, 9));
    }

    public Step createStep() {
        return null;
    }

    @Override // com.sightcall.universal.util.Deeplink
    public void execute(Context context) {
        context.getClass();
        super.execute(context);
        Step step = getStep();
        if (step == null) {
            getLogger().e("Step is null...");
        } else {
            Universal.start(Scenario.with(step));
        }
    }

    public final Config getConfig() {
        return this.config;
    }

    public final Step getStep() {
        return (Step) this.step.getF71699b();
    }
}
