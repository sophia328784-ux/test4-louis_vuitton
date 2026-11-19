package com.otaliastudios.cameraview.filter;

import android.graphics.RectF;
import android.opengl.GLES20;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.size.Size;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.draw.GlRect;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.program.GlProgramLocation;
import com.otaliastudios.opengl.program.GlShader;
import com.otaliastudios.opengl.program.GlTextureProgram;
import com.otaliastudios.opengl.types.BuffersJvmKt;
import com.otaliastudios.opengl.types.Disposable;
import defpackage.r81;
import java.nio.Buffer;
import kotlin.UInt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseFilter implements Filter {
    public static final CameraLogger d = CameraLogger.a("BaseFilter");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public GlTextureProgram f38963a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GlRect f38964b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Size f38965c;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.otaliastudios.cameraview.filter.Filter
    public final BaseFilter a() {
        try {
            BaseFilter baseFilter = (BaseFilter) getClass().newInstance();
            Size size = this.f38965c;
            if (size != null) {
                baseFilter.h(size.f39086b, size.f39087c);
            }
            if (this instanceof OneParameterFilter) {
                ((OneParameterFilter) this).e();
                ((OneParameterFilter) baseFilter).j();
            }
            if (this instanceof TwoParameterFilter) {
                ((TwoParameterFilter) this).c();
                ((TwoParameterFilter) baseFilter).i();
            }
            return baseFilter;
        } catch (IllegalAccessException e2) {
            r81.g("Filters should have a public no-arguments constructor.", e2);
            return null;
        } catch (InstantiationException e3) {
            r81.g("Filters should have a public no-arguments constructor.", e3);
            return null;
        }
    }

    @Override // com.otaliastudios.cameraview.filter.Filter
    public final String b() {
        return "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
    }

    @Override // com.otaliastudios.cameraview.filter.Filter
    public final void f(float[] fArr) {
        GlTextureProgram glTextureProgram = this.f38963a;
        if (glTextureProgram == null) {
            d.b(2, "Filter.draw() called after destroying the filter. This can happen rarely because of threading.");
            return;
        }
        fArr.getClass();
        glTextureProgram.f39139f = fArr;
        GlTextureProgram glTextureProgram2 = this.f38963a;
        GlRect glRect = this.f38964b;
        float[] fArr2 = glRect.f39105a;
        RectF rectF = glTextureProgram2.l;
        fArr2.getClass();
        GLES20.glUniformMatrix4fv(glTextureProgram2.f39143k.f39134a, 1, false, fArr2, 0);
        Egloo.b("glUniformMatrix4fv");
        GlProgramLocation glProgramLocation = glTextureProgram2.g;
        if (glProgramLocation != null) {
            GLES20.glUniformMatrix4fv(glProgramLocation.f39134a, 1, false, glTextureProgram2.f39139f, 0);
            Egloo.b("glUniformMatrix4fv");
        }
        GlProgramLocation glProgramLocation2 = glTextureProgram2.f39142j;
        GLES20.glEnableVertexAttribArray(glProgramLocation2.f39135b);
        Egloo.b("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(glProgramLocation2.f39135b, 2, GlKt.f39121b, false, glRect.getF39104b() * 4, (Buffer) glRect.f39106c);
        Egloo.b("glVertexAttribPointer");
        GlProgramLocation glProgramLocation3 = glTextureProgram2.f39141i;
        if (glProgramLocation3 != null) {
            if (glRect != glTextureProgram2.n || glTextureProgram2.m != 0) {
                glTextureProgram2.n = glRect;
                glTextureProgram2.m = 0;
                rectF.getClass();
                float fMax = -3.4028235E38f;
                int i2 = 0;
                float fMin = Float.MAX_VALUE;
                float fMin2 = Float.MAX_VALUE;
                float fMax2 = -3.4028235E38f;
                while (glRect.getF39106c().hasRemaining()) {
                    float f2 = glRect.getF39106c().get();
                    if (i2 % 2 == 0) {
                        fMin = Math.min(fMin, f2);
                        fMax2 = Math.max(fMax2, f2);
                    } else {
                        fMax = Math.max(fMax, f2);
                        fMin2 = Math.min(fMin2, f2);
                    }
                    i2++;
                }
                glRect.getF39106c().rewind();
                rectF.set(fMin, fMax, fMax2, fMin2);
                int iLimit = (glRect.getF39106c().limit() / glRect.getF39104b()) * 2;
                if (glTextureProgram2.f39140h.capacity() < iLimit) {
                    Object obj = glTextureProgram2.f39140h;
                    obj.getClass();
                    if (obj instanceof Disposable) {
                        ((Disposable) obj).dispose();
                    }
                    glTextureProgram2.f39140h = BuffersJvmKt.a(iLimit);
                }
                glTextureProgram2.f39140h.clear();
                glTextureProgram2.f39140h.limit(iLimit);
                if (iLimit > 0) {
                    int i3 = 0;
                    while (true) {
                        int i4 = i3 + 1;
                        boolean z = i3 % 2 == 0;
                        float f3 = glRect.f39106c.get(i3);
                        float f4 = z ? rectF.left : rectF.bottom;
                        glTextureProgram2.f39140h.put((((f3 - f4) / ((z ? rectF.right : rectF.top) - f4)) * 1.0f) + Call.Parameters.DEFAULT_CAMERA_ZOOM);
                        if (i4 >= iLimit) {
                            break;
                        } else {
                            i3 = i4;
                        }
                    }
                }
            }
            glTextureProgram2.f39140h.rewind();
            GLES20.glEnableVertexAttribArray(glProgramLocation3.f39135b);
            Egloo.b("glEnableVertexAttribArray");
            GLES20.glVertexAttribPointer(glProgramLocation3.f39135b, 2, GlKt.f39121b, false, glRect.getF39104b() * 4, (Buffer) glTextureProgram2.f39140h);
            Egloo.b("glVertexAttribPointer");
        }
        GlTextureProgram glTextureProgram3 = this.f38963a;
        GlRect glRect2 = this.f38964b;
        glTextureProgram3.getClass();
        glRect2.getClass();
        Egloo.b("glDrawArrays start");
        GLES20.glDrawArrays(GlKt.d, 0, glRect2.getF39106c().limit() / glRect2.getF39104b());
        Egloo.b("glDrawArrays end");
        GlTextureProgram glTextureProgram4 = this.f38963a;
        GlRect glRect3 = this.f38964b;
        glTextureProgram4.getClass();
        glRect3.getClass();
        GLES20.glDisableVertexAttribArray(glTextureProgram4.f39142j.f39135b);
        GlProgramLocation glProgramLocation4 = glTextureProgram4.f39141i;
        if (glProgramLocation4 != null) {
            GLES20.glDisableVertexAttribArray(glProgramLocation4.f39135b);
        }
        Egloo.b("onPostDraw end");
    }

    @Override // com.otaliastudios.cameraview.filter.Filter
    public final void g(int i2) {
        this.f38963a = new GlTextureProgram(i2, "aPosition", "uMVPMatrix", "aTextureCoord", "uTexMatrix");
        this.f38964b = new GlRect();
    }

    @Override // com.otaliastudios.cameraview.filter.Filter
    public final void h(int i2, int i3) {
        this.f38965c = new Size(i2, i3);
    }

    @Override // com.otaliastudios.cameraview.filter.Filter
    public final void onDestroy() {
        GlTextureProgram glTextureProgram = this.f38963a;
        if (!glTextureProgram.d) {
            if (glTextureProgram.f39131b) {
                int i2 = glTextureProgram.f39130a;
                UInt.Companion companion = UInt.INSTANCE;
                GLES20.glDeleteProgram(i2);
            }
            for (GlShader glShader : glTextureProgram.f39132c) {
                int i3 = glShader.f39138a;
                UInt.Companion companion2 = UInt.INSTANCE;
                GLES20.glDeleteShader(i3);
            }
            glTextureProgram.d = true;
        }
        Object obj = glTextureProgram.f39140h;
        obj.getClass();
        if (obj instanceof Disposable) {
            ((Disposable) obj).dispose();
        }
        this.f38963a = null;
        this.f38964b = null;
    }
}
