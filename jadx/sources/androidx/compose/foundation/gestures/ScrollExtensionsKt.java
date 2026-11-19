package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ScrollState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollExtensionsKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ScrollableState scrollableState, float f2, AnimationSpec animationSpec, ContinuationImpl continuationImpl) {
        ScrollExtensionsKt$animateScrollBy$1 scrollExtensionsKt$animateScrollBy$1;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof ScrollExtensionsKt$animateScrollBy$1) {
            scrollExtensionsKt$animateScrollBy$1 = (ScrollExtensionsKt$animateScrollBy$1) continuationImpl;
            int i2 = scrollExtensionsKt$animateScrollBy$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollExtensionsKt$animateScrollBy$1.d = i2 - Integer.MIN_VALUE;
            } else {
                scrollExtensionsKt$animateScrollBy$1 = new ScrollExtensionsKt$animateScrollBy$1(continuationImpl);
            }
        } else {
            scrollExtensionsKt$animateScrollBy$1 = new ScrollExtensionsKt$animateScrollBy$1(continuationImpl);
        }
        Object obj = scrollExtensionsKt$animateScrollBy$1.f4659c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = scrollExtensionsKt$animateScrollBy$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            Function2 scrollExtensionsKt$animateScrollBy$2 = new ScrollExtensionsKt$animateScrollBy$2(f2, animationSpec, ref$FloatRef2, null);
            scrollExtensionsKt$animateScrollBy$1.f4658b = ref$FloatRef2;
            scrollExtensionsKt$animateScrollBy$1.d = 1;
            if (scrollableState.c(MutatePriority.Default, scrollExtensionsKt$animateScrollBy$2, scrollExtensionsKt$animateScrollBy$1) == obj2) {
                return obj2;
            }
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$FloatRef = scrollExtensionsKt$animateScrollBy$1.f4658b;
            ResultKt.b(obj);
        }
        return new Float(ref$FloatRef.f71918b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object b(ScrollState scrollState, float f2, ContinuationImpl continuationImpl) {
        ScrollExtensionsKt$scrollBy$1 scrollExtensionsKt$scrollBy$1;
        Ref$FloatRef ref$FloatRef;
        if (continuationImpl instanceof ScrollExtensionsKt$scrollBy$1) {
            scrollExtensionsKt$scrollBy$1 = (ScrollExtensionsKt$scrollBy$1) continuationImpl;
            int i2 = scrollExtensionsKt$scrollBy$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollExtensionsKt$scrollBy$1.d = i2 - Integer.MIN_VALUE;
            } else {
                scrollExtensionsKt$scrollBy$1 = new ScrollExtensionsKt$scrollBy$1(continuationImpl);
            }
        } else {
            scrollExtensionsKt$scrollBy$1 = new ScrollExtensionsKt$scrollBy$1(continuationImpl);
        }
        Object obj = scrollExtensionsKt$scrollBy$1.f4665c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = scrollExtensionsKt$scrollBy$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            Ref$FloatRef ref$FloatRef2 = new Ref$FloatRef();
            Function2 scrollExtensionsKt$scrollBy$2 = new ScrollExtensionsKt$scrollBy$2(ref$FloatRef2, f2, null);
            scrollExtensionsKt$scrollBy$1.f4664b = ref$FloatRef2;
            scrollExtensionsKt$scrollBy$1.d = 1;
            if (scrollState.c(MutatePriority.Default, scrollExtensionsKt$scrollBy$2, scrollExtensionsKt$scrollBy$1) == obj2) {
                return obj2;
            }
            ref$FloatRef = ref$FloatRef2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$FloatRef = scrollExtensionsKt$scrollBy$1.f4664b;
            ResultKt.b(obj);
        }
        return new Float(ref$FloatRef.f71918b);
    }

    public static Object c(ScrollableState scrollableState, SuspendLambda suspendLambda) {
        Object objC = scrollableState.c(MutatePriority.Default, new ScrollExtensionsKt$stopScroll$2(2, null), suspendLambda);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : Unit.f71739a;
    }
}
