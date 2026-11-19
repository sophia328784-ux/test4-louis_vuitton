package com.vuitton.android.presentation.screen.connectivity.lightup.common;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.DialogLightUpBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class LightUpLoadingDialogFragment extends Hilt_LightUpLoadingDialogFragment {
    public final FragmentViewBindingDelegate F;
    public static final /* synthetic */ KProperty[] H = {Reflection.f71922a.h(new PropertyReference1Impl(LightUpLoadingDialogFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/DialogLightUpBinding;", 0))};
    public static final Companion G = new Companion(null);
    public static final String I = "LightUpLoadingDialogFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/LightUpLoadingDialogFragment$Companion;", "", "", "KEY_TITLE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public LightUpLoadingDialogFragment() {
        super(R.layout.dialog_light_up);
        setCancelable(false);
        this.F = FragmentExtKt.d(this, LightUpLoadingDialogFragment$binding$2.f56111b);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.FullScreenLoader);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.Hilt_LightUpLoadingDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        TextView textView = ((DialogLightUpBinding) this.F.c(this, H[0])).f51219b;
        Bundle arguments = getArguments();
        textView.setText(arguments != null ? arguments.getString("TITLE") : null);
    }
}
