package com.vuitton.android.presentation.screen.authentication.common.components;

import androidx.compose.foundation.pager.PagerState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f53479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f53480c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f53481e;

    public /* synthetic */ a(Function0 function0, CoroutineScope coroutineScope, Object obj, int i2) {
        this.f53479b = i2;
        this.f53480c = function0;
        this.d = coroutineScope;
        this.f53481e = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f53479b;
        Object obj = this.f53481e;
        CoroutineScope coroutineScope = this.d;
        Function0 function0 = this.f53480c;
        switch (i2) {
            case 0:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                BuildersKt.c(coroutineScope, null, null, new NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$1$1$1(lVModalBottomSheetState, null), 3);
                break;
            case 1:
                LVModalBottomSheetState lVModalBottomSheetState2 = (LVModalBottomSheetState) obj;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                BuildersKt.c(coroutineScope, null, null, new NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$3$1$2$1$1(lVModalBottomSheetState2, null), 3);
                break;
            default:
                function0.mo47invoke();
                BuildersKt.c(coroutineScope, null, null, new NativeAuthenticationLayoutKt$NativeAuthenticationLayout$3$1$1$1$1$1$1((PagerState) obj, null), 3);
                break;
        }
        return Unit.f71739a;
    }
}
