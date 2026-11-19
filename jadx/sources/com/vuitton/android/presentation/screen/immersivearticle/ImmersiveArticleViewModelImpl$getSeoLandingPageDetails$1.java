package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import com.vuitton.android.domain.usecase.landingpage.GetLandingPageDetailsByIdUseCase;
import com.vuitton.android.presentation.loading.LoaderExt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticle3dSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleMapperKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoCtaArticleSection;
import defpackage.md;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1", f = "ImmersiveArticleViewModelImpl.kt", l = {301, 306, 323}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f58314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58315c;
    public ImmersiveArticlePage d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f58316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58317f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ long f58318h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, long j2, Continuation continuation) {
        super(2, continuation);
        this.f58317f = immersiveArticleViewModelImpl;
        this.g = str;
        this.f58318h = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1(this.f58317f, this.g, this.f58318h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x009e  */
    /* JADX WARN: Code duplicated, block: B:37:0x00af  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00aa A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ImmersiveArticlePage immersiveArticlePage;
        Object obj2;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl;
        Throwable thA;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl2;
        ImmersiveArticleUiModel immersiveArticleUiModel;
        SnapshotStateList snapshotStateList;
        ListIterator listIterator;
        StateListIterator stateListIterator;
        Object next;
        ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58316e;
        long j2 = this.f58318h;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl3 = this.f58317f;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetLandingPageDetailsByIdUseCase getLandingPageDetailsByIdUseCase = immersiveArticleViewModelImpl3.q;
            this.f58316e = 1;
            objA = getLandingPageDetailsByIdUseCase.a(this.g, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                immersiveArticlePage = this.d;
                immersiveArticleViewModelImpl = this.f58315c;
                obj2 = this.f58314b;
                ResultKt.b(obj);
                immersiveArticleViewModelImpl.y.setValue(ImmersiveArticleMapperKt.e(immersiveArticlePage));
                immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
                if (immersiveArticleUiModel != null && (snapshotStateList = immersiveArticleUiModel.f58793c) != null) {
                    listIterator = snapshotStateList.listIterator();
                    do {
                        stateListIterator = (StateListIterator) listIterator;
                        if (stateListIterator.hasNext()) {
                            next = null;
                            break;
                        }
                        next = stateListIterator.next();
                    } while (!(((ImmersiveArticleSectionUiModel) next) instanceof ImmersiveArticle3dSectionUiModel));
                    immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) next;
                    if (immersiveArticleSectionUiModel != null) {
                        ImmersiveArticleViewModelImpl.zc(immersiveArticleViewModelImpl, ((ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel).f58638b);
                    }
                }
                if (!ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl, immersiveArticlePage)) {
                    immersiveArticleViewModelImpl.w.setValue(Boolean.FALSE);
                }
                objA = obj2;
                thA = Result.a(objA);
                if (thA != null) {
                    immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                    this.f58314b = objA;
                    this.f58315c = immersiveArticleViewModelImpl3;
                    this.d = null;
                    this.f58316e = 3;
                    if (LoaderExt.a(j2, this) != coroutineSingletons) {
                        immersiveArticleViewModelImpl2 = immersiveArticleViewModelImpl3;
                    }
                    return coroutineSingletons;
                }
                immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
                return Unit.f71739a;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            immersiveArticleViewModelImpl2 = this.f58315c;
            ResultKt.b(obj);
        }
        immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
        immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            thA = Result.a(objA);
            if (thA != null) {
                immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                this.f58314b = objA;
                this.f58315c = immersiveArticleViewModelImpl3;
                this.d = null;
                this.f58316e = 3;
                if (LoaderExt.a(j2, this) != coroutineSingletons) {
                    immersiveArticleViewModelImpl2 = immersiveArticleViewModelImpl3;
                    immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
                }
            }
            immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        immersiveArticlePage = (ImmersiveArticlePage) objA;
        if (ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl3, immersiveArticlePage)) {
            List list = immersiveArticlePage.f67677c;
            list.getClass();
            Object obj3 = list.get(0);
            obj3.getClass();
            ((VideoCtaArticleSection) obj3).l = true;
        }
        this.f58314b = objA;
        this.f58315c = immersiveArticleViewModelImpl3;
        this.d = immersiveArticlePage;
        this.f58316e = 2;
        if (LoaderExt.a(j2, this) != coroutineSingletons) {
            obj2 = objA;
            immersiveArticleViewModelImpl = immersiveArticleViewModelImpl3;
            immersiveArticleViewModelImpl.y.setValue(ImmersiveArticleMapperKt.e(immersiveArticlePage));
            immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
            if (immersiveArticleUiModel != null) {
                listIterator = snapshotStateList.listIterator();
                do {
                    stateListIterator = (StateListIterator) listIterator;
                    if (stateListIterator.hasNext()) {
                        next = null;
                        break;
                    }
                    next = stateListIterator.next();
                } while (!(((ImmersiveArticleSectionUiModel) next) instanceof ImmersiveArticle3dSectionUiModel));
                immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) next;
                if (immersiveArticleSectionUiModel != null) {
                    ImmersiveArticleViewModelImpl.zc(immersiveArticleViewModelImpl, ((ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel).f58638b);
                }
            }
            if (!ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl, immersiveArticlePage)) {
                immersiveArticleViewModelImpl.w.setValue(Boolean.FALSE);
            }
            objA = obj2;
            thA = Result.a(objA);
            if (thA != null) {
                immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                this.f58314b = objA;
                this.f58315c = immersiveArticleViewModelImpl3;
                this.d = null;
                this.f58316e = 3;
                if (LoaderExt.a(j2, this) != coroutineSingletons) {
                    immersiveArticleViewModelImpl2 = immersiveArticleViewModelImpl3;
                    immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
                }
            }
            immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
