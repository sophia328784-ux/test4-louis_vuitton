package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.foundation.pager.PagerState;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.tagmanager.ModuleDescriptor;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1", f = "TheLookImmersiveArticleDetailScreen.kt", l = {ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f65359c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1(PagerState pagerState, int i2, Continuation continuation) {
        super(2, continuation);
        this.f65359c = pagerState;
        this.d = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1(this.f65359c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$5$1$2$3$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65358b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f65358b = 1;
            if (PagerState.g(this.f65359c, this.d, null, this, 6) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
