package com.sightcall.livetranslation.live;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.sightcall.libraries.archi.nucleus.NucleusInteractor;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolder;
import com.sightcall.livetranslation.R;
import defpackage.l00;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0012\u001a\u00020\u000eH\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\f\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rj\b\u0012\u0004\u0012\u00020\u0003`\u000fX\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;", "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;", "rootView", "Landroid/view/ViewGroup;", "interactor", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "<init>", "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V", "adapter", "Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;", "render", "Lkotlin/Function1;", "", "Lcom/sightcall/libraries/archi/nucleus/Renderer;", "getRender", "()Lkotlin/jvm/functions/Function1;", "buildContentView", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveSentencesViewHolder extends NucleusViewHolder<ConstraintLayout, LiveSentencesInteractor.State> {
    private final LiveSentencesAdapter adapter;
    private final Function1<LiveSentencesInteractor.State, Unit> render;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveSentencesViewHolder(ViewGroup viewGroup, NucleusInteractor<LiveSentencesInteractor.State> nucleusInteractor) {
        super(viewGroup, R.layout.live_sentences, nucleusInteractor);
        viewGroup.getClass();
        nucleusInteractor.getClass();
        this.adapter = new LiveSentencesAdapter();
        this.render = new l00(this, 27);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit render$lambda$0(LiveSentencesViewHolder liveSentencesViewHolder, LiveSentencesInteractor.State state) {
        int height;
        state.getClass();
        liveSentencesViewHolder.adapter.setItems(LiveSentencesViewHolderKt.mapToAdapter(state));
        Object parent = ((ConstraintLayout) liveSentencesViewHolder.getContentView()).getParent();
        View view = parent instanceof View ? (View) parent : null;
        if (view != null && ((ConstraintLayout) liveSentencesViewHolder.getContentView()).getHeight() != (height = (int) ((((double) view.getHeight()) / 100.0d) * ((double) state.getContainerHeight().getValue())))) {
            ViewGroup.LayoutParams layoutParams = ((ConstraintLayout) liveSentencesViewHolder.getContentView()).getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
            if (marginLayoutParams != null) {
                marginLayoutParams.height = height;
                marginLayoutParams.topMargin = view.getHeight() - height;
            }
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sightcall.libraries.archi.nucleus.ViewHolder
    public void buildContentView() {
        super.buildContentView();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.sentences);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(recyclerView.getContext());
        linearLayoutManager.n1(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        recyclerView.setAdapter(this.adapter);
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusViewHolder
    public Function1<LiveSentencesInteractor.State, Unit> getRender() {
        return this.render;
    }
}
