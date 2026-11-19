package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.lightup.sdk.animation.CreatorProject;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemPresetLightUpBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import defpackage.jx;
import defpackage.r81;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u000eB?\u00126\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\t\u0012\u0004\u0012\u00020\n0\u0003¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;", "Lkotlin/Function2;", "Lcom/lightup/sdk/animation/CreatorProject;", "Lkotlin/ParameterName;", "name", "preset", "", "position", "", "onPresetClick", "<init>", "(Lkotlin/jvm/functions/Function2;)V", "PresetViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LightUpPresetAdapter extends RecyclerView.Adapter<PresetViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function2 f56142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56143c;
    public String d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class PresetViewHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemPresetLightUpBinding f56144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LightUpPresetAdapter f56145c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PresetViewHolder(LightUpPresetAdapter lightUpPresetAdapter, ItemPresetLightUpBinding itemPresetLightUpBinding) {
            super(itemPresetLightUpBinding.f51425b);
            itemPresetLightUpBinding.getClass();
            this.f56145c = lightUpPresetAdapter;
            this.f56144b = itemPresetLightUpBinding;
        }
    }

    public LightUpPresetAdapter(Function2<? super CreatorProject, ? super Integer, Unit> function2) {
        function2.getClass();
        this.f56142b = function2;
        this.f56143c = new ArrayList();
    }

    public final int a(String str) {
        str.getClass();
        Iterator it = this.f56143c.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            if (Intrinsics.c(((CreatorProject) it.next()).getId(), str)) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56143c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i2) {
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        PresetViewHolder presetViewHolder = (PresetViewHolder) viewHolder;
        presetViewHolder.getClass();
        Object obj = this.f56143c.get(i2);
        obj.getClass();
        CreatorProject creatorProject = (CreatorProject) obj;
        ItemPresetLightUpBinding itemPresetLightUpBinding = presetViewHolder.f56144b;
        LightUpPresetAdapter lightUpPresetAdapter = presetViewHolder.f56145c;
        XmlUiKt.a(itemPresetLightUpBinding.f51426c, Integer.valueOf(creatorProject.getDrawableId()), 0, 0, 126);
        itemPresetLightUpBinding.f51427e.setText(creatorProject.getName());
        FrameLayout frameLayout = itemPresetLightUpBinding.f51425b;
        frameLayout.setSelected(Intrinsics.c(creatorProject.getId(), lightUpPresetAdapter.d));
        itemPresetLightUpBinding.d.setVisibility(frameLayout.isSelected() ? 0 : 8);
        if (frameLayout.isSelected()) {
            frameLayout.setOnClickListener(null);
        } else {
            ViewExtKt.d(frameLayout, new jx(lightUpPresetAdapter, creatorProject, presetViewHolder, 13));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_preset_light_up, viewGroup, false);
        int i3 = R.id.image_preset;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_preset, viewInflate);
        if (imageView != null) {
            i3 = R.id.image_preset_selected_icon;
            ImageView imageView2 = (ImageView) ViewBindings.a(R.id.image_preset_selected_icon, viewInflate);
            if (imageView2 != null) {
                i3 = R.id.text_preset_name;
                TextView textView = (TextView) ViewBindings.a(R.id.text_preset_name, viewInflate);
                if (textView != null) {
                    return new PresetViewHolder(this, new ItemPresetLightUpBinding((FrameLayout) viewInflate, imageView, imageView2, textView));
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        return null;
    }
}
