package com.vuitton.android.presentation.screen.connectivity.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ViewBatteryLevelBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/TrunkBatteryLevelView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "level", "", "setBatteryLevel", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrunkBatteryLevelView extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewBatteryLevelBinding f56678b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrunkBatteryLevelView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        context.getClass();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_battery_level, (ViewGroup) this, false);
        addView(viewInflate);
        int i3 = R.id.battery_level_image;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.battery_level_image, viewInflate);
        if (imageView != null) {
            i3 = R.id.battery_level_percentage;
            TextView textView = (TextView) ViewBindings.a(R.id.battery_level_percentage, viewInflate);
            if (textView != null) {
                this.f56678b = new ViewBatteryLevelBinding(imageView, textView);
                View.inflate(context, R.layout.view_battery_level, this);
                return;
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        throw null;
    }

    public final void setBatteryLevel(int level) {
        int i2;
        ViewBatteryLevelBinding viewBatteryLevelBinding = this.f56678b;
        viewBatteryLevelBinding.f51471c.setText(level + "%");
        if (level < 5) {
            i2 = R.drawable.ic_battery_0;
        } else if (level < 19) {
            i2 = R.drawable.ic_battery_15;
        } else if (level < 42) {
            i2 = R.drawable.ic_battery_33;
        } else if (level < 58) {
            i2 = R.drawable.ic_battery_50;
        } else {
            i2 = level < 83 ? R.drawable.ic_battery_66 : R.drawable.ic_battery_100;
        }
        viewBatteryLevelBinding.f51470b.setImageResource(i2);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrunkBatteryLevelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        context.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TrunkBatteryLevelView(Context context) {
        this(context, null, 0, 6, null);
        context.getClass();
    }

    public /* synthetic */ TrunkBatteryLevelView(Context context, AttributeSet attributeSet, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }
}
