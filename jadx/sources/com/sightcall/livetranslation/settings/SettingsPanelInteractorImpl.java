package com.sightcall.livetranslation.settings;

import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.libraries.rx.Optional;
import com.sightcall.libraries.rx.SubscriptionsKt;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.livetranslation.domain.StartStopTranslation;
import com.sightcall.livetranslation.domain.TextSizeSelector;
import com.sightcall.livetranslation.settings.SettingsPanelCoordinator;
import com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl;
import defpackage.o60;
import defpackage.rp0;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Function4;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0017B-\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R5\u0010\u000f\u001a#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\b\u0012\u0004\u0012\u00020\u0002`\u0014¢\u0006\u0002\b\u0013X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;", "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor;", "featureInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "coordinator", "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;", "startStopTranslation", "Lcom/sightcall/livetranslation/domain/StartStopTranslation;", "textSizeSelector", "Lcom/sightcall/livetranslation/domain/TextSizeSelector;", "<init>", "(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)V", "reducerConfigurator", "Lkotlin/Function1;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;", "getReducerConfigurator", "()Lkotlin/jvm/functions/Function1;", "UpdateState", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SettingsPanelInteractorImpl extends NucleusInteractorImpl<SettingsPanelInteractor.State> implements SettingsPanelInteractor {
    private final Function1<NucleusReducerBuilder<SettingsPanelInteractor.State>, Unit> reducerConfigurator;
    private final StartStopTranslation startStopTranslation;
    private final TextSizeSelector textSizeSelector;

    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0017\u001a\u00020\tHÆ\u0003J3\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0014\u0010\u0019\u001a\u00020\u00052\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bHÖ\u0083\u0004J\n\u0010\u001c\u001a\u00020\u001dHÖ\u0081\u0004J\n\u0010\u001e\u001a\u00020\u001fHÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006 "}, d2 = {"Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "show", "", "language", "Lcom/sightcall/livetranslation/domain/Language;", "transcriptHistory", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "<init>", "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "getShow", "()Z", "getLanguage", "()Lcom/sightcall/livetranslation/domain/Language;", "getTranscriptHistory", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UpdateState implements Action {
        private final LiveTranslationSettings.Enabled.FontSize fontSize;
        private final Language language;
        private final boolean show;
        private final LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory;

        public UpdateState(LiveTranslationSettings.Enabled.FontSize fontSize, boolean z, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
            fontSize.getClass();
            transcriptHistory.getClass();
            this.fontSize = fontSize;
            this.show = z;
            this.language = language;
            this.transcriptHistory = transcriptHistory;
        }

        public static /* synthetic */ UpdateState copy$default(UpdateState updateState, LiveTranslationSettings.Enabled.FontSize fontSize, boolean z, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                fontSize = updateState.fontSize;
            }
            if ((i2 & 2) != 0) {
                z = updateState.show;
            }
            if ((i2 & 4) != 0) {
                language = updateState.language;
            }
            if ((i2 & 8) != 0) {
                transcriptHistory = updateState.transcriptHistory;
            }
            return updateState.copy(fontSize, z, language, transcriptHistory);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final boolean getShow() {
            return this.show;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Language getLanguage() {
            return this.language;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        public final UpdateState copy(LiveTranslationSettings.Enabled.FontSize fontSize, boolean show, Language language, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
            fontSize.getClass();
            transcriptHistory.getClass();
            return new UpdateState(fontSize, show, language, transcriptHistory);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UpdateState)) {
                return false;
            }
            UpdateState updateState = (UpdateState) other;
            return this.fontSize == updateState.fontSize && this.show == updateState.show && Intrinsics.c(this.language, updateState.language) && this.transcriptHistory == updateState.transcriptHistory;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final Language getLanguage() {
            return this.language;
        }

        public final boolean getShow() {
            return this.show;
        }

        public final LiveTranslationSettings.Enabled.TranscriptHistory getTranscriptHistory() {
            return this.transcriptHistory;
        }

        public int hashCode() {
            int iB = o60.b(this.fontSize.hashCode() * 31, 31, this.show);
            Language language = this.language;
            return this.transcriptHistory.hashCode() + ((iB + (language == null ? 0 : language.hashCode())) * 31);
        }

        public String toString() {
            return "UpdateState(fontSize=" + this.fontSize + ", show=" + this.show + ", language=" + this.language + ", transcriptHistory=" + this.transcriptHistory + ")";
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SettingsPanelInteractorImpl(NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor, SettingsPanelCoordinator settingsPanelCoordinator, StartStopTranslation startStopTranslation, TextSizeSelector textSizeSelector) {
        nucleusInteractor.getClass();
        settingsPanelCoordinator.getClass();
        startStopTranslation.getClass();
        textSizeSelector.getClass();
        Observable<R> map = nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final SettingsPanelInteractor.State apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return new SettingsPanelInteractor.State(state.getDisplaySettings().getFontSize(), state.getDisplaySettings().getShow(), state.getDisplaySettings().getLanguage(), state.getDisplaySettings().getTranscriptHistory());
            }
        });
        map.getClass();
        super((Observable) map);
        this.startStopTranslation = startStopTranslation;
        this.textSizeSelector = textSizeSelector;
        Observable observableCombineLatest = Observable.combineLatest(nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.2
            @Override // io.reactivex.rxjava3.functions.Function
            public final LiveTranslationSettings.Enabled.FontSize apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return state.getDisplaySettings().getFontSize();
            }
        }), nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.3
            @Override // io.reactivex.rxjava3.functions.Function
            public final Boolean apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return Boolean.valueOf(state.getDisplaySettings().getShow());
            }
        }), nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.4
            @Override // io.reactivex.rxjava3.functions.Function
            public final Optional<Language> apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return Optional.INSTANCE.ofNullable(state.getDisplaySettings().getLanguage());
            }
        }), nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.5
            @Override // io.reactivex.rxjava3.functions.Function
            public final LiveTranslationSettings.Enabled.TranscriptHistory apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return state.getDisplaySettings().getTranscriptHistory();
            }
        }), new Function4() { // from class: com.sightcall.livetranslation.settings.SettingsPanelInteractorImpl.6
            @Override // io.reactivex.rxjava3.functions.Function4
            public final UpdateState apply(LiveTranslationSettings.Enabled.FontSize fontSize, Boolean bool, Optional<Language> optional, LiveTranslationSettings.Enabled.TranscriptHistory transcriptHistory) {
                fontSize.getClass();
                bool.getClass();
                optional.getClass();
                transcriptHistory.getClass();
                return new UpdateState(fontSize, bool.booleanValue(), optional.orNull(), transcriptHistory);
            }
        });
        observableCombineLatest.getClass();
        Disposable disposableRelay = SubscriptionsKt.relay(observableCombineLatest, getActions());
        CompositeDisposable disposables = getDisposables();
        disposableRelay.getClass();
        disposables.getClass();
        disposables.b(disposableRelay);
        this.reducerConfigurator = new rp0(settingsPanelCoordinator, this, 18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0(final SettingsPanelCoordinator settingsPanelCoordinator, final SettingsPanelInteractorImpl settingsPanelInteractorImpl, NucleusReducerBuilder nucleusReducerBuilder) {
        nucleusReducerBuilder.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        nucleusReducerBuilder.changesState(reflectionFactory.b(UpdateState.class), new a());
        final int i2 = 0;
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.Close.class), new Function0() { // from class: nv0
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                SettingsPanelCoordinator settingsPanelCoordinator2 = settingsPanelCoordinator;
                switch (i3) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$1(settingsPanelCoordinator2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$7(settingsPanelCoordinator2);
                }
            }
        });
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.Show.class), new Function0(settingsPanelInteractorImpl) { // from class: ov0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SettingsPanelInteractorImpl f78669c;

            {
                this.f78669c = settingsPanelInteractorImpl;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                SettingsPanelInteractorImpl settingsPanelInteractorImpl2 = this.f78669c;
                switch (i3) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$2(settingsPanelInteractorImpl2);
                    case 1:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$3(settingsPanelInteractorImpl2);
                    case 2:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$4(settingsPanelInteractorImpl2);
                    case 3:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$5(settingsPanelInteractorImpl2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$6(settingsPanelInteractorImpl2);
                }
            }
        });
        final int i3 = 1;
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.Hide.class), new Function0(settingsPanelInteractorImpl) { // from class: ov0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SettingsPanelInteractorImpl f78669c;

            {
                this.f78669c = settingsPanelInteractorImpl;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                SettingsPanelInteractorImpl settingsPanelInteractorImpl2 = this.f78669c;
                switch (i4) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$2(settingsPanelInteractorImpl2);
                    case 1:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$3(settingsPanelInteractorImpl2);
                    case 2:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$4(settingsPanelInteractorImpl2);
                    case 3:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$5(settingsPanelInteractorImpl2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$6(settingsPanelInteractorImpl2);
                }
            }
        });
        final int i4 = 2;
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.SmallSizeSelected.class), new Function0(settingsPanelInteractorImpl) { // from class: ov0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SettingsPanelInteractorImpl f78669c;

            {
                this.f78669c = settingsPanelInteractorImpl;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                SettingsPanelInteractorImpl settingsPanelInteractorImpl2 = this.f78669c;
                switch (i5) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$2(settingsPanelInteractorImpl2);
                    case 1:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$3(settingsPanelInteractorImpl2);
                    case 2:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$4(settingsPanelInteractorImpl2);
                    case 3:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$5(settingsPanelInteractorImpl2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$6(settingsPanelInteractorImpl2);
                }
            }
        });
        final int i5 = 3;
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.MediumSizeSelected.class), new Function0(settingsPanelInteractorImpl) { // from class: ov0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SettingsPanelInteractorImpl f78669c;

            {
                this.f78669c = settingsPanelInteractorImpl;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i5;
                SettingsPanelInteractorImpl settingsPanelInteractorImpl2 = this.f78669c;
                switch (i6) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$2(settingsPanelInteractorImpl2);
                    case 1:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$3(settingsPanelInteractorImpl2);
                    case 2:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$4(settingsPanelInteractorImpl2);
                    case 3:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$5(settingsPanelInteractorImpl2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$6(settingsPanelInteractorImpl2);
                }
            }
        });
        final int i6 = 4;
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.LargeSizeSelected.class), new Function0(settingsPanelInteractorImpl) { // from class: ov0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ SettingsPanelInteractorImpl f78669c;

            {
                this.f78669c = settingsPanelInteractorImpl;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i7 = i6;
                SettingsPanelInteractorImpl settingsPanelInteractorImpl2 = this.f78669c;
                switch (i7) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$2(settingsPanelInteractorImpl2);
                    case 1:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$3(settingsPanelInteractorImpl2);
                    case 2:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$4(settingsPanelInteractorImpl2);
                    case 3:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$5(settingsPanelInteractorImpl2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$6(settingsPanelInteractorImpl2);
                }
            }
        });
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(SettingsPanelInteractor.ShowHistory.class), new Function0() { // from class: nv0
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i7 = i3;
                SettingsPanelCoordinator settingsPanelCoordinator2 = settingsPanelCoordinator;
                switch (i7) {
                    case 0:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$1(settingsPanelCoordinator2);
                    default:
                        return SettingsPanelInteractorImpl.reducerConfigurator$lambda$0$7(settingsPanelCoordinator2);
                }
            }
        });
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SettingsPanelInteractor.State reducerConfigurator$lambda$0$0(SettingsPanelInteractor.State state, UpdateState updateState) {
        state.getClass();
        updateState.getClass();
        return SettingsPanelInteractor.State.copy$default(state, updateState.getFontSize(), updateState.getShow(), updateState.getLanguage(), null, 8, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$1(SettingsPanelCoordinator settingsPanelCoordinator) {
        settingsPanelCoordinator.close();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$2(SettingsPanelInteractorImpl settingsPanelInteractorImpl) {
        settingsPanelInteractorImpl.startStopTranslation.start();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$3(SettingsPanelInteractorImpl settingsPanelInteractorImpl) {
        settingsPanelInteractorImpl.startStopTranslation.stop();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$4(SettingsPanelInteractorImpl settingsPanelInteractorImpl) {
        settingsPanelInteractorImpl.textSizeSelector.selectSmallSize();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$5(SettingsPanelInteractorImpl settingsPanelInteractorImpl) {
        settingsPanelInteractorImpl.textSizeSelector.selectMediumSize();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$6(SettingsPanelInteractorImpl settingsPanelInteractorImpl) {
        settingsPanelInteractorImpl.textSizeSelector.selectLargeSize();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$7(SettingsPanelCoordinator settingsPanelCoordinator) {
        settingsPanelCoordinator.openTranscript();
        return Unit.f71739a;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl
    public Function1<NucleusReducerBuilder<SettingsPanelInteractor.State>, Unit> getReducerConfigurator() {
        return this.reducerConfigurator;
    }
}
