package com.vuitton.android.presentation.screen.pdp.components;

import com.vuitton.android.presentation.screen.pdp.PdpViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class PdpComposableKt$PdpComposable$8$1 extends FunctionReferenceImpl implements Function1<PermissionsBottomSheet, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        PermissionsBottomSheet permissionsBottomSheet = (PermissionsBottomSheet) obj;
        permissionsBottomSheet.getClass();
        ((PdpViewModel) this.receiver).a3(permissionsBottomSheet);
        return Unit.f71739a;
    }
}
