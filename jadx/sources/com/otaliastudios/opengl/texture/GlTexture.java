package com.otaliastudios.opengl.texture;

import android.opengl.GLES20;
import com.batch.android.s.b;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.core.GlBindable;
import com.otaliastudios.opengl.internal.GlKt;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\f\u0018\u00002\u00020\u0001B)\b\u0017\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007BG\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/otaliastudios/opengl/texture/GlTexture;", "Lcom/otaliastudios/opengl/core/GlBindable;", "", "unit", "target", b.a.f24015b, "<init>", "(IILjava/lang/Integer;)V", "width", "height", "format", "internalFormat", "type", "(IIIIIII)V", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlTexture implements GlBindable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f39147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f39148b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f39149c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f39150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f39151f;
    public final int g;

    public GlTexture(int i2, int i3, Integer num, Integer num2, Integer num3, Integer num4, final Integer num5, Integer num6) {
        int iIntValue;
        this.f39147a = i2;
        this.f39148b = i3;
        this.f39149c = num2;
        this.d = num3;
        this.f39150e = num4;
        this.f39151f = num6;
        if (num == null) {
            int[] iArr = {iArr[0]};
            int i4 = iArr[0];
            UInt.Companion companion = UInt.INSTANCE;
            int[] iArr2 = {i4};
            GLES20.glGenTextures(1, iArr2, 0);
            Egloo.b("glGenTextures");
            iIntValue = iArr[0];
        } else {
            iIntValue = num.intValue();
        }
        this.g = iIntValue;
        if (num == null) {
            Function0<Unit> function0 = new Function0<Unit>() { // from class: com.otaliastudios.opengl.texture.GlTexture.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    Integer num7;
                    GlTexture glTexture = GlTexture.this;
                    Integer num8 = glTexture.f39149c;
                    Integer num9 = glTexture.f39151f;
                    Integer num10 = glTexture.f39150e;
                    Integer num11 = glTexture.d;
                    int i5 = glTexture.f39148b;
                    if (num8 != null && num11 != null && num10 != null && (num7 = num5) != null && num9 != null) {
                        UInt.Companion companion2 = UInt.INSTANCE;
                        GLES20.glTexImage2D(i5, 0, num7.intValue(), num8.intValue(), num11.intValue(), 0, num10.intValue(), num9.intValue(), null);
                    }
                    UInt.Companion companion3 = UInt.INSTANCE;
                    GLES20.glTexParameterf(i5, GlKt.g, GlKt.l);
                    GLES20.glTexParameterf(i5, GlKt.f39125h, GlKt.m);
                    int i6 = GlKt.f39126i;
                    int i7 = GlKt.f39128k;
                    GLES20.glTexParameteri(i5, i6, i7);
                    GLES20.glTexParameteri(i5, GlKt.f39127j, i7);
                    Egloo.b("glTexParameter");
                    return Unit.f71739a;
                }
            };
            UInt.Companion companion2 = UInt.INSTANCE;
            GLES20.glActiveTexture(i2);
            GLES20.glBindTexture(i3, iIntValue);
            Egloo.b("bind");
            function0.mo47invoke();
            GLES20.glBindTexture(i3, 0);
            GLES20.glActiveTexture(GlKt.f39123e);
            Egloo.b("unbind");
        }
    }

    public GlTexture(int i2) {
        this(i2, 0, (Integer) null, 6, (DefaultConstructorMarker) null);
    }

    public GlTexture(int i2, int i3) {
        this(i2, i3, (Integer) null, 4, (DefaultConstructorMarker) null);
    }

    public GlTexture(int i2, int i3, int i4, int i5) {
        this(i2, i3, i4, i5, 0, 0, 0, 112, null);
    }

    public GlTexture(int i2, int i3, int i4, int i5, int i6) {
        this(i2, i3, i4, i5, i6, 0, 0, 96, null);
    }

    public GlTexture(int i2, int i3, int i4, int i5, int i6, int i7) {
        this(i2, i3, i4, i5, i6, i7, 0, 64, null);
    }

    public GlTexture() {
        this(0, 0, (Integer) null, 7, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public GlTexture(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, DefaultConstructorMarker defaultConstructorMarker) {
        int i10 = (i9 & 16) != 0 ? GlKt.f39122c : i6;
        this(i2, i3, i4, i5, i10, (i9 & 32) != 0 ? i10 : i7, (i9 & 64) != 0 ? GlKt.f39120a : i8);
    }

    public GlTexture(int i2, int i3, Integer num) {
        this(i2, i3, num, null, null, null, null, null);
    }

    public GlTexture(int i2, int i3, Integer num, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? GlKt.f39123e : i2, (i4 & 2) != 0 ? GlKt.f39124f : i3, (i4 & 4) != 0 ? null : num);
    }

    public GlTexture(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this(i2, i3, null, Integer.valueOf(i4), Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8));
    }
}
