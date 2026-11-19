package com.sightcall.livetranslation;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.libraries.archi.coordinator.Coordinator;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LanguagesKt;
import com.sightcall.livetranslation.domain.LiveTranslationDisplaySettings;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.universal.agent.Language;
import defpackage.et;
import defpackage.v40;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B+\u0012\u0012\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0017H\u0016J\u0010\u00103\u001a\u00020\u00172\u0006\u00104\u001a\u00020\u001fH\u0016J\u0016\u00105\u001a\b\u0012\u0002\b\u0003\u0018\u0001062\u0006\u00107\u001a\u000208H\u0016J$\u00109\u001a\u0006\u0012\u0002\b\u0003062\u0006\u00107\u001a\u0002082\u0006\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=H\u0016J\u001c\u0010>\u001a\u0006\u0012\u0002\b\u0003062\u0006\u00107\u001a\u0002082\u0006\u0010:\u001a\u00020?H\u0016J\u0010\u0010@\u001a\u00020\u00172\u0006\u0010A\u001a\u00020\u0013H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0014\u0010%\u001a\u00020&X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00130\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0015R\u0016\u0010*\u001a\u0004\u0018\u00010+X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u0016\u0010.\u001a\u0004\u0018\u00010\u001f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b/\u00100R\u0014\u00101\u001a\u00020\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010$¨\u0006B"}, d2 = {"Lcom/sightcall/livetranslation/LiveTranslationAPIImpl;", "Lcom/sightcall/livetranslation/LiveTranslationAPI;", "interactorProvider", "Ljavax/inject/Provider;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "settings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;", "component", "Lcom/sightcall/livetranslation/LiveTranslationComponent;", "<init>", "(Ljavax/inject/Provider;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;Lcom/sightcall/livetranslation/LiveTranslationComponent;)V", "interactor", "defaultLanguage", "", "getDefaultLanguage", "()Ljava/lang/String;", "visible", "Lio/reactivex/rxjava3/core/Observable;", "", "getVisible", "()Lio/reactivex/rxjava3/core/Observable;", "onNewMessage", "", "message", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", m.q, "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "clear", Language.TYPE, "", "Lcom/sightcall/livetranslation/domain/Language;", "getLanguages", "()Ljava/util/List;", "enabled", "getEnabled", "()Z", "autoTranslate", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "getAutoTranslate", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;", "isReady", "initialSelectedLanguage", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "getInitialSelectedLanguage", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;", "selectedLanguage", "getSelectedLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", "shouldConfirmLanguage", "getShouldConfirmLanguage", "selectLanguage", "language", "createLiveSentencesCoordinator", "Lcom/sightcall/libraries/archi/coordinator/Coordinator;", "rootView", "Landroid/view/ViewGroup;", "createSettingsPanelCoordinator", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;", "openHistory", "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;", "createHistoryCoordinator", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "enableLiveTranslation", "isEnabled", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveTranslationAPIImpl implements LiveTranslationAPI {
    private final LiveTranslationSettings.Enabled.TranslationAutoStartValue autoTranslate;
    private final LiveTranslationComponent component;
    private final String defaultLanguage;
    private final boolean enabled;
    private final LiveTranslationSettings.Enabled.LanguageISO6391 initialSelectedLanguage;
    private final NucleusInteractorImpl<LiveTranslationInteractor.State> interactor;
    private final LiveTranslationSettings settings;
    private final boolean shouldConfirmLanguage;

    public LiveTranslationAPIImpl(Provider<NucleusInteractorImpl<LiveTranslationInteractor.State>> provider, LiveTranslationSettings liveTranslationSettings, LiveTranslationComponent liveTranslationComponent) {
        LiveTranslationSettings.Enabled.TranslationAutoStartValue translationAutoStartMode;
        LiveTranslationSettings.Enabled.LanguageISO6391 language;
        provider.getClass();
        liveTranslationSettings.getClass();
        liveTranslationComponent.getClass();
        this.settings = liveTranslationSettings;
        this.component = liveTranslationComponent;
        boolean z = liveTranslationSettings instanceof LiveTranslationSettings.Enabled;
        this.interactor = z ? (NucleusInteractorImpl) provider.get() : null;
        new Handler(Looper.getMainLooper()).post(new et(this, 19));
        this.defaultLanguage = LanguagesKt.getDefaultSelectedLanguage();
        this.enabled = z;
        LiveTranslationSettings.Disabled disabled = LiveTranslationSettings.Disabled.INSTANCE;
        if (liveTranslationSettings.equals(disabled)) {
            translationAutoStartMode = new LiveTranslationSettings.Enabled.TranslationAutoStartValue(Boolean.FALSE);
        } else {
            if (!z) {
                v40.g();
                throw null;
            }
            translationAutoStartMode = ((LiveTranslationSettings.Enabled) liveTranslationSettings).getTranslationAutoStartMode();
        }
        this.autoTranslate = translationAutoStartMode;
        if (liveTranslationSettings.equals(disabled)) {
            language = null;
        } else {
            if (!z) {
                v40.g();
                throw null;
            }
            language = ((LiveTranslationSettings.Enabled) liveTranslationSettings).getLanguage();
        }
        this.initialSelectedLanguage = language;
        boolean z2 = false;
        if (!liveTranslationSettings.equals(disabled)) {
            if (!z) {
                v40.g();
                throw null;
            }
            if (((LiveTranslationSettings.Enabled) liveTranslationSettings).getLanguageMode() == LiveTranslationSettings.Enabled.LanguageMode.Confirmation) {
                z2 = true;
            }
        }
        this.shouldConfirmLanguage = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(LiveTranslationAPIImpl liveTranslationAPIImpl) {
        PublishSubject<Action> actions;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = liveTranslationAPIImpl.interactor;
        if (nucleusInteractorImpl == null || (actions = nucleusInteractorImpl.getActions()) == null) {
            return;
        }
        actions.onNext(LiveTranslationInteractor.GetLanguageList.INSTANCE);
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public void clear() {
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl != null) {
            nucleusInteractorImpl.clear();
        }
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public Coordinator<?> createHistoryCoordinator(ViewGroup rootView, LiveTranslationAPI.CloseHistory closeFeature) {
        rootView.getClass();
        closeFeature.getClass();
        return this.component.history().rootView(rootView).closeFeature(closeFeature).build().getCoordinator();
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public Coordinator<?> createLiveSentencesCoordinator(ViewGroup rootView) {
        rootView.getClass();
        LiveTranslationSettings liveTranslationSettings = this.settings;
        if (liveTranslationSettings instanceof LiveTranslationSettings.Enabled) {
            return this.component.liveSentences().rootView(rootView).settings((LiveTranslationSettings.Enabled) this.settings).build().getCoordinator();
        }
        if (Intrinsics.c(liveTranslationSettings, LiveTranslationSettings.Disabled.INSTANCE)) {
            return null;
        }
        v40.g();
        return null;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public Coordinator<?> createSettingsPanelCoordinator(ViewGroup rootView, LiveTranslationAPI.CloseSettings closeFeature, LiveTranslationAPI.OpenHistory openHistory) {
        rootView.getClass();
        closeFeature.getClass();
        openHistory.getClass();
        return this.component.settingsPanel().rootView(rootView).openHistory(openHistory).closeFeature(closeFeature).build().getCoordinator();
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public void enableLiveTranslation(boolean isEnabled) {
        PublishSubject<Action> actions;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl == null || (actions = nucleusInteractorImpl.getActions()) == null) {
            return;
        }
        actions.onNext(new LiveTranslationInteractor.Enable(isEnabled));
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public LiveTranslationSettings.Enabled.TranslationAutoStartValue getAutoTranslate() {
        return this.autoTranslate;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public boolean getEnabled() {
        return this.enabled;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public LiveTranslationSettings.Enabled.LanguageISO6391 getInitialSelectedLanguage() {
        return this.initialSelectedLanguage;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public List<com.sightcall.livetranslation.domain.Language> getLanguages() {
        Observable<LiveTranslationInteractor.State> state;
        LiveTranslationInteractor.State stateBlockingFirst;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl == null || (state = nucleusInteractorImpl.getState()) == null || (stateBlockingFirst = state.blockingFirst()) == null) {
            return null;
        }
        return stateBlockingFirst.getLanguages();
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public com.sightcall.livetranslation.domain.Language getSelectedLanguage() {
        Observable<LiveTranslationInteractor.State> state;
        LiveTranslationInteractor.State stateBlockingFirst;
        LiveTranslationDisplaySettings displaySettings;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl == null || (state = nucleusInteractorImpl.getState()) == null || (stateBlockingFirst = state.blockingFirst()) == null || (displaySettings = stateBlockingFirst.getDisplaySettings()) == null) {
            return null;
        }
        return displaySettings.getLanguage();
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public boolean getShouldConfirmLanguage() {
        return this.shouldConfirmLanguage;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public Observable<Boolean> getVisible() {
        Observable<LiveTranslationInteractor.State> state;
        Observable map;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl != null && (state = nucleusInteractorImpl.getState()) != null && (map = state.map(new Function() { // from class: com.sightcall.livetranslation.LiveTranslationAPIImpl$visible$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Boolean apply(LiveTranslationInteractor.State state2) {
                state2.getClass();
                return Boolean.valueOf(state2.getDisplaySettings().getShow());
            }
        })) != null) {
            return map;
        }
        Observable<Boolean> observableJust = Observable.just(Boolean.FALSE);
        observableJust.getClass();
        return observableJust;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public Observable<Boolean> isReady() {
        Observable<LiveTranslationInteractor.State> state;
        Observable map;
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl != null && (state = nucleusInteractorImpl.getState()) != null && (map = state.map(new Function() { // from class: com.sightcall.livetranslation.LiveTranslationAPIImpl.isReady.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Boolean apply(LiveTranslationInteractor.State state2) {
                state2.getClass();
                return Boolean.valueOf(!state2.getLanguages().isEmpty());
            }
        })) != null) {
            return map;
        }
        Observable<Boolean> observableJust = Observable.just(Boolean.FALSE);
        observableJust.getClass();
        return observableJust;
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public void onNewMessage(LiveTranslationAPI.Message message, LiveTranslationAPI.Pid pid) {
        PublishSubject<Action> actions;
        message.getClass();
        pid.getClass();
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl == null || (actions = nucleusInteractorImpl.getActions()) == null) {
            return;
        }
        actions.onNext(new LiveTranslationInteractor.NewMessage(message, pid));
    }

    @Override // com.sightcall.livetranslation.LiveTranslationAPI
    public void selectLanguage(com.sightcall.livetranslation.domain.Language language) {
        PublishSubject<Action> actions;
        language.getClass();
        NucleusInteractorImpl<LiveTranslationInteractor.State> nucleusInteractorImpl = this.interactor;
        if (nucleusInteractorImpl == null || (actions = nucleusInteractorImpl.getActions()) == null) {
            return;
        }
        actions.onNext(new LiveTranslationInteractor.SelectLanguage(language));
    }
}
