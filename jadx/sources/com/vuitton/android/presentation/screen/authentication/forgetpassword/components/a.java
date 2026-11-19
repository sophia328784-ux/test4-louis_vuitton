package com.vuitton.android.presentation.screen.authentication.forgetpassword.components;

import androidx.compose.foundation.pager.PagerState;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f53561b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f53562c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f53563e;

    public /* synthetic */ a(ForgetPasswordViewModel forgetPasswordViewModel, CoroutineScope coroutineScope, PagerState pagerState) {
        this.f53563e = forgetPasswordViewModel;
        this.f53562c = coroutineScope;
        this.d = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f53561b;
        PagerState pagerState = this.d;
        CoroutineScope coroutineScope = this.f53562c;
        Object obj = this.f53563e;
        switch (i2) {
            case 0:
                BuildersKt.c(coroutineScope, null, null, new ForgetPasswordComposableKt$ForgetPasswordComposable$3$1$1(pagerState, (Function0) obj, null), 3);
                break;
            default:
                ((ForgetPasswordViewModel) obj).y4(ForgetPasswordTrackingUiModel.OnPreviousEvent.f53578a);
                BuildersKt.c(coroutineScope, null, null, new ForgetPasswordComposableKt$ForgetPasswordComposable$10$1$1(pagerState, null), 3);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ a(CoroutineScope coroutineScope, PagerState pagerState, Function0 function0) {
        this.f53562c = coroutineScope;
        this.d = pagerState;
        this.f53563e = function0;
    }
}
