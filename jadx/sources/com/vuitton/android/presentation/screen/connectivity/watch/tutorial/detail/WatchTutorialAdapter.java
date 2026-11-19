package com.vuitton.android.presentation.screen.connectivity.watch.tutorial.detail;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemTutorialBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import defpackage.c61;
import defpackage.r81;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;", "", "openTutorialScreen", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "TutorialHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchTutorialAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f56803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56804c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class TutorialHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemTutorialBinding f56805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WatchTutorialAdapter f56806c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TutorialHolder(WatchTutorialAdapter watchTutorialAdapter, ItemTutorialBinding itemTutorialBinding) {
            super(itemTutorialBinding.f51451b);
            itemTutorialBinding.getClass();
            this.f56806c = watchTutorialAdapter;
            this.f56805b = itemTutorialBinding;
        }
    }

    public WatchTutorialAdapter(Function1<? super WatchTutorialUi, Unit> function1) {
        function1.getClass();
        this.f56803b = function1;
        this.f56804c = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56804c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        TutorialHolder tutorialHolder = (TutorialHolder) viewHolder;
        Object obj = this.f56804c.get(i2);
        obj.getClass();
        WatchTutorialUi watchTutorialUi = (WatchTutorialUi) obj;
        ItemTutorialBinding itemTutorialBinding = tutorialHolder.f56805b;
        WatchTutorialAdapter watchTutorialAdapter = tutorialHolder.f56806c;
        itemTutorialBinding.f51452c.setText(watchTutorialUi.f56808b);
        ViewExtKt.d(itemTutorialBinding.f51451b, new c61(watchTutorialAdapter, watchTutorialUi, 1));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_tutorial, viewGroup, false);
        if (viewInflate != null) {
            TextView textView = (TextView) viewInflate;
            return new TutorialHolder(this, new ItemTutorialBinding(textView, textView));
        }
        r81.d("rootView");
        return null;
    }
}
