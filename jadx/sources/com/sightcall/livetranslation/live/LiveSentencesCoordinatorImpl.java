package com.sightcall.livetranslation.live;

import com.sightcall.libraries.archi.coordinator.Coordinator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J\b\u0010\t\u001a\u00020\bH\u0014¨\u0006\n"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;", "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;", "component", "<init>", "(Lcom/sightcall/livetranslation/live/LiveSentencesComponent;)V", "onStart", "", "onRelease", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveSentencesCoordinatorImpl extends Coordinator<LiveSentencesComponent> implements LiveSentencesCoordinator {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveSentencesCoordinatorImpl(LiveSentencesComponent liveSentencesComponent) {
        super(liveSentencesComponent);
        liveSentencesComponent.getClass();
    }

    @Override // com.sightcall.libraries.archi.coordinator.Coordinator
    public void onRelease() {
        getComponent().getViewHolder().removeFromRootView();
        getComponent().getInteractor().clear();
    }

    @Override // com.sightcall.libraries.archi.coordinator.Coordinator
    public void onStart() {
        getComponent().getViewHolder().addOnRootView();
    }
}
