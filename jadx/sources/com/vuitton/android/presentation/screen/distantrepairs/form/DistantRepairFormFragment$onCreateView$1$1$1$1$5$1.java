package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.content.Intent;
import androidx.activity.result.ActivityResultLauncher;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity;
import defpackage.ze;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class DistantRepairFormFragment$onCreateView$1$1$1$1$5$1 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int iIntValue = ((Number) obj).intValue();
        DistantRepairFormFragment distantRepairFormFragment = (DistantRepairFormFragment) this.receiver;
        DistantRepairFormFragment.Companion companion = DistantRepairFormFragment.M;
        distantRepairFormFragment.getClass();
        Intent intent = new Intent(distantRepairFormFragment.getContext(), (Class<?>) ImagePickerActivity.class);
        distantRepairFormFragment.L = new ze(distantRepairFormFragment, iIntValue, 2);
        ActivityResultLauncher activityResultLauncher = distantRepairFormFragment.K;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(intent);
            return Unit.f71739a;
        }
        Intrinsics.h("getPhoto");
        throw null;
    }
}
