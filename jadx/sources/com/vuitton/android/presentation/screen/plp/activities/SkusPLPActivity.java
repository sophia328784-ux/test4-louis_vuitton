package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.jz0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class SkusPLPActivity extends Hilt_SkusPLPActivity {
    public static final Companion p = new Companion(null);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity$Companion;", "", "", "NAV_ARG_PLP_LIST_SKU", "Ljava/lang/String;", "NAV_ARG_PLP_LIST_TITLE", "NAV_ARG_PLP_SLOTTED_SKU_LIST", "NAV_ARG_PLP_IS_MOST_PURCHASED_WITH", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, List list, List list2, String str, boolean z) {
            context.getClass();
            list.getClass();
            list2.getClass();
            Intent intentPutParcelableArrayListExtra = new Intent(context, (Class<?>) SkusPLPActivity.class).putExtra("nav_arg_plp_list_sku", CollectionsKt.K(list, null, null, null, null, 63)).putExtra("nav_arg_plp_list_title", str).putExtra("nav_arg_plp_is_most_purchased_with", z).putParcelableArrayListExtra("nav_arg_plp_slotted_sku_list", new ArrayList<>(list2));
            intentPutParcelableArrayListExtra.getClass();
            return intentPutParcelableArrayListExtra;
        }

        public static Intent b(Companion companion, Context context, List list) {
            EmptyList emptyList = EmptyList.f71768b;
            companion.getClass();
            return a(context, list, emptyList, null, false);
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1856153838, true, new jz0(this, 0)));
    }
}
