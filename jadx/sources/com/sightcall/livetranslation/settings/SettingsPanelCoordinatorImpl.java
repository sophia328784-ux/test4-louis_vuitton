package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.coordinator.Coordinator;
import com.sightcall.livetranslation.LiveTranslationAPI;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0014J\b\u0010\r\u001a\u00020\fH\u0014J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\fH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;", "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;", "component", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "openHistory", "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "<init>", "(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V", "onStart", "", "onRelease", "close", "openTranscript", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SettingsPanelCoordinatorImpl extends Coordinator<SettingsPanelComponent> implements SettingsPanelCoordinator {
    private final LiveTranslationAPI.CloseSettings closeFeature;
    private final LiveTranslationAPI.OpenHistory openHistory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SettingsPanelCoordinatorImpl(SettingsPanelComponent settingsPanelComponent, LiveTranslationAPI.CloseSettings closeSettings, LiveTranslationAPI.OpenHistory openHistory) {
        super(settingsPanelComponent);
        settingsPanelComponent.getClass();
        closeSettings.getClass();
        openHistory.getClass();
        this.closeFeature = closeSettings;
        this.openHistory = openHistory;
    }

    @Override // com.sightcall.livetranslation.settings.SettingsPanelCoordinator
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

    @Override // com.sightcall.livetranslation.settings.SettingsPanelCoordinator
    public void openTranscript() {
        this.openHistory.invoke();
    }
}
