package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleNavigationType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.VideoCtaArticleSectionUiModel;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleActivity;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.Lazy;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$onCreate$1$1$3$1", f = "ImmersiveArticleActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleActivity$onCreate$1$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleActivity f58239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f58240c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleActivity$onCreate$1$1$3$1(ImmersiveArticleActivity immersiveArticleActivity, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58239b = immersiveArticleActivity;
        this.f58240c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleActivity$onCreate$1$1$3$1(this.f58239b, this.f58240c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleActivity$onCreate$1$1$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        VideoCtaArticleSectionUiModel videoCtaArticleSectionUiModel;
        String str;
        SnapshotStateList snapshotStateList;
        Object next;
        ImmersiveArticleActivity immersiveArticleActivity = this.f58239b;
        Lazy lazy = immersiveArticleActivity.x;
        Lazy lazy2 = immersiveArticleActivity.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
        MutableState mutableState = this.f58240c;
        if (((ImmersiveArticleViewState) mutableState.getF10755b()).f58801c != null && StringKtExtKt.g((String) lazy2.getF71699b())) {
            ImmersiveArticleUiModel immersiveArticleUiModel = ((ImmersiveArticleViewState) mutableState.getF10755b()).f58801c;
            if (immersiveArticleUiModel == null || (snapshotStateList = immersiveArticleUiModel.f58793c) == null) {
                videoCtaArticleSectionUiModel = null;
            } else {
                ArrayList arrayList = new ArrayList();
                ListIterator listIterator = snapshotStateList.listIterator();
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        break;
                    }
                    Object next2 = stateListIterator.next();
                    if (next2 instanceof VideoCtaArticleSectionUiModel) {
                        arrayList.add(next2);
                    }
                }
                Iterator it = arrayList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((VideoCtaArticleSectionUiModel) next).f58841a, (String) lazy2.getF71699b()));
                videoCtaArticleSectionUiModel = (VideoCtaArticleSectionUiModel) next;
            }
            if (Intrinsics.c((String) lazy.getF71699b(), RedirectionType.VIDEO.getValue())) {
                immersiveArticleActivity.O(new ImmersiveArticleNavigationType.OpenVideoInFullScreen(videoCtaArticleSectionUiModel != null ? videoCtaArticleSectionUiModel.f58846h : null));
            } else if (Intrinsics.c((String) lazy.getF71699b(), RedirectionType.LOOK.getValue()) && videoCtaArticleSectionUiModel != null && (str = videoCtaArticleSectionUiModel.f58841a) != null) {
                TheLookImmersiveArticleActivity.Companion companion2 = TheLookImmersiveArticleActivity.q;
                String strK = immersiveArticleActivity.K();
                if (strK == null) {
                    strK = "";
                }
                String str2 = (String) immersiveArticleActivity.z.getF71699b();
                ImmersiveArticleUiModel immersiveArticleUiModel2 = ((ImmersiveArticleViewState) mutableState.getF10755b()).f58801c;
                String str3 = immersiveArticleUiModel2 != null ? immersiveArticleUiModel2.f58792b : null;
                String str4 = str3 != null ? str3 : "";
                companion2.getClass();
                immersiveArticleActivity.startActivity(TheLookImmersiveArticleActivity.Companion.a(immersiveArticleActivity, strK, str, str2, str4));
            }
        }
        return Unit.f71739a;
    }
}
