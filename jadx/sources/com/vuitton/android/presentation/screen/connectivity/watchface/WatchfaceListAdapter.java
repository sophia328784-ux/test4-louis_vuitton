package com.vuitton.android.presentation.screen.connectivity.watchface;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemWatchfaceBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import defpackage.c61;
import defpackage.r81;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\tB\u001b\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter$ViewHolder;", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;", "", "onWatchfaceClicked", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "ViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WatchfaceListAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f56820b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56821c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemWatchfaceBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;Lcom/vuitton/android/presentation/databinding/ItemWatchfaceBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemWatchfaceBinding f56822b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ WatchfaceListAdapter f56823c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(WatchfaceListAdapter watchfaceListAdapter, ItemWatchfaceBinding itemWatchfaceBinding) {
            super(itemWatchfaceBinding.f51453b);
            itemWatchfaceBinding.getClass();
            this.f56823c = watchfaceListAdapter;
            this.f56822b = itemWatchfaceBinding;
        }
    }

    public WatchfaceListAdapter(Function1<? super WatchFacePresentationUiModel, Unit> function1) {
        function1.getClass();
        this.f56820b = function1;
        this.f56821c = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56821c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56821c.get(i2);
        obj.getClass();
        WatchFacePresentationUiModel watchFacePresentationUiModel = (WatchFacePresentationUiModel) obj;
        ItemWatchfaceBinding itemWatchfaceBinding = viewHolder2.f56822b;
        String str = watchFacePresentationUiModel.f56812e;
        if (str != null) {
            XmlUiKt.a(itemWatchfaceBinding.f51454c, str, 0, 0, 126);
        }
        itemWatchfaceBinding.d.setText(watchFacePresentationUiModel.f56811c);
        ViewExtKt.d(itemWatchfaceBinding.f51453b, new c61(viewHolder2.f56823c, viewHolder2, 4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_watchface, viewGroup, false);
        int i3 = R.id.watchface_presentation_image;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.watchface_presentation_image, viewInflate);
        if (imageView != null) {
            i3 = R.id.watchface_presentation_name;
            TextView textView = (TextView) ViewBindings.a(R.id.watchface_presentation_name, viewInflate);
            if (textView != null) {
                return new ViewHolder(this, new ItemWatchfaceBinding((LinearLayout) viewInflate, imageView, textView));
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        return null;
    }
}
