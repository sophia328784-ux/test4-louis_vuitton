package com.vuitton.android.presentation.screen.portal.components;

import android.content.Context;
import coil3.SingletonImageLoader;
import coil3.request.ImageRequest;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalDataUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.components.PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1", f = "PortalSliderComponent.kt", l = {}, m = "invokeSuspend", v = 2)
final class PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f63273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PortalUiModel.SlideUiModel f63274c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1(boolean z, PortalUiModel.SlideUiModel slideUiModel, Context context, Continuation continuation) {
        super(2, continuation);
        this.f63273b = z;
        this.f63274c = slideUiModel;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1(this.f63273b, this.f63274c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PortalSliderComponentKt$PortalSliderComponent$2$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        String str2;
        String str3;
        PortalDataUiModel portalDataUiModel = this.f63274c.f63331c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!this.f63273b) {
            AssetVideoUiModel assetVideoUiModel = portalDataUiModel.d.f51781c;
            if (assetVideoUiModel == null || (str3 = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str3)) {
                AssetImageUiModel assetImageUiModel = portalDataUiModel.d.f51780b;
                str = (assetImageUiModel == null || (str2 = assetImageUiModel.f51778b) == null || !StringExtKt.a(str2)) ? null : portalDataUiModel.d.f51780b.f51778b;
            } else {
                str = portalDataUiModel.d.f51781c.d;
            }
            if (str != null) {
                Context context = this.d;
                ImageRequest.Builder builder = new ImageRequest.Builder(context);
                builder.f21623c = str;
                SingletonImageLoader.a(context).d(builder.a());
            }
        }
        return Unit.f71739a;
    }
}
