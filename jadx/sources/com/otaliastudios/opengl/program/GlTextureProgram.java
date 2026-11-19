package com.otaliastudios.opengl.program;

import android.graphics.RectF;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.draw.GlRect;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.internal.MiscKt;
import com.otaliastudios.opengl.types.BuffersJvmKt;
import defpackage.cj;
import defpackage.d21;
import java.nio.FloatBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u000eBI\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nB=\b\u0017\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/otaliastudios/opengl/program/GlTextureProgram;", "Lcom/otaliastudios/opengl/program/GlProgram;", "", "vertexShader", "fragmentShader", "vertexPositionName", "vertexMvpMatrixName", "textureCoordsName", "textureTransformName", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "handle", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class GlTextureProgram extends GlProgram {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f39139f;
    public final GlProgramLocation g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FloatBuffer f39140h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GlProgramLocation f39141i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GlProgramLocation f39142j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GlProgramLocation f39143k;
    public final RectF l;
    public int m;
    public GlRect n;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/otaliastudios/opengl/program/GlTextureProgram$Companion;", "", "", "SIMPLE_FRAGMENT_SHADER", "Ljava/lang/String;", "SIMPLE_VERTEX_SHADER", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(int i2, String str, boolean z, String str2, String str3, String str4) {
        GlProgramLocation glProgramLocation;
        GlProgramLocation glProgramLocation2;
        super(i2, z, new GlShader[0]);
        str.getClass();
        str2.getClass();
        this.f39139f = MiscKt.a(Egloo.f39103a);
        if (str4 == null) {
            glProgramLocation = null;
        } else {
            GlProgramLocation.f39133c.getClass();
            glProgramLocation = new GlProgramLocation(i2, GlProgramLocation.Type.UNIFORM, str4, null);
        }
        this.g = glProgramLocation;
        this.f39140h = BuffersJvmKt.a(8);
        if (str3 == null) {
            glProgramLocation2 = null;
        } else {
            GlProgramLocation.f39133c.getClass();
            glProgramLocation2 = new GlProgramLocation(i2, GlProgramLocation.Type.ATTRIB, str3, null);
        }
        this.f39141i = glProgramLocation2;
        GlProgramLocation.Companion companion = GlProgramLocation.f39133c;
        companion.getClass();
        this.f39142j = new GlProgramLocation(i2, GlProgramLocation.Type.ATTRIB, str, null);
        companion.getClass();
        this.f39143k = new GlProgramLocation(i2, GlProgramLocation.Type.UNIFORM, str2, null);
        this.l = new RectF();
        this.m = -1;
    }

    public GlTextureProgram(int i2) {
        this(i2, null, null, null, null, 30, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(int i2, String str) {
        this(i2, str, null, null, null, 28, null);
        str.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(int i2, String str, String str2) {
        this(i2, str, str2, null, null, 24, null);
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(int i2, String str, String str2, String str3) {
        this(i2, str, str2, str3, null, 16, null);
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str) {
        this(str, null, null, null, null, null, 62, null);
        str.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str, String str2) {
        this(str, str2, null, null, null, null, 60, null);
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str, String str2, String str3) {
        this(str, str2, str3, null, null, null, 56, null);
        cj.z(str, str2, str3);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str, String str2, String str3, String str4) {
        this(str, str2, str3, str4, null, null, 48, null);
        d21.y(str, str2, str3, str4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str, String str2, String str3, String str4, String str5) {
        this(str, str2, str3, str4, str5, null, 32, null);
        d21.y(str, str2, str3, str4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(String str, String str2, String str3, String str4, String str5, String str6) {
        this(GlProgram.Companion.a(new GlShader(GlKt.p, str), new GlShader(GlKt.q, str2)), str3, true, str4, str5, str6);
        d21.y(str, str2, str3, str4);
        GlProgram.f39129e.getClass();
    }

    public GlTextureProgram() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ GlTextureProgram(String str, String str2, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n" : str, (i2 & 2) != 0 ? "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n" : str2, (i2 & 4) != 0 ? "aPosition" : str3, (i2 & 8) != 0 ? "uMVPMatrix" : str4, (i2 & 16) != 0 ? "aTextureCoord" : str5, (i2 & 32) != 0 ? "uTexMatrix" : str6);
    }

    public /* synthetic */ GlTextureProgram(int i2, String str, String str2, String str3, String str4, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i2, (i3 & 2) != 0 ? "aPosition" : str, (i3 & 4) != 0 ? "uMVPMatrix" : str2, (i3 & 8) != 0 ? "aTextureCoord" : str3, (i3 & 16) != 0 ? "uTexMatrix" : str4);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GlTextureProgram(int i2, String str, String str2, String str3, String str4) {
        this(i2, str, false, str2, str3, str4);
        str.getClass();
        str2.getClass();
    }
}
