package com.otaliastudios.opengl.draw;

import com.otaliastudios.opengl.types.BuffersJvmKt;
import java.nio.FloatBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/otaliastudios/opengl/draw/GlRect;", "Lcom/otaliastudios/opengl/draw/Gl2dDrawable;", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class GlRect extends Gl2dDrawable {
    public static final float[] d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FloatBuffer f39106c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/otaliastudios/opengl/draw/GlRect$Companion;", "", "", "FULL_RECTANGLE_COORDS", "[F", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
    }

    public GlRect() {
        float[] fArr = d;
        FloatBuffer floatBufferA = BuffersJvmKt.a(fArr.length);
        floatBufferA.put(fArr);
        floatBufferA.clear();
        this.f39106c = floatBufferA;
    }

    @Override // com.otaliastudios.opengl.draw.GlDrawable
    /* JADX INFO: renamed from: a, reason: from getter */
    public final FloatBuffer getF39106c() {
        return this.f39106c;
    }
}
