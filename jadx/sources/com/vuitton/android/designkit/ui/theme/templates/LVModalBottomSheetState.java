package com.vuitton.android.designkit.ui.theme.templates;

import androidx.compose.material3.SheetState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.k60;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;", "", "Landroidx/compose/material3/SheetState;", "sheetState", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "", "initialShowBottomSheet", "<init>", "(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;Z)V", "Companion", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVModalBottomSheetState {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f48797e = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SheetState f48798a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f48799b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableState f48800c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public LVModalBottomSheetState(SheetState sheetState, CoroutineScope coroutineScope, boolean z) {
        sheetState.getClass();
        coroutineScope.getClass();
        this.f48798a = sheetState;
        this.f48799b = coroutineScope;
        this.f48800c = SnapshotStateKt.g(Boolean.valueOf(z));
    }

    public final boolean a() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.f48800c).getF10755b()).booleanValue();
    }

    public final void b(Function0 function0) {
        BuildersKt.c(this.f48799b, null, null, new LVModalBottomSheetState$hide$2(this, null), 3).invokeOnCompletion(new k60(this, function0, 2));
    }

    public final void d() {
        ((SnapshotMutableStateImpl) this.f48800c).setValue(Boolean.FALSE);
    }

    public final void e() {
        ((SnapshotMutableStateImpl) this.f48800c).setValue(Boolean.TRUE);
    }

    public /* synthetic */ LVModalBottomSheetState(SheetState sheetState, CoroutineScope coroutineScope, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(sheetState, coroutineScope, (i2 & 4) != 0 ? false : z);
    }
}
