package com.vuitton.android.presentation.screen.connectivity.travel.list;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemTravelBinding;
import com.vuitton.android.presentation.databinding.ItemTravelHeaderBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Flight;
import com.vuitton.foundation.model.domain.model.connectivity.travel.FlightAirport;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Hotel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.HotelPlace;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Station;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Train;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import com.vuitton.foundation.model.domain.model.connectivity.travel.TravelType;
import defpackage.m21;
import defpackage.r81;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0006\u000b\f\r\u000e\u000f\u0010B%\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\t\u0010\n¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "", "hasHeader", "Lkotlin/Function1;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "", "onTravelClick", "<init>", "(ZLkotlin/jvm/functions/Function1;)V", "Companion", "AbstractViewHolder", "HeaderViewHolder", "FlightViewHolder", "TrainViewHolder", "HotelViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TravelListAdapter extends RecyclerView.Adapter<AbstractViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f56429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f56430c;
    public final ArrayList d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b¦\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Landroid/view/View;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public abstract class AbstractViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ TravelListAdapter f56431b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractViewHolder(TravelListAdapter travelListAdapter, View view) {
            super(view);
            view.getClass();
            this.f56431b = travelListAdapter;
        }

        public abstract void a(Travel travel);

        public final void b(ItemTravelBinding itemTravelBinding) {
            itemTravelBinding.getClass();
            ImageView imageView = itemTravelBinding.f51434j;
            TravelListAdapter travelListAdapter = this.f56431b;
            if (travelListAdapter.f56429b && getBindingAdapterPosition() == 1) {
                this.itemView.setBackgroundResource(R.drawable.background_radius_8dp_vvn);
                imageView.setImageResource(R.drawable.divider_travel_white_white);
                return;
            }
            if (travelListAdapter.f56429b) {
                this.itemView.setBackgroundResource(R.drawable.background_radius_8dp_pale);
                imageView.setImageResource(R.drawable.divider_travel_white_pinkish);
                return;
            }
            int bindingAdapterPosition = getBindingAdapterPosition();
            View view = this.itemView;
            if (bindingAdapterPosition == 0) {
                view.setBackgroundResource(R.drawable.background_radius_8dp_vvn);
                imageView.setImageResource(R.drawable.divider_travel_off_white_white);
            } else {
                view.setBackgroundResource(R.drawable.background_radius_8dp_white);
                imageView.setImageResource(R.drawable.divider_travel_off_white_pinkish);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$Companion;", "", "", "ITEM_TYPE_HEADER", "I", "ITEM_TYPE_FLIGHT", "ITEM_TYPE_TRAIN", "ITEM_TYPE_HOTEL", "", "TRAVEL_TITLE_FORMAT", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$FlightViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;", "Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class FlightViewHolder extends AbstractViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ItemTravelBinding f56432c;

        /* JADX WARN: Illegal instructions before constructor call */
        public FlightViewHolder(TravelListAdapter travelListAdapter, ItemTravelBinding itemTravelBinding) {
            itemTravelBinding.getClass();
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            linearLayout.getClass();
            super(travelListAdapter, linearLayout);
            this.f56432c = itemTravelBinding;
            ViewExtKt.d(linearLayout, new m21(travelListAdapter, this, 19));
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter.AbstractViewHolder
        public final void a(Travel travel) {
            Date date;
            ItemTravelBinding itemTravelBinding = this.f56432c;
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            TextView textView = itemTravelBinding.f51430e;
            TextView textView2 = itemTravelBinding.f51429c;
            Context context = linearLayout.getContext();
            ImageView imageView = itemTravelBinding.f51433i;
            imageView.setImageResource(R.drawable.ic_flight);
            imageView.setContentDescription(context.getString(R.string.plane));
            if (travel instanceof Flight) {
                TextView textView3 = itemTravelBinding.g;
                Flight flight = (Flight) travel;
                FlightAirport flightAirport = flight.d;
                textView3.setText(flight.f67360f);
                itemTravelBinding.f51432h.setText(String.format("%s - %s", Arrays.copyOf(new Object[]{flightAirport != null ? flightAirport.f67362b : null, flightAirport != null ? flightAirport.f67361a : null}, 2)));
                if (flightAirport != null && (date = flightAirport.f67363c) != null) {
                    textView2.setText(DateTimeUtils.n(date, context));
                    textView2.setContentDescription(context.getString(R.string.departure) + " " + DateTimeUtils.n(date, context));
                    textView.setText(DateTimeUtils.o(date, context));
                    textView.setContentDescription(context.getString(R.string.hour) + " " + DateTimeUtils.o(date, context));
                }
                b(itemTravelBinding);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HeaderViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;", "Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelHeaderBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class HeaderViewHolder extends AbstractViewHolder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ItemTravelHeaderBinding f56433c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HeaderViewHolder(TravelListAdapter travelListAdapter, ItemTravelHeaderBinding itemTravelHeaderBinding) {
            super(travelListAdapter, itemTravelHeaderBinding.f51435b);
            itemTravelHeaderBinding.getClass();
            this.f56433c = itemTravelHeaderBinding;
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter.AbstractViewHolder
        public final void a(Travel travel) {
            this.f56433c.f51436c.setAccessibilityHeading(true);
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$HotelViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;", "Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class HotelViewHolder extends AbstractViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ItemTravelBinding f56434c;

        /* JADX WARN: Illegal instructions before constructor call */
        public HotelViewHolder(TravelListAdapter travelListAdapter, ItemTravelBinding itemTravelBinding) {
            itemTravelBinding.getClass();
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            linearLayout.getClass();
            super(travelListAdapter, linearLayout);
            this.f56434c = itemTravelBinding;
            ViewExtKt.d(linearLayout, new m21(travelListAdapter, this, 20));
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter.AbstractViewHolder
        public final void a(Travel travel) {
            ItemTravelBinding itemTravelBinding = this.f56434c;
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            TextView textView = itemTravelBinding.f51430e;
            TextView textView2 = itemTravelBinding.f51429c;
            Context context = linearLayout.getContext();
            ImageView imageView = itemTravelBinding.f51433i;
            imageView.setImageResource(R.drawable.ic_hotel);
            imageView.setContentDescription(context.getString(R.string.hotel));
            if (travel instanceof Hotel) {
                Hotel hotel = (Hotel) travel;
                itemTravelBinding.f51432h.setText(hotel.d);
                TextView textView3 = itemTravelBinding.g;
                HotelPlace hotelPlace = hotel.f67366e;
                textView3.setText(hotelPlace != null ? hotelPlace.d : null);
                Date date = hotel.f67367f;
                if (date != null) {
                    textView2.setText(DateTimeUtils.n(date, context));
                    textView2.setContentDescription(context.getString(R.string.check_in) + " " + DateTimeUtils.n(date, context));
                }
                Date date2 = hotel.g;
                if (date2 != null) {
                    textView.setText(DateTimeUtils.n(date2, context));
                    textView.setContentDescription(context.getString(R.string.check_out) + " " + DateTimeUtils.n(date2, context));
                }
                itemTravelBinding.d.setText(context.getString(R.string.check_in));
                itemTravelBinding.f51431f.setText(context.getString(R.string.check_out));
                b(itemTravelBinding);
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$TrainViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;", "Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListAdapter;Lcom/vuitton/android/presentation/databinding/ItemTravelBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class TrainViewHolder extends AbstractViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ItemTravelBinding f56435c;

        /* JADX WARN: Illegal instructions before constructor call */
        public TrainViewHolder(TravelListAdapter travelListAdapter, ItemTravelBinding itemTravelBinding) {
            itemTravelBinding.getClass();
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            linearLayout.getClass();
            super(travelListAdapter, linearLayout);
            this.f56435c = itemTravelBinding;
            ViewExtKt.d(linearLayout, new m21(travelListAdapter, this, 21));
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListAdapter.AbstractViewHolder
        public final void a(Travel travel) {
            ItemTravelBinding itemTravelBinding = this.f56435c;
            LinearLayout linearLayout = itemTravelBinding.f51428b;
            TextView textView = itemTravelBinding.f51430e;
            TextView textView2 = itemTravelBinding.f51429c;
            Context context = linearLayout.getContext();
            ImageView imageView = itemTravelBinding.f51433i;
            imageView.setImageResource(R.drawable.ic_train);
            imageView.setContentDescription(context.getString(R.string.train));
            if (travel instanceof Train) {
                Train train = (Train) travel;
                itemTravelBinding.g.setText(train.d);
                TextView textView3 = itemTravelBinding.f51432h;
                Station station = train.f67376e;
                textView3.setText(String.format("%s - %s", Arrays.copyOf(new Object[]{station != null ? station.f67373b : null, station != null ? station.f67372a : null}, 2)));
                Date date = train.f67377f;
                if (date != null) {
                    textView2.setText(DateTimeUtils.n(date, context));
                    textView2.setContentDescription(context.getString(R.string.departure) + " " + DateTimeUtils.n(date, context));
                    textView.setText(DateTimeUtils.o(date, context));
                    textView.setContentDescription(context.getString(R.string.hour) + " " + DateTimeUtils.o(date, context));
                }
                b(itemTravelBinding);
            }
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56436a;

        static {
            int[] iArr = new int[TravelType.values().length];
            try {
                iArr[TravelType.FLIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TravelType.TRAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TravelType.HOTEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56436a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public TravelListAdapter(boolean z, Function1<? super Travel, Unit> function1) {
        function1.getClass();
        this.f56429b = z;
        this.f56430c = function1;
        this.d = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        boolean z = this.f56429b;
        int size = this.d.size();
        return z ? size + 1 : size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i2) {
        boolean z = this.f56429b;
        if (z && i2 == 0) {
            return 1;
        }
        if (z) {
            i2--;
        }
        int i3 = WhenMappings.f56436a[((Travel) this.d.get(i2)).f67382b.ordinal()];
        if (i3 == 1) {
            return 2;
        }
        if (i3 == 2) {
            return 3;
        }
        if (i3 == 3) {
            return 4;
        }
        v40.g();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        Travel travel;
        AbstractViewHolder abstractViewHolder = (AbstractViewHolder) viewHolder;
        abstractViewHolder.getClass();
        boolean z = this.f56429b;
        if (z && i2 == 0) {
            travel = null;
        } else {
            if (z) {
                i2--;
            }
            travel = (Travel) this.d.get(i2);
        }
        abstractViewHolder.a(travel);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        if (i2 == 2) {
            return new FlightViewHolder(this, ItemTravelBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
        }
        if (i2 == 3) {
            return new TrainViewHolder(this, ItemTravelBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
        }
        if (i2 == 4) {
            return new HotelViewHolder(this, ItemTravelBinding.a(LayoutInflater.from(viewGroup.getContext()), viewGroup));
        }
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_travel_header, viewGroup, false);
        if (viewInflate != null) {
            TextView textView = (TextView) viewInflate;
            return new HeaderViewHolder(this, new ItemTravelHeaderBinding(textView, textView));
        }
        r81.d("rootView");
        return null;
    }

    public /* synthetic */ TravelListAdapter(boolean z, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, function1);
    }
}
