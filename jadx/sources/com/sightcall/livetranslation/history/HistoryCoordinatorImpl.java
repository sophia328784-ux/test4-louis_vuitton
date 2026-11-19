package com.sightcall.livetranslation.history;

import com.sightcall.libraries.archi.coordinator.Coordinator;
import com.sightcall.livetranslation.LiveTranslationAPI;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0014J\b\u0010\u000b\u001a\u00020\nH\u0014J\b\u0010\f\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "Lcom/sightcall/livetranslation/history/HistoryComponent;", "Lcom/sightcall/livetranslation/history/HistoryCoordinator;", "component", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "<init>", "(Lcom/sightcall/livetranslation/history/HistoryComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)V", "onStart", "", "onRelease", "close", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HistoryCoordinatorImpl extends Coordinator<HistoryComponent> implements HistoryCoordinator {
    private final LiveTranslationAPI.CloseHistory closeFeature;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HistoryCoordinatorImpl(HistoryComponent historyComponent, LiveTranslationAPI.CloseHistory closeHistory) {
        super(historyComponent);
        historyComponent.getClass();
        closeHistory.getClass();
        this.closeFeature = closeHistory;
    }

    @Override // com.sightcall.livetranslation.history.HistoryCoordinator
    public void close() {
        this.closeFeature.invoke();
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
