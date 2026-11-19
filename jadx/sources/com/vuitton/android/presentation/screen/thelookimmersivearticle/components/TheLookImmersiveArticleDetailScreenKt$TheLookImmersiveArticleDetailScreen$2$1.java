package com.vuitton.android.presentation.screen.thelookimmersivearticle.components;

import androidx.compose.foundation.pager.PagerState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thelookimmersivearticle.components.TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1", f = "TheLookImmersiveArticleDetailScreen.kt", l = {}, m = "invokeSuspend", v = 2)
final class TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TheLookImmersiveArticleViewState f65342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f65343c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PagerState f65344e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1(TheLookImmersiveArticleViewState theLookImmersiveArticleViewState, CoroutineScope coroutineScope, Function2 function2, PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.f65342b = theLookImmersiveArticleViewState;
        this.f65343c = coroutineScope;
        this.d = function2;
        this.f65344e = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1(this.f65342b, this.f65343c, this.d, this.f65344e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = this.f65342b;
        String str = theLookImmersiveArticleViewState.f65394c;
        List list = theLookImmersiveArticleViewState.f65395e;
        if (str.length() > 0) {
            Iterator it = list.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                }
                if (((ImmersiveArticleLookCardUiModel) it.next()).f58681a.equals(theLookImmersiveArticleViewState.f65394c)) {
                    break;
                }
                i2++;
            }
            Integer num = new Integer(i2);
            if (num.intValue() < 0) {
                num = null;
            }
            if (num != null) {
                int iIntValue = num.intValue();
                String str2 = ((ImmersiveArticleLookCardUiModel) list.get(i2)).f58681a;
                BuildersKt.c(this.f65343c, null, null, new TheLookImmersiveArticleDetailScreenKt$TheLookImmersiveArticleDetailScreen$2$1$2$1(this.f65344e, iIntValue, null), 3);
                this.d.invoke(new Integer(i2), str2);
            }
        }
        return Unit.f71739a;
    }
}
