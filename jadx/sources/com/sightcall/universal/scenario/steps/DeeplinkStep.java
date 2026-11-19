package com.sightcall.universal.scenario.steps;

import android.net.Uri;
import com.sightcall.universal.Universal;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.util.Deeplink;
import com.sightcall.universal.util.DeeplinkParser;
import com.sightcall.universal.util.StepLink;

/* JADX INFO: loaded from: classes3.dex */
public class DeeplinkStep extends Step {
    private final Uri uri;

    public DeeplinkStep(Uri uri) {
        this.uri = uri;
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        try {
            Deeplink deeplink = DeeplinkParser.parse(this.uri);
            if (deeplink instanceof StepLink) {
                success(((StepLink) deeplink).getStep());
            } else {
                deeplink.execute(Universal.context());
                success(new Step[0]);
            }
        } catch (Exception e2) {
            String message = e2.getMessage();
            if (message == null) {
                message = "";
            }
            failure(message);
        }
    }

    public String toString() {
        return "DeeplinkStep{state='" + state() + "', uri='" + this.uri + "'}";
    }
}
