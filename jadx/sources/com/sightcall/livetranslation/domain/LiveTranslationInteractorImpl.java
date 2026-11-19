package com.sightcall.livetranslation.domain;

import android.graphics.Color;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.livetranslation.LiveTranslationAPI;
import defpackage.d21;
import defpackage.jx;
import defpackage.n50;
import defpackage.rs;
import defpackage.w20;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005 !\"#$B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0019H\u0002J\b\u0010\u001b\u001a\u00020\rH\u0016J\b\u0010\u001c\u001a\u00020\rH\u0016J\b\u0010\u001d\u001a\u00020\rH\u0016J\b\u0010\u001e\u001a\u00020\rH\u0016J\b\u0010\u001f\u001a\u00020\rH\u0016R5\u0010\n\u001a#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\b\u0012\u0004\u0012\u00020\u0002`\u000f¢\u0006\u0002\b\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006%"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor;", "settings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "repository", "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;", "<init>", "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;)V", "reducerConfigurator", "Lkotlin/Function1;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;", "getReducerConfigurator", "()Lkotlin/jvm/functions/Function1;", "createSentence", "Lcom/sightcall/livetranslation/domain/Sentence;", "message", "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;", m.q, "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;", "colors", "", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;", "start", "stop", "selectSmallSize", "selectMediumSize", "selectLargeSize", "Show", "Hide", "SetFontSize", "FetchLanguagesSuccess", "FetchLanguagesFailure", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveTranslationInteractorImpl extends NucleusInteractorImpl<LiveTranslationInteractor.State> implements LiveTranslationInteractor {
    private final Function1<NucleusReducerBuilder<LiveTranslationInteractor.State>, Unit> reducerConfigurator;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesFailure;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "throwable", "", "<init>", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FetchLanguagesFailure implements Action {
        private final Throwable throwable;

        public FetchLanguagesFailure(Throwable th) {
            th.getClass();
            this.throwable = th;
        }

        public static /* synthetic */ FetchLanguagesFailure copy$default(FetchLanguagesFailure fetchLanguagesFailure, Throwable th, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                th = fetchLanguagesFailure.throwable;
            }
            return fetchLanguagesFailure.copy(th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getThrowable() {
            return this.throwable;
        }

        public final FetchLanguagesFailure copy(Throwable throwable) {
            throwable.getClass();
            return new FetchLanguagesFailure(throwable);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FetchLanguagesFailure) && Intrinsics.c(this.throwable, ((FetchLanguagesFailure) other).throwable);
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public int hashCode() {
            return this.throwable.hashCode();
        }

        public String toString() {
            return d21.n("FetchLanguagesFailure(throwable=", ")", this.throwable);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$FetchLanguagesSuccess;", "Lcom/sightcall/libraries/archi/nucleus/Action;", com.sightcall.universal.agent.Language.TYPE, "", "Lcom/sightcall/livetranslation/domain/Language;", "<init>", "(Ljava/util/List;)V", "getLanguages", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FetchLanguagesSuccess implements Action {
        private final List<Language> languages;

        public FetchLanguagesSuccess(List<Language> list) {
            list.getClass();
            this.languages = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FetchLanguagesSuccess copy$default(FetchLanguagesSuccess fetchLanguagesSuccess, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = fetchLanguagesSuccess.languages;
            }
            return fetchLanguagesSuccess.copy(list);
        }

        public final List<Language> component1() {
            return this.languages;
        }

        public final FetchLanguagesSuccess copy(List<Language> languages) {
            languages.getClass();
            return new FetchLanguagesSuccess(languages);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FetchLanguagesSuccess) && Intrinsics.c(this.languages, ((FetchLanguagesSuccess) other).languages);
        }

        public final List<Language> getLanguages() {
            return this.languages;
        }

        public int hashCode() {
            return this.languages.hashCode();
        }

        public String toString() {
            return d21.o("FetchLanguagesSuccess(languages=", ")", this.languages);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Hide;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Hide implements Action {
        public static final Hide INSTANCE = new Hide();

        private Hide() {
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$SetFontSize;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "<init>", "(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class SetFontSize implements Action {
        private final LiveTranslationSettings.Enabled.FontSize fontSize;

        public SetFontSize(LiveTranslationSettings.Enabled.FontSize fontSize) {
            fontSize.getClass();
            this.fontSize = fontSize;
        }

        public static /* synthetic */ SetFontSize copy$default(SetFontSize setFontSize, LiveTranslationSettings.Enabled.FontSize fontSize, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                fontSize = setFontSize.fontSize;
            }
            return setFontSize.copy(fontSize);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final SetFontSize copy(LiveTranslationSettings.Enabled.FontSize fontSize) {
            fontSize.getClass();
            return new SetFontSize(fontSize);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof SetFontSize) && this.fontSize == ((SetFontSize) other).fontSize;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public int hashCode() {
            return this.fontSize.hashCode();
        }

        public String toString() {
            return "SetFontSize(fontSize=" + this.fontSize + ")";
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorImpl$Show;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Show implements Action {
        public static final Show INSTANCE = new Show();

        private Show() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveTranslationInteractorImpl(LiveTranslationSettings.Enabled enabled, LiveTranslationRepository liveTranslationRepository) {
        super(LiveTranslationInteractorKt.toInitialState(enabled));
        enabled.getClass();
        liveTranslationRepository.getClass();
        this.reducerConfigurator = new jx(this, enabled, liveTranslationRepository, 15);
    }

    private final Sentence createSentence(LiveTranslationAPI.Message message, LiveTranslationAPI.Pid pid, List<LiveTranslationSettings.Enabled.Color> colors) {
        return new Sentence(message.getValue(), colors.size() == 0 ? new LiveTranslationSettings.Enabled.Color(Color.parseColor("#FFFF00")) : colors.get(pid.getValue() % colors.size()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0(LiveTranslationInteractorImpl liveTranslationInteractorImpl, LiveTranslationSettings.Enabled enabled, LiveTranslationRepository liveTranslationRepository, NucleusReducerBuilder nucleusReducerBuilder) {
        nucleusReducerBuilder.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        nucleusReducerBuilder.changesBoth(reflectionFactory.b(LiveTranslationInteractor.NewMessage.class), new rs(liveTranslationInteractorImpl, enabled, 27));
        final int i2 = 0;
        nucleusReducerBuilder.changesState(reflectionFactory.b(SetFontSize.class), new Function2() { // from class: com.sightcall.livetranslation.domain.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                LiveTranslationInteractor.State state = (LiveTranslationInteractor.State) obj;
                switch (i2) {
                    case 0:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$1(state, (LiveTranslationInteractorImpl.SetFontSize) obj2);
                    case 1:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$4(state, (LiveTranslationInteractorImpl.Show) obj2);
                    default:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$6(state, (LiveTranslationInteractorImpl.Hide) obj2);
                }
            }
        });
        int i3 = 8;
        nucleusReducerBuilder.changesState(reflectionFactory.b(LiveTranslationInteractor.SelectLanguage.class), new n50(i3));
        nucleusReducerBuilder.changesState(reflectionFactory.b(LiveTranslationInteractor.SentenceTimedOut.class), new n50(9));
        final int i4 = 1;
        nucleusReducerBuilder.changesState(reflectionFactory.b(Show.class), new Function2() { // from class: com.sightcall.livetranslation.domain.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                LiveTranslationInteractor.State state = (LiveTranslationInteractor.State) obj;
                switch (i4) {
                    case 0:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$1(state, (LiveTranslationInteractorImpl.SetFontSize) obj2);
                    case 1:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$4(state, (LiveTranslationInteractorImpl.Show) obj2);
                    default:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$6(state, (LiveTranslationInteractorImpl.Hide) obj2);
                }
            }
        });
        nucleusReducerBuilder.changesState(reflectionFactory.b(LiveTranslationInteractor.Enable.class), new n50(10));
        final int i5 = 2;
        nucleusReducerBuilder.changesState(reflectionFactory.b(Hide.class), new Function2() { // from class: com.sightcall.livetranslation.domain.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                LiveTranslationInteractor.State state = (LiveTranslationInteractor.State) obj;
                switch (i5) {
                    case 0:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$1(state, (LiveTranslationInteractorImpl.SetFontSize) obj2);
                    case 1:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$4(state, (LiveTranslationInteractorImpl.Show) obj2);
                    default:
                        return LiveTranslationInteractorImpl.reducerConfigurator$lambda$0$6(state, (LiveTranslationInteractorImpl.Hide) obj2);
                }
            }
        });
        nucleusReducerBuilder.changesCommand(reflectionFactory.b(LiveTranslationInteractor.GetLanguageList.class), new w20(liveTranslationRepository, i3));
        nucleusReducerBuilder.changesState(reflectionFactory.b(FetchLanguagesSuccess.class), new n50(11));
        nucleusReducerBuilder.changesState(reflectionFactory.b(FetchLanguagesFailure.class), new n50(12));
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair reducerConfigurator$lambda$0$0(LiveTranslationInteractorImpl liveTranslationInteractorImpl, LiveTranslationSettings.Enabled enabled, LiveTranslationInteractor.State state, LiveTranslationInteractor.NewMessage newMessage) {
        state.getClass();
        newMessage.getClass();
        Sentence sentenceCreateSentence = liveTranslationInteractorImpl.createSentence(newMessage.getMessage(), newMessage.getPid(), enabled.getColors());
        ArrayList arrayListZ0 = CollectionsKt.z0(state.getLiveMessages());
        arrayListZ0.add(sentenceCreateSentence);
        ArrayList arrayListZ1 = CollectionsKt.z0(state.getHistory());
        arrayListZ1.add(sentenceCreateSentence);
        return new Pair(LiveTranslationInteractor.State.copy$default(state, arrayListZ1, arrayListZ0, null, null, 12, null), new TimeOutSentence(sentenceCreateSentence, enabled.getSentenceTimeOut()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$1(LiveTranslationInteractor.State state, SetFontSize setFontSize) {
        state.getClass();
        setFontSize.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, LiveTranslationDisplaySettings.copy$default(state.getDisplaySettings(), false, setFontSize.getFontSize(), null, null, 13, null), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$2(LiveTranslationInteractor.State state, LiveTranslationInteractor.SelectLanguage selectLanguage) {
        state.getClass();
        selectLanguage.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, LiveTranslationDisplaySettings.copy$default(state.getDisplaySettings(), false, null, selectLanguage.getLanguage(), null, 11, null), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$3(LiveTranslationInteractor.State state, LiveTranslationInteractor.SentenceTimedOut sentenceTimedOut) {
        state.getClass();
        sentenceTimedOut.getClass();
        ArrayList arrayListZ0 = CollectionsKt.z0(state.getLiveMessages());
        arrayListZ0.remove(sentenceTimedOut.getSentence());
        return LiveTranslationInteractor.State.copy$default(state, null, arrayListZ0, null, null, 13, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$4(LiveTranslationInteractor.State state, Show show) {
        state.getClass();
        show.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, LiveTranslationDisplaySettings.copy$default(state.getDisplaySettings(), true, null, null, null, 14, null), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$5(LiveTranslationInteractor.State state, LiveTranslationInteractor.Enable enable) {
        state.getClass();
        enable.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, LiveTranslationDisplaySettings.copy$default(state.getDisplaySettings(), enable.isEnable(), null, null, null, 14, null), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$6(LiveTranslationInteractor.State state, Hide hide) {
        state.getClass();
        hide.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, LiveTranslationDisplaySettings.copy$default(state.getDisplaySettings(), false, null, null, null, 14, null), null, 11, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Command reducerConfigurator$lambda$0$7(LiveTranslationRepository liveTranslationRepository, LiveTranslationInteractor.State state, LiveTranslationInteractor.GetLanguageList getLanguageList) {
        state.getClass();
        getLanguageList.getClass();
        return new FetchLanguages(liveTranslationRepository);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$8(LiveTranslationInteractor.State state, FetchLanguagesSuccess fetchLanguagesSuccess) {
        state.getClass();
        fetchLanguagesSuccess.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, null, fetchLanguagesSuccess.getLanguages(), 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveTranslationInteractor.State reducerConfigurator$lambda$0$9(LiveTranslationInteractor.State state, FetchLanguagesFailure fetchLanguagesFailure) {
        state.getClass();
        fetchLanguagesFailure.getClass();
        return LiveTranslationInteractor.State.copy$default(state, null, null, null, LanguagesKt.getDefaultLanguages(), 7, null);
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl
    public Function1<NucleusReducerBuilder<LiveTranslationInteractor.State>, Unit> getReducerConfigurator() {
        return this.reducerConfigurator;
    }

    @Override // com.sightcall.livetranslation.domain.TextSizeSelector
    public void selectLargeSize() {
        getActions().onNext(new SetFontSize(LiveTranslationSettings.Enabled.FontSize.Large));
    }

    @Override // com.sightcall.livetranslation.domain.TextSizeSelector
    public void selectMediumSize() {
        getActions().onNext(new SetFontSize(LiveTranslationSettings.Enabled.FontSize.Medium));
    }

    @Override // com.sightcall.livetranslation.domain.TextSizeSelector
    public void selectSmallSize() {
        getActions().onNext(new SetFontSize(LiveTranslationSettings.Enabled.FontSize.Small));
    }

    @Override // com.sightcall.livetranslation.domain.StartStopTranslation
    public void start() {
        getActions().onNext(Show.INSTANCE);
    }

    @Override // com.sightcall.livetranslation.domain.StartStopTranslation
    public void stop() {
        getActions().onNext(Hide.INSTANCE);
    }
}
