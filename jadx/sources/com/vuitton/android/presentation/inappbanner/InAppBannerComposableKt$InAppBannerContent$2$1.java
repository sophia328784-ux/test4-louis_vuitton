package com.vuitton.android.presentation.inappbanner;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.SnackbarResult;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerContent$2$1", f = "InAppBannerComposable.kt", l = {137}, m = "invokeSuspend", v = 2)
final class InAppBannerComposableKt$InAppBannerContent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarHostState f51561c;
    public final /* synthetic */ LVSnackbarVisuals d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InAppBanner f51562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f51563f;
    public final /* synthetic */ int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppBannerComposableKt$InAppBannerContent$2$1(SnackbarHostState snackbarHostState, LVSnackbarVisuals lVSnackbarVisuals, InAppBanner inAppBanner, int i2, int i3, Continuation continuation) {
        super(2, continuation);
        this.f51561c = snackbarHostState;
        this.d = lVSnackbarVisuals;
        this.f51562e = inAppBanner;
        this.f51563f = i2;
        this.g = i3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InAppBannerComposableKt$InAppBannerContent$2$1(this.f51561c, this.d, this.f51562e, this.f51563f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InAppBannerComposableKt$InAppBannerContent$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51560b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f51560b = 1;
            obj = this.f51561c.a(this.d, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        if (((SnackbarResult) obj) == SnackbarResult.ActionPerformed) {
            this.f51562e.f67758f.invoke(new Integer(this.f51563f), new Integer(this.g));
        }
        return Unit.f71739a;
    }
}
