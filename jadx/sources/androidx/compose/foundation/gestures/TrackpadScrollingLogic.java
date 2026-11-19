package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0011BJ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00121\u0010\f\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;", "Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "scrollingLogic", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Velocity;", "Lkotlin/ParameterName;", "name", "velocity", "Lkotlin/coroutines/Continuation;", "", "", "onScrollStopped", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V", "TrackpadScrollDelta", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TrackpadScrollingLogic extends NonTouchScrollingLogic {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BufferedChannel f4810f;
    public Job g;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;", "", "Landroidx/compose/ui/geometry/Offset;", "value", "", "timeMillis", "", "isEnd", "<init>", "(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class TrackpadScrollDelta {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f4811a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f4812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f4813c;

        public TrackpadScrollDelta(long j2, long j3, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this.f4811a = j2;
            this.f4812b = j3;
            this.f4813c = z;
        }

        public final TrackpadScrollDelta a(TrackpadScrollDelta trackpadScrollDelta) {
            return new TrackpadScrollDelta(Offset.f(this.f4811a, trackpadScrollDelta.f4811a), Math.max(this.f4812b, trackpadScrollDelta.f4812b), this.f4813c || trackpadScrollDelta.f4813c, null);
        }
    }

    public TrackpadScrollingLogic(ScrollingLogic scrollingLogic, Function2<? super Velocity, ? super Continuation<? super Unit>, ? extends Object> function2, Density density) {
        super(scrollingLogic, function2, density);
        this.f4810f = ChannelKt.a(Integer.MAX_VALUE, 6, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001e  */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cf, code lost:
    
        if (r0.invoke(r3, r4) == r5) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object c(androidx.compose.foundation.gestures.TrackpadScrollingLogic r18, androidx.compose.foundation.gestures.ScrollingLogic r19, androidx.compose.foundation.gestures.TrackpadScrollingLogic.TrackpadScrollDelta r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TrackpadScrollingLogic.c(androidx.compose.foundation.gestures.TrackpadScrollingLogic, androidx.compose.foundation.gestures.ScrollingLogic, androidx.compose.foundation.gestures.TrackpadScrollingLogic$TrackpadScrollDelta, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static TrackpadScrollDelta e(BufferedChannel bufferedChannel) {
        TrackpadScrollDelta trackpadScrollDelta = null;
        Iterator itO = SequencesKt.o(new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new NonTouchScrollingLogicKt$untilNull$1(new b(bufferedChannel, 1), null)).f74479a);
        while (itO.hasNext()) {
            TrackpadScrollDelta trackpadScrollDeltaA = (TrackpadScrollDelta) itO.next();
            if (trackpadScrollDelta != null) {
                trackpadScrollDeltaA = trackpadScrollDelta.a(trackpadScrollDeltaA);
            }
            trackpadScrollDelta = trackpadScrollDeltaA;
        }
        return trackpadScrollDelta;
    }

    public final boolean d(PointerEvent pointerEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        BufferedChannel bufferedChannel;
        ScrollingLogic scrollingLogic;
        PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.firstOrNull(pointerEvent.f9305a);
        if (pointerInputChange != null) {
            List list = pointerInputChange.m;
            if (list == null) {
                list = EmptyList.f71768b;
            }
            int size = list.size();
            int i2 = 0;
            z3 = false;
            while (true) {
                bufferedChannel = this.f4810f;
                scrollingLogic = this.f4634a;
                if (i2 >= size) {
                    break;
                }
                HistoricalChange historicalChange = (HistoricalChange) list.get(i2);
                long j2 = historicalChange.d ^ (-9223372034707292160L);
                Offset.Companion companion = Offset.f8806b;
                if (!(scrollingLogic.k(scrollingLogic.g(j2)) == Call.Parameters.DEFAULT_CAMERA_ZOOM)) {
                    Object objB = bufferedChannel.b(new TrackpadScrollDelta(j2, historicalChange.f9269a, false, null));
                    ChannelResult.Companion companion2 = ChannelResult.f74759b;
                    z3 = !(objB instanceof ChannelResult.Failed) || z3;
                }
                i2++;
            }
            z = true;
            z2 = false;
            long j3 = pointerInputChange.l ^ (-9223372034707292160L);
            Offset.Companion companion3 = Offset.f8806b;
            int i3 = pointerEvent.f9309f;
            PointerEventType.f9310a.getClass();
            boolean z4 = i3 == PointerEventType.m;
            if (!(scrollingLogic.k(scrollingLogic.g(j3)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) || z4) {
                Object objB2 = bufferedChannel.b(new TrackpadScrollDelta(j3, pointerInputChange.f9329b, z4, null));
                ChannelResult.Companion companion4 = ChannelResult.f74759b;
                if (!(objB2 instanceof ChannelResult.Failed) || z3) {
                    z3 = true;
                }
            }
            return (!z3 || this.d) ? z : z2;
        }
        z = true;
        z2 = false;
        z3 = z2;
        if (z3) {
        }
    }
}
