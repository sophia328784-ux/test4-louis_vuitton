package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.appsflyer.sdk_base.referrer.Payload;
import com.batch.android.s.b;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.internal.GlKt;
import defpackage.fc;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/otaliastudios/opengl/program/GlShader;", "", "", "type", b.a.f24015b, "<init>", "(II)V", "", Payload.SOURCE, "(ILjava/lang/String;)V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlShader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f39137b = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39138a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/otaliastudios/opengl/program/GlShader$Companion;", "", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public GlShader(int i2, String str) {
        str.getClass();
        f39137b.getClass();
        UInt.Companion companion = UInt.INSTANCE;
        int iGlCreateShader = GLES20.glCreateShader(i2);
        Egloo.b("glCreateShader type=" + Integer.valueOf(i2));
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, GlKt.n, iArr, 0);
        if (iArr[0] != 0) {
            this(i2, iGlCreateShader);
            return;
        }
        StringBuilder sbQ = fc.q(i2, "Could not compile shader ", ": '");
        sbQ.append((Object) GLES20.glGetShaderInfoLog(iGlCreateShader));
        sbQ.append("' source: ");
        sbQ.append(str);
        String string = sbQ.toString();
        GLES20.glDeleteShader(iGlCreateShader);
        v7.h(string);
        throw null;
    }

    public GlShader(int i2, int i3) {
        this.f39138a = i3;
    }
}
