package com.vuitton.android.presentation.screen.connectivity;

import android.view.View;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentPairingBottomSheetDialogBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class PairingBottomSheetDialogFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentPairingBottomSheetDialogBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PairingBottomSheetDialogFragment$binding$2 f55966b = new PairingBottomSheetDialogFragment$binding$2(1, FragmentPairingBottomSheetDialogBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentPairingBottomSheetDialogBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.layout_pair_light_up_keep_all;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.layout_pair_light_up_keep_all, view);
        if (linearLayout != null) {
            i2 = R.id.layout_pair_light_up_sneakers;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(R.id.layout_pair_light_up_sneakers, view);
            if (linearLayout2 != null) {
                i2 = R.id.layout_pair_trunk_speaker;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(R.id.layout_pair_trunk_speaker, view);
                if (linearLayout3 != null) {
                    i2 = R.id.view_pair_light_up_keep_all_divider;
                    View viewA = ViewBindings.a(R.id.view_pair_light_up_keep_all_divider, view);
                    if (viewA != null) {
                        i2 = R.id.view_pair_light_up_sneakers_divider;
                        View viewA2 = ViewBindings.a(R.id.view_pair_light_up_sneakers_divider, view);
                        if (viewA2 != null) {
                            return new FragmentPairingBottomSheetDialogBinding(linearLayout, linearLayout2, linearLayout3, viewA, viewA2);
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
