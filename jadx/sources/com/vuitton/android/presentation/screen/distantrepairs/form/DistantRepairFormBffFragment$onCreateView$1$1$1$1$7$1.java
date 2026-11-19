package com.vuitton.android.presentation.screen.distantrepairs.form;

import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairFormBffFragment$onCreateView$1$1$1$1$7$1 extends FunctionReferenceImpl implements Function1<String, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str = (String) obj;
        str.getClass();
        DistantRepairFormBffFragment distantRepairFormBffFragment = (DistantRepairFormBffFragment) this.receiver;
        DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
        if (distantRepairFormBffFragment.H == null) {
            Intrinsics.h("distantRepairRouter");
            throw null;
        }
        FragmentActivity fragmentActivityRequireActivity = distantRepairFormBffFragment.requireActivity();
        if (fragmentActivityRequireActivity != null) {
            fragmentActivityRequireActivity.startActivity(WebViewActivity.Companion.a(WebViewActivity.v, fragmentActivityRequireActivity, str, false, false, null, null, null, false, false, null, 2044));
        }
        return Unit.f71739a;
    }
}
