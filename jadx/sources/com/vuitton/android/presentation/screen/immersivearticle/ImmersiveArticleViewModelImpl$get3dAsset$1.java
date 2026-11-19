package com.vuitton.android.presentation.screen.immersivearticle;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.immersivearticle.ImmersiveArticleMonitoring;
import com.vuitton.android.domain.usecase.model3dasset.GetModel3dAssetUseCase;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.Model3dAssetNameUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.Model3dAssetTypeUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.Model3dAssetUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.Model3dAssetUiModelMapperKt$WhenMappings;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.immersivearticle.Model3dAsset;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$get3dAsset$1", f = "ImmersiveArticleViewModelImpl.kt", l = {341}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$get3dAsset$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58303b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f58304c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f58305e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleViewModelImpl f58306f;
    public final /* synthetic */ MonitorAction g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$get3dAsset$1(String str, ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f58305e = str;
        this.f58306f = immersiveArticleViewModelImpl;
        this.g = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$get3dAsset$1(this.f58305e, this.f58306f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$get3dAsset$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl;
        MonitorAction monitorAction;
        Object next;
        Object next2;
        Object value;
        Lv3dViewerUiModel lv3dViewerUiModel;
        String str;
        String str2;
        Model3dAssetTypeUiModel model3dAssetTypeUiModel;
        Model3dAssetNameUiModel model3dAssetNameUiModel;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            String str3 = this.f58305e;
            if (str3 != null) {
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl2 = this.f58306f;
                GetModel3dAssetUseCase getModel3dAssetUseCase = immersiveArticleViewModelImpl2.f58280k;
                SkuIdUiModel.f61763c.getClass();
                SkuId.Companion companion = SkuId.INSTANCE;
                this.f58303b = immersiveArticleViewModelImpl2;
                MonitorAction monitorAction2 = this.g;
                this.f58304c = monitorAction2;
                this.d = 1;
                objA = getModel3dAssetUseCase.a(str3, this);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                immersiveArticleViewModelImpl = immersiveArticleViewModelImpl2;
                monitorAction = monitorAction2;
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        monitorAction = this.f58304c;
        immersiveArticleViewModelImpl = this.f58303b;
        ResultKt.b(obj);
        objA = ((Result) obj).f71708b;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List<Model3dAsset> list = (List) objA;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (Model3dAsset model3dAsset : list) {
                model3dAsset.getClass();
                int i3 = Model3dAssetUiModelMapperKt$WhenMappings.f58810a[model3dAsset.f67709a.ordinal()];
                if (i3 == 1) {
                    model3dAssetTypeUiModel = Model3dAssetTypeUiModel.IMAGE;
                } else if (i3 == 2) {
                    model3dAssetTypeUiModel = Model3dAssetTypeUiModel.ASSET_ANDROID_3D;
                } else {
                    if (i3 != 3) {
                        v40.g();
                        return null;
                    }
                    model3dAssetTypeUiModel = Model3dAssetTypeUiModel.ASSET_IOS_3D;
                }
                String str4 = model3dAsset.f67710b;
                int i4 = Model3dAssetUiModelMapperKt$WhenMappings.f58811b[model3dAsset.f67711c.ordinal()];
                if (i4 == 1) {
                    model3dAssetNameUiModel = Model3dAssetNameUiModel.LD_R;
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    model3dAssetNameUiModel = Model3dAssetNameUiModel.BACKGROUND_3D;
                }
                arrayList.add(new Model3dAssetUiModel(model3dAssetTypeUiModel, str4, model3dAssetNameUiModel));
            }
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Model3dAssetUiModel model3dAssetUiModel = (Model3dAssetUiModel) next;
                if (model3dAssetUiModel.f58807a == Model3dAssetTypeUiModel.ASSET_ANDROID_3D && model3dAssetUiModel.f58809c == Model3dAssetNameUiModel.LD_R) {
                    break;
                }
            }
            Model3dAssetUiModel model3dAssetUiModel2 = (Model3dAssetUiModel) next;
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it2.next();
                Model3dAssetUiModel model3dAssetUiModel3 = (Model3dAssetUiModel) next2;
                if (model3dAssetUiModel3.f58807a == Model3dAssetTypeUiModel.IMAGE && model3dAssetUiModel3.f58809c == Model3dAssetNameUiModel.BACKGROUND_3D) {
                    break;
                }
            }
            Model3dAssetUiModel model3dAssetUiModel4 = (Model3dAssetUiModel) next2;
            MutableStateFlow mutableStateFlow = immersiveArticleViewModelImpl.F;
            do {
                value = mutableStateFlow.getValue();
                lv3dViewerUiModel = (Lv3dViewerUiModel) immersiveArticleViewModelImpl.F.getValue();
                str = model3dAssetUiModel2 != null ? model3dAssetUiModel2.f58808b : null;
                if (str == null) {
                    str = "";
                }
                str2 = model3dAssetUiModel4 != null ? model3dAssetUiModel4.f58808b : null;
            } while (!mutableStateFlow.i(value, Lv3dViewerUiModel.a(lv3dViewerUiModel, str, str2 != null ? str2 : "", null, 120)));
            monitorAction.b();
            MonitorAction monitorAction3 = immersiveArticleViewModelImpl.I;
            if (monitorAction3 != null) {
                monitorAction3.b();
                Result.Companion companion3 = Result.INSTANCE;
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            immersiveArticleViewModelImpl.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
            immersiveArticleViewModelImpl.Q2(Error3dType.MissingModel);
            monitorAction.d(new ImmersiveArticleMonitoring.Error.LoadImmersive3DModelsError(thA));
            monitorAction.b();
            MonitorAction monitorAction4 = immersiveArticleViewModelImpl.I;
            if (monitorAction4 != null) {
                monitorAction4.d(new ImmersiveArticleMonitoring.Error.OpenImmersiveArticleFull(thA));
            }
            MonitorAction monitorAction5 = immersiveArticleViewModelImpl.I;
            if (monitorAction5 != null) {
                monitorAction5.b();
            }
        }
        immersiveArticleViewModelImpl.G.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
