package com.otaliastudios.opengl.program;

import android.opengl.GLES20;
import com.otaliastudios.opengl.core.Egloo;
import defpackage.fc;
import defpackage.v40;
import defpackage.v7;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lcom/otaliastudios/opengl/program/GlProgramLocation;", "", "Companion", "Type", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlProgramLocation {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f39133c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39135b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/otaliastudios/opengl/program/GlProgramLocation$Companion;", "", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/otaliastudios/opengl/program/GlProgramLocation$Type;", "", "ATTRIB", "UNIFORM", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type ATTRIB;
        public static final Type UNIFORM;

        static {
            Type type = new Type("ATTRIB", 0);
            ATTRIB = type;
            Type type2 = new Type("UNIFORM", 1);
            UNIFORM = type2;
            $VALUES = new Type[]{type, type2};
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f39136a;

        static {
            int[] iArr = new int[Type.values().length];
            iArr[Type.ATTRIB.ordinal()] = 1;
            iArr[Type.UNIFORM.ordinal()] = 2;
            f39136a = iArr;
        }
    }

    public GlProgramLocation(int i2, Type type, String str, DefaultConstructorMarker defaultConstructorMarker) {
        int iGlGetAttribLocation;
        int i3 = WhenMappings.f39136a[type.ordinal()];
        if (i3 == 1) {
            UInt.Companion companion = UInt.INSTANCE;
            iGlGetAttribLocation = GLES20.glGetAttribLocation(i2, str);
        } else {
            if (i3 != 2) {
                v40.g();
                throw null;
            }
            UInt.Companion companion2 = UInt.INSTANCE;
            iGlGetAttribLocation = GLES20.glGetUniformLocation(i2, str);
        }
        this.f39134a = iGlGetAttribLocation;
        float[] fArr = Egloo.f39103a;
        str.getClass();
        if (iGlGetAttribLocation >= 0) {
            this.f39135b = iGlGetAttribLocation;
        } else {
            v7.h(fc.h("Unable to locate ", str, " in program"));
            throw null;
        }
    }
}
