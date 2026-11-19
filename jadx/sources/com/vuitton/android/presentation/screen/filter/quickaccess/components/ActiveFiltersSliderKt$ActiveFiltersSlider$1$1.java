package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.foundation.ScrollState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt$ActiveFiltersSlider$1$1", f = "ActiveFiltersSlider.kt", l = {121, 122, 126, 129, 133}, m = "invokeSuspend", v = 2)
final class ActiveFiltersSliderKt$ActiveFiltersSlider$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58052b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f58053c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f58054e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ScrollState f58055f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MutableState f58056h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutableState f58057i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActiveFiltersSliderKt$ActiveFiltersSlider$1$1(boolean z, Function0 function0, boolean z2, ScrollState scrollState, float f2, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f58053c = z;
        this.d = function0;
        this.f58054e = z2;
        this.f58055f = scrollState;
        this.g = f2;
        this.f58056h = mutableState;
        this.f58057i = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ActiveFiltersSliderKt$ActiveFiltersSlider$1$1(this.f58053c, this.d, this.f58054e, this.f58055f, this.g, this.f58056h, this.f58057i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ActiveFiltersSliderKt$ActiveFiltersSlider$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008c  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x009c, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r2, r17) == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cb, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r2, r17) == r1) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt$ActiveFiltersSlider$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
