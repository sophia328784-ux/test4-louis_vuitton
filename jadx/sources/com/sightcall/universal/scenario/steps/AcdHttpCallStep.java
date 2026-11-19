package com.sightcall.universal.scenario.steps;

import com.sightcall.universal.Universal;
import com.sightcall.universal.guest.AgentHttpAcd;
import com.sightcall.universal.guest.HttpAcdRequest;
import com.sightcall.universal.guest.UniversalGuest;
import com.sightcall.universal.model.Moshi;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import net.rtccloud.sdk.event.datachannel.DataChannelOutOfBandEvent;

/* JADX INFO: loaded from: classes3.dex */
public class AcdHttpCallStep extends AcdCallStep implements UniversalGuest.RequestAgentCallback, UniversalGuest.CancelAgentCallback {
    private static final String PREFIX_INCOMING_REQUEST = "@INCOMING_REQUEST@";
    private HttpAcdRequest httpAcdRequest;
    private final String partner;

    public AcdHttpCallStep(Session session, String str) {
        super(session);
        this.partner = str;
    }

    private void handleHttpAgentRequestResponse(AgentHttpAcd.Result.Data data) {
        HttpAcdRequest httpAcdRequest = new HttpAcdRequest(data.id, data.partner, data.estimatedTime, data.status);
        this.httpAcdRequest = httpAcdRequest;
        if (httpAcdRequest.isPending()) {
            this.rtcc.bus().post(this.httpAcdRequest);
        } else {
            interrupt();
        }
    }

    public HttpAcdRequest agentRequest() {
        return this.httpAcdRequest;
    }

    @Override // com.sightcall.universal.scenario.steps.AcdCallStep
    public void cancelAcd() {
        interrupt();
    }

    @Override // com.sightcall.universal.scenario.steps.AcdCallStep, com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        super.execute();
        Universal.guest().requestAgent(session(), this.partner, this);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep, com.sightcall.universal.scenario.Step
    public void interrupt() {
        HttpAcdRequest httpAcdRequest = this.httpAcdRequest;
        if (httpAcdRequest != null) {
            Universal.guest().cancelAgent(session(), httpAcdRequest, this);
            this.httpAcdRequest = null;
        }
        super.interrupt();
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep, com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        super.onBind(scenario);
    }

    @Override // com.sightcall.universal.guest.UniversalGuest.CancelAgentCallback
    public void onCancelAgentError() {
    }

    @Override // com.sightcall.universal.guest.UniversalGuest.CancelAgentCallback
    public void onCancelAgentSuccess() {
    }

    @Override // com.sightcall.universal.scenario.steps.AcdCallStep, com.sightcall.universal.scenario.steps.CallStep
    public void onDataChannelMessage(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
        AgentHttpAcd.Result.Data data;
        super.onDataChannelMessage(dataChannelOutOfBandEvent);
        byte[] bArrPayload = dataChannelOutOfBandEvent.payload();
        if (bArrPayload == null) {
            return;
        }
        String str = new String(bArrPayload);
        if (!str.startsWith(PREFIX_INCOMING_REQUEST) || (data = (AgentHttpAcd.Result.Data) Moshi.fromJson(AgentHttpAcd.Result.Data.class, str.substring(18))) == null) {
            return;
        }
        handleHttpAgentRequestResponse(data);
    }

    @Override // com.sightcall.universal.guest.UniversalGuest.RequestAgentCallback
    public void onRequestAgentError() {
        Universal.logger().e("onRequestAgentError");
        interrupt();
    }

    @Override // com.sightcall.universal.guest.UniversalGuest.RequestAgentCallback
    public void onRequestAgentSuccess(AgentHttpAcd.Result.Data data) {
        handleHttpAgentRequestResponse(data);
    }
}
