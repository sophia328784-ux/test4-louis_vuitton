package androidx.compose.foundation.gestures;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.relocation.BringIntoViewResponder;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.fc;
import defpackage.v40;
import defpackage.vg;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineStart;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0001\u0012B9\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/gestures/ContentInViewNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/foundation/relocation/BringIntoViewResponder;", "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;", "Landroidx/compose/ui/node/MeasuredSizeAwareModifierNode;", "Landroidx/compose/foundation/gestures/Orientation;", "orientation", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "scrollingLogic", "", "reverseDirection", "Landroidx/compose/foundation/gestures/BringIntoViewSpec;", "bringIntoViewSpec", "Lkotlin/Function0;", "Landroidx/compose/ui/geometry/Rect;", "getFocusedRect", "<init>", "(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V", "Request", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ContentInViewNode extends Modifier.Node implements BringIntoViewResponder, CompositionLocalConsumerModifierNode, MeasuredSizeAwareModifierNode {
    public Orientation p;
    public final ScrollingLogic q;
    public boolean r;
    public BringIntoViewSpec s;
    public final Function0 t;
    public boolean v;
    public boolean x;
    public final BringIntoViewRequestPriorityQueue u = new BringIntoViewRequestPriorityQueue();
    public long w = ContentInViewNodeKt.f4442a;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B%\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/gestures/ContentInViewNode$Request;", "", "Lkotlin/Function0;", "Landroidx/compose/ui/geometry/Rect;", "currentBounds", "Lkotlinx/coroutines/CancellableContinuation;", "", "continuation", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CancellableContinuation;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Request {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Function0 f4430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CancellableContinuation f4431b;

        public Request(Function0<Rect> function0, CancellableContinuation<? super Unit> cancellableContinuation) {
            this.f4430a = function0;
            this.f4431b = cancellableContinuation;
        }

        public final String toString() {
            CancellableContinuation cancellableContinuation = this.f4431b;
            CoroutineName coroutineName = (CoroutineName) cancellableContinuation.getContext().get(CoroutineName.f74650c);
            String str = coroutineName != null ? coroutineName.f74651b : null;
            StringBuilder sb = new StringBuilder("Request@");
            String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
            string.getClass();
            sb.append(string);
            sb.append(str != null ? fc.h("[", str, "](") : "(");
            sb.append("currentBounds()=");
            sb.append(this.f4430a.mo47invoke());
            sb.append(", continuation=");
            sb.append(cancellableContinuation);
            sb.append(')');
            return sb.toString();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4432a;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Vertical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Horizontal.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f4432a = iArr;
        }
    }

    public ContentInViewNode(Orientation orientation, ScrollingLogic scrollingLogic, boolean z, BringIntoViewSpec bringIntoViewSpec, Function0<Rect> function0) {
        this.p = orientation;
        this.q = scrollingLogic;
        this.r = z;
        this.s = bringIntoViewSpec;
        this.t = function0;
    }

    public static final float h2(ContentInViewNode contentInViewNode, BringIntoViewSpec bringIntoViewSpec, long j2) {
        char c2;
        float f2;
        long j3;
        Rect rect;
        int iCompare;
        long j4 = contentInViewNode.w;
        MutableVector mutableVector = contentInViewNode.u.f4423a;
        int i2 = mutableVector.d - 1;
        Object[] objArr = mutableVector.f8165b;
        if (i2 < objArr.length) {
            rect = null;
            while (true) {
                if (i2 < 0) {
                    c2 = ' ';
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    j3 = BodyPartID.bodyIdMax;
                    break;
                }
                Rect rect2 = (Rect) ((Request) objArr[i2]).f4430a.mo47invoke();
                if (rect2 != null) {
                    long jC = rect2.c();
                    long jD = IntSizeKt.d(contentInViewNode.i2());
                    f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    int i3 = WhenMappings.f4432a[contentInViewNode.p.ordinal()];
                    if (i3 == 1) {
                        c2 = ' ';
                        j3 = BodyPartID.bodyIdMax;
                        iCompare = Float.compare(Float.intBitsToFloat((int) (jC & BodyPartID.bodyIdMax)), Float.intBitsToFloat((int) (jD & BodyPartID.bodyIdMax)));
                    } else {
                        if (i3 != 2) {
                            v40.g();
                            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        c2 = ' ';
                        j3 = BodyPartID.bodyIdMax;
                        iCompare = Float.compare(Float.intBitsToFloat((int) (jC >> 32)), Float.intBitsToFloat((int) (jD >> 32)));
                    }
                    if (iCompare > 0) {
                        if (rect != null) {
                            break;
                        }
                        rect = rect2;
                        break;
                    }
                    rect = rect2;
                }
                i2--;
            }
        } else {
            c2 = ' ';
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            j3 = BodyPartID.bodyIdMax;
            rect = null;
        }
        if (rect == null) {
            Rect rect3 = contentInViewNode.v ? (Rect) contentInViewNode.t.mo47invoke() : null;
            if (rect3 == null) {
                return f2;
            }
            rect = rect3;
        }
        long jD2 = IntSizeKt.d(j4);
        int i4 = WhenMappings.f4432a[contentInViewNode.p.ordinal()];
        if (i4 == 1) {
            float f3 = rect.f8812b;
            IntOffset.Companion companion = IntOffset.f11012b;
            return bringIntoViewSpec.a(f3 - ((int) (j2 & j3)), rect.d - f3, Float.intBitsToFloat((int) (jD2 & j3)));
        }
        if (i4 != 2) {
            v40.g();
            return f2;
        }
        float f4 = rect.f8811a;
        IntOffset.Companion companion2 = IntOffset.f11012b;
        return bringIntoViewSpec.a(f4 - ((int) (j2 >> c2)), rect.f8813c - f4, Float.intBitsToFloat((int) (jD2 >> c2)));
    }

    public static boolean j2(ContentInViewNode contentInViewNode, Rect rect, long j2, long j3, int i2) {
        if ((i2 & 1) != 0) {
            j2 = contentInViewNode.i2();
        }
        long j4 = j2;
        if ((i2 & 2) != 0) {
            IntOffset.f11012b.getClass();
            j3 = 0;
        }
        long jL2 = contentInViewNode.l2(rect, j4, j3);
        return Math.abs(Float.intBitsToFloat((int) (jL2 >> 32))) <= 0.5f && Math.abs(Float.intBitsToFloat((int) (jL2 & BodyPartID.bodyIdMax))) <= 0.5f;
    }

    @Override // androidx.compose.ui.Modifier.Node
    /* JADX INFO: renamed from: W1 */
    public final boolean getQ() {
        return false;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void c(long j2) {
        int iD;
        long j3;
        long jI2 = i2();
        this.w = j2;
        int i2 = WhenMappings.f4432a[this.p.ordinal()];
        if (i2 == 1) {
            iD = Intrinsics.d((int) (j2 & BodyPartID.bodyIdMax), (int) (jI2 & BodyPartID.bodyIdMax));
        } else {
            if (i2 != 2) {
                v40.g();
                return;
            }
            iD = Intrinsics.d((int) (j2 >> 32), (int) (jI2 >> 32));
        }
        if (iD >= 0) {
            return;
        }
        if (this.r) {
            IntOffset.f11012b.getClass();
            j3 = 0;
        } else if (this.p == Orientation.Vertical) {
            j3 = ((long) (((int) (jI2 & BodyPartID.bodyIdMax)) - ((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax;
            IntOffset.Companion companion = IntOffset.f11012b;
        } else {
            j3 = ((long) (((int) (jI2 >> 32)) - ((int) (j2 >> 32)))) << 32;
            IntOffset.Companion companion2 = IntOffset.f11012b;
        }
        long j4 = j3;
        Rect rect = (Rect) this.t.mo47invoke();
        if (rect == null || this.x || this.v || !j2(this, rect, jI2, 0L, 2) || j2(this, rect, 0L, j4, 1)) {
            return;
        }
        this.v = true;
        k2(j4);
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    public final Rect g1(Rect rect) {
        if (IntSize.b(this.w, ContentInViewNodeKt.f4442a)) {
            InlineClassHelperKt.c("Expected BringIntoViewRequester to not be used before parents are placed.");
        }
        long jI2 = i2();
        IntOffset.f11012b.getClass();
        long jL2 = l2(rect, jI2, 0L) ^ (-9223372034707292160L);
        Offset.Companion companion = Offset.f8806b;
        return rect.i(jL2);
    }

    public final long i2() {
        long j2 = this.w;
        if (!IntSize.b(j2, ContentInViewNodeKt.f4442a)) {
            return j2;
        }
        IntSize.f11020b.getClass();
        return 0L;
    }

    public final void k2(long j2) {
        BringIntoViewSpec bringIntoViewSpec = this.s;
        if (bringIntoViewSpec == null) {
            bringIntoViewSpec = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.f4428a);
        }
        BringIntoViewSpec bringIntoViewSpec2 = bringIntoViewSpec;
        if (this.x) {
            InlineClassHelperKt.c("launchAnimation called when previous animation was running");
        }
        BringIntoViewSpec bringIntoViewSpec3 = this.s;
        if (bringIntoViewSpec3 == null) {
            bringIntoViewSpec3 = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.f4428a);
        }
        bringIntoViewSpec3.getClass();
        BringIntoViewSpec.f4424a.getClass();
        BuildersKt.c(V1(), null, CoroutineStart.UNDISPATCHED, new ContentInViewNode$launchAnimation$2(this, new UpdatableAnimationState(BringIntoViewSpec.Companion.f4426b), bringIntoViewSpec2, j2, null), 1);
    }

    public final long l2(Rect rect, long j2, long j3) {
        long jD = IntSizeKt.d(j2);
        int i2 = WhenMappings.f4432a[this.p.ordinal()];
        if (i2 == 1) {
            BringIntoViewSpec bringIntoViewSpec = this.s;
            if (bringIntoViewSpec == null) {
                bringIntoViewSpec = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.f4428a);
            }
            float f2 = rect.f8812b;
            IntOffset.Companion companion = IntOffset.f11012b;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(bringIntoViewSpec.a(f2 - ((int) (j3 & BodyPartID.bodyIdMax)), rect.d - f2, Float.intBitsToFloat((int) (jD & BodyPartID.bodyIdMax))))) & BodyPartID.bodyIdMax);
            Offset.Companion companion2 = Offset.f8806b;
            return jFloatToRawIntBits;
        }
        if (i2 != 2) {
            v40.g();
            return 0L;
        }
        BringIntoViewSpec bringIntoViewSpec2 = this.s;
        if (bringIntoViewSpec2 == null) {
            bringIntoViewSpec2 = (BringIntoViewSpec) CompositionLocalConsumerModifierNodeKt.a(this, BringIntoViewSpec_androidKt.f4428a);
        }
        float f3 = rect.f8811a;
        IntOffset.Companion companion3 = IntOffset.f11012b;
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(bringIntoViewSpec2.a(f3 - ((int) (j3 >> 32)), rect.f8813c - f3, Float.intBitsToFloat((int) (jD >> 32))))) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
        Offset.Companion companion4 = Offset.f8806b;
        return jFloatToRawIntBits2;
    }

    @Override // androidx.compose.foundation.relocation.BringIntoViewResponder
    public final Object v1(Function0 function0, Continuation continuation) {
        Rect rect = (Rect) function0.mo47invoke();
        if (rect == null || j2(this, rect, 0L, 0L, 3)) {
            return Unit.f71739a;
        }
        int i2 = 1;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.b(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Request request = new Request(function0, cancellableContinuationImpl);
        BringIntoViewRequestPriorityQueue bringIntoViewRequestPriorityQueue = this.u;
        MutableVector mutableVector = bringIntoViewRequestPriorityQueue.f4423a;
        Rect rect2 = (Rect) request.f4430a.mo47invoke();
        CancellableContinuation cancellableContinuation = request.f4431b;
        if (rect2 == null) {
            Result.Companion companion = Result.INSTANCE;
            cancellableContinuation.resumeWith(Unit.f71739a);
        } else {
            cancellableContinuation.invokeOnCancellation(new vg(bringIntoViewRequestPriorityQueue, request, i2));
            IntRange intRangeJ = RangesKt.j(0, mutableVector.d);
            int i3 = intRangeJ.f71951b;
            int i4 = intRangeJ.f71952c;
            if (i3 > i4) {
                mutableVector.a(0, request);
                break;
            }
            while (true) {
                Rect rect3 = (Rect) ((Request) mutableVector.f8165b[i4]).f4430a.mo47invoke();
                if (rect3 != null) {
                    Rect rectE = rect2.e(rect3);
                    if (!rectE.equals(rect2)) {
                        if (!rectE.equals(rect3)) {
                            CancellationException cancellationException = new CancellationException("bringIntoView call interrupted by a newer, non-overlapping call");
                            int i5 = mutableVector.d - 1;
                            if (i5 <= i4) {
                                while (true) {
                                    ((Request) mutableVector.f8165b[i4]).f4431b.cancel(cancellationException);
                                    if (i5 == i4) {
                                        break;
                                    }
                                    i5++;
                                }
                            }
                        }
                    } else {
                        mutableVector.a(i4 + 1, request);
                        break;
                    }
                }
                if (i4 == i3) {
                    mutableVector.a(0, request);
                    break;
                }
                i4--;
            }
            if (!this.x) {
                IntOffset.f11012b.getClass();
                k2(0L);
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        return result == CoroutineSingletons.COROUTINE_SUSPENDED ? result : Unit.f71739a;
    }
}
