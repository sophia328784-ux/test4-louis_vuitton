package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import com.vuitton.android.R;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.aj0;
import defpackage.bx;
import defpackage.je;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001Bi\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0006j\b\u0012\u0004\u0012\u00020\u0002`\u0007\u00128\b\u0002\u0010\u000f\u001a2\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\r\u0012\u0004\u0012\u00020\u000e0\t¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementAdapter;", "Landroid/widget/ArrayAdapter;", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "selectedMode", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "modeList", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "mode", "previousMode", "", "onPowerModeClick", "<init>", "(Landroid/content/Context;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function2;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PowerManagementAdapter extends ArrayAdapter<LVLightUpPowerMode> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f56146f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LVLightUpPowerMode f56147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f56148c;
    public final Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Lazy f56149e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerManagementAdapter(Context context, LVLightUpPowerMode lVLightUpPowerMode, ArrayList<LVLightUpPowerMode> arrayList, Function2<? super LVLightUpPowerMode, ? super LVLightUpPowerMode, Unit> function2) {
        super(context, R.layout.item_list_selectable, arrayList);
        context.getClass();
        lVLightUpPowerMode.getClass();
        arrayList.getClass();
        function2.getClass();
        this.f56147b = lVLightUpPowerMode;
        this.f56148c = arrayList;
        this.d = function2;
        this.f56149e = LazyKt.b(new je(context, 28));
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i2, View view, ViewGroup viewGroup) {
        viewGroup.getClass();
        Object obj = this.f56148c.get(i2);
        obj.getClass();
        LVLightUpPowerMode lVLightUpPowerMode = (LVLightUpPowerMode) obj;
        if (view == null) {
            view = ((LayoutInflater) this.f56149e.getF71699b()).inflate(R.layout.item_list_selectable, viewGroup, false);
        }
        if (lVLightUpPowerMode == this.f56147b) {
            view.getClass();
            ((TextView) view).setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, R.drawable.ic_check_legacy, 0);
        } else {
            view.getClass();
            ((TextView) view).setCompoundDrawablesRelativeWithIntrinsicBounds(0, 0, 0, 0);
        }
        TextView textView = (TextView) view;
        Context context = textView.getContext();
        context.getClass();
        textView.setText(LightUpDetailFragmentKt.a(lVLightUpPowerMode, context));
        textView.setOnClickListener(new bx(lVLightUpPowerMode, this, 4));
        view.getClass();
        return view;
    }

    public /* synthetic */ PowerManagementAdapter(Context context, LVLightUpPowerMode lVLightUpPowerMode, ArrayList arrayList, Function2 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, lVLightUpPowerMode, arrayList, (i2 & 8) != 0 ? new aj0(23) : function2);
    }
}
