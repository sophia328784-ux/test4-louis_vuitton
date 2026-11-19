package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.linkplay.core.status.LPPlayChannel;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemListSelectableBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkConfigHelper;
import defpackage.ag;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB@\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0005\u0012!\u0010\f\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0007¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/linkplay/core/status/LPPlayChannel;", "selectedChannel", "", "modeList", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "channel", "", "onPowerModeClick", "<init>", "(Lcom/linkplay/core/status/LPPlayChannel;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "DispositionViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispositionListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LPPlayChannel f56550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f56551c;
    public final Function1 d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter$DispositionViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/disposition/DispositionListAdapter;Lcom/vuitton/android/presentation/databinding/ItemListSelectableBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class DispositionViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemListSelectableBinding f56552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DispositionListAdapter f56553c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DispositionViewHolder(DispositionListAdapter dispositionListAdapter, ItemListSelectableBinding itemListSelectableBinding) {
            super(itemListSelectableBinding.f51423b);
            itemListSelectableBinding.getClass();
            this.f56553c = dispositionListAdapter;
            this.f56552b = itemListSelectableBinding;
        }
    }

    public DispositionListAdapter(LPPlayChannel lPPlayChannel, List<? extends LPPlayChannel> list, Function1<? super LPPlayChannel, Unit> function1) {
        lPPlayChannel.getClass();
        list.getClass();
        function1.getClass();
        this.f56550b = lPPlayChannel;
        this.f56551c = list;
        this.d = function1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56551c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        DispositionViewHolder dispositionViewHolder = (DispositionViewHolder) viewHolder;
        LPPlayChannel lPPlayChannel = (LPPlayChannel) this.f56551c.get(i2);
        lPPlayChannel.getClass();
        DispositionListAdapter dispositionListAdapter = dispositionViewHolder.f56553c;
        boolean z = lPPlayChannel == dispositionListAdapter.f56550b;
        ItemListSelectableBinding itemListSelectableBinding = dispositionViewHolder.f56552b;
        int i3 = z ? R.drawable.ic_check_legacy : 0;
        TextView textView = itemListSelectableBinding.f51424c;
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, i3, 0);
        Context context = textView.getContext();
        context.getClass();
        textView.setText(TrunkConfigHelper.a(context, lPPlayChannel));
        ViewExtKt.d(textView, new ag(z, dispositionListAdapter, lPPlayChannel, 2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        return new DispositionViewHolder(this, ItemListSelectableBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
    }
}
