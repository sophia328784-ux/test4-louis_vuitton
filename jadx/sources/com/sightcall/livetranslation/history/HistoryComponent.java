package com.sightcall.livetranslation.history;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import dagger.BindsInstance;
import dagger.Provides;
import dagger.Subcomponent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Subcomponent
@HistoryScope
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0002\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryComponent;", "", "viewHolder", "Lcom/sightcall/livetranslation/history/HistoryViewHolder;", "getViewHolder", "()Lcom/sightcall/livetranslation/history/HistoryViewHolder;", "coordinator", "Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;", "getCoordinator", "()Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;", "getInteractor", "()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Builder", "Module", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface HistoryComponent {

    @Subcomponent.Builder
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H'¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;", "", "build", "Lcom/sightcall/livetranslation/history/HistoryComponent;", "rootView", "Landroid/view/ViewGroup;", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Builder {
        HistoryComponent build();

        @BindsInstance
        Builder closeFeature(LiveTranslationAPI.CloseHistory closeFeature);

        @BindsInstance
        Builder rootView(ViewGroup rootView);
    }

    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0001¢\u0006\u0002\b\u000bJ\u0015\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001¢\u0006\u0002\b\u0010J\u001d\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0001¢\u0006\u0002\b\u0016J\u001c\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\u0018H\u0007J$\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u00182\u0006\u0010\u001a\u001a\u00020\r2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\tH\u0007¨\u0006\u001d"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryComponent$Module;", "", "<init>", "()V", "provideViewHolder", "Lcom/sightcall/livetranslation/history/HistoryViewHolder;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;", "provideViewHolder$livetranslation_release", "provideCoordinator", "Lcom/sightcall/livetranslation/history/HistoryCoordinator;", "coordinatorImpl", "Lcom/sightcall/livetranslation/history/HistoryCoordinatorImpl;", "provideCoordinator$livetranslation_release", "provideCoordinatorImpl", "component", "Lcom/sightcall/livetranslation/history/HistoryComponent;", "closeFeature", "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;", "provideCoordinatorImpl$livetranslation_release", "provideInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "provideInteractorImpl", "coordinator", "liveTranslationInteractor", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @HistoryScope
        public final HistoryCoordinator provideCoordinator$livetranslation_release(HistoryCoordinatorImpl coordinatorImpl) {
            coordinatorImpl.getClass();
            return coordinatorImpl;
        }

        @Provides
        @HistoryScope
        public final HistoryCoordinatorImpl provideCoordinatorImpl$livetranslation_release(HistoryComponent component, LiveTranslationAPI.CloseHistory closeFeature) {
            component.getClass();
            closeFeature.getClass();
            return new HistoryCoordinatorImpl(component, closeFeature);
        }

        @Provides
        @HistoryScope
        public final NucleusInteractor<HistoryInteractor.State> provideInteractor(NucleusInteractorImpl<HistoryInteractor.State> interactor) {
            interactor.getClass();
            return interactor;
        }

        @Provides
        @HistoryScope
        public final NucleusInteractorImpl<HistoryInteractor.State> provideInteractorImpl(HistoryCoordinator coordinator, NucleusInteractor<LiveTranslationInteractor.State> liveTranslationInteractor) {
            coordinator.getClass();
            liveTranslationInteractor.getClass();
            return new HistoryInteractorImpl(coordinator, liveTranslationInteractor);
        }

        @Provides
        @HistoryScope
        public final HistoryViewHolder provideViewHolder$livetranslation_release(ViewGroup rootView, NucleusInteractor<HistoryInteractor.State> interactor) {
            rootView.getClass();
            interactor.getClass();
            return new HistoryViewHolder(rootView, interactor);
        }
    }

    HistoryCoordinatorImpl getCoordinator();

    NucleusInteractorImpl<HistoryInteractor.State> getInteractor();

    HistoryViewHolder getViewHolder();
}
