package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import android.content.Context;
import android.graphics.Bitmap;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.utils.TextureType;
import com.vuitton.android.presentation.imageloading.ImageDownloader;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MaterialHelperKt;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$setupMaterial$1", f = "Lv3dViewerHelper.kt", l = {678}, m = "invokeSuspend", v = 2)
final class Lv3dViewerHelper$setupMaterial$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lv3dViewerHelper f58610c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dViewerHelper$setupMaterial$1(Lv3dViewerHelper lv3dViewerHelper, Continuation continuation) {
        super(2, continuation);
        this.f58610c = lv3dViewerHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dViewerHelper$setupMaterial$1(this.f58610c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dViewerHelper$setupMaterial$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58609b;
        Lv3dViewerHelper lv3dViewerHelper = this.f58610c;
        if (i2 == 0) {
            ResultKt.b(obj);
            Context context = lv3dViewerHelper.v;
            String str = lv3dViewerHelper.b0;
            if (str == null) {
                Intrinsics.h("backgroundUrl");
                throw null;
            }
            this.f58609b = 1;
            obj = ImageDownloader.b(context, str, this);
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
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap != null) {
            try {
                Texture textureB = MaterialHelperKt.b(lv3dViewerHelper.r.f58516b, bitmap, TextureType.COLOR);
                TextureSampler textureSampler = new TextureSampler();
                MaterialInstance materialInstance = lv3dViewerHelper.G;
                if (materialInstance == null) {
                    Intrinsics.h("backgroundMaterialInstance");
                    throw null;
                }
                materialInstance.i("texture", textureB, textureSampler);
                lv3dViewerHelper.Z = true;
            } catch (Exception unused) {
                lv3dViewerHelper.z.invoke(Error3dType.MissingBackground);
            }
        }
        return Unit.f71739a;
    }
}
