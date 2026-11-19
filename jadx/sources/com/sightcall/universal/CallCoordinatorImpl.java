package com.sightcall.universal;

import android.view.ViewGroup;
import com.sightcall.features.agent.multiparty.DaggerAgentMultipartyComponent;
import com.sightcall.libraries.archi.coordinator.Coordinator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\bH\u0014J\u0010\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lcom/sightcall/universal/CallCoordinatorImpl;", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "Lcom/sightcall/universal/CallComponent;", "Lcom/sightcall/universal/CallCoordinator;", "callComponent", "<init>", "(Lcom/sightcall/universal/CallComponent;)V", "onStart", "", "onRelease", "openAgentMultiparty", "container", "Landroid/view/ViewGroup;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CallCoordinatorImpl extends Coordinator<CallComponent> implements CallCoordinator {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallCoordinatorImpl(CallComponent callComponent) {
        super(callComponent);
        callComponent.getClass();
    }

    @Override // com.sightcall.libraries.archi.coordinator.Coordinator
    public void onRelease() {
    }

    @Override // com.sightcall.libraries.archi.coordinator.Coordinator
    public void onStart() {
    }

    @Override // com.sightcall.universal.CallCoordinator
    public void openAgentMultiparty(ViewGroup container) {
        container.getClass();
        attachCoordinator(DaggerAgentMultipartyComponent.builder().build().getCoordinator().start());
    }
}
