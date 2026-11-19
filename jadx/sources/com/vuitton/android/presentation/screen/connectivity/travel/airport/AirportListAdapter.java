package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemHotspotBinding;
import com.vuitton.android.presentation.databinding.ItemHotspotListTitleBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Airport;
import defpackage.k;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0005\b\t\n\u000b\fB\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/widget/Filterable;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;", "onAirportSelectedListener", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;)V", "Companion", "AirportHolder", "TitleHolder", "AirportFilter", "OnAirportSelectedListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AirportListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> implements Filterable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnAirportSelectedListener f56358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56359c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Filter f56360e;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportFilter;", "Landroid/widget/Filter;", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class AirportFilter extends Filter {
        public AirportFilter() {
        }

        @Override // android.widget.Filter
        public final Filter.FilterResults performFiltering(CharSequence charSequence) {
            String upperCase;
            String string;
            Filter.FilterResults filterResults = new Filter.FilterResults();
            if (charSequence == null || (string = charSequence.toString()) == null) {
                upperCase = null;
            } else {
                upperCase = string.toUpperCase(Locale.ROOT);
                upperCase.getClass();
            }
            AirportListAdapter airportListAdapter = AirportListAdapter.this;
            if (upperCase == null || upperCase.length() == 0) {
                ArrayList arrayList = airportListAdapter.f56359c;
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
                return filterResults;
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = airportListAdapter.f56359c.iterator();
            it.getClass();
            while (it.hasNext()) {
                Object next = it.next();
                next.getClass();
                if (next instanceof String) {
                    if (!arrayList2.isEmpty() && (CollectionsKt.M(arrayList2) instanceof String)) {
                        arrayList2.remove(arrayList2.size() - 1);
                    }
                    arrayList2.add(next);
                } else if (next instanceof Airport) {
                    Airport airport = (Airport) next;
                    String str = airport.f67354a;
                    Locale locale = Locale.ROOT;
                    String upperCase2 = str.toUpperCase(locale);
                    upperCase2.getClass();
                    if (!StringsKt.k(upperCase2, upperCase, false)) {
                        String upperCase3 = airport.f67356c.toUpperCase(locale);
                        upperCase3.getClass();
                        if (!StringsKt.k(upperCase3, upperCase, false)) {
                            String upperCase4 = airport.f67355b.toUpperCase(locale);
                            upperCase4.getClass();
                            if (StringsKt.k(upperCase4, upperCase, false)) {
                            }
                        }
                    }
                    arrayList2.add(next);
                }
            }
            if (!arrayList2.isEmpty() && (CollectionsKt.M(arrayList2) instanceof String)) {
                arrayList2.remove(arrayList2.size() - 1);
            }
            filterResults.values = arrayList2;
            filterResults.count = arrayList2.size();
            return filterResults;
        }

        @Override // android.widget.Filter
        public final void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
            charSequence.getClass();
            filterResults.getClass();
            AirportListAdapter airportListAdapter = AirportListAdapter.this;
            airportListAdapter.d.clear();
            Object obj = filterResults.values;
            if (obj != null) {
                airportListAdapter.d.addAll(CollectionsKt.O(obj));
            }
            airportListAdapter.notifyDataSetChanged();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class AirportHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemHotspotBinding f56362b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ AirportListAdapter f56363c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AirportHolder(AirportListAdapter airportListAdapter, ItemHotspotBinding itemHotspotBinding) {
            super(itemHotspotBinding.f51415b);
            itemHotspotBinding.getClass();
            this.f56363c = airportListAdapter;
            this.f56362b = itemHotspotBinding;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$Companion;", "", "", "ITEM_TYPE_TITLE", "I", "ITEM_TYPE_AIRPORT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnAirportSelectedListener {
        void e(AirportUiModel airportUiModel);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$TitleHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;Lcom/vuitton/android/presentation/databinding/ItemHotspotListTitleBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class TitleHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemHotspotListTitleBinding f56364b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TitleHolder(AirportListAdapter airportListAdapter, ItemHotspotListTitleBinding itemHotspotListTitleBinding) {
            super(itemHotspotListTitleBinding.f51418b);
            itemHotspotListTitleBinding.getClass();
            this.f56364b = itemHotspotListTitleBinding;
        }
    }

    static {
        new Companion(null);
    }

    public AirportListAdapter(OnAirportSelectedListener onAirportSelectedListener) {
        onAirportSelectedListener.getClass();
        this.f56358b = onAirportSelectedListener;
        this.f56359c = new ArrayList();
        this.d = new ArrayList();
        this.f56360e = new AirportFilter();
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        return this.f56360e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i2) {
        return this.d.get(i2) instanceof Airport ? 1 : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        int itemViewType = getItemViewType(i2);
        ArrayList arrayList = this.d;
        if (itemViewType != 1) {
            Object obj = arrayList.get(i2);
            obj.getClass();
            ItemHotspotListTitleBinding itemHotspotListTitleBinding = ((TitleHolder) viewHolder).f56364b;
            itemHotspotListTitleBinding.f51418b.setText((String) obj);
            itemHotspotListTitleBinding.f51418b.setAccessibilityHeading(true);
            return;
        }
        AirportHolder airportHolder = (AirportHolder) viewHolder;
        Object obj2 = arrayList.get(i2);
        obj2.getClass();
        Airport airport = (Airport) obj2;
        ItemHotspotBinding itemHotspotBinding = airportHolder.f56362b;
        itemHotspotBinding.f51417e.setText(String.format("%s - %s", Arrays.copyOf(new Object[]{airport.f67354a, airport.f67355b}, 2)));
        itemHotspotBinding.d.setText(airport.f67356c);
        itemHotspotBinding.f51416c.setImageResource(R.drawable.ic_plane);
        ViewExtKt.d(itemHotspotBinding.f51415b, new k(airportHolder.f56363c, airport, 3));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        if (i2 != 1) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_hotspot_list_title, viewGroup, false);
            if (viewInflate != null) {
                return new TitleHolder(this, new ItemHotspotListTitleBinding((TextView) viewInflate));
            }
            r81.d("rootView");
            return null;
        }
        View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_hotspot, viewGroup, false);
        int i3 = R.id.image_icon_hotspot;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_icon_hotspot, viewInflate2);
        if (imageView != null) {
            i3 = R.id.text_location_hotspot;
            TextView textView = (TextView) ViewBindings.a(R.id.text_location_hotspot, viewInflate2);
            if (textView != null) {
                i3 = R.id.text_name_hotspot;
                TextView textView2 = (TextView) ViewBindings.a(R.id.text_name_hotspot, viewInflate2);
                if (textView2 != null) {
                    return new AirportHolder(this, new ItemHotspotBinding((LinearLayout) viewInflate2, imageView, textView, textView2));
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i3)));
        return null;
    }
}
