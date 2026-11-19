package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import com.otaliastudios.opengl.internal.EglConfig;
import com.otaliastudios.opengl.internal.EglDisplay;
import com.otaliastudios.opengl.internal.EglKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;", "", "<init>", "()V", "Companion", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public class EglNativeConfigChooser {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/otaliastudios/opengl/core/EglNativeConfigChooser$Companion;", "", "", "EGL_RECORDABLE_ANDROID", "I", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public static EglConfig a(EglDisplay eglDisplay, int i2, boolean z) {
        eglDisplay.getClass();
        int i3 = i2 >= 3 ? EglKt.f39117j | EglKt.f39118k : EglKt.f39117j;
        int[] iArr = {EglKt.l, 8, EglKt.m, 8, EglKt.n, 8, EglKt.o, 8, EglKt.p, EglKt.q | EglKt.r, EglKt.s, i3, z ? 12610 : EglKt.f39113e, z ? 1 : 0, EglKt.f39113e};
        EglConfig[] eglConfigArr = new EglConfig[1];
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        boolean zEglChooseConfig = EGL14.eglChooseConfig(eglDisplay.f39109a, iArr, 0, eGLConfigArr, 0, 1, new int[1], 0);
        if (zEglChooseConfig) {
            Iterator<Integer> it = new IntRange(0, 0).iterator();
            while (((IntProgressionIterator) it).d) {
                int iNextInt = ((IntIterator) it).nextInt();
                EGLConfig eGLConfig = eGLConfigArr[iNextInt];
                eglConfigArr[iNextInt] = eGLConfig == null ? null : new EglConfig(eGLConfig);
            }
        }
        if (zEglChooseConfig) {
            return eglConfigArr[0];
        }
        return null;
    }
}
