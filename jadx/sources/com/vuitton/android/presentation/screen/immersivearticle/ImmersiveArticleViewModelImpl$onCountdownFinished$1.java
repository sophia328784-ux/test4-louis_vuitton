package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleEventSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import defpackage.md;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$onCountdownFinished$1", f = "ImmersiveArticleViewModelImpl.kt", l = {711}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$onCountdownFinished$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58322c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$onCountdownFinished$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f58322c = immersiveArticleViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$onCountdownFinished$1(this.f58322c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$onCountdownFinished$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        SnapshotStateList snapshotStateList;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58321b;
        Object obj2 = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl = this.f58322c;
            ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
            String str2 = this.d;
            if (immersiveArticleUiModel != null && (snapshotStateList = immersiveArticleUiModel.f58793c) != null) {
                ListIterator listIterator = snapshotStateList.listIterator();
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        break;
                    }
                    Object next = stateListIterator.next();
                    if (Intrinsics.c(((ImmersiveArticleSectionUiModel) next).getF58656a(), str2)) {
                        obj2 = next;
                        break;
                    }
                }
                obj2 = (ImmersiveArticleSectionUiModel) obj2;
            }
            if (obj2 instanceof ImmersiveArticleFashionShowSectionUiModel) {
                this.f58321b = 1;
                if (ImmersiveArticleViewModelImpl.Bc(immersiveArticleViewModelImpl, (ImmersiveArticleFashionShowSectionUiModel) obj2, str2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else if ((obj2 instanceof ImmersiveArticleEventSectionUiModel) && (str = immersiveArticleViewModelImpl.v) != null) {
                immersiveArticleViewModelImpl.Fc(str);
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
