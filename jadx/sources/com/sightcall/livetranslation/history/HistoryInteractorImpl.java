package com.sightcall.livetranslation.history;

import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.libraries.archi.nucleus.NucleusReducerBuilder;
import com.sightcall.libraries.rx.SubscriptionsKt;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.Sentence;
import defpackage.d21;
import defpackage.l00;
import defpackage.ss;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0013B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nR5\u0010\u000b\u001a#\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\r\u0012\u0004\u0012\u00020\u000e0\fj\b\u0012\u0004\u0012\u00020\u0002`\u0010¢\u0006\u0002\b\u000fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;", "Lcom/sightcall/livetranslation/history/HistoryInteractor;", "coordinator", "Lcom/sightcall/livetranslation/history/HistoryCoordinator;", "featureInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "<init>", "(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "reducerConfigurator", "Lkotlin/Function1;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;", "getReducerConfigurator", "()Lkotlin/jvm/functions/Function1;", "UpdateState", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HistoryInteractorImpl extends NucleusInteractorImpl<HistoryInteractor.State> implements HistoryInteractor {
    private final Function1<NucleusReducerBuilder<HistoryInteractor.State>, Unit> reducerConfigurator;

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "sentences", "", "Lcom/sightcall/livetranslation/domain/Sentence;", "<init>", "(Ljava/util/List;)V", "getSentences", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UpdateState implements Action {
        private final List<Sentence> sentences;

        public UpdateState(List<Sentence> list) {
            list.getClass();
            this.sentences = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ UpdateState copy$default(UpdateState updateState, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = updateState.sentences;
            }
            return updateState.copy(list);
        }

        public final List<Sentence> component1() {
            return this.sentences;
        }

        public final UpdateState copy(List<Sentence> sentences) {
            sentences.getClass();
            return new UpdateState(sentences);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof UpdateState) && Intrinsics.c(this.sentences, ((UpdateState) other).sentences);
        }

        public final List<Sentence> getSentences() {
            return this.sentences;
        }

        public int hashCode() {
            return this.sentences.hashCode();
        }

        public String toString() {
            return d21.o("UpdateState(sentences=", ")", this.sentences);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HistoryInteractorImpl(HistoryCoordinator historyCoordinator, NucleusInteractor<LiveTranslationInteractor.State> nucleusInteractor) {
        historyCoordinator.getClass();
        nucleusInteractor.getClass();
        Observable<R> map = nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.history.HistoryInteractorImpl.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final HistoryInteractor.State apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return new HistoryInteractor.State(state.getHistory());
            }
        });
        map.getClass();
        super((Observable) map);
        this.reducerConfigurator = new l00(historyCoordinator, 4);
        Observable<R> map2 = nucleusInteractor.getState().map(new Function() { // from class: com.sightcall.livetranslation.history.HistoryInteractorImpl.2
            @Override // io.reactivex.rxjava3.functions.Function
            public final UpdateState apply(LiveTranslationInteractor.State state) {
                state.getClass();
                return new UpdateState(state.getHistory());
            }
        });
        map2.getClass();
        Disposable disposableRelay = SubscriptionsKt.relay(map2, getActions());
        CompositeDisposable disposables = getDisposables();
        disposableRelay.getClass();
        disposables.getClass();
        disposables.b(disposableRelay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0(HistoryCoordinator historyCoordinator, NucleusReducerBuilder nucleusReducerBuilder) {
        nucleusReducerBuilder.getClass();
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        nucleusReducerBuilder.changesState(reflectionFactory.b(UpdateState.class), new a());
        nucleusReducerBuilder.executesSimpleCommand(reflectionFactory.b(HistoryInteractor.Hide.class), new ss(historyCoordinator, 17));
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final HistoryInteractor.State reducerConfigurator$lambda$0$0(HistoryInteractor.State state, UpdateState updateState) {
        state.getClass();
        updateState.getClass();
        return state.copy(updateState.getSentences());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerConfigurator$lambda$0$1(HistoryCoordinator historyCoordinator) {
        historyCoordinator.close();
        return Unit.f71739a;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl
    public Function1<NucleusReducerBuilder<HistoryInteractor.State>, Unit> getReducerConfigurator() {
        return this.reducerConfigurator;
    }
}
