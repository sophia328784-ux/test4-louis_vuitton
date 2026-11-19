package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import android.view.SurfaceView;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.Scene;
import com.google.android.filament.TransformManager;
import com.google.android.filament.gltfio.AssetLoader;
import com.google.android.filament.gltfio.FilamentAsset;
import com.google.android.filament.gltfio.ResourceLoader;
import com.google.android.filament.gltfio.UbershaderProvider;
import com.google.android.filament.utils.Float3;
import com.google.android.filament.utils.Mat4;
import com.google.android.filament.utils.Quaternion;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer;
import defpackage.l90;
import defpackage.md;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadAssetAndAddSneaker$2", f = "Lv3dViewerHelper.kt", l = {749}, m = "invokeSuspend", v = 2)
final class Lv3dViewerHelper$loadAssetAndAddSneaker$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58603b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lv3dViewerHelper f58604c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadAssetAndAddSneaker$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadAssetAndAddSneaker$2$1", f = "Lv3dViewerHelper.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ ByteBuffer f58605b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Lv3dViewerHelper f58606c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ByteBuffer byteBuffer, Lv3dViewerHelper lv3dViewerHelper, Continuation continuation) {
            super(2, continuation);
            this.f58605b = byteBuffer;
            this.f58606c = lv3dViewerHelper;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f58605b, this.f58606c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            ByteBuffer byteBuffer = this.f58605b;
            if (byteBuffer == null) {
                md.k("Required value was null.");
                return null;
            }
            Lv3dViewerHelper lv3dViewerHelper = this.f58606c;
            TransformManager transformManager = lv3dViewerHelper.t;
            ModelViewer modelViewer = lv3dViewerHelper.r;
            Engine engine = modelViewer.f58516b;
            Scene scene = modelViewer.f58520h;
            AssetLoader assetLoader = new AssetLoader(engine, new UbershaderProvider(engine), EntityManager.c());
            lv3dViewerHelper.e0 = assetLoader;
            ResourceLoader resourceLoader = new ResourceLoader(engine);
            FilamentAsset filamentAssetA = assetLoader.a(byteBuffer);
            if (filamentAssetA != null) {
                resourceLoader.g(filamentAssetA);
                filamentAssetA.h();
            }
            filamentAssetA.getClass();
            lv3dViewerHelper.d0 = filamentAssetA;
            int iB = filamentAssetA.b(lv3dViewerHelper.f58505c);
            lv3dViewerHelper.m = iB;
            Mat4 mat4B = lv3dViewerHelper.b(iB);
            mat4B.f28665a.d = 1.0f;
            mat4B.f28666b.d = -1.0f;
            mat4B.f28667c.d = 1.0f;
            lv3dViewerHelper.d(lv3dViewerHelper.m, mat4B);
            Quaternion.Companion companion = Quaternion.f28668e;
            Float3 float3 = new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            companion.getClass();
            Quaternion quaternionA = Quaternion.Companion.a(float3, 30.0f);
            Quaternion quaternionA2 = Quaternion.Companion.a(new Float3(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM), 40.0f);
            float f2 = quaternionA.d;
            float f3 = quaternionA2.f28669a;
            float f4 = quaternionA.f28669a;
            float f5 = quaternionA2.d;
            float f6 = quaternionA.f28670b;
            float f7 = quaternionA2.f28671c;
            float f8 = quaternionA.f28671c;
            float f9 = quaternionA2.f28670b;
            lv3dViewerHelper.d(lv3dViewerHelper.m, new Quaternion(((f6 * f7) + ((f4 * f5) + (f2 * f3))) - (f8 * f9), (f8 * f3) + (f6 * f5) + ((f2 * f9) - (f4 * f7)), (f8 * f5) + (((f4 * f9) + (f2 * f7)) - (f6 * f3)), (((f2 * f5) - (f4 * f3)) - (f6 * f9)) - (f8 * f7)).a());
            scene.b(lv3dViewerHelper.m);
            lv3dViewerHelper.b(lv3dViewerHelper.m);
            transformManager.f(transformManager.c(lv3dViewerHelper.m), transformManager.c(lv3dViewerHelper.D));
            if (lv3dViewerHelper.u.m(lv3dViewerHelper.m)) {
                for (int i2 : transformManager.b(transformManager.c(lv3dViewerHelper.m))) {
                    scene.b(i2);
                }
            }
            lv3dViewerHelper.y.invoke(Boolean.TRUE);
            SurfaceView surfaceView = lv3dViewerHelper.f58503a;
            surfaceView.setOnTouchListener(new l90(lv3dViewerHelper, surfaceView, 1));
            lv3dViewerHelper.h(false);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dViewerHelper$loadAssetAndAddSneaker$2(Lv3dViewerHelper lv3dViewerHelper, String str, Continuation continuation) {
        super(2, continuation);
        this.f58604c = lv3dViewerHelper;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dViewerHelper$loadAssetAndAddSneaker$2(this.f58604c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dViewerHelper$loadAssetAndAddSneaker$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58603b;
        if (i2 == 0) {
            ResultKt.b(obj);
            String str = this.d;
            str.getClass();
            InputStream inputStreamOpenStream = new URL(str).openStream();
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStreamOpenStream);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ByteStreamsKt.a(bufferedInputStream, byteArrayOutputStream);
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(byteArrayOutputStream.toByteArray());
                    byteArrayOutputStream.close();
                    bufferedInputStream.close();
                    byteArrayOutputStream.close();
                    CloseableKt.a(inputStreamOpenStream, null);
                    DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                    MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(byteBufferWrap, this.f58604c, null);
                    this.f58603b = 1;
                    if (BuildersKt.f(mainCoroutineDispatcher, anonymousClass1, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(byteArrayOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.a(inputStreamOpenStream, th3);
                    throw th4;
                }
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
