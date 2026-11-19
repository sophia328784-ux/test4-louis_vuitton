package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import defpackage.md;
import defpackage.yt0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final yt0 f4674a = new yt0(15);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ScrollableKt$NoOpScrollScope$1 f4675b = new ScrollableKt$NoOpScrollScope$1();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScrollableKt$DefaultScrollMotionDurationScale$1 f4676c = new ScrollableKt$DefaultScrollMotionDurationScale$1();
    public static final ScrollableKt$UnityDensity$1 d = new ScrollableKt$UnityDensity$1();

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(ScrollingLogic scrollingLogic, long j2, ContinuationImpl continuationImpl) {
        ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$1;
        Ref$FloatRef ref$FloatRef;
        ScrollingLogic scrollingLogic2;
        if (continuationImpl instanceof ScrollableKt$semanticsScrollBy$1) {
            scrollableKt$semanticsScrollBy$1 = (ScrollableKt$semanticsScrollBy$1) continuationImpl;
            int i2 = scrollableKt$semanticsScrollBy$1.f4679e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollableKt$semanticsScrollBy$1.f4679e = i2 - Integer.MIN_VALUE;
            } else {
                scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuationImpl);
            }
        } else {
            scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuationImpl);
        }
        Object obj = scrollableKt$semanticsScrollBy$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = scrollableKt$semanticsScrollBy$1.f4679e;
        if (i3 == 0) {
            ResultKt.b(obj);
            ref$FloatRef = new Ref$FloatRef();
            MutatePriority mutatePriority = MutatePriority.Default;
            ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(scrollingLogic, j2, ref$FloatRef, null);
            scrollableKt$semanticsScrollBy$1.f4677b = scrollingLogic;
            scrollableKt$semanticsScrollBy$1.f4678c = ref$FloatRef;
            scrollableKt$semanticsScrollBy$1.f4679e = 1;
            if (scrollingLogic.h(mutatePriority, scrollableKt$semanticsScrollBy$2, scrollableKt$semanticsScrollBy$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
            scrollingLogic2 = scrollingLogic;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Ref$FloatRef ref$FloatRef2 = scrollableKt$semanticsScrollBy$1.f4678c;
            ScrollingLogic scrollingLogic3 = scrollableKt$semanticsScrollBy$1.f4677b;
            ResultKt.b(obj);
            ref$FloatRef = ref$FloatRef2;
            scrollingLogic2 = scrollingLogic3;
        }
        return new Offset(scrollingLogic2.j(ref$FloatRef.f71918b));
    }

    public static Modifier b(TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, Orientation orientation, boolean z, boolean z2, MutableInteractionSource mutableInteractionSource) {
        return new ScrollableElement(textFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1, orientation, null, z, z2, null, mutableInteractionSource, null);
    }
}
