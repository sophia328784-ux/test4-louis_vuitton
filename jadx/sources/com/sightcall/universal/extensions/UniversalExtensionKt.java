package com.sightcall.universal.extensions;

import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.scenario.steps.CallStep;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\b\u0010\u0000\u001a\u0004\u0018\u00010\u0001¨\u0006\u0002"}, d2 = {"getSession", "Lcom/sightcall/universal/model/Session;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class UniversalExtensionKt {
    public static final Session getSession() {
        Scenario scenario = Universal.scenario().get();
        Step step = scenario != null ? scenario.step() : null;
        CallStep callStep = step instanceof CallStep ? (CallStep) step : null;
        if (callStep != null) {
            return callStep.session();
        }
        return null;
    }
}
