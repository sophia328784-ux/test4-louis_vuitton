package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.android.filament.Box;
import com.google.android.filament.Engine;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Texture;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.android.TextureHelper;
import com.google.android.filament.utils.TextureType;
import defpackage.v40;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MaterialHelperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58512a;

        static {
            int[] iArr = new int[TextureType.values().length];
            try {
                iArr[TextureType.COLOR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextureType.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TextureType.DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f58512a = iArr;
        }
    }

    public static final MeshResources a(ModelViewer modelViewer, MaterialInstance materialInstance) {
        modelViewer.getClass();
        materialInstance.getClass();
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(48).order(ByteOrder.nativeOrder());
        byteBufferOrder.getClass();
        c(byteBufferOrder, new Vertex(-1.0f, -1.0f, -1.0f));
        c(byteBufferOrder, new Vertex(-1.0f, 1.0f, -1.0f));
        c(byteBufferOrder, new Vertex(1.0f, 1.0f, -1.0f));
        c(byteBufferOrder, new Vertex(1.0f, -1.0f, -1.0f));
        Buffer bufferFlip = byteBufferOrder.flip();
        ByteBuffer byteBufferOrder2 = ByteBuffer.allocate(48).order(ByteOrder.nativeOrder());
        byteBufferOrder2.getClass();
        d(byteBufferOrder2, new VertexUv(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        d(byteBufferOrder2, new VertexUv(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
        d(byteBufferOrder2, new VertexUv(1.0f, 1.0f));
        d(byteBufferOrder2, new VertexUv(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM));
        Buffer bufferFlip2 = byteBufferOrder2.flip();
        VertexBuffer.Builder builder = new VertexBuffer.Builder();
        long j2 = builder.f28596b;
        VertexBuffer.nBuilderBufferCount(j2, 2);
        VertexBuffer.nBuilderVertexCount(j2, 4);
        builder.a(VertexBuffer.VertexAttribute.POSITION, 0, VertexBuffer.AttributeType.FLOAT3, 12);
        builder.a(VertexBuffer.VertexAttribute.UV0, 1, VertexBuffer.AttributeType.FLOAT2, 8);
        Engine engine = modelViewer.f58516b;
        VertexBuffer vertexBufferB = builder.b(engine);
        vertexBufferB.h(0, engine, bufferFlip);
        vertexBufferB.h(1, engine, bufferFlip2);
        ByteBuffer byteBufferOrder3 = ByteBuffer.allocate(12).order(ByteOrder.nativeOrder());
        byteBufferOrder3.putShort((short) 0).putShort((short) 1).putShort((short) 2).putShort((short) 0).putShort((short) 2).putShort((short) 3);
        byteBufferOrder3.flip();
        IndexBuffer.Builder builder2 = new IndexBuffer.Builder();
        long j3 = builder2.f28547b;
        IndexBuffer.nBuilderIndexCount(j3, 8);
        IndexBuffer.nBuilderBufferType(j3, IndexBuffer.Builder.IndexType.USHORT.ordinal());
        IndexBuffer indexBufferA = builder2.a(engine);
        indexBufferA.g(0, engine, byteBufferOrder3);
        int iA = engine.f28537e.a();
        RenderableManager.Builder builder3 = new RenderableManager.Builder(1);
        Box box = new Box(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 30.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.01f);
        float[] fArr = box.f28525a;
        float f2 = fArr[0];
        float f3 = fArr[1];
        float f4 = fArr[2];
        float[] fArr2 = box.f28526b;
        RenderableManager.nBuilderBoundingBox(builder3.f28567b, f2, f3, f4, fArr2[0], fArr2[1], fArr2[2]);
        RenderableManager.nBuilderGeometry(builder3.f28567b, 0, RenderableManager.PrimitiveType.TRIANGLES.a(), vertexBufferB.g(), indexBufferA.f());
        RenderableManager.nBuilderMaterial(builder3.f28567b, 0, materialInstance.a());
        builder3.a(engine, iA);
        modelViewer.f58520h.b(iA);
        return new MeshResources(iA, vertexBufferB, indexBufferA);
    }

    public static final Texture b(Engine engine, Bitmap bitmap, TextureType textureType) {
        Texture.InternalFormat internalFormat;
        engine.getClass();
        bitmap.getClass();
        textureType.getClass();
        new BitmapFactory.Options().inPremultiplied = textureType == TextureType.COLOR;
        Texture.Builder builder = new Texture.Builder();
        int width = bitmap.getWidth();
        long j2 = builder.f28580b;
        Texture.nBuilderWidth(j2, width);
        Texture.nBuilderHeight(j2, bitmap.getHeight());
        builder.c(Texture.Sampler.SAMPLER_2D);
        int i2 = WhenMappings.f58512a[textureType.ordinal()];
        if (i2 == 1) {
            internalFormat = Texture.InternalFormat.SRGB8_A8;
        } else {
            if (i2 != 2 && i2 != 3) {
                v40.g();
                return null;
            }
            internalFormat = Texture.InternalFormat.RGBA8;
        }
        builder.b(internalFormat);
        Texture.nBuilderUsage(j2, 536);
        Texture.nBuilderLevels(j2, 255);
        Texture textureA = builder.a(engine);
        TextureHelper.a(engine, textureA, bitmap);
        textureA.k(engine);
        return textureA;
    }

    public static final void c(ByteBuffer byteBuffer, Vertex vertex) {
        byteBuffer.getClass();
        byteBuffer.putFloat(vertex.f58546a);
        byteBuffer.putFloat(vertex.f58547b);
        byteBuffer.putFloat(vertex.f58548c);
    }

    public static final void d(ByteBuffer byteBuffer, VertexUv vertexUv) {
        byteBuffer.getClass();
        byteBuffer.putFloat(vertexUv.f58549a);
        byteBuffer.putFloat(vertexUv.f58550b);
    }
}
