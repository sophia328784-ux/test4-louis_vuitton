package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import com.google.ar.core.ImageMetadata;
import defpackage.l0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006 \u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0001\"\u0004\b\u0000\u0010\u00008\nX\u008a\u0084\u0002²\u0006\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u00008\nX\u008a\u0084\u0002"}, d2 = {"T", "Lkotlin/Function1;", "", "listener", "Landroidx/compose/animation/core/AnimationSpec;", "animSpec", "animation-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnimateAsStateKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SpringSpec f3796a = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SpringSpec f3797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SpringSpec f3798c;

    static {
        Dp.Companion companion = Dp.f11004c;
        Rect rect = VisibilityThresholdsKt.f4089a;
        f3797b = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, new Dp(0.4f));
        Size.Companion companion2 = Size.f8820b;
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, new Size((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & BodyPartID.bodyIdMax)));
        Offset.Companion companion3 = Offset.f8806b;
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, new Offset((((long) Float.floatToRawIntBits(1.0f)) << 32) | (((long) Float.floatToRawIntBits(1.0f)) & BodyPartID.bodyIdMax)));
        Rect.Companion companion4 = Rect.f8809e;
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, VisibilityThresholdsKt.f4089a);
        f3798c = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, 1);
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, new IntOffset(4294967297L));
        AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, new IntSize(4294967297L));
    }

    public static final State a(float f2, FiniteAnimationSpec finiteAnimationSpec, String str, Function1 function1, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            finiteAnimationSpec = f3797b;
        }
        FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
        if ((i3 & 4) != 0) {
            str = "DpAnimation";
        }
        String str2 = str;
        if ((i3 & 8) != 0) {
            function1 = null;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i4 = i2 << 6;
        return d(new Dp(f2), VectorConvertersKt.f4038c, finiteAnimationSpec2, null, str2, function1, composer, (i2 & 14) | ((i2 << 3) & 896) | (57344 & i4) | (i4 & ImageMetadata.JPEG_GPS_COORDINATES), 8);
    }

    public static final State b(float f2, AnimationSpec animationSpec, String str, Composer composer, int i2, int i3) {
        int i4 = i3 & 2;
        SpringSpec springSpec = f3796a;
        AnimationSpec animationSpec2 = i4 != 0 ? springSpec : animationSpec;
        String str2 = (i3 & 8) != 0 ? "FloatAnimation" : str;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (animationSpec2 == springSpec) {
            composer.L(1144115775);
            boolean zC = composer.c(0.01f);
            Object objX = composer.x();
            if (zC || objX == Composer.Companion.f7939a) {
                objX = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3, Float.valueOf(0.01f));
                composer.q(objX);
            }
            animationSpec2 = (SpringSpec) objX;
            composer.F();
        } else {
            composer.L(1144225701);
            composer.F();
        }
        return d(Float.valueOf(f2), VectorConvertersKt.f4036a, animationSpec2, null, str2, null, composer, (i2 << 3) & 57344, 0);
    }

    public static final State c(int i2, String str, Function1 function1, Composer composer, int i3) {
        if ((i3 & 8) != 0) {
            function1 = null;
        }
        Function1 function2 = function1;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return d(Integer.valueOf(i2), VectorConvertersKt.f4037b, f3798c, null, str, function2, composer, 24576, 8);
    }

    public static final State d(Object obj, TwoWayConverter twoWayConverter, AnimationSpec animationSpec, Float f2, String str, Function1 function1, Composer composer, int i2, int i3) {
        if ((i3 & 8) != 0) {
            f2 = null;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Object obj2 = Composer.Companion.f7939a;
        if (objX == obj2) {
            objX = SnapshotStateKt.g(null);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        Object objX2 = composer.x();
        if (objX2 == obj2) {
            objX2 = new Animatable(obj, twoWayConverter, f2, str);
            composer.q(objX2);
        }
        Animatable animatable = (Animatable) objX2;
        MutableState mutableStateL = SnapshotStateKt.l(function1, composer);
        if (f2 != null && (animationSpec instanceof SpringSpec)) {
            SpringSpec springSpec = (SpringSpec) animationSpec;
            if (!Intrinsics.c(springSpec.f3970c, f2)) {
                animationSpec = new SpringSpec(springSpec.f3968a, springSpec.f3969b, f2);
            }
        }
        MutableState mutableStateL2 = SnapshotStateKt.l(animationSpec, composer);
        Object objX3 = composer.x();
        if (objX3 == obj2) {
            objX3 = ChannelKt.a(-1, 6, null);
            composer.q(objX3);
        }
        Channel channel = (Channel) objX3;
        boolean zY = composer.y(channel) | ((((i2 & 14) ^ 6) > 4 && composer.y(obj)) || (i2 & 6) == 4);
        Object objX4 = composer.x();
        if (zY || objX4 == obj2) {
            objX4 = new l0(channel, obj, 9);
            composer.q(objX4);
        }
        EffectsKt.i((Function0) objX4, composer);
        boolean zY2 = composer.y(channel) | composer.y(animatable) | composer.K(mutableStateL2) | composer.K(mutableStateL);
        Object objX5 = composer.x();
        if (zY2 || objX5 == obj2) {
            Object animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(channel, animatable, mutableStateL2, mutableStateL, null);
            composer.q(animateAsStateKt$animateValueAsState$3$1);
            objX5 = animateAsStateKt$animateValueAsState$3$1;
        }
        EffectsKt.e(composer, channel, (Function2) objX5);
        State state = (State) mutableState.getF10755b();
        return state == null ? animatable.f3774c : state;
    }
}
