package com.vuitton.android.presentation.screen.immersivearticle;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.immersivearticle.ImmersiveArticleMonitoring;
import com.vuitton.android.domain.usecase.immersivearticle.GetImmersiveArticleDetailByKeyUseCase;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.loading.LoaderExt;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticle3dSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleMapperKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.Sound;
import com.vuitton.foundation.model.domain.model.immersivearticle.AssetArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.CarouselArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleAsset;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveAudio;
import com.vuitton.foundation.model.domain.model.immersivearticle.TextArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoCtaArticleSection;
import com.vuitton.foundation.model.domain.model.immersivearticle.WallpaperArticleSection;
import defpackage.md;
import java.util.Iterator;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$getArticleDetail$1", f = "ImmersiveArticleViewModelImpl.kt", l = {258, 264, 284}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$getArticleDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f58307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58308c;
    public MonitorAction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f58309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f58310f;
    public final /* synthetic */ ImmersiveArticleViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f58311h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ long f58312i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f58313j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$getArticleDetail$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, long j2, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.g = immersiveArticleViewModelImpl;
        this.f58311h = str;
        this.f58312i = j2;
        this.f58313j = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$getArticleDetail$1(this.g, this.f58311h, this.f58312i, this.f58313j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$getArticleDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:112:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:118:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:121:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:126:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:129:0x0215  */
    /* JADX WARN: Code duplicated, block: B:132:0x022d  */
    /* JADX WARN: Code duplicated, block: B:135:0x023b  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        ImmersiveArticlePage immersiveArticlePage;
        Object value;
        List list;
        AudioPlayerItemUiModel audioPlayerItemUiModel;
        String str;
        MonitorAction monitorAction;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl;
        Object next;
        AssetImage assetImage;
        AssetImage assetImage2;
        AssetImage assetImage3;
        AssetImage assetImage4;
        AssetImage assetImage5;
        AssetImage assetImage6;
        Throwable thA;
        Throwable th;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl2;
        ImmersiveArticleUiModel immersiveArticleUiModel;
        SnapshotStateList snapshotStateList;
        ListIterator listIterator;
        StateListIterator stateListIterator;
        Object next2;
        ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel;
        MonitorAction monitorAction2;
        MonitorAction monitorAction3;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58310f;
        long j2 = this.f58312i;
        MonitorAction monitorAction4 = this.f58313j;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl3 = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetImmersiveArticleDetailByKeyUseCase getImmersiveArticleDetailByKeyUseCase = immersiveArticleViewModelImpl3.t;
            this.f58310f = 1;
            objA = getImmersiveArticleDetailByKeyUseCase.a(this.f58311h, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 == 2) {
                immersiveArticlePage = (ImmersiveArticlePage) this.f58309e;
                monitorAction = this.d;
                immersiveArticleViewModelImpl = this.f58308c;
                obj2 = this.f58307b;
                ResultKt.b(obj);
                immersiveArticleViewModelImpl.y.setValue(ImmersiveArticleMapperKt.e(immersiveArticlePage));
                immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
                if (immersiveArticleUiModel != null && (snapshotStateList = immersiveArticleUiModel.f58793c) != null) {
                    listIterator = snapshotStateList.listIterator();
                    do {
                        stateListIterator = (StateListIterator) listIterator;
                        if (stateListIterator.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = stateListIterator.next();
                    } while (!(((ImmersiveArticleSectionUiModel) next2) instanceof ImmersiveArticle3dSectionUiModel));
                    immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) next2;
                    if (immersiveArticleSectionUiModel != null) {
                        ImmersiveArticleViewModelImpl.zc(immersiveArticleViewModelImpl, ((ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel).f58638b);
                    }
                }
                if (!ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl, immersiveArticlePage)) {
                    immersiveArticleViewModelImpl.w.setValue(Boolean.FALSE);
                    monitorAction.b();
                }
                BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImpl), null, null, new ImmersiveArticleViewModelImpl$requestProductDetails$1(immersiveArticleViewModelImpl, immersiveArticleViewModelImpl.f58273b.a(immersiveArticleViewModelImpl.H, ImmersiveArticleMonitoring.Action.LoadImmersiveProducts.f48912a), null), 3);
                thA = Result.a(obj2);
                if (thA != null) {
                    immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                    this.f58307b = obj2;
                    this.f58308c = immersiveArticleViewModelImpl3;
                    this.d = monitorAction4;
                    this.f58309e = thA;
                    this.f58310f = 3;
                    if (LoaderExt.a(j2, this) != coroutineSingletons) {
                        th = thA;
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
            th = (Throwable) this.f58309e;
            monitorAction4 = this.d;
            immersiveArticleViewModelImpl2 = this.f58308c;
            ResultKt.b(obj);
        }
        immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
        monitorAction4.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleError(th));
        monitorAction4.b();
        monitorAction2 = immersiveArticleViewModelImpl2.I;
        if (monitorAction2 != null) {
            monitorAction2.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleFull(th));
            Result.Companion companion = Result.INSTANCE;
        }
        monitorAction3 = immersiveArticleViewModelImpl2.I;
        if (monitorAction3 != null) {
            monitorAction3.b();
            Result.Companion companion2 = Result.INSTANCE;
        }
        immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
        return Unit.f71739a;
        obj2 = objA;
        Result.Companion companion3 = Result.INSTANCE;
        if (obj2 instanceof Result.Failure) {
            thA = Result.a(obj2);
            if (thA != null) {
                immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                this.f58307b = obj2;
                this.f58308c = immersiveArticleViewModelImpl3;
                this.d = monitorAction4;
                this.f58309e = thA;
                this.f58310f = 3;
                if (LoaderExt.a(j2, this) != coroutineSingletons) {
                    th = thA;
                    immersiveArticleViewModelImpl2 = immersiveArticleViewModelImpl3;
                    immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
                    monitorAction4.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleError(th));
                    monitorAction4.b();
                    monitorAction2 = immersiveArticleViewModelImpl2.I;
                    if (monitorAction2 != null) {
                        monitorAction2.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleFull(th));
                        Result.Companion companion4 = Result.INSTANCE;
                    }
                    monitorAction3 = immersiveArticleViewModelImpl2.I;
                    if (monitorAction3 != null) {
                        monitorAction3.b();
                        Result.Companion companion5 = Result.INSTANCE;
                    }
                }
            }
            immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        immersiveArticlePage = (ImmersiveArticlePage) obj2;
        MutableStateFlow mutableStateFlow = immersiveArticleViewModelImpl3.A;
        do {
            value = mutableStateFlow.getValue();
            ImmersiveAudio immersiveAudio = immersiveArticlePage.d;
            list = immersiveArticlePage.f67677c;
            if (immersiveAudio != null) {
                Sound sound = immersiveAudio.d;
                long j3 = sound.f67142c;
                String str2 = sound.f67141b;
                AssetImage assetImage7 = immersiveAudio.f67706a;
                String str3 = immersiveAudio.f67707b;
                String str4 = immersiveAudio.f67708c;
                if (str4 == null) {
                    str4 = "";
                }
                audioPlayerItemUiModel = new AudioPlayerItemUiModel(j3, str2, assetImage7, str3, str4);
            } else {
                audioPlayerItemUiModel = null;
            }
        } while (!mutableStateFlow.i(value, audioPlayerItemUiModel));
        if (list == null) {
            str = null;
            break;
        }
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                str = null;
                break;
            }
            ImmersiveArticleSection immersiveArticleSection = (ImmersiveArticleSection) it.next();
            if (immersiveArticleSection instanceof VideoCtaArticleSection) {
                Asset asset = ((VideoCtaArticleSection) immersiveArticleSection).f67747k;
                if (asset == null || (assetImage6 = asset.f67106a) == null || (str = assetImage6.f67108a) == null || !StringExtKt.a(str)) {
                    str = null;
                }
            } else if (immersiveArticleSection instanceof AssetArticleSection) {
                Asset asset2 = ((AssetArticleSection) immersiveArticleSection).f67616h;
                if (asset2 == null || (assetImage5 = asset2.f67106a) == null || (str = assetImage5.f67108a) == null || !StringExtKt.a(str)) {
                    str = null;
                }
            } else if (immersiveArticleSection instanceof TextArticleSection) {
                Asset asset3 = ((TextArticleSection) immersiveArticleSection).l;
                if (asset3 == null || (assetImage4 = asset3.f67106a) == null || (str = assetImage4.f67108a) == null || !StringExtKt.a(str)) {
                    str = null;
                }
            } else if (immersiveArticleSection instanceof WallpaperArticleSection) {
                Asset asset4 = ((WallpaperArticleSection) immersiveArticleSection).f67751e;
                if (asset4 == null || (assetImage3 = asset4.f67106a) == null || (str = assetImage3.f67108a) == null || !StringExtKt.a(str)) {
                    str = null;
                }
            } else if (immersiveArticleSection instanceof CarouselArticleSection) {
                Iterator it2 = ((CarouselArticleSection) immersiveArticleSection).d.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    assetImage2 = ((ImmersiveArticleAsset) next).f67629a;
                } while (!StringExtKt.a(assetImage2 != null ? assetImage2.f67108a : null));
                ImmersiveArticleAsset immersiveArticleAsset = (ImmersiveArticleAsset) next;
                if (immersiveArticleAsset == null || (assetImage = immersiveArticleAsset.f67629a) == null) {
                    str = null;
                } else {
                    str = assetImage.f67108a;
                }
            } else {
                str = null;
            }
        } while (str == null);
        BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImpl3), null, null, new ImmersiveArticleViewModelImpl$preloadSharedImage$1(immersiveArticleViewModelImpl3, str, null), 3);
        if (ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl3, immersiveArticlePage)) {
            list.getClass();
            Object obj3 = list.get(0);
            obj3.getClass();
            ((VideoCtaArticleSection) obj3).l = true;
        }
        this.f58307b = obj2;
        this.f58308c = immersiveArticleViewModelImpl3;
        this.d = monitorAction4;
        this.f58309e = immersiveArticlePage;
        this.f58310f = 2;
        if (LoaderExt.a(j2, this) != coroutineSingletons) {
            monitorAction = monitorAction4;
            immersiveArticleViewModelImpl = immersiveArticleViewModelImpl3;
            immersiveArticleViewModelImpl.y.setValue(ImmersiveArticleMapperKt.e(immersiveArticlePage));
            immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
            if (immersiveArticleUiModel != null) {
                listIterator = snapshotStateList.listIterator();
                do {
                    stateListIterator = (StateListIterator) listIterator;
                    if (stateListIterator.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = stateListIterator.next();
                } while (!(((ImmersiveArticleSectionUiModel) next2) instanceof ImmersiveArticle3dSectionUiModel));
                immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) next2;
                if (immersiveArticleSectionUiModel != null) {
                    ImmersiveArticleViewModelImpl.zc(immersiveArticleViewModelImpl, ((ImmersiveArticle3dSectionUiModel) immersiveArticleSectionUiModel).f58638b);
                }
            }
            if (!ImmersiveArticleViewModelImpl.Ac(immersiveArticleViewModelImpl, immersiveArticlePage)) {
                immersiveArticleViewModelImpl.w.setValue(Boolean.FALSE);
                monitorAction.b();
            }
            BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImpl), null, null, new ImmersiveArticleViewModelImpl$requestProductDetails$1(immersiveArticleViewModelImpl, immersiveArticleViewModelImpl.f58273b.a(immersiveArticleViewModelImpl.H, ImmersiveArticleMonitoring.Action.LoadImmersiveProducts.f48912a), null), 3);
            thA = Result.a(obj2);
            if (thA != null) {
                immersiveArticleViewModelImpl3.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
                this.f58307b = obj2;
                this.f58308c = immersiveArticleViewModelImpl3;
                this.d = monitorAction4;
                this.f58309e = thA;
                this.f58310f = 3;
                if (LoaderExt.a(j2, this) != coroutineSingletons) {
                    th = thA;
                    immersiveArticleViewModelImpl2 = immersiveArticleViewModelImpl3;
                    immersiveArticleViewModelImpl2.x.setValue(Boolean.TRUE);
                    monitorAction4.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleError(th));
                    monitorAction4.b();
                    monitorAction2 = immersiveArticleViewModelImpl2.I;
                    if (monitorAction2 != null) {
                        monitorAction2.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleFull(th));
                        Result.Companion companion6 = Result.INSTANCE;
                    }
                    monitorAction3 = immersiveArticleViewModelImpl2.I;
                    if (monitorAction3 != null) {
                        monitorAction3.b();
                        Result.Companion companion7 = Result.INSTANCE;
                    }
                }
            }
            immersiveArticleViewModelImpl3.w.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        return coroutineSingletons;
    }
}
