package com.otaliastudios.opengl.draw;

import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlViewportAware;
import com.otaliastudios.opengl.internal.MiscKt;
import java.nio.FloatBuffer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/otaliastudios/opengl/draw/GlDrawable;", "Lcom/otaliastudios/opengl/core/GlViewportAware;", "<init>", "()V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class GlDrawable extends GlViewportAware {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f39105a = MiscKt.a(Egloo.f39103a);

    public abstract FloatBuffer a();
}
