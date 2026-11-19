package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist;

import android.content.ClipData;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemTrunkRoomBinding;
import com.vuitton.android.presentation.databinding.ItemTrunkSimpleBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.devicelist.WifiDeviceListAdapter;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.model.WifiTrunkDevice;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;
import defpackage.c61;
import defpackage.o51;
import defpackage.pq0;
import defpackage.r81;
import defpackage.v40;
import defpackage.v7;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\t\n\u000b\fB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;", "listener", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;)V", "Companion", "SpeakerSimpleCard", "SpeakerRoomCard", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WifiDeviceListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f56530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Listener f56531c;
    public final ArrayList d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Companion;", "", "", "VIEW_TYPE_SIMPLE_SPEAKER", "I", "VIEW_TYPE_ROOM_SPEAKER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void m(WifiTrunkDevice wifiTrunkDevice);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerRoomCard;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemTrunkRoomBinding;", "binding", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;", "listener", "<init>", "(Lcom/vuitton/android/presentation/databinding/ItemTrunkRoomBinding;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SpeakerRoomCard extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemTrunkRoomBinding f56532b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Listener f56533c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SpeakerRoomCard(ItemTrunkRoomBinding itemTrunkRoomBinding, Listener listener) {
            super(itemTrunkRoomBinding.f51437b);
            itemTrunkRoomBinding.getClass();
            listener.getClass();
            this.f56532b = itemTrunkRoomBinding;
            this.f56533c = listener;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerSimpleCard;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleBinding;", "binding", "Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;", "listener", "<init>", "(Lcom/vuitton/android/presentation/databinding/ItemTrunkSimpleBinding;Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SpeakerSimpleCard extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemTrunkSimpleBinding f56534b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Listener f56535c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f56536a;

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
                f56536a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SpeakerSimpleCard(ItemTrunkSimpleBinding itemTrunkSimpleBinding, Listener listener) {
            super(itemTrunkSimpleBinding.f51441b);
            itemTrunkSimpleBinding.getClass();
            listener.getClass();
            this.f56534b = itemTrunkSimpleBinding;
            this.f56535c = listener;
        }
    }

    static {
        new Companion(null);
    }

    public WifiDeviceListAdapter(Context context, Listener listener) {
        context.getClass();
        listener.getClass();
        this.f56530b = context;
        this.f56531c = listener;
        this.d = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i2) {
        WifiTrunkDevice wifiTrunkDevice = (WifiTrunkDevice) this.d.get(i2);
        if (wifiTrunkDevice instanceof WifiTrunkDevice.SimpleSpeaker) {
            return 0;
        }
        if (wifiTrunkDevice instanceof WifiTrunkDevice.RoomSpeaker) {
            return 1;
        }
        v40.g();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        boolean z = viewHolder instanceof SpeakerSimpleCard;
        Context context = this.f56530b;
        ArrayList arrayList = this.d;
        if (!z) {
            if (viewHolder instanceof SpeakerRoomCard) {
                SpeakerRoomCard speakerRoomCard = (SpeakerRoomCard) viewHolder;
                Object obj = arrayList.get(i2);
                obj.getClass();
                WifiTrunkDevice.RoomSpeaker roomSpeaker = (WifiTrunkDevice.RoomSpeaker) obj;
                context.getClass();
                int size = roomSpeaker.f56556c.size() + 1;
                ItemTrunkRoomBinding itemTrunkRoomBinding = speakerRoomCard.f56532b;
                itemTrunkRoomBinding.f51438c.setText(context.getString(R.string.speaker_trunk_room_device_count, Integer.valueOf(size)));
                itemTrunkRoomBinding.f51440f.setText(roomSpeaker.f56555b.getDeviceStatus().getFriendlyName());
                itemTrunkRoomBinding.f51439e.setText(CollectionsKt.K(roomSpeaker.f56556c, null, null, null, new o51(7), 31));
                ViewExtKt.d(itemTrunkRoomBinding.d, new c61(speakerRoomCard, roomSpeaker, 7));
                return;
            }
            return;
        }
        final SpeakerSimpleCard speakerSimpleCard = (SpeakerSimpleCard) viewHolder;
        Object obj2 = arrayList.get(i2);
        obj2.getClass();
        WifiTrunkDevice.SimpleSpeaker simpleSpeaker = (WifiTrunkDevice.SimpleSpeaker) obj2;
        ItemTrunkSimpleBinding itemTrunkSimpleBinding = speakerSimpleCard.f56534b;
        context.getClass();
        TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
        LPDevice lPDevice = simpleSpeaker.f56557b;
        TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB = TrunkGeneralHelper.b(lPDevice);
        int i3 = speakerTrunkTypeB == null ? -1 : SpeakerSimpleCard.WhenMappings.f56536a[speakerTrunkTypeB.ordinal()];
        if (i3 == 1) {
            TextView textView = itemTrunkSimpleBinding.g;
            TrunkBatteryLevelView trunkBatteryLevelView = itemTrunkSimpleBinding.f51445h;
            textView.setText(context.getString(R.string.trunk_speaker_pm));
            trunkBatteryLevelView.setVisibility(0);
            trunkBatteryLevelView.setBatteryLevel(lPDevice.getDeviceStatus().getBatteryPercent());
        } else if (i3 == 2) {
            itemTrunkSimpleBinding.g.setText(context.getString(R.string.trunk_speaker_gm));
            itemTrunkSimpleBinding.f51445h.setVisibility(8);
        }
        ImageView imageView = itemTrunkSimpleBinding.d;
        CardView cardView = itemTrunkSimpleBinding.f51443e;
        imageView.setImageResource(TrunkGeneralHelper.a(simpleSpeaker.f56558c));
        TextView textView2 = itemTrunkSimpleBinding.f51444f;
        String friendlyName = lPDevice.getDeviceStatus().getFriendlyName();
        if (friendlyName == null) {
            friendlyName = lPDevice.getUpnpUUID();
        }
        textView2.setText(friendlyName);
        ViewExtKt.d(cardView, new c61(speakerSimpleCard, simpleSpeaker, 8));
        cardView.setOnLongClickListener(new View.OnLongClickListener() { // from class: x61
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                int i4 = WifiDeviceListAdapter.SpeakerSimpleCard.d;
                view.startDragAndDrop(ClipData.newPlainText("", ""), new View.DragShadowBuilder(view), view, 0);
                speakerSimpleCard.f56534b.f51442c.setVisibility(0);
                return true;
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        Listener listener = this.f56531c;
        if (i2 != 0) {
            if (i2 != 1) {
                v7.h(pq0.k(i2, "No type that matches viewType: "));
                return null;
            }
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_trunk_room, viewGroup, false);
            int i3 = R.id.speaker_room_count;
            TextView textView = (TextView) ViewBindings.a(R.id.speaker_room_count, viewInflate);
            if (textView != null) {
                i3 = R.id.speaker_room_item;
                if (((LinearLayout) ViewBindings.a(R.id.speaker_room_item, viewInflate)) != null) {
                    i3 = R.id.speaker_room_layout;
                    CardView cardView = (CardView) ViewBindings.a(R.id.speaker_room_layout, viewInflate);
                    if (cardView != null) {
                        i3 = R.id.speaker_room_subtitle;
                        TextView textView2 = (TextView) ViewBindings.a(R.id.speaker_room_subtitle, viewInflate);
                        if (textView2 != null) {
                            i3 = R.id.speaker_room_title;
                            TextView textView3 = (TextView) ViewBindings.a(R.id.speaker_room_title, viewInflate);
                            if (textView3 != null) {
                                return new SpeakerRoomCard(new ItemTrunkRoomBinding((FrameLayout) viewInflate, textView, cardView, textView2, textView3), listener);
                            }
                        }
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
            return null;
        }
        View viewInflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_trunk_simple, viewGroup, false);
        int i4 = R.id.overlay_layout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.overlay_layout, viewInflate2);
        if (frameLayout != null) {
            i4 = R.id.speaker_simple_image;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.speaker_simple_image, viewInflate2);
            if (imageView != null) {
                i4 = R.id.speaker_simple_item;
                if (((LinearLayout) ViewBindings.a(R.id.speaker_simple_item, viewInflate2)) != null) {
                    i4 = R.id.speaker_simple_layout;
                    CardView cardView2 = (CardView) ViewBindings.a(R.id.speaker_simple_layout, viewInflate2);
                    if (cardView2 != null) {
                        i4 = R.id.speaker_simple_subtitle;
                        TextView textView4 = (TextView) ViewBindings.a(R.id.speaker_simple_subtitle, viewInflate2);
                        if (textView4 != null) {
                            i4 = R.id.speaker_simple_title;
                            TextView textView5 = (TextView) ViewBindings.a(R.id.speaker_simple_title, viewInflate2);
                            if (textView5 != null) {
                                i4 = R.id.speaker_trunk_battery_level;
                                TrunkBatteryLevelView trunkBatteryLevelView = (TrunkBatteryLevelView) ViewBindings.a(R.id.speaker_trunk_battery_level, viewInflate2);
                                if (trunkBatteryLevelView != null) {
                                    return new SpeakerSimpleCard(new ItemTrunkSimpleBinding((FrameLayout) viewInflate2, frameLayout, imageView, cardView2, textView4, textView5, trunkBatteryLevelView), listener);
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i4)));
        return null;
    }
}
