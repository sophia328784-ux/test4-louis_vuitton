package com.sightcall.livetranslation.history;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolder;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolderKt;
import com.sightcall.libraries.rxbindings.BottomSheetBehaviorStateChangeEvent;
import com.sightcall.libraries.rxbindings.BottomSheetBehaviorStateChangeEventObservableKt;
import com.sightcall.livetranslation.R;
import defpackage.et;
import defpackage.l00;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u001d\u001a\u00020\u0012H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u0010\u0012\f\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011j\b\u0012\u0004\u0012\u00020\u0003`\u0013X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00190\u00180\u0017j\u0002`\u001aX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/sightcall/livetranslation/history/HistoryViewHolder;", "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "adapter", "Lcom/sightcall/livetranslation/history/HistoryAdapter;", "behavior", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroid/view/View;", "kotlin.jvm.PlatformType", "render", "Lkotlin/Function1;", "", "Lcom/sightcall/libraries/archi/nucleus/Renderer;", "getRender", "()Lkotlin/jvm/functions/Function1;", "dispatcher", "", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;", "getDispatcher", "()Ljava/util/List;", "buildContentView", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HistoryViewHolder extends NucleusViewHolder<ConstraintLayout, HistoryInteractor.State> {
    private final HistoryAdapter adapter;
    private final BottomSheetBehavior<View> behavior;
    private final List<Observable<Action>> dispatcher;
    private final Function1<HistoryInteractor.State, Unit> render;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View] */
    public HistoryViewHolder(ViewGroup viewGroup, NucleusInteractor<HistoryInteractor.State> nucleusInteractor) {
        super(viewGroup, R.layout.history, nucleusInteractor);
        viewGroup.getClass();
        nucleusInteractor.getClass();
        this.adapter = new HistoryAdapter();
        BottomSheetBehavior<View> bottomSheetBehaviorB = BottomSheetBehavior.B(findViewById(R.id.history_bottomsheet_container));
        this.behavior = bottomSheetBehaviorB;
        this.render = new l00(this, 5);
        Observable<R> map = BottomSheetBehaviorStateChangeEventObservableKt.stateChangeEvents(bottomSheetBehaviorB).filter(new Predicate() { // from class: com.sightcall.livetranslation.history.HistoryViewHolder$dispatcher$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(BottomSheetBehaviorStateChangeEvent bottomSheetBehaviorStateChangeEvent) {
                bottomSheetBehaviorStateChangeEvent.getClass();
                return bottomSheetBehaviorStateChangeEvent.getNewState() == 5;
            }
        }).map(new Function() { // from class: com.sightcall.livetranslation.history.HistoryViewHolder$dispatcher$2
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(BottomSheetBehaviorStateChangeEvent bottomSheetBehaviorStateChangeEvent) {
                bottomSheetBehaviorStateChangeEvent.getClass();
                return HistoryInteractor.Hide.INSTANCE;
            }
        });
        map.getClass();
        this.dispatcher = NucleusViewHolderKt.dispatch(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void buildContentView$lambda$1(HistoryViewHolder historyViewHolder) {
        historyViewHolder.behavior.J(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit render$lambda$0(HistoryViewHolder historyViewHolder, HistoryInteractor.State state) {
        state.getClass();
        historyViewHolder.adapter.setItems(HistoryViewHolderKt.mapToAdapter(state));
        return Unit.f71739a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.libraries.archi.nucleus.ViewHolder
    public void buildContentView() {
        super.buildContentView();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.history_recyclerView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        linearLayoutManager.n1(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.adapter);
        this.behavior.J(5);
        new Handler(Looper.getMainLooper()).post(new et(this, 15));
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusViewHolder
    public List<Observable<Action>> getDispatcher() {
        return this.dispatcher;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusViewHolder
    public Function1<HistoryInteractor.State, Unit> getRender() {
        return this.render;
    }
}
