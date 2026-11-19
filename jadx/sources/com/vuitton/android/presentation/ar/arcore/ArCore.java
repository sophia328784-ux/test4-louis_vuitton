package com.vuitton.android.presentation.ar.arcore;

import android.app.Activity;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraManager;
import android.media.Image;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import com.google.android.filament.Camera;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Scene;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.TransformManager;
import com.google.android.filament.VertexBuffer;
import com.google.ar.core.Config;
import com.google.ar.core.Frame;
import com.google.ar.core.Pose;
import com.google.ar.core.Session;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.presentation.ar.ArException;
import com.vuitton.android.presentation.ar.M4;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V2A;
import com.vuitton.android.presentation.ar.V3;
import com.vuitton.android.presentation.ar.filament.Filament;
import defpackage.r81;
import defpackage.z1;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/ArCore;", "", "Landroid/app/Activity;", ActionFloatingViewItem.f37018a, "Lcom/vuitton/android/presentation/ar/filament/Filament;", "filament", "Landroid/view/View;", "view", "<init>", "(Landroid/app/Activity;Lcom/vuitton/android/presentation/ar/filament/Filament;Landroid/view/View;)V", "Companion", "ActiveBackground", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ArCore {
    public static final /* synthetic */ int z = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Activity f50559a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Filament f50560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f50561c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Texture f50562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Material f50563f;
    public MaterialInstance g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public VertexBuffer f50564h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public IndexBuffer f50565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Texture f50566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Material f50567k;
    public MaterialInstance l;
    public VertexBuffer m;
    public IndexBuffer n;
    public Texture o;
    public int p;
    public int q;
    public ActiveBackground r;
    public final Session s;
    public final String t;
    public final CameraManager u;
    public long v;
    public Frame w;
    public int x;
    public boolean y;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/ArCore$ActiveBackground;", "", "NONE", "FLAT", "DEPTH", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ActiveBackground {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ActiveBackground[] $VALUES;
        public static final ActiveBackground DEPTH;
        public static final ActiveBackground FLAT;
        public static final ActiveBackground NONE;

        static {
            ActiveBackground activeBackground = new ActiveBackground("NONE", 0);
            NONE = activeBackground;
            ActiveBackground activeBackground2 = new ActiveBackground("FLAT", 1);
            FLAT = activeBackground2;
            ActiveBackground activeBackground3 = new ActiveBackground("DEPTH", 2);
            DEPTH = activeBackground3;
            ActiveBackground[] activeBackgroundArr = {activeBackground, activeBackground2, activeBackground3};
            $VALUES = activeBackgroundArr;
            $ENTRIES = EnumEntriesKt.a(activeBackgroundArr);
        }

        public static ActiveBackground valueOf(String str) {
            return (ActiveBackground) Enum.valueOf(ActiveBackground.class, str);
        }

        public static ActiveBackground[] values() {
            return (ActiveBackground[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\bR\u0014\u0010\r\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\bR\u0014\u0010\u000e\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u000f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\b¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/ArCore$Companion;", "", "", "NEAR", "F", "FAR", "", "POSITION_BUFFER_INDEX", "I", "UV_BUFFER_INDEX", "ROTATION_0", "ROTATION_90", "ROTATION_180", "ROTATION_270", "ROTATION_360", "TRANSLATION_FACTOR", "NB_ELEMENTS_TO_SET", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ArCore(Activity activity, Filament filament, View view) {
        activity.getClass();
        filament.getClass();
        view.getClass();
        this.f50559a = activity;
        this.f50560b = filament;
        this.f50561c = view;
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        int i2 = iArr[0];
        GLES20.glBindTexture(36197, i2);
        this.d = i2;
        this.r = ActiveBackground.NONE;
        Session session = new Session(activity);
        Config config = session.getConfig();
        config.setPlaneFindingMode(Config.PlaneFindingMode.HORIZONTAL_AND_VERTICAL);
        config.setFocusMode(Config.FocusMode.AUTO);
        Config.DepthMode depthMode = Config.DepthMode.AUTOMATIC;
        config.setDepthMode(session.isDepthModeSupported(depthMode) ? depthMode : Config.DepthMode.DISABLED);
        config.setLightEstimationMode(Config.LightEstimationMode.ENVIRONMENTAL_HDR);
        config.setUpdateMode(Config.UpdateMode.LATEST_CAMERA_IMAGE);
        session.configure(config);
        session.setCameraTextureName(i2);
        this.s = session;
        String cameraId = session.getCameraConfig().getCameraId();
        cameraId.getClass();
        this.t = cameraId;
        Object systemService = ContextCompat.getSystemService(activity, CameraManager.class);
        systemService.getClass();
        this.u = (CameraManager) systemService;
    }

    public static ModelBuffers e() {
        V2A v2a = new V2A(new float[8]);
        V2A v2a2 = new V2A(new float[8]);
        int i2 = 0;
        while (true) {
            float f2 = i2 / 1.0f;
            float f3 = (f2 * 2.0f) - 1.0f;
            int i3 = 0;
            while (true) {
                float f4 = i3 / 1.0f;
                int i4 = (i2 * 2) + i3;
                MatrixKt.g(v2a, i4, (f4 * 2.0f) - 1.0f, f3);
                MatrixKt.g(v2a2, i4, f4, f2);
                if (i3 == 1) {
                    break;
                }
                i3++;
            }
            if (i2 == 1) {
                return new ModelBuffers(v2a, v2a2, new short[]{0, 1, 2, 2, 1, 3});
            }
            i2++;
        }
    }

    public final void a() throws ArException.InvalidDisplayRotationError {
        int i2;
        int i3;
        int i4;
        Frame frame = this.w;
        if (frame == null) {
            return;
        }
        if (frame == null) {
            Intrinsics.h("frame");
            throw null;
        }
        int[] imageDimensions = frame.getCamera().getTextureIntrinsics().getImageDimensions();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        int i5 = Build.VERSION.SDK_INT;
        Activity activity = this.f50559a;
        Display display = i5 >= 30 ? activity.getDisplay() : activity.getWindowManager().getDefaultDisplay();
        display.getClass();
        display.getRealMetrics(displayMetrics);
        int rotation = display.getRotation();
        int iC = displayMetrics.widthPixels;
        int iC2 = displayMetrics.heightPixels;
        if (rotation == 0) {
            i2 = 0;
        } else if (rotation == 1) {
            i2 = 90;
        } else if (rotation == 2) {
            i2 = 180;
        } else {
            if (rotation != 3) {
                throw new ArException.InvalidDisplayRotationError();
            }
            i2 = Sink.ORIENTATION_270;
        }
        this.x = i2;
        Object obj = this.u.getCameraCharacteristics(this.t).get(CameraCharacteristics.SENSOR_ORIENTATION);
        obj.getClass();
        int iIntValue = ((Number) obj).intValue();
        if (iIntValue == 0 || iIntValue == 180) {
            if (rotation == 0 || rotation == 2) {
                i3 = imageDimensions[0];
                i4 = imageDimensions[1];
            } else {
                i3 = imageDimensions[1];
                i4 = imageDimensions[0];
            }
        } else if (rotation == 0 || rotation == 2) {
            i3 = imageDimensions[1];
            i4 = imageDimensions[0];
        } else {
            i3 = imageDimensions[0];
            i4 = imageDimensions[1];
        }
        float f2 = i3 / i4;
        float f3 = iC;
        float f4 = iC2;
        if (f3 / f4 < f2) {
            iC2 = MathKt.c(f3 / f2);
        } else {
            iC = MathKt.c(f4 * f2);
        }
        View view = this.f50561c;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            r81.d("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.width = iC;
        layoutParams2.height = iC2;
        view.setLayoutParams(layoutParams2);
        this.s.setDisplayGeometry(rotation, iC, iC2);
    }

    public final void b() {
        Engine engine = this.f50560b.f50582c;
        int i2 = this.q;
        if (i2 != 0) {
            engine.n(i2);
        }
        int i3 = this.p;
        if (i3 != 0) {
            engine.n(i3);
        }
        MaterialInstance materialInstance = this.g;
        if (materialInstance != null) {
            if (materialInstance == null) {
                Intrinsics.h("flatMaterialInstance");
                throw null;
            }
            engine.r(materialInstance);
        }
        MaterialInstance materialInstance2 = this.l;
        if (materialInstance2 != null) {
            if (materialInstance2 == null) {
                Intrinsics.h("depthMaterialInstance");
                throw null;
            }
            engine.r(materialInstance2);
        }
        Material material = this.f50563f;
        if (material != null) {
            if (material == null) {
                Intrinsics.h("flatMaterial");
                throw null;
            }
            engine.q(material);
        }
        Material material2 = this.f50567k;
        if (material2 != null) {
            if (material2 == null) {
                Intrinsics.h("depthMaterial");
                throw null;
            }
            engine.q(material2);
        }
        VertexBuffer vertexBuffer = this.f50564h;
        if (vertexBuffer != null) {
            if (vertexBuffer == null) {
                Intrinsics.h("flatVertexBuffer");
                throw null;
            }
            engine.w(vertexBuffer);
        }
        IndexBuffer indexBuffer = this.f50565i;
        if (indexBuffer != null) {
            if (indexBuffer == null) {
                Intrinsics.h("flatIndexBuffer");
                throw null;
            }
            engine.p(indexBuffer);
        }
        VertexBuffer vertexBuffer2 = this.m;
        if (vertexBuffer2 != null) {
            if (vertexBuffer2 == null) {
                Intrinsics.h("depthVertexBuffer");
                throw null;
            }
            engine.w(vertexBuffer2);
        }
        IndexBuffer indexBuffer2 = this.n;
        if (indexBuffer2 != null) {
            if (indexBuffer2 == null) {
                Intrinsics.h("depthIndexBuffer");
                throw null;
            }
            engine.p(indexBuffer2);
        }
        Texture texture = this.f50562e;
        if (texture != null) {
            if (texture == null) {
                Intrinsics.h("flatCameraTexture");
                throw null;
            }
            engine.v(texture);
        }
        Texture texture2 = this.f50566j;
        if (texture2 != null) {
            if (texture2 == null) {
                Intrinsics.h("depthCameraTexture");
                throw null;
            }
            engine.v(texture2);
        }
        Texture texture3 = this.o;
        if (texture3 != null) {
            if (texture3 == null) {
                Intrinsics.h("depthTexture");
                throw null;
            }
            engine.v(texture3);
        }
        EntityManager entityManagerC = EntityManager.c();
        entityManagerC.getClass();
        int i4 = this.q;
        if (i4 != 0) {
            entityManagerC.b(i4);
        }
        int i5 = this.p;
        if (i5 != 0) {
            entityManagerC.b(i5);
        }
        this.s.close();
    }

    public final void c(Image image) throws IOException {
        TextureSampler textureSampler = new TextureSampler(TextureSampler.MinFilter.LINEAR, TextureSampler.MagFilter.LINEAR, TextureSampler.WrapMode.CLAMP_TO_EDGE);
        Texture.Builder builder = new Texture.Builder();
        Texture.nBuilderImportTexture(builder.f28580b, this.d);
        builder.c(Texture.Sampler.SAMPLER_EXTERNAL);
        builder.b(Texture.InternalFormat.RGB8);
        Filament filament = this.f50560b;
        this.f50566j = builder.a(filament.f50582c);
        ByteBuffer byteBufferE = MatrixKt.e(this.f50559a, "materials/depth.filamat");
        Material.Builder builder2 = new Material.Builder();
        int iRemaining = byteBufferE.remaining();
        builder2.f28559a = byteBufferE;
        builder2.f28560b = iRemaining;
        Engine engine = filament.f50582c;
        Material materialA = builder2.a(engine);
        this.f50567k = materialA;
        MaterialInstance materialInstanceB = materialA.b();
        Texture texture = this.f50566j;
        if (texture == null) {
            Intrinsics.h("depthCameraTexture");
            throw null;
        }
        materialInstanceB.i("cameraTexture", texture, textureSampler);
        Texture.Builder builder3 = new Texture.Builder();
        int width = image.getWidth();
        long j2 = builder3.f28580b;
        Texture.nBuilderWidth(j2, width);
        Texture.nBuilderHeight(j2, image.getHeight());
        builder3.c(Texture.Sampler.SAMPLER_2D);
        builder3.b(Texture.InternalFormat.RG8);
        Texture textureA = builder3.a(engine);
        this.o = textureA;
        materialInstanceB.i("depthTexture", textureA, new TextureSampler());
        materialInstanceB.g(MaterialInstance.FloatElement.FLOAT4, MatrixKt.c().f50551a);
        this.l = materialInstanceB;
        ModelBuffers modelBuffersE = e();
        short[] sArr = modelBuffersE.f50572c;
        V2A v2a = modelBuffersE.f50570a;
        RenderableManager.Builder builder4 = new RenderableManager.Builder(2);
        long j3 = builder4.f28567b;
        RenderableManager.nBuilderCastShadows(j3, false);
        RenderableManager.nBuilderReceiveShadows(j3, false);
        RenderableManager.nBuilderCulling(j3, false);
        RenderableManager.PrimitiveType primitiveType = RenderableManager.PrimitiveType.TRIANGLES;
        VertexBuffer.Builder builder5 = new VertexBuffer.Builder();
        v2a.getClass();
        float[] fArr = v2a.f50556a;
        int length = fArr.length / 2;
        long j4 = builder5.f28596b;
        VertexBuffer.nBuilderVertexCount(j4, length);
        VertexBuffer.nBuilderBufferCount(j4, 2);
        VertexBuffer.VertexAttribute vertexAttribute = VertexBuffer.VertexAttribute.POSITION;
        VertexBuffer.AttributeType attributeType = VertexBuffer.AttributeType.FLOAT2;
        builder5.a(vertexAttribute, 0, attributeType, 0);
        builder5.a(VertexBuffer.VertexAttribute.UV0, 1, attributeType, 0);
        VertexBuffer vertexBufferB = builder5.b(engine);
        this.m = vertexBufferB;
        vertexBufferB.h(0, engine, MatrixKt.i(fArr));
        vertexBufferB.h(1, engine, MatrixKt.i(modelBuffersE.f50571b.f50556a));
        IndexBuffer.Builder builder6 = new IndexBuffer.Builder();
        int length2 = sArr.length;
        long j5 = builder6.f28547b;
        IndexBuffer.nBuilderIndexCount(j5, length2);
        IndexBuffer.nBuilderBufferType(j5, IndexBuffer.Builder.IndexType.USHORT.ordinal());
        IndexBuffer indexBufferA = builder6.a(engine);
        this.n = indexBufferA;
        ShortBuffer shortBufferAllocate = ShortBuffer.allocate(sArr.length);
        shortBufferAllocate.put(sArr);
        shortBufferAllocate.rewind();
        indexBufferA.g(0, engine, shortBufferAllocate);
        RenderableManager.nBuilderGeometry(builder4.f28567b, 0, primitiveType.a(), vertexBufferB.g(), indexBufferA.f());
        MaterialInstance materialInstance = this.l;
        if (materialInstance == null) {
            Intrinsics.h("depthMaterialInstance");
            throw null;
        }
        RenderableManager.nBuilderMaterial(j3, 0, materialInstance.a());
        int iA = EntityManager.c().a();
        this.p = iA;
        builder4.a(engine, iA);
    }

    public final void d(Filament filament) {
        ActiveBackground activeBackground = this.r;
        ActiveBackground activeBackground2 = ActiveBackground.FLAT;
        if (activeBackground == activeBackground2) {
            return;
        }
        MaterialInstance materialInstance = this.g;
        if (materialInstance == null) {
            Intrinsics.h("flatMaterialInstance");
            throw null;
        }
        materialInstance.g(MaterialInstance.FloatElement.FLOAT4, g().f50551a);
        if (this.r == ActiveBackground.DEPTH) {
            filament.f50583e.e(this.p);
        }
        filament.f50583e.b(this.q);
        this.r = activeBackground2;
    }

    public final void f(Frame frame, Filament filament) throws IOException, ArException.InvalidDisplayRotationError {
        Throwable th;
        int i2;
        Filament filament2;
        filament.getClass();
        Camera camera = filament.f50584f;
        Engine engine = filament.f50582c;
        Scene scene = filament.f50583e;
        boolean z2 = this.w == null;
        this.w = frame;
        if (z2) {
            a();
            TextureSampler textureSampler = new TextureSampler(TextureSampler.MinFilter.LINEAR, TextureSampler.MagFilter.LINEAR, TextureSampler.WrapMode.CLAMP_TO_EDGE);
            Texture.Builder builder = new Texture.Builder();
            Texture.nBuilderImportTexture(builder.f28580b, this.d);
            builder.c(Texture.Sampler.SAMPLER_EXTERNAL);
            builder.b(Texture.InternalFormat.RGB8);
            Engine engine2 = this.f50560b.f50582c;
            this.f50562e = builder.a(engine2);
            ByteBuffer byteBufferE = MatrixKt.e(this.f50559a, "materials/flat.filamat");
            Material.Builder builder2 = new Material.Builder();
            int iRemaining = byteBufferE.remaining();
            builder2.f28559a = byteBufferE;
            builder2.f28560b = iRemaining;
            Material materialA = builder2.a(engine2);
            this.f50563f = materialA;
            MaterialInstance materialInstanceB = materialA.b();
            Texture texture = this.f50562e;
            if (texture == null) {
                Intrinsics.h("flatCameraTexture");
                throw null;
            }
            materialInstanceB.i("cameraTexture", texture, textureSampler);
            MaterialInstance.FloatElement floatElement = MaterialInstance.FloatElement.FLOAT4;
            materialInstanceB.g(floatElement, MatrixKt.c().f50551a);
            this.g = materialInstanceB;
            ModelBuffers modelBuffersE = e();
            short[] sArr = modelBuffersE.f50572c;
            V2A v2a = modelBuffersE.f50570a;
            RenderableManager.Builder builder3 = new RenderableManager.Builder(1);
            long j2 = builder3.f28567b;
            RenderableManager.nBuilderCastShadows(j2, false);
            RenderableManager.nBuilderReceiveShadows(j2, false);
            RenderableManager.nBuilderCulling(j2, false);
            RenderableManager.PrimitiveType primitiveType = RenderableManager.PrimitiveType.TRIANGLES;
            th = null;
            VertexBuffer.Builder builder4 = new VertexBuffer.Builder();
            v2a.getClass();
            float[] fArr = v2a.f50556a;
            int length = fArr.length / 2;
            long j3 = builder4.f28596b;
            VertexBuffer.nBuilderVertexCount(j3, length);
            VertexBuffer.nBuilderBufferCount(j3, 2);
            VertexBuffer.VertexAttribute vertexAttribute = VertexBuffer.VertexAttribute.POSITION;
            VertexBuffer.AttributeType attributeType = VertexBuffer.AttributeType.FLOAT2;
            builder4.a(vertexAttribute, 0, attributeType, 0);
            builder4.a(VertexBuffer.VertexAttribute.UV0, 1, attributeType, 0);
            VertexBuffer vertexBufferB = builder4.b(engine2);
            this.f50564h = vertexBufferB;
            vertexBufferB.h(0, engine2, MatrixKt.i(fArr));
            vertexBufferB.h(1, engine2, MatrixKt.i(modelBuffersE.f50571b.f50556a));
            IndexBuffer.Builder builder5 = new IndexBuffer.Builder();
            int length2 = sArr.length;
            long j4 = builder5.f28547b;
            IndexBuffer.nBuilderIndexCount(j4, length2);
            IndexBuffer.nBuilderBufferType(j4, IndexBuffer.Builder.IndexType.USHORT.ordinal());
            IndexBuffer indexBufferA = builder5.a(engine2);
            this.f50565i = indexBufferA;
            ShortBuffer shortBufferAllocate = ShortBuffer.allocate(sArr.length);
            shortBufferAllocate.put(sArr);
            shortBufferAllocate.rewind();
            indexBufferA.g(0, engine2, shortBufferAllocate);
            RenderableManager.nBuilderGeometry(builder3.f28567b, 0, primitiveType.a(), vertexBufferB.g(), indexBufferA.f());
            MaterialInstance materialInstance = this.g;
            if (materialInstance == null) {
                Intrinsics.h("flatMaterialInstance");
                throw null;
            }
            RenderableManager.nBuilderMaterial(j2, 0, materialInstance.a());
            int iA = EntityManager.c().a();
            this.q = iA;
            builder3.a(engine2, iA);
            MaterialInstance materialInstance2 = this.g;
            if (materialInstance2 == null) {
                Intrinsics.h("flatMaterialInstance");
                throw null;
            }
            materialInstance2.g(floatElement, g().f50551a);
            scene.b(this.q);
            this.r = ActiveBackground.FLAT;
        } else {
            th = null;
        }
        if (!this.s.isDepthModeSupported(Config.DepthMode.AUTOMATIC)) {
            i2 = 0;
            d(filament);
        } else if (this.y) {
            i2 = 0;
            this.y = false;
        } else {
            try {
                Image imageAcquireDepthImage16Bits = frame.acquireDepthImage16Bits();
                imageAcquireDepthImage16Bits.getClass();
                if (imageAcquireDepthImage16Bits.getPlanes()[0].getBuffer().get(0) != 0) {
                    this.y = true;
                    if (this.o == null) {
                        c(imageAcquireDepthImage16Bits);
                    }
                    Texture texture2 = this.o;
                    if (texture2 == null) {
                        Intrinsics.h("depthTexture");
                        throw th;
                    }
                    texture2.p(engine, new Texture.PixelBufferDescriptor(imageAcquireDepthImage16Bits.getPlanes()[0].getBuffer(), Texture.Format.RG, Texture.Type.UBYTE, 1, 0, 0, 0, new Handler(), new z1(imageAcquireDepthImage16Bits, 5)));
                    ActiveBackground activeBackground = this.r;
                    ActiveBackground activeBackground2 = ActiveBackground.DEPTH;
                    if (activeBackground != activeBackground2) {
                        MaterialInstance materialInstance3 = this.l;
                        if (materialInstance3 == null) {
                            Intrinsics.h("depthMaterialInstance");
                            throw th;
                        }
                        materialInstance3.g(MaterialInstance.FloatElement.FLOAT4, g().f50551a);
                        scene.e(this.q);
                        scene.b(this.p);
                        this.r = activeBackground2;
                    }
                } else {
                    imageAcquireDepthImage16Bits.close();
                    filament2 = filament;
                    try {
                        d(filament2);
                    } catch (Throwable unused) {
                        d(filament2);
                    }
                }
            } catch (Throwable unused2) {
                filament2 = filament;
            }
            i2 = 0;
        }
        V3 v3 = MatrixKt.f50552a;
        float[] fArr2 = new float[16];
        frame.getCamera().getProjectionMatrix(fArr2, i2, 0.1f, 30.0f);
        float[] fArr3 = new M4(fArr2).f50551a;
        fArr3.getClass();
        double[] dArr = new double[fArr3.length];
        int length3 = fArr3.length;
        for (int i3 = 0; i3 < length3; i3++) {
            dArr[i3] = fArr3[i3];
        }
        camera.c(dArr);
        Pose displayOrientedPose = frame.getCamera().getDisplayOrientedPose();
        displayOrientedPose.getClass();
        float[] fArr4 = new float[16];
        displayOrientedPose.toMatrix(fArr4, 0);
        float[] fArr5 = new M4(fArr4).f50551a;
        camera.f(fArr5);
        TransformManager transformManager = engine.f28535b;
        transformManager.getClass();
        boolean zE = transformManager.e(this.p);
        int i4 = this.p;
        transformManager.g(fArr5, zE ? transformManager.c(i4) : transformManager.a(i4));
    }

    public final M4 g() throws ArException.InvalidDisplayRotationError {
        M4 m4J = MatrixKt.j(MatrixKt.c(), 0.5f, 0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        Object obj = this.u.getCameraCharacteristics(this.t).get(CameraCharacteristics.SENSOR_ORIENTATION);
        obj.getClass();
        int iIntValue = ((Number) obj).intValue();
        int i2 = this.x;
        int i3 = 90;
        if (i2 != 0) {
            if (i2 != 90) {
                i3 = Sink.ORIENTATION_180;
                if (i2 == 180) {
                    i3 = 270;
                } else if (i2 != 270) {
                    throw new ArException.InvalidDisplayRotationError();
                }
            } else {
                i3 = 0;
            }
        }
        return MatrixKt.j(MatrixKt.f(m4J, ((iIntValue + i3) + Sink.ORIENTATION_270) % 360, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f), -0.5f, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }
}
