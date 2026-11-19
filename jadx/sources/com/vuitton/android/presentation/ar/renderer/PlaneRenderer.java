package com.vuitton.android.presentation.ar.renderer;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.Scene;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.utils.TextureLoaderKt;
import com.google.android.filament.utils.TextureType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.filament.Filament;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Lcom/vuitton/android/presentation/ar/filament/Filament;", "filament", "<init>", "(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlaneRenderer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Filament f50657a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Material f50658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaterialInstance f50659c;
    public final Material d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FloatBuffer f50660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FloatBuffer f50661f;
    public final ShortBuffer g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final VertexBuffer f50662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IndexBuffer f50663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f50664j;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/renderer/PlaneRenderer$Companion;", "", "", "PLANE_VERTEX_BUFFER_SIZE", "I", "PLANE_INDEX_BUFFER_SIZE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public PlaneRenderer(Context context, Filament filament) throws IOException {
        context.getClass();
        filament.getClass();
        this.f50657a = filament;
        ByteBuffer byteBufferE = MatrixKt.e(context, "materials/textured.filamat");
        Material.Builder builder = new Material.Builder();
        int iRemaining = byteBufferE.remaining();
        builder.f28559a = byteBufferE;
        builder.f28560b = iRemaining;
        Engine engine = filament.f50582c;
        Material materialA = builder.a(engine);
        this.f50658b = materialA;
        MaterialInstance materialInstanceB = materialA.b();
        Resources resources = context.getResources();
        resources.getClass();
        Texture textureA = TextureLoaderKt.a(engine, resources, R.drawable.sceneform_plane, TextureType.COLOR);
        TextureSampler textureSampler = new TextureSampler();
        textureSampler.a();
        materialInstanceB.i("texture", textureA, textureSampler);
        this.f50659c = materialInstanceB;
        ByteBuffer byteBufferE2 = MatrixKt.e(context, "materials/shadow.filamat");
        Material.Builder builder2 = new Material.Builder();
        int iRemaining2 = byteBufferE2.remaining();
        builder2.f28559a = byteBufferE2;
        builder2.f28560b = iRemaining2;
        this.d = builder2.a(engine);
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(16000).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.getClass();
        this.f50660e = floatBufferAsFloatBuffer;
        FloatBuffer floatBufferAsFloatBuffer2 = ByteBuffer.allocateDirect(8000).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer2.getClass();
        this.f50661f = floatBufferAsFloatBuffer2;
        ShortBuffer shortBufferAllocate = ShortBuffer.allocate(2994);
        shortBufferAllocate.getClass();
        this.g = shortBufferAllocate;
        VertexBuffer.Builder builder3 = new VertexBuffer.Builder();
        long j2 = builder3.f28596b;
        VertexBuffer.nBuilderVertexCount(j2, 1000);
        VertexBuffer.nBuilderBufferCount(j2, 2);
        builder3.a(VertexBuffer.VertexAttribute.POSITION, 0, VertexBuffer.AttributeType.FLOAT4, 0);
        builder3.a(VertexBuffer.VertexAttribute.UV0, 1, VertexBuffer.AttributeType.FLOAT2, 0);
        this.f50662h = builder3.b(engine);
        IndexBuffer.Builder builder4 = new IndexBuffer.Builder();
        long j3 = builder4.f28547b;
        IndexBuffer.nBuilderIndexCount(j3, 2994);
        IndexBuffer.nBuilderBufferType(j3, IndexBuffer.Builder.IndexType.USHORT.ordinal());
        this.f50663i = builder4.a(engine);
        int iA = EntityManager.c().a();
        filament.f50583e.b(iA);
        this.f50664j = iA;
    }

    public final void a() {
        Filament filament = this.f50657a;
        Scene scene = filament.f50583e;
        int i2 = this.f50664j;
        scene.e(i2);
        filament.f50582c.n(i2);
        filament.f50582c.r(this.f50659c);
        filament.f50582c.q(this.f50658b);
        filament.f50582c.q(this.d);
        filament.f50582c.w(this.f50662h);
        filament.f50582c.p(this.f50663i);
        EntityManager.c().b(i2);
    }
}
