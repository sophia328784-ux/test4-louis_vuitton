package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class NativeCartActivity$onCreate$1$1$1$1$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        NativeCartActivity nativeCartActivity = (NativeCartActivity) this.receiver;
        NativeCartActivity.Companion companion = NativeCartActivity.w;
        nativeCartActivity.finish();
        nativeCartActivity.startActivity(MainActivity.Companion.a(MainActivity.L, nativeCartActivity, MainTopLevelDestination.CATALOG, null, null, null, 28));
        return Unit.f71739a;
    }
}
