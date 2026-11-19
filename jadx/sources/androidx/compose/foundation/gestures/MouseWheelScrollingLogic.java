package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0013BR\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00121\u0010\u000e\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\r0\u0006\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;", "Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "scrollingLogic", "Landroidx/compose/foundation/gestures/ScrollConfig;", "mouseWheelScrollConfig", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Velocity;", "Lkotlin/ParameterName;", "name", "velocity", "Lkotlin/coroutines/Continuation;", "", "", "onScrollStopped", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V", "MouseWheelScrollDelta", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class MouseWheelScrollingLogic extends NonTouchScrollingLogic {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScrollConfig f4606f;
    public final BufferedChannel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Job f4607h;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;", "", "Landroidx/compose/ui/geometry/Offset;", "value", "", "timeMillis", "", "shouldApplyImmediately", "<init>", "(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class MouseWheelScrollDelta {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f4609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f4610c;

        public MouseWheelScrollDelta(long j2, long j3, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this.f4608a = j2;
            this.f4609b = j3;
            this.f4610c = z;
        }

        public final MouseWheelScrollDelta a(MouseWheelScrollDelta mouseWheelScrollDelta) {
            return new MouseWheelScrollDelta(Offset.f(this.f4608a, mouseWheelScrollDelta.f4608a), Math.max(this.f4609b, mouseWheelScrollDelta.f4609b), this.f4610c, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MouseWheelScrollDelta)) {
                return false;
            }
            MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) obj;
            return Offset.c(this.f4608a, mouseWheelScrollDelta.f4608a) && this.f4609b == mouseWheelScrollDelta.f4609b && this.f4610c == mouseWheelScrollDelta.f4610c;
        }

        public final int hashCode() {
            Offset.Companion companion = Offset.f8806b;
            return Boolean.hashCode(this.f4610c) + fc.a(Long.hashCode(this.f4608a) * 31, 31, this.f4609b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MouseWheelScrollDelta(value=");
            sb.append((Object) Offset.h(this.f4608a));
            sb.append(", timeMillis=");
            sb.append(this.f4609b);
            sb.append(", shouldApplyImmediately=");
            return d21.q(sb, this.f4610c, ')');
        }
    }

    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, ScrollConfig scrollConfig, Function2<? super Velocity, ? super Continuation<? super Unit>, ? extends Object> function2, Density density) {
        super(scrollingLogic, function2, density);
        this.f4606f = scrollConfig;
        this.g = ChannelKt.a(Integer.MAX_VALUE, 6, null);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0021  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0158, code lost:
    
        if (r0.invoke(r1, r10) == r11) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(androidx.compose.foundation.gestures.MouseWheelScrollingLogic r20, androidx.compose.foundation.gestures.ScrollingLogic r21, androidx.compose.foundation.gestures.MouseWheelScrollingLogic.MouseWheelScrollDelta r22, float r23, float r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.MouseWheelScrollingLogic.c(androidx.compose.foundation.gestures.MouseWheelScrollingLogic, androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta, float, float, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public static final Object d(MouseWheelScrollingLogic mouseWheelScrollingLogic, Ref$ObjectRef ref$ObjectRef, Ref$FloatRef ref$FloatRef, ScrollingLogic scrollingLogic, Ref$ObjectRef ref$ObjectRef2, long j2, ContinuationImpl continuationImpl) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;
        ScrollingLogic scrollingLogic2;
        Ref$ObjectRef ref$ObjectRef3;
        MouseWheelScrollingLogic mouseWheelScrollingLogic2;
        Ref$ObjectRef ref$ObjectRef4;
        Ref$FloatRef ref$FloatRef2;
        boolean z;
        if (continuationImpl instanceof MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = (MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) continuationImpl;
            int i2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4627h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4627h = i2 - Integer.MIN_VALUE;
            } else {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1(continuationImpl);
            }
        } else {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1(continuationImpl);
        }
        Object objC = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.g;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4627h;
        if (i3 == 0) {
            ResultKt.b(objC);
            if (j2 < 0) {
                return Boolean.FALSE;
            }
            MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(mouseWheelScrollingLogic, null);
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4623b = mouseWheelScrollingLogic;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4624c = ref$ObjectRef;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.d = ref$FloatRef;
            scrollingLogic2 = scrollingLogic;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4625e = scrollingLogic2;
            ref$ObjectRef3 = ref$ObjectRef2;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4626f = ref$ObjectRef3;
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4627h = 1;
            objC = TimeoutKt.c(j2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
            mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
            ref$ObjectRef4 = ref$ObjectRef;
            ref$FloatRef2 = ref$FloatRef;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Ref$ObjectRef ref$ObjectRef5 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4626f;
            ScrollingLogic scrollingLogic3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4625e;
            ref$FloatRef2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.d;
            ref$ObjectRef4 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4624c;
            MouseWheelScrollingLogic mouseWheelScrollingLogic3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.f4623b;
            ResultKt.b(objC);
            ref$ObjectRef3 = ref$ObjectRef5;
            scrollingLogic2 = scrollingLogic3;
            mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
        }
        MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) objC;
        if (mouseWheelScrollDelta != null) {
            MouseWheelScrollDelta mouseWheelScrollDelta2 = new MouseWheelScrollDelta(mouseWheelScrollDelta.f4608a, mouseWheelScrollDelta.f4609b, ((MouseWheelScrollDelta) ref$ObjectRef4.f71921b).f4610c, null);
            ref$ObjectRef4.f71921b = mouseWheelScrollDelta2;
            ref$FloatRef2.f71918b = scrollingLogic2.k(scrollingLogic2.g(mouseWheelScrollDelta2.f4608a));
            ref$ObjectRef3.f71921b = AnimationStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 30);
            DifferentialVelocityTracker differentialVelocityTracker = mouseWheelScrollingLogic2.f4637e;
            long j3 = mouseWheelScrollDelta.f4609b;
            long j4 = mouseWheelScrollDelta.f4608a;
            differentialVelocityTracker.f4471a.a(Float.intBitsToFloat((int) (j4 >> 32)), j3);
            differentialVelocityTracker.f4472b.a(Float.intBitsToFloat((int) (j4 & BodyPartID.bodyIdMax)), j3);
            z = !MouseWheelScrollingLogicKt.a(ref$FloatRef2.f71918b);
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public static MouseWheelScrollDelta g(BufferedChannel bufferedChannel) {
        MouseWheelScrollDelta mouseWheelScrollDelta = null;
        Iterator itO = SequencesKt.o(new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new NonTouchScrollingLogicKt$untilNull$1(new b(bufferedChannel, 0), null)).f74479a);
        while (itO.hasNext()) {
            MouseWheelScrollDelta mouseWheelScrollDeltaA = (MouseWheelScrollDelta) itO.next();
            if (mouseWheelScrollDelta != null) {
                mouseWheelScrollDeltaA = mouseWheelScrollDelta.a(mouseWheelScrollDeltaA);
            }
            mouseWheelScrollDelta = mouseWheelScrollDeltaA;
        }
        return mouseWheelScrollDelta;
    }

    public final float e(NestedScrollScope nestedScrollScope, float f2) {
        ScrollingLogic scrollingLogic = this.f4634a;
        long j2 = scrollingLogic.j(scrollingLogic.f(f2));
        NestedScrollSource.f9260a.getClass();
        return scrollingLogic.i(scrollingLogic.g(nestedScrollScope.b(NestedScrollSource.f9261b, j2)));
    }

    public final boolean f(PointerEvent pointerEvent, long j2) {
        boolean zD;
        long jA = this.f4606f.a(pointerEvent);
        ScrollingLogic scrollingLogic = this.f4634a;
        float fK = scrollingLogic.k(scrollingLogic.g(jA));
        if (fK == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            zD = false;
        } else {
            ScrollableState scrollableState = scrollingLogic.f4707a;
            zD = fK > Call.Parameters.DEFAULT_CAMERA_ZOOM ? scrollableState.d() : scrollableState.b();
        }
        if (!zD) {
            return this.d;
        }
        Object objB = this.g.b(new MouseWheelScrollDelta(jA, ((PointerInputChange) CollectionsKt.B(pointerEvent.f9305a)).f9329b, false, null));
        ChannelResult.Companion companion = ChannelResult.f74759b;
        return !(objB instanceof ChannelResult.Failed);
    }
}
