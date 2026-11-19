package com.sightcall.livetranslation.live;

import android.view.ViewGroup;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import com.sightcall.livetranslation.domain.LiveTranslationInteractor;
import com.sightcall.livetranslation.domain.LiveTranslationSettings;
import dagger.BindsInstance;
import dagger.Provides;
import dagger.Subcomponent;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Subcomponent
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0002\u000f\u0010R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0018\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0011À\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesComponent;", "", "viewHolder", "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;", "getViewHolder", "()Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;", "coordinator", "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;", "getCoordinator", "()Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;", "getInteractor", "()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "Builder", "Module", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@LiveSentencesScope
public interface LiveSentencesComponent {

    @Subcomponent.Builder
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H'¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;", "", "build", "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;", "rootView", "Landroid/view/ViewGroup;", "settings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Builder {
        LiveSentencesComponent build();

        @BindsInstance
        Builder rootView(ViewGroup rootView);

        @BindsInstance
        Builder settings(LiveTranslationSettings.Enabled settings);
    }

    @Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0007J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0007J\u0010\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0007J\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\n0\t2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0014H\u0007J$\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u00142\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\t2\u0006\u0010\u0018\u001a\u00020\u0019H\u0007¨\u0006\u001a"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Module;", "", "<init>", "()V", "provideViewHolder", "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;", "provideCoordinator", "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinator;", "coordinator", "Lcom/sightcall/livetranslation/live/LiveSentencesCoordinatorImpl;", "provideCoordinatorImpl", "component", "Lcom/sightcall/livetranslation/live/LiveSentencesComponent;", "provideInteractor", "liveSentencesInteractor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "provideInteractorImpl", "liveTranslationInteractor", "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;", "settings", "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @dagger.Module
    public static final class Module {
        @Provides
        @LiveSentencesScope
        public final LiveSentencesCoordinator provideCoordinator(LiveSentencesCoordinatorImpl coordinator) {
            coordinator.getClass();
            return coordinator;
        }

        @Provides
        @LiveSentencesScope
        public final LiveSentencesCoordinatorImpl provideCoordinatorImpl(LiveSentencesComponent component) {
            component.getClass();
            return new LiveSentencesCoordinatorImpl(component);
        }

        @Provides
        @LiveSentencesScope
        public final NucleusInteractor<LiveSentencesInteractor.State> provideInteractor(NucleusInteractorImpl<LiveSentencesInteractor.State> liveSentencesInteractor) {
            liveSentencesInteractor.getClass();
            return liveSentencesInteractor;
        }

        @Provides
        @LiveSentencesScope
        public final NucleusInteractorImpl<LiveSentencesInteractor.State> provideInteractorImpl(NucleusInteractor<LiveTranslationInteractor.State> liveTranslationInteractor, LiveTranslationSettings.Enabled settings) {
            liveTranslationInteractor.getClass();
            settings.getClass();
            return new LiveSentencesInteractorImpl(liveTranslationInteractor, settings.getHeight());
        }

        @Provides
        @LiveSentencesScope
        public final LiveSentencesViewHolder provideViewHolder(ViewGroup rootView, NucleusInteractor<LiveSentencesInteractor.State> interactor) {
            rootView.getClass();
            interactor.getClass();
            return new LiveSentencesViewHolder(rootView, interactor);
        }
    }

    LiveSentencesCoordinatorImpl getCoordinator();

    NucleusInteractorImpl<LiveSentencesInteractor.State> getInteractor();

    LiveSentencesViewHolder getViewHolder();
}
