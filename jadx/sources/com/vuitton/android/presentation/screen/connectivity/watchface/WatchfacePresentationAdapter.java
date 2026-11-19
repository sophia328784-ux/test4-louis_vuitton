package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemWatchfacePresentationTabBinding;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import defpackage.r81;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;", "", "onItemClicked", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchfacePresentationAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f56824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56825c;
    public int d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View$OnClickListener;", "Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfacePresentationTabBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemWatchfacePresentationTabBinding f56826b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WatchfacePresentationAdapter f56827c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(WatchfacePresentationAdapter watchfacePresentationAdapter, ItemWatchfacePresentationTabBinding itemWatchfacePresentationTabBinding) {
            super(itemWatchfacePresentationTabBinding.f51456b);
            itemWatchfacePresentationTabBinding.getClass();
            this.f56827c = watchfacePresentationAdapter;
            this.f56826b = itemWatchfacePresentationTabBinding;
            this.itemView.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            WatchfacePresentationAdapter watchfacePresentationAdapter = this.f56827c;
            Callback.n(view);
            try {
                view.getClass();
                watchfacePresentationAdapter.d = getBindingAdapterPosition();
                WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) CollectionsKt.G(getBindingAdapterPosition(), watchfacePresentationAdapter.f56825c);
                if (watchFacePresentationUiModel != null) {
                    watchfacePresentationAdapter.f56824b.invoke(watchFacePresentationUiModel);
                }
                watchfacePresentationAdapter.notifyDataSetChanged();
            } finally {
                Callback.o();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        }
    }

    public WatchfacePresentationAdapter(Function1<? super WatchFacePresentationUiModel, Unit> function1) {
        function1.getClass();
        this.f56824b = function1;
        this.f56825c = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56825c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56825c.get(i2);
        obj.getClass();
        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
        ItemWatchfacePresentationTabBinding itemWatchfacePresentationTabBinding = viewHolder2.f56826b;
        String str = watchFacePresentationUiModel.f56812e;
        if (str != null) {
            XmlUiKt.a(itemWatchfacePresentationTabBinding.f51457c, str, 0, 0, 126);
        }
        if (viewHolder2.f56827c.d == viewHolder2.getBindingAdapterPosition()) {
            itemWatchfacePresentationTabBinding.d.setVisibility(0);
            viewHolder2.itemView.setSelected(true);
        } else {
            itemWatchfacePresentationTabBinding.d.setVisibility(4);
            viewHolder2.itemView.setSelected(false);
        }
        itemWatchfacePresentationTabBinding.f51458e.setText(watchFacePresentationUiModel.f56811c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_watchface_presentation_tab, viewGroup, false);
        int i3 = R.id.watchface_presentation_image;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.watchface_presentation_image, viewInflate);
        if (imageView != null) {
            i3 = R.id.watchface_presentation_indicator;
            View viewA = ViewBindings.a(R.id.watchface_presentation_indicator, viewInflate);
            if (viewA != null) {
                i3 = R.id.watchface_presentation_name;
                TextView textView = (TextView) ViewBindings.a(R.id.watchface_presentation_name, viewInflate);
                if (textView != null) {
                    return new ViewHolder(this, new ItemWatchfacePresentationTabBinding((LinearLayout) viewInflate, imageView, viewA, textView));
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        return null;
    }
}
