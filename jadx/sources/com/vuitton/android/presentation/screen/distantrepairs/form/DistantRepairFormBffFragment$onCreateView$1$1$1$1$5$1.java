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
final /* synthetic */ class DistantRepairFormBffFragment$onCreateView$1$1$1$1$5$1 extends FunctionReferenceImpl implements Function1<Integer, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int iIntValue = ((Number) obj).intValue();
        DistantRepairFormBffFragment distantRepairFormBffFragment = (DistantRepairFormBffFragment) this.receiver;
        DistantRepairFormBffFragment.Companion companion = DistantRepairFormBffFragment.M;
        distantRepairFormBffFragment.getClass();
        Intent intent = new Intent(distantRepairFormBffFragment.getContext(), (Class<?>) ImagePickerActivity.class);
        distantRepairFormBffFragment.L = new ze(distantRepairFormBffFragment, iIntValue, 1);
        ActivityResultLauncher activityResultLauncher = distantRepairFormBffFragment.K;
        if (activityResultLauncher != null) {
            activityResultLauncher.a(intent);
            return Unit.f71739a;
        }
        Intrinsics.h("getPhoto");
        throw null;
    }
}
