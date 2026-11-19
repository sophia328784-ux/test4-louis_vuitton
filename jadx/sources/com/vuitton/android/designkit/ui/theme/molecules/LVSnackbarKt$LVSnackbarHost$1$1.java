package com.vuitton.android.designkit.ui.theme.molecules;

import androidx.compose.material3.SnackbarData;
import androidx.compose.material3.SnackbarDuration;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.platform.AccessibilityManager;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarKt$LVSnackbarHost$1$1", f = "LVSnackbar.kt", l = {285}, m = "invokeSuspend", v = 2)
final class LVSnackbarKt$LVSnackbarHost$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48666b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SnackbarData f48667c;
    public final /* synthetic */ AccessibilityManager d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVSnackbarKt$LVSnackbarHost$1$1(SnackbarData snackbarData, AccessibilityManager accessibilityManager, Continuation continuation) {
        super(2, continuation);
        this.f48667c = snackbarData;
        this.d = accessibilityManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVSnackbarKt$LVSnackbarHost$1$1(this.f48667c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVSnackbarKt$LVSnackbarHost$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long jA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48666b;
        SnackbarData snackbarData = this.f48667c;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (snackbarData != null) {
                SnackbarDuration f48674b = snackbarData.getF7292a().getF48674b();
                String d = snackbarData.getF7292a().getD();
                boolean z = !(d == null || StringsKt.w(d));
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSnackbarKt.f48665a;
                f48674b.getClass();
                int i3 = LVSnackbarKt.WhenMappings.f48672b[f48674b.ordinal()];
                if (i3 == 1) {
                    jA = Long.MAX_VALUE;
                } else if (i3 == 2) {
                    jA = 10000;
                } else {
                    if (i3 != 3) {
                        v40.g();
                        return null;
                    }
                    jA = 4000;
                }
                AccessibilityManager accessibilityManager = this.d;
                if (accessibilityManager != null) {
                    jA = accessibilityManager.a(jA, z);
                }
                Duration.Companion companion = Duration.INSTANCE;
                long jH = DurationKt.h(jA, DurationUnit.MILLISECONDS);
                this.f48666b = 1;
                if (DelayKt.c(jH, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        snackbarData.dismiss();
        return Unit.f71739a;
    }
}
