package com.vuitton.android.designkit.ui.common;

import androidx.compose.foundation.ScrollState;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ItemUtilsKt {
    public static final void a(RowItemCenterPosition rowItemCenterPosition, int i2, ScrollState scrollState, CoroutineScope coroutineScope) {
        scrollState.getClass();
        coroutineScope.getClass();
        BuildersKt.c(coroutineScope, null, null, new ItemUtilsKt$centerItemOnRow$1(rowItemCenterPosition, i2, scrollState, null), 3);
    }
}
