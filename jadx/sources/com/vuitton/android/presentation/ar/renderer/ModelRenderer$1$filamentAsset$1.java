package com.vuitton.android.presentation.ar.renderer;

import com.google.android.filament.gltfio.FilamentAsset;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.md;
import defpackage.tr;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
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
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/google/android/filament/gltfio/FilamentAsset;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.ar.renderer.ModelRenderer$1$filamentAsset$1", f = "ModelRenderer.kt", l = {83}, m = "invokeSuspend", v = 2)
final class ModelRenderer$1$filamentAsset$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super FilamentAsset>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ModelRenderer f50650c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModelRenderer$1$filamentAsset$1(ModelRenderer modelRenderer, Continuation continuation) {
        super(2, continuation);
        this.f50650c = modelRenderer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ModelRenderer$1$filamentAsset$1(this.f50650c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModelRenderer$1$filamentAsset$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        ModelRenderer modelRenderer = this.f50650c;
        String str = modelRenderer.f50623c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50649b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            String strConcat = str.concat(".glb");
            String strH = tr.h(modelRenderer.f50622b.a().w, str, ".glb");
            this.f50649b = 1;
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            obj = BuildersKt.f(DefaultIoScheduler.f75161b, new ModelRenderer$getCacheFile$2(modelRenderer, strConcat, strH, null), this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        File file = (File) obj;
        if (file != null) {
            FileInputStream fileInputStream = new FileInputStream(file);
            int i3 = ModelRenderer.o;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i4 = fileInputStream.read(bArr);
                if (i4 == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, i4);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (byteArray != null) {
                return modelRenderer.f50624e.f50585h.a(ByteBuffer.wrap(byteArray));
            }
        }
        return null;
    }
}
