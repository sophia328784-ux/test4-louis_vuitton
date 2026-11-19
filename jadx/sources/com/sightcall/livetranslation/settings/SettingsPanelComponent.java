package com.sightcall.livetranslation.settings;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.StartStopTranslation;
import com.sightcall.livetranslation.domain.TextSizeSelector;
import dagger.BindsInstance;
import dagger.Provides;
import dagger.Subcomponent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Subcomponent
@SettingsScope
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0002\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;", "", "viewHolder", "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;", "getViewHolder", "()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;", "coordinator", "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;", "getCoordinator", "()Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;", "getInteractor", "()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Builder", "Module", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SettingsPanelComponent {

    @Subcomponent.Builder
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H'J\u0010\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH'¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;", "", "build", "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;", "rootView", "Landroid/view/ViewGroup;", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "openHistory", "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Builder {
        SettingsPanelComponent build();

        @BindsInstance
        Builder closeFeature(LiveTranslationAPI.CloseSettings closeFeature);

        @BindsInstance
        Builder openHistory(LiveTranslationAPI.OpenHistory openHistory);

        @BindsInstance
        Builder rootView(ViewGroup rootView);
    }

    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0001¢\u0006\u0002\b\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J\u0016\u0010\u0015\u001a\u00020\u00162\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0007J%\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0001¢\u0006\u0002\b\u001eJ\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\u0013H\u0007J4\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u00132\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\t2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u0016H\u0007¨\u0006$"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;", "", "<init>", "()V", "provideViewHolder", "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;", "provideViewHolder$livetranslation_release", "provideCoordinator", "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;", "coordinator", "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;", "provideStartStopTranslation", "Lcom/sightcall/livetranslation/domain/StartStopTranslation;", "liveTranslationInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "provideTextSizeSelector", "Lcom/sightcall/livetranslation/domain/TextSizeSelector;", "provideCoordinatorImpl", "component", "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "openHistory", "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "provideCoordinatorImpl$livetranslation_release", "provideInteractor", "provideInteractorImpl", "settingsPanelCoordinatorImpl", "startStopTranslation", "textSizeSelector", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @SettingsScope
        public final SettingsPanelCoordinator provideCoordinator(SettingsPanelCoordinatorImpl coordinator) {
            coordinator.getClass();
            return coordinator;
        }

        @Provides
        @SettingsScope
        public final SettingsPanelCoordinatorImpl provideCoordinatorImpl$livetranslation_release(SettingsPanelComponent component, LiveTranslationAPI.CloseSettings closeFeature, LiveTranslationAPI.OpenHistory openHistory) {
            component.getClass();
            closeFeature.getClass();
            openHistory.getClass();
            return new SettingsPanelCoordinatorImpl(component, closeFeature, openHistory);
        }

        @Provides
        @SettingsScope
        public final NucleusInteractor<SettingsPanelInteractor.State> provideInteractor(NucleusInteractorImpl<SettingsPanelInteractor.State> interactor) {
            interactor.getClass();
            return interactor;
        }

        @Provides
        @SettingsScope
        public final NucleusInteractorImpl<SettingsPanelInteractor.State> provideInteractorImpl(NucleusInteractor<LiveTranslationInteractor.State> liveTranslationInteractor, SettingsPanelCoordinatorImpl settingsPanelCoordinatorImpl, StartStopTranslation startStopTranslation, TextSizeSelector textSizeSelector) {
            liveTranslationInteractor.getClass();
            settingsPanelCoordinatorImpl.getClass();
            startStopTranslation.getClass();
            textSizeSelector.getClass();
            return new SettingsPanelInteractorImpl(liveTranslationInteractor, settingsPanelCoordinatorImpl, startStopTranslation, textSizeSelector);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Provides
        @SettingsScope
        public final StartStopTranslation provideStartStopTranslation(NucleusInteractorImpl<LiveTranslationInteractor.State> liveTranslationInteractor) {
            liveTranslationInteractor.getClass();
            return (StartStopTranslation) liveTranslationInteractor;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Provides
        @SettingsScope
        public final TextSizeSelector provideTextSizeSelector(NucleusInteractorImpl<LiveTranslationInteractor.State> liveTranslationInteractor) {
            liveTranslationInteractor.getClass();
            return (TextSizeSelector) liveTranslationInteractor;
        }

        @Provides
        @SettingsScope
        public final SettingsPanelViewHolder provideViewHolder$livetranslation_release(ViewGroup rootView, NucleusInteractor<SettingsPanelInteractor.State> interactor) {
            rootView.getClass();
            interactor.getClass();
            return new SettingsPanelViewHolder(rootView, interactor);
        }
    }

    SettingsPanelCoordinatorImpl getCoordinator();

    NucleusInteractorImpl<SettingsPanelInteractor.State> getInteractor();

    SettingsPanelViewHolder getViewHolder();
}
