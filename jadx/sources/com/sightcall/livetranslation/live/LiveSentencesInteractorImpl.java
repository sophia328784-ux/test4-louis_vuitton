package com.sightcall.livetranslation.live;

import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.libraries.rx.SubscriptionsKt;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import com.sightcall.livetranslation.domain.Sentence;
import defpackage.ba0;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.kotlin.Observables;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0013B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nR5\u0010\u000b\u001a#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\b\u0012\u0004\u0012\u00020\u0002`\u0010¢\u0006\u0002\b\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;", "featureInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "height", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;", "<init>", "(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V", "reducerConfigurator", "Lkotlin/Function1;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;", "getReducerConfigurator", "()Lkotlin/jvm/functions/Function1;", "UpdateState", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveSentencesInteractorImpl extends NucleusInteractorImpl<LiveSentencesInteractor.State> implements LiveSentencesInteractor {
    private final Function1<NucleusReducerBuilder<LiveSentencesInteractor.State>, Unit> reducerConfigurator;

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0006HÆ\u0003J#\u0010\u000f\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0014\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0083\u0004J\n\u0010\u0014\u001a\u00020\u0015HÖ\u0081\u0004J\n\u0010\u0016\u001a\u00020\u0017HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0018"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "liveSentences", "", "Lcom/sightcall/livetranslation/domain/Sentence;", "fontSize", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "<init>", "(Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V", "getLiveSentences", "()Ljava/util/List;", "getFontSize", "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UpdateState implements Action {
        private final LiveTranslationSettings.Enabled.FontSize fontSize;
        private final List<Sentence> liveSentences;

        public UpdateState(List<Sentence> list, LiveTranslationSettings.Enabled.FontSize fontSize) {
            list.getClass();
            fontSize.getClass();
            this.liveSentences = list;
            this.fontSize = fontSize;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UpdateState copy$default(UpdateState updateState, List list, LiveTranslationSettings.Enabled.FontSize fontSize, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = updateState.liveSentences;
            }
            if ((i2 & 2) != 0) {
                fontSize = updateState.fontSize;
            }
            return updateState.copy(list, fontSize);
        }

        public final List<Sentence> component1() {
            return this.liveSentences;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final UpdateState copy(List<Sentence> liveSentences, LiveTranslationSettings.Enabled.FontSize fontSize) {
            liveSentences.getClass();
            fontSize.getClass();
            return new UpdateState(liveSentences, fontSize);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof UpdateState)) {
                return false;
            }
            UpdateState updateState = (UpdateState) other;
            return Intrinsics.c(this.liveSentences, updateState.liveSentences) && this.fontSize == updateState.fontSize;
        }

        public final LiveTranslationSettings.Enabled.FontSize getFontSize() {
            return this.fontSize;
        }

        public final List<Sentence> getLiveSentences() {
            return this.liveSentences;
        }

        public int hashCode() {
            return this.fontSize.hashCode() + (this.liveSentences.hashCode() * 31);
        }

        public String toString() {
            return "UpdateState(liveSentences=" + this.liveSentences + ", fontSize=" + this.fontSize + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveSentencesInteractorImpl(NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor, LiveTranslationSettings.Enabled.Height height) {
        super(new LiveSentencesInteractor.State(EmptyList.f71768b, height));
        nucleusInteractor.getClass();
        height.getClass();
        Observable<R> map = nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.live.LiveSentencesInteractorImpl.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final List<Sentence> apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return state.getLiveMessages();
            }
        });
        map.getClass();
        Observable<R> map2 = nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.live.LiveSentencesInteractorImpl.2
            @Override // io.reactivex.rxjava3.functions.Function
            public final LiveTranslationSettings.Enabled.FontSize apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return state.getDisplaySettings().getFontSize();
            }
        });
        map2.getClass();
        Observable map3 = Observables.a(map, map2).map(new Function() { // from class: com.sightcall.livetranslation.live.LiveSentencesInteractorImpl.3
            @Override // io.reactivex.rxjava3.functions.Function
            public final UpdateState apply(Pair<? extends List<Sentence>, ? extends LiveTranslationSettings.Enabled.FontSize> pair) {
                pair.getClass();
                return new UpdateState((List) pair.f71705b, (LiveTranslationSettings.Enabled.FontSize) pair.f71706c);
            }
        });
        map3.getClass();
        Disposable disposableRelay = SubscriptionsKt.relay(map3, getActions());
        CompositeDisposable disposables = getDisposables();
        disposableRelay.getClass();
        disposables.getClass();
        disposables.b(disposableRelay);
        this.reducerConfigurator = new ba0(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0(NucleusReducerBuilder nucleusReducerBuilder) {
        nucleusReducerBuilder.getClass();
        nucleusReducerBuilder.changesState(Reflection.f71922a.b(UpdateState.class), new a());
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LiveSentencesInteractor.State reducerConfigurator$lambda$0$0(LiveSentencesInteractor.State state, UpdateState updateState) {
        state.getClass();
        updateState.getClass();
        List<Sentence> liveSentences = updateState.getLiveSentences();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(liveSentences, 10));
        for (Sentence sentence : liveSentences) {
            arrayList.add(new LiveSentencesInteractor.LiveSentence(sentence.getText(), sentence.getColor(), updateState.getFontSize()));
        }
        return LiveSentencesInteractor.State.copy$default(state, arrayList, null, 2, null);
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl
    public Function1<NucleusReducerBuilder<LiveSentencesInteractor.State>, Unit> getReducerConfigurator() {
        return this.reducerConfigurator;
    }
}
