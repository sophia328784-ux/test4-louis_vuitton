package androidx.compose.material3;

import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/compose/material3/ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1 implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExitUntilCollapsedScrollBehavior f6908b;

    public ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1(ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior) {
        this.f6908b = exitUntilCollapsedScrollBehavior;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior = this.f6908b;
        TopAppBarState topAppBarState = exitUntilCollapsedScrollBehavior.f6904a;
        if (!((Boolean) exitUntilCollapsedScrollBehavior.d.mo47invoke()).booleanValue()) {
            Offset.f8806b.getClass();
            return 0L;
        }
        float fA = ((SnapshotMutableFloatStateImpl) topAppBarState.f7440b).a();
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        ((SnapshotMutableFloatStateImpl) topAppBarState.f7440b).w(Float.intBitsToFloat(i3) + fA);
        int i4 = (int) (j3 & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat(i4) < Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat(i3) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float fB = topAppBarState.b();
            topAppBarState.c(Float.intBitsToFloat(i3) + topAppBarState.b());
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(topAppBarState.b() - fB)) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM) << 32);
            Offset.Companion companion = Offset.f8806b;
            return jFloatToRawIntBits;
        }
        if (Float.intBitsToFloat(i4) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Offset.f8806b.getClass();
            return 0L;
        }
        float fB2 = topAppBarState.b();
        topAppBarState.c(Float.intBitsToFloat(i4) + topAppBarState.b());
        long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(topAppBarState.b() - fB2)) & BodyPartID.bodyIdMax);
        Offset.Companion companion2 = Offset.f8806b;
        return jFloatToRawIntBits2;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0077, code lost:
    
        if (r15 == r2) goto L26;
     */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object P(long r11, long r13, kotlin.coroutines.Continuation r15) {
        /*
            r10 = this;
            androidx.compose.material3.ExitUntilCollapsedScrollBehavior r0 = r10.f6908b
            androidx.compose.material3.TopAppBarState r1 = r0.f6904a
            boolean r2 = r15 instanceof androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1
            if (r2 == 0) goto L18
            r2 = r15
            androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 r2 = (androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1) r2
            int r3 = r2.f6911e
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L18
            int r3 = r3 - r4
            r2.f6911e = r3
        L16:
            r8 = r2
            goto L20
        L18:
            androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1 r2 = new androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1$onPostFling$1
            kotlin.coroutines.jvm.internal.ContinuationImpl r15 = (kotlin.coroutines.jvm.internal.ContinuationImpl) r15
            r2.<init>(r10, r15)
            goto L16
        L20:
            java.lang.Object r15 = r8.f6910c
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r8.f6911e
            r9 = 2
            r4 = 1
            if (r3 == 0) goto L41
            if (r3 == r4) goto L3b
            if (r3 != r9) goto L34
            long r10 = r8.f6909b
            kotlin.ResultKt.b(r15)
            goto L7a
        L34:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            r10 = 0
            return r10
        L3b:
            long r13 = r8.f6909b
            kotlin.ResultKt.b(r15)
            goto L63
        L41:
            kotlin.ResultKt.b(r15)
            float r15 = androidx.compose.ui.unit.Velocity.c(r13)
            r3 = 0
            int r15 = (r15 > r3 ? 1 : (r15 == r3 ? 0 : -1))
            if (r15 <= 0) goto L54
            androidx.compose.runtime.MutableFloatState r15 = r1.f7440b
            androidx.compose.runtime.SnapshotMutableFloatStateImpl r15 = (androidx.compose.runtime.SnapshotMutableFloatStateImpl) r15
            r15.w(r3)
        L54:
            r8.f6909b = r13
            r8.f6911e = r4
            r3 = r10
            r4 = r11
            r6 = r13
            java.lang.Object r15 = super.P(r4, r6, r8)
            if (r15 != r2) goto L62
            goto L79
        L62:
            r13 = r6
        L63:
            androidx.compose.ui.unit.Velocity r15 = (androidx.compose.ui.unit.Velocity) r15
            long r10 = r15.f11030a
            float r12 = androidx.compose.ui.unit.Velocity.c(r13)
            androidx.compose.animation.core.DecayAnimationSpec r13 = r0.f6906c
            androidx.compose.animation.core.AnimationSpec r14 = r0.f6905b
            r8.f6909b = r10
            r8.f6911e = r9
            java.lang.Object r15 = androidx.compose.material3.AppBarKt.e(r1, r12, r13, r14, r8)
            if (r15 != r2) goto L7a
        L79:
            return r2
        L7a:
            androidx.compose.ui.unit.Velocity r15 = (androidx.compose.ui.unit.Velocity) r15
            long r12 = r15.f11030a
            long r10 = androidx.compose.ui.unit.Velocity.e(r10, r12)
            androidx.compose.ui.unit.Velocity r12 = new androidx.compose.ui.unit.Velocity
            r12.<init>(r10)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ExitUntilCollapsedScrollBehavior$nestedScrollConnection$1.P(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior = this.f6908b;
        TopAppBarState topAppBarState = exitUntilCollapsedScrollBehavior.f6904a;
        if (((Boolean) exitUntilCollapsedScrollBehavior.d.mo47invoke()).booleanValue()) {
            int i3 = (int) (BodyPartID.bodyIdMax & j2);
            if (Float.intBitsToFloat(i3) <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float fB = topAppBarState.b();
                topAppBarState.c(Float.intBitsToFloat(i3) + topAppBarState.b());
                if (fB != topAppBarState.b()) {
                    return Offset.a(j2, 2, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                Offset.f8806b.getClass();
                return 0L;
            }
        }
        Offset.f8806b.getClass();
        return 0L;
    }
}
