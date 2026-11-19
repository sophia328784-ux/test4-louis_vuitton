package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.dynatrace.android.callback.Callback;
import com.linkplay.core.device.LPDevice;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemTrunkSimpleRoomDetailBinding;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.RoomDetailDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;
import defpackage.r81;
import defpackage.v40;
import java.util.ArrayList;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0007\bB\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;", "listener", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;)V", "ViewHolder", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RoomDetailDeviceListAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Listener f56466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56467c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void f(LPDevice lPDevice);

        void i(LPDevice lPDevice);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailDeviceListAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleRoomDetailBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f56468c = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemTrunkSimpleRoomDetailBinding f56469b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f56470a;

            static {
                int[] iArr = new int[TrunkGeneralHelper.SpeakerTrunkType.values().length];
                try {
                    iArr[TrunkGeneralHelper.SpeakerTrunkType.PM.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TrunkGeneralHelper.SpeakerTrunkType.GM.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f56470a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ItemTrunkSimpleRoomDetailBinding itemTrunkSimpleRoomDetailBinding) {
            super(itemTrunkSimpleRoomDetailBinding.f51446b);
            itemTrunkSimpleRoomDetailBinding.getClass();
            this.f56469b = itemTrunkSimpleRoomDetailBinding;
        }
    }

    public RoomDetailDeviceListAdapter(Listener listener) {
        listener.getClass();
        this.f56466b = listener;
        this.f56467c = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56467c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        String string;
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56467c.get(i2);
        obj.getClass();
        final WifiTrunkDevice.SimpleSpeaker simpleSpeaker = (WifiTrunkDevice.SimpleSpeaker) obj;
        final Listener listener = this.f56466b;
        listener.getClass();
        ItemTrunkSimpleRoomDetailBinding itemTrunkSimpleRoomDetailBinding = viewHolder2.f56469b;
        FixedAspectRatioImageView fixedAspectRatioImageView = itemTrunkSimpleRoomDetailBinding.d;
        FrameLayout frameLayout = itemTrunkSimpleRoomDetailBinding.f51446b;
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        fixedAspectRatioImageView.setImageResource(TrunkGeneralHelper.a(simpleSpeaker.f56558c));
        TextView textView = itemTrunkSimpleRoomDetailBinding.g;
        LPDevice lPDevice = simpleSpeaker.f56557b;
        TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB = TrunkGeneralHelper.b(lPDevice);
        int i3 = speakerTrunkTypeB == null ? -1 : ViewHolder.WhenMappings.f56470a[speakerTrunkTypeB.ordinal()];
        final int i4 = 1;
        if (i3 == -1) {
            string = frameLayout.getContext().getString(R.string.trunk_speaker);
        } else if (i3 == 1) {
            string = frameLayout.getContext().getString(R.string.trunk_speaker_pm);
        } else {
            if (i3 != 2) {
                v40.g();
                return;
            }
            string = frameLayout.getContext().getString(R.string.trunk_speaker_gm);
        }
        textView.setText(string);
        itemTrunkSimpleRoomDetailBinding.f51449f.setText(lPDevice.getDeviceStatus().getFriendlyName());
        final int i5 = 0;
        itemTrunkSimpleRoomDetailBinding.f51448e.setOnClickListener(new View.OnClickListener() { // from class: nt0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i6 = i5;
                WifiTrunkDevice.SimpleSpeaker simpleSpeaker2 = simpleSpeaker;
                RoomDetailDeviceListAdapter.Listener listener2 = listener;
                switch (i6) {
                    case 0:
                        int i7 = RoomDetailDeviceListAdapter.ViewHolder.f56468c;
                        Callback.n(view);
                        try {
                            listener2.f(simpleSpeaker2.f56557b);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                    default:
                        int i8 = RoomDetailDeviceListAdapter.ViewHolder.f56468c;
                        Callback.n(view);
                        try {
                            listener2.i(simpleSpeaker2.f56557b);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                }
            }
        });
        itemTrunkSimpleRoomDetailBinding.f51447c.setOnClickListener(new View.OnClickListener() { // from class: nt0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i6 = i4;
                WifiTrunkDevice.SimpleSpeaker simpleSpeaker2 = simpleSpeaker;
                RoomDetailDeviceListAdapter.Listener listener2 = listener;
                switch (i6) {
                    case 0:
                        int i7 = RoomDetailDeviceListAdapter.ViewHolder.f56468c;
                        Callback.n(view);
                        try {
                            listener2.f(simpleSpeaker2.f56557b);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                    default:
                        int i8 = RoomDetailDeviceListAdapter.ViewHolder.f56468c;
                        Callback.n(view);
                        try {
                            listener2.i(simpleSpeaker2.f56557b);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view);
                        }
                }
            }
        });
        TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB2 = TrunkGeneralHelper.b(lPDevice);
        TrunkGeneralHelper.SpeakerTrunkType speakerTrunkType = TrunkGeneralHelper.SpeakerTrunkType.PM;
        TrunkBatteryLevelView trunkBatteryLevelView = itemTrunkSimpleRoomDetailBinding.f51450h;
        if (speakerTrunkTypeB2 != speakerTrunkType) {
            trunkBatteryLevelView.setVisibility(8);
        } else {
            trunkBatteryLevelView.setVisibility(0);
            trunkBatteryLevelView.setBatteryLevel(lPDevice.getDeviceStatus().getBatteryPercent());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_trunk_simple_room_detail, viewGroup, false);
        int i3 = R.id.btn_room_remove_device;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.btn_room_remove_device, viewInflate);
        if (imageView != null) {
            i3 = R.id.room_device_image;
            FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.room_device_image, viewInflate);
            if (fixedAspectRatioImageView != null) {
                i3 = R.id.room_device_layout;
                CardView cardView = (CardView) ViewBindings.a(R.id.room_device_layout, viewInflate);
                if (cardView != null) {
                    i3 = R.id.room_device_subtitle;
                    TextView textView = (TextView) ViewBindings.a(R.id.room_device_subtitle, viewInflate);
                    if (textView != null) {
                        i3 = R.id.room_device_title;
                        TextView textView2 = (TextView) ViewBindings.a(R.id.room_device_title, viewInflate);
                        if (textView2 != null) {
                            i3 = R.id.speaker_trunk_battery_level;
                            TrunkBatteryLevelView trunkBatteryLevelView = (TrunkBatteryLevelView) ViewBindings.a(R.id.speaker_trunk_battery_level, viewInflate);
                            if (trunkBatteryLevelView != null) {
                                return new ViewHolder(new ItemTrunkSimpleRoomDetailBinding((FrameLayout) viewInflate, imageView, fixedAspectRatioImageView, cardView, textView, textView2, trunkBatteryLevelView));
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        return null;
    }
}
