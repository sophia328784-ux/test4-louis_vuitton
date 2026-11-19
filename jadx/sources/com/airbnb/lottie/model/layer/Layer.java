package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.BlurEffect;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.value.Keyframe;
import defpackage.n00;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class Layer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f22196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LottieComposition f22197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22198c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LayerType f22199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f22200f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f22201h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnimatableTransform f22202i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f22203j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f22204k;
    public final int l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final AnimatableTextFrame q;
    public final AnimatableTextProperties r;
    public final AnimatableFloatValue s;
    public final List t;
    public final MatteType u;
    public final boolean v;
    public final BlurEffect w;
    public final DropShadowEffect x;
    public final LBlendMode y;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class LayerType {
        private static final /* synthetic */ LayerType[] $VALUES;
        public static final LayerType IMAGE;
        public static final LayerType NULL;
        public static final LayerType PRE_COMP;
        public static final LayerType SHAPE;
        public static final LayerType SOLID;
        public static final LayerType TEXT;
        public static final LayerType UNKNOWN;

        static {
            LayerType layerType = new LayerType("PRE_COMP", 0);
            PRE_COMP = layerType;
            LayerType layerType2 = new LayerType("SOLID", 1);
            SOLID = layerType2;
            LayerType layerType3 = new LayerType("IMAGE", 2);
            IMAGE = layerType3;
            LayerType layerType4 = new LayerType("NULL", 3);
            NULL = layerType4;
            LayerType layerType5 = new LayerType("SHAPE", 4);
            SHAPE = layerType5;
            LayerType layerType6 = new LayerType("TEXT", 5);
            TEXT = layerType6;
            LayerType layerType7 = new LayerType("UNKNOWN", 6);
            UNKNOWN = layerType7;
            $VALUES = new LayerType[]{layerType, layerType2, layerType3, layerType4, layerType5, layerType6, layerType7};
        }

        public static LayerType valueOf(String str) {
            return (LayerType) Enum.valueOf(LayerType.class, str);
        }

        public static LayerType[] values() {
            return (LayerType[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class MatteType {
        private static final /* synthetic */ MatteType[] $VALUES;
        public static final MatteType ADD;
        public static final MatteType INVERT;
        public static final MatteType LUMA;
        public static final MatteType LUMA_INVERTED;
        public static final MatteType NONE;
        public static final MatteType UNKNOWN;

        static {
            MatteType matteType = new MatteType("NONE", 0);
            NONE = matteType;
            MatteType matteType2 = new MatteType("ADD", 1);
            ADD = matteType2;
            MatteType matteType3 = new MatteType("INVERT", 2);
            INVERT = matteType3;
            MatteType matteType4 = new MatteType("LUMA", 3);
            LUMA = matteType4;
            MatteType matteType5 = new MatteType("LUMA_INVERTED", 4);
            LUMA_INVERTED = matteType5;
            MatteType matteType6 = new MatteType("UNKNOWN", 5);
            UNKNOWN = matteType6;
            $VALUES = new MatteType[]{matteType, matteType2, matteType3, matteType4, matteType5, matteType6};
        }

        public static MatteType valueOf(String str) {
            return (MatteType) Enum.valueOf(MatteType.class, str);
        }

        public static MatteType[] values() {
            return (MatteType[]) $VALUES.clone();
        }
    }

    public Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j2, LayerType layerType, long j3, String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i2, int i3, int i4, float f2, float f3, float f4, float f5, AnimatableTextFrame animatableTextFrame, AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, AnimatableFloatValue animatableFloatValue, boolean z, BlurEffect blurEffect, DropShadowEffect dropShadowEffect, LBlendMode lBlendMode) {
        this.f22196a = list;
        this.f22197b = lottieComposition;
        this.f22198c = str;
        this.d = j2;
        this.f22199e = layerType;
        this.f22200f = j3;
        this.g = str2;
        this.f22201h = list2;
        this.f22202i = animatableTransform;
        this.f22203j = i2;
        this.f22204k = i3;
        this.l = i4;
        this.m = f2;
        this.n = f3;
        this.o = f4;
        this.p = f5;
        this.q = animatableTextFrame;
        this.r = animatableTextProperties;
        this.t = list3;
        this.u = matteType;
        this.s = animatableFloatValue;
        this.v = z;
        this.w = blurEffect;
        this.x = dropShadowEffect;
        this.y = lBlendMode;
    }

    public final String a(String str) {
        int i2;
        StringBuilder sbT = n00.t(str);
        sbT.append(this.f22198c);
        sbT.append("\n");
        long j2 = this.f22200f;
        LottieComposition lottieComposition = this.f22197b;
        Layer layer = (Layer) lottieComposition.f21752i.b(j2);
        if (layer != null) {
            sbT.append("\t\tParents: ");
            sbT.append(layer.f22198c);
            for (Layer layer2 = (Layer) lottieComposition.f21752i.b(layer.f22200f); layer2 != null; layer2 = (Layer) lottieComposition.f21752i.b(layer2.f22200f)) {
                sbT.append("->");
                sbT.append(layer2.f22198c);
            }
            sbT.append(str);
            sbT.append("\n");
        }
        List list = this.f22201h;
        if (!list.isEmpty()) {
            sbT.append(str);
            sbT.append("\tMasks: ");
            sbT.append(list.size());
            sbT.append("\n");
        }
        int i3 = this.f22203j;
        if (i3 != 0 && (i2 = this.f22204k) != 0) {
            sbT.append(str);
            sbT.append("\tBackground: ");
            sbT.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(i3), Integer.valueOf(i2), Integer.valueOf(this.l)));
        }
        List list2 = this.f22196a;
        if (!list2.isEmpty()) {
            sbT.append(str);
            sbT.append("\tShapes:\n");
            for (Object obj : list2) {
                sbT.append(str);
                sbT.append("\t\t");
                sbT.append(obj);
                sbT.append("\n");
            }
        }
        return sbT.toString();
    }

    public final String toString() {
        return a("");
    }
}
