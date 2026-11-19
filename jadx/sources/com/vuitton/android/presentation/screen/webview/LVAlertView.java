package com.vuitton.android.presentation.screen.webview;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.AlertViewBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.z40;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/LVAlertView;", "Landroidx/fragment/app/DialogFragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class LVAlertView extends Hilt_LVAlertView {
    public final FragmentViewBindingDelegate F;
    public static final /* synthetic */ KProperty[] H = {Reflection.f71922a.h(new PropertyReference1Impl(LVAlertView.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/AlertViewBinding;", 0))};
    public static final Companion G = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/webview/LVAlertView$Companion;", "", "", "IS_FISH_ACTIVITY_WHEN_CLOSE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public LVAlertView() {
        super(R.layout.alert_view);
        this.F = FragmentExtKt.d(this, LVAlertView$binding$2.f65453b);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, R.style.LV_Widget_Styled_EmptyCart);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        FragmentActivity activity;
        Bundle arguments = getArguments();
        if (arguments != null && arguments.getBoolean("IS_FISH_ACTIVITY_WHEN_CLOSE") && (activity = getActivity()) != null) {
            activity.finish();
        }
        super.onDestroy();
    }

    @Override // com.vuitton.android.presentation.screen.webview.Hilt_LVAlertView, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        int i2 = 0;
        AlertViewBinding alertViewBinding = (AlertViewBinding) this.F.c(this, H[0]);
        ViewExtKt.d(alertViewBinding.d, new z40(this, 0));
        ViewExtKt.d(alertViewBinding.f51208c, new z40(this, 1));
        Button button = alertViewBinding.f51207b;
        z40 z40Var = new z40(this, 2);
        if ((2 & 4) != 0) {
            z40Var = null;
        }
        CharSequence text = button.getText();
        text.getClass();
        if (!(text.length() > 0)) {
            i2 = 8;
        } else if (z40Var != null) {
            z40Var.invoke(button);
        }
        button.setVisibility(i2);
    }
}
