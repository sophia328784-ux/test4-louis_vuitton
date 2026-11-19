package androidx.compose.material3;

import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSize;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.tokens.ShapeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import defpackage.v40;
import defpackage.zu0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ShapesKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f7199a = new StaticProvidableCompositionLocal(new zu0(18));

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7200a;

        static {
            int[] iArr = new int[ShapeKeyTokens.values().length];
            try {
                iArr[ShapeKeyTokens.CornerExtraLarge.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraLargeIncreased.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraExtraLarge.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraLargeTop.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraSmall.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ShapeKeyTokens.CornerExtraSmallTop.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ShapeKeyTokens.CornerFull.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLarge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeIncreased.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeEnd.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeTop.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ShapeKeyTokens.CornerMedium.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ShapeKeyTokens.CornerNone.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ShapeKeyTokens.CornerSmall.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ShapeKeyTokens.CornerLargeStart.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            f7200a = iArr;
        }
    }

    public static final Shape a(ShapeKeyTokens shapeKeyTokens, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Shapes shapes = (Shapes) composer.k(f7199a);
        switch (WhenMappings.f7200a[shapeKeyTokens.ordinal()]) {
            case 1:
                return shapes.f7196e;
            case 2:
                return shapes.g;
            case 3:
                return shapes.f7198h;
            case 4:
                return b(shapes.f7196e);
            case 5:
                return shapes.f7193a;
            case 6:
                return b(shapes.f7193a);
            case 7:
                return RoundedCornerShapeKt.f5846a;
            case 8:
                return shapes.d;
            case 9:
                return shapes.f7197f;
            case 10:
                CornerBasedShape cornerBasedShape = shapes.d;
                CornerSize cornerSize = ShapeDefaults.f7190i;
                return CornerBasedShape.c(cornerBasedShape, cornerSize, null, null, cornerSize, 6);
            case 11:
                return b(shapes.d);
            case 12:
                return shapes.f7195c;
            case 13:
                return RectangleShapeKt.f8913a;
            case 14:
                return shapes.f7194b;
            case 15:
                CornerBasedShape cornerBasedShape2 = shapes.d;
                CornerSize cornerSize2 = ShapeDefaults.f7190i;
                return CornerBasedShape.c(cornerBasedShape2, null, cornerSize2, cornerSize2, null, 9);
            default:
                v40.g();
                return null;
        }
    }

    public static CornerBasedShape b(CornerBasedShape cornerBasedShape) {
        CornerSize cornerSize = ShapeDefaults.f7190i;
        return CornerBasedShape.c(cornerBasedShape, null, null, cornerSize, cornerSize, 3);
    }
}
