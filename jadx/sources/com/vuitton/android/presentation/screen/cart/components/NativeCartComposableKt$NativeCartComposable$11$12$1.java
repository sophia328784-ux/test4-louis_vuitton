package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import defpackage.eq;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$11$12$1", f = "NativeCartComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class NativeCartComposableKt$NativeCartComposable$11$12$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f55000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f55001c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartComposableKt$NativeCartComposable$11$12$1(Context context, String str, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f55000b = context;
        this.f55001c = str;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartComposableKt$NativeCartComposable$11$12$1(this.f55000b, this.f55001c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartComposableKt$NativeCartComposable$11$12$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (((NativeCartViewState) this.d.getF10755b()).d) {
            Context context = this.f55000b;
            context.getClass();
            String str = this.f55001c;
            str.getClass();
            Object systemService = context.getApplicationContext().getSystemService("accessibility");
            systemService.getClass();
            AccessibilityManager accessibilityManager = (AccessibilityManager) systemService;
            if (accessibilityManager.isEnabled()) {
                AccessibilityEvent accessibilityEventC = Build.VERSION.SDK_INT >= 30 ? eq.c() : AccessibilityEvent.obtain(16384);
                accessibilityEventC.setPackageName(context.getPackageName());
                accessibilityEventC.getText().add(str);
                accessibilityManager.sendAccessibilityEvent(accessibilityEventC);
            }
        }
        return Unit.f71739a;
    }
}
