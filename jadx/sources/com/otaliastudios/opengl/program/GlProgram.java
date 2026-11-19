package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlBindable;
import com.otaliastudios.opengl.internal.GlKt;
import defpackage.v7;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u000eB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\tB\u001d\b\u0016\u0012\u0012\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n\"\u00020\u000b¢\u0006\u0004\b\u0004\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/otaliastudios/opengl/program/GlProgram;", "Lcom/otaliastudios/opengl/core/GlBindable;", "", "handle", "<init>", "(I)V", "", "vertexShader", "fragmentShader", "(Ljava/lang/String;Ljava/lang/String;)V", "", "Lcom/otaliastudios/opengl/program/GlShader;", "shaders", "([Lcom/otaliastudios/opengl/program/GlShader;)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class GlProgram implements GlBindable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f39129e = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f39131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GlShader[] f39132c;
    public boolean d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/otaliastudios/opengl/program/GlProgram$Companion;", "", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static int a(GlShader... glShaderArr) {
            int iGlCreateProgram = GLES20.glCreateProgram();
            UInt.Companion companion = UInt.INSTANCE;
            Egloo.b("glCreateProgram");
            if (iGlCreateProgram == 0) {
                v7.h("Could not create program");
                return 0;
            }
            for (GlShader glShader : glShaderArr) {
                GLES20.glAttachShader(iGlCreateProgram, glShader.f39138a);
                Egloo.b("glAttachShader");
            }
            GLES20.glLinkProgram(iGlCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(iGlCreateProgram, GlKt.o, iArr, 0);
            if (iArr[0] == 1) {
                return iGlCreateProgram;
            }
            String str = "Could not link program: " + ((Object) GLES20.glGetProgramInfoLog(iGlCreateProgram));
            GLES20.glDeleteProgram(iGlCreateProgram);
            v7.h(str);
            return 0;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public GlProgram(GlShader... glShaderArr) {
        glShaderArr.getClass();
        GlShader[] glShaderArr2 = (GlShader[]) Arrays.copyOf(glShaderArr, glShaderArr.length);
        f39129e.getClass();
        this(Companion.a(glShaderArr2), true, (GlShader[]) Arrays.copyOf(glShaderArr, glShaderArr.length));
    }

    public GlProgram(int i2) {
        this(i2, false, new GlShader[0]);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlProgram(String str, String str2) {
        this(new GlShader(GlKt.p, str), new GlShader(GlKt.q, str2));
        str.getClass();
        str2.getClass();
    }

    public GlProgram(int i2, boolean z, GlShader... glShaderArr) {
        this.f39130a = i2;
        this.f39131b = z;
        this.f39132c = glShaderArr;
    }
}
