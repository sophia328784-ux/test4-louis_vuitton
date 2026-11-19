package com.vuitton.android.presentation.screen.connectivity.home;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.lightup.sdk.device.enums.LightupDeviceType;
import com.linkplay.core.device.LPDevice;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemConnectivityLightUpBinding;
import com.vuitton.android.presentation.databinding.ItemConnectivityTrunkSpeakerBinding;
import com.vuitton.android.presentation.databinding.ItemConnectivityWatchBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import com.vuitton.android.presentation.screen.connectivity.ConnectedObjectUiModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
import com.vuitton.android.presentation.screen.connectivity.TrunkSpeakerConnectivityItem;
import com.vuitton.android.presentation.screen.connectivity.WatchUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.manager.TrunkGeneralHelper;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.TrunkBatteryLevelView;
import com.vuitton.android.presentation.utils.WatchUtilsKt;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.bp;
import defpackage.k3;
import defpackage.md;
import defpackage.r81;
import defpackage.v40;
import defpackage.vg;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u000f\u0010\u0011\u0012\u0013\u0014B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;", "listener", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "profile", "", "userId", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;", "", "onLightUpTrackingHit", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V", "Companion", "AbstractViewHolder", "WatchViewHolder", "LightUpViewHolder", "TrunkSpeakerViewHolder", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ConnectivityAdapter extends RecyclerView.Adapter<AbstractViewHolder> {
    public static final /* synthetic */ int g = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Listener f56041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Profile f56042c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function1 f56043e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f56044f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Landroid/view/View;", "itemView", "<init>", "(Landroid/view/View;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class AbstractViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AbstractViewHolder(View view) {
            super(view);
            view.getClass();
        }

        public abstract void a(ConnectedObjectUiModel connectedObjectUiModel);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Companion;", "", "", "ITEM_TYPE_WATCH", "I", "ITEM_TYPE_LIGHT_UP", "ITEM_TYPE_TRUNK_SPEAKER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$LightUpViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityLightUpBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class LightUpViewHolder extends AbstractViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemConnectivityLightUpBinding f56045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ConnectivityAdapter f56046c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f56047a;

            static {
                int[] iArr = new int[LVLightUpDeviceType.values().length];
                try {
                    iArr[LVLightUpDeviceType.KEEPALL.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LVLightUpDeviceType.X408PAIR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f56047a = iArr;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public LightUpViewHolder(ConnectivityAdapter connectivityAdapter, ItemConnectivityLightUpBinding itemConnectivityLightUpBinding) {
            itemConnectivityLightUpBinding.getClass();
            this.f56046c = connectivityAdapter;
            CardView cardView = itemConnectivityLightUpBinding.f51398b;
            cardView.getClass();
            super(cardView);
            this.f56045b = itemConnectivityLightUpBinding;
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter.AbstractViewHolder
        public final void a(ConnectedObjectUiModel connectedObjectUiModel) {
            LightupDeviceType lightupDeviceType;
            int i2;
            connectedObjectUiModel.getClass();
            if (connectedObjectUiModel instanceof LightUpProductUiModel) {
                LightUpProductUiModel lightUpProductUiModel = (LightUpProductUiModel) connectedObjectUiModel;
                int i3 = WhenMappings.f56047a[lightUpProductUiModel.f55961c.ordinal()];
                ItemConnectivityLightUpBinding itemConnectivityLightUpBinding = this.f56045b;
                if (i3 == 1) {
                    lightupDeviceType = LightupDeviceType.KEEPALL;
                    itemConnectivityLightUpBinding.f51400e.setText(itemConnectivityLightUpBinding.f51398b.getContext().getString(R.string.connectivity_keepall_product_name));
                    i2 = 2131231657;
                } else if (i3 != 2) {
                    v40.g();
                    return;
                } else {
                    lightupDeviceType = LightupDeviceType.X408PAIR;
                    itemConnectivityLightUpBinding.f51400e.setText(itemConnectivityLightUpBinding.f51398b.getContext().getString(R.string.light_up_objects_trainers));
                    i2 = 2131231659;
                }
                LightupDeviceType lightupDeviceType2 = lightupDeviceType;
                itemConnectivityLightUpBinding.f51401f.setText(lightUpProductUiModel.g);
                itemConnectivityLightUpBinding.f51399c.setImageResource(i2);
                CardView cardView = itemConnectivityLightUpBinding.f51398b;
                ConnectivityAdapter connectivityAdapter = this.f56046c;
                ViewExtKt.d(cardView, new k3(connectivityAdapter, connectedObjectUiModel, itemConnectivityLightUpBinding, lightupDeviceType2, 5));
                ViewExtKt.d(itemConnectivityLightUpBinding.d, new vg(connectivityAdapter, connectedObjectUiModel, 15));
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void l(ConnectedObjectUiModel connectedObjectUiModel);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$TrunkSpeakerViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityTrunkSpeakerBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class TrunkSpeakerViewHolder extends AbstractViewHolder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f56048c = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemConnectivityTrunkSpeakerBinding f56049b;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f56050a;

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
                f56050a = iArr;
            }
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public TrunkSpeakerViewHolder(ConnectivityAdapter connectivityAdapter, ItemConnectivityTrunkSpeakerBinding itemConnectivityTrunkSpeakerBinding) {
            itemConnectivityTrunkSpeakerBinding.getClass();
            CardView cardView = itemConnectivityTrunkSpeakerBinding.f51402b;
            cardView.getClass();
            super(cardView);
            this.f56049b = itemConnectivityTrunkSpeakerBinding;
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter.AbstractViewHolder
        public final void a(ConnectedObjectUiModel connectedObjectUiModel) {
            connectedObjectUiModel.getClass();
            if (connectedObjectUiModel instanceof TrunkSpeakerConnectivityItem) {
                TrunkSpeakerConnectivityItem trunkSpeakerConnectivityItem = (TrunkSpeakerConnectivityItem) connectedObjectUiModel;
                ArrayList arrayList = trunkSpeakerConnectivityItem.f55967b;
                int size = arrayList.size();
                ItemConnectivityTrunkSpeakerBinding itemConnectivityTrunkSpeakerBinding = this.f56049b;
                if (size == 1) {
                    Object obj = arrayList.get(0);
                    obj.getClass();
                    LPDevice lPDevice = (LPDevice) obj;
                    TrunkGeneralHelper trunkGeneralHelper = TrunkGeneralHelper.f56577a;
                    TrunkGeneralHelper.SpeakerTrunkType speakerTrunkTypeB = TrunkGeneralHelper.b(lPDevice);
                    int i2 = speakerTrunkTypeB == null ? -1 : WhenMappings.f56050a[speakerTrunkTypeB.ordinal()];
                    if (i2 == 1) {
                        TextView textView = itemConnectivityTrunkSpeakerBinding.f51404e;
                        TrunkBatteryLevelView trunkBatteryLevelView = itemConnectivityTrunkSpeakerBinding.f51405f;
                        textView.setText(itemConnectivityTrunkSpeakerBinding.f51402b.getContext().getString(R.string.trunk_speaker_pm));
                        trunkBatteryLevelView.setVisibility(0);
                        trunkBatteryLevelView.setBatteryLevel(lPDevice.getDeviceStatus().getBatteryPercent());
                    } else if (i2 == 2) {
                        itemConnectivityTrunkSpeakerBinding.f51404e.setText(itemConnectivityTrunkSpeakerBinding.f51402b.getContext().getString(R.string.trunk_speaker_gm));
                        itemConnectivityTrunkSpeakerBinding.f51405f.setVisibility(8);
                    }
                    itemConnectivityTrunkSpeakerBinding.f51403c.setImageResource(TrunkGeneralHelper.a(TrunkGeneralHelper.b(lPDevice)));
                    itemConnectivityTrunkSpeakerBinding.d.setText(lPDevice.getDeviceStatus().getFriendlyName());
                } else {
                    int size2 = arrayList.size();
                    itemConnectivityTrunkSpeakerBinding.f51403c.setImageResource(2131231612);
                    TextView textView2 = itemConnectivityTrunkSpeakerBinding.f51404e;
                    CardView cardView = itemConnectivityTrunkSpeakerBinding.f51402b;
                    textView2.setText(cardView.getContext().getString(R.string.trunk_speaker));
                    itemConnectivityTrunkSpeakerBinding.d.setText(cardView.getContext().getString(R.string.speaker_trunk_room_device_count, Integer.valueOf(size2)));
                }
                ViewExtKt.d(itemConnectivityTrunkSpeakerBinding.f51402b, new vg(trunkSpeakerConnectivityItem, this, 16));
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$WatchViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter$AbstractViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityAdapter;Lcom/vuitton/android/presentation/databinding/ItemConnectivityWatchBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class WatchViewHolder extends AbstractViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemConnectivityWatchBinding f56051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ConnectivityAdapter f56052c;

        /* JADX WARN: Illegal instructions before constructor call */
        public WatchViewHolder(ConnectivityAdapter connectivityAdapter, ItemConnectivityWatchBinding itemConnectivityWatchBinding) {
            itemConnectivityWatchBinding.getClass();
            this.f56052c = connectivityAdapter;
            CardView cardView = itemConnectivityWatchBinding.f51406b;
            cardView.getClass();
            super(cardView);
            this.f56051b = itemConnectivityWatchBinding;
        }

        @Override // com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter.AbstractViewHolder
        public final void a(ConnectedObjectUiModel connectedObjectUiModel) {
            Profile profile;
            connectedObjectUiModel.getClass();
            if (connectedObjectUiModel instanceof WatchUiModel) {
                WatchUiModel watchUiModel = (WatchUiModel) connectedObjectUiModel;
                ItemConnectivityWatchBinding itemConnectivityWatchBinding = this.f56051b;
                TextView textView = itemConnectivityWatchBinding.f51409f;
                CardView cardView = itemConnectivityWatchBinding.f51406b;
                textView.setText(watchUiModel.f55973f);
                FixedAspectRatioImageView fixedAspectRatioImageView = itemConnectivityWatchBinding.d;
                String str = watchUiModel.f55975i;
                int i2 = watchUiModel.f55974h;
                XmlUiKt.a(fixedAspectRatioImageView, str, i2, i2, 120);
                TextView textView2 = itemConnectivityWatchBinding.f51408e;
                int i3 = watchUiModel.f55976j;
                ConnectivityAdapter connectivityAdapter = this.f56052c;
                String strA = null;
                if (i3 < 2) {
                    Profile profile2 = connectivityAdapter.f56042c;
                    if (profile2 != null) {
                        Context context = cardView.getContext();
                        context.getClass();
                        strA = WatchUtilsKt.a(context, watchUiModel.d, profile2);
                    }
                } else if (!StringsKt.w(connectivityAdapter.d) && (profile = connectivityAdapter.f56042c) != null) {
                    Context context2 = cardView.getContext();
                    context2.getClass();
                    strA = WatchUtilsKt.b(context2, connectivityAdapter.d, profile);
                }
                textView2.setText(strA);
                ViewExtKt.d(cardView, new vg(itemConnectivityWatchBinding, watchUiModel, 17));
                ViewExtKt.d(itemConnectivityWatchBinding.f51407c, new vg(connectivityAdapter, watchUiModel, 18));
            }
        }
    }

    static {
        new Companion(null);
    }

    public ConnectivityAdapter(Listener listener, Profile profile, String str, Function1<? super LVLightUpTrackingUiModel, Unit> function1) {
        listener.getClass();
        str.getClass();
        function1.getClass();
        this.f56041b = listener;
        this.f56042c = profile;
        this.d = str;
        this.f56043e = function1;
        this.f56044f = new ArrayList();
    }

    public final TrunkSpeakerConnectivityItem a() {
        Object next;
        Iterator it = this.f56044f.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((ConnectedObjectUiModel) next) instanceof TrunkSpeakerConnectivityItem) {
                return (TrunkSpeakerConnectivityItem) next;
            }
        }
        next = null;
        return (TrunkSpeakerConnectivityItem) next;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56044f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i2) {
        ConnectedObjectUiModel connectedObjectUiModel = (ConnectedObjectUiModel) this.f56044f.get(i2);
        if (connectedObjectUiModel instanceof WatchUiModel) {
            return 1;
        }
        if (connectedObjectUiModel instanceof LightUpProductUiModel) {
            return 2;
        }
        if (connectedObjectUiModel instanceof TrunkSpeakerConnectivityItem) {
            return 3;
        }
        v40.g();
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        AbstractViewHolder abstractViewHolder = (AbstractViewHolder) viewHolder;
        abstractViewHolder.getClass();
        Object obj = this.f56044f.get(i2);
        obj.getClass();
        abstractViewHolder.a((ConnectedObjectUiModel) obj);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        if (i2 == 1) {
            View viewInflate = layoutInflaterFrom.inflate(R.layout.item_connectivity_watch, viewGroup, false);
            int i3 = R.id.image_remove_watch;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.image_remove_watch, viewInflate);
            if (imageView != null) {
                i3 = R.id.image_watch;
                FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_watch, viewInflate);
                if (fixedAspectRatioImageView != null) {
                    i3 = R.id.text_watch_flight_address;
                    TextView textView = (TextView) ViewBindings.a(R.id.text_watch_flight_address, viewInflate);
                    if (textView != null) {
                        i3 = R.id.text_watch_name;
                        TextView textView2 = (TextView) ViewBindings.a(R.id.text_watch_name, viewInflate);
                        if (textView2 != null) {
                            return new WatchViewHolder(this, new ItemConnectivityWatchBinding(imageView, textView, textView2, (CardView) viewInflate, fixedAspectRatioImageView));
                        }
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
            return null;
        }
        if (i2 == 2) {
            View viewInflate2 = layoutInflaterFrom.inflate(R.layout.item_connectivity_light_up, viewGroup, false);
            int i4 = R.id.image_light_up;
            FixedAspectRatioImageView fixedAspectRatioImageView2 = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_light_up, viewInflate2);
            if (fixedAspectRatioImageView2 != null) {
                i4 = R.id.image_remove_light_up;
                ImageView imageView2 = (ImageView) ViewBindings.a(R.id.image_remove_light_up, viewInflate2);
                if (imageView2 != null) {
                    i4 = R.id.text_light_up_name;
                    TextView textView3 = (TextView) ViewBindings.a(R.id.text_light_up_name, viewInflate2);
                    if (textView3 != null) {
                        i4 = R.id.text_light_up_preset;
                        TextView textView4 = (TextView) ViewBindings.a(R.id.text_light_up_preset, viewInflate2);
                        if (textView4 != null) {
                            return new LightUpViewHolder(this, new ItemConnectivityLightUpBinding(imageView2, textView3, textView4, (CardView) viewInflate2, fixedAspectRatioImageView2));
                        }
                    }
                }
            }
            r81.d("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i4)));
            return null;
        }
        if (i2 != 3) {
            md.k("Unhandled view type");
            return null;
        }
        View viewInflate3 = layoutInflaterFrom.inflate(R.layout.item_connectivity_trunk_speaker, viewGroup, false);
        int i5 = R.id.image_trunk;
        FixedAspectRatioImageView fixedAspectRatioImageView3 = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_trunk, viewInflate3);
        if (fixedAspectRatioImageView3 != null) {
            i5 = R.id.text_trunk_subtitle;
            TextView textView5 = (TextView) ViewBindings.a(R.id.text_trunk_subtitle, viewInflate3);
            if (textView5 != null) {
                i5 = R.id.text_trunk_title;
                TextView textView6 = (TextView) ViewBindings.a(R.id.text_trunk_title, viewInflate3);
                if (textView6 != null) {
                    i5 = R.id.view_trunk_battery_level;
                    TrunkBatteryLevelView trunkBatteryLevelView = (TrunkBatteryLevelView) ViewBindings.a(R.id.view_trunk_battery_level, viewInflate3);
                    if (trunkBatteryLevelView != null) {
                        return new TrunkSpeakerViewHolder(this, new ItemConnectivityTrunkSpeakerBinding((CardView) viewInflate3, fixedAspectRatioImageView3, textView5, textView6, trunkBatteryLevelView));
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i5)));
        return null;
    }

    public /* synthetic */ ConnectivityAdapter(Listener listener, Profile profile, String str, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(listener, profile, str, (i2 & 8) != 0 ? new bp(0) : function1);
    }
}
