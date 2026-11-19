package com.vuitton.android.presentation.screen.plp.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.jw;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ExclusivePLPActivity extends Hilt_ExclusivePLPActivity {
    public static final Companion p = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str) {
            context.getClass();
            str.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) ExclusivePLPActivity.class).putExtra("DIM_ID", str);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(494371612, true, new jw(this, 0)));
    }
}
