package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "Landroidx/compose/foundation/OverscrollEffect;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/compose/ui/unit/Density;", "density", "Landroidx/compose/ui/graphics/Color;", "glowColor", "Landroidx/compose/foundation/layout/PaddingValues;", "glowDrawPadding", "<init>", "(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Density f4127a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f4128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EdgeEffectWrapper f4129c;
    public final MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f4130e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4131f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f4132h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DelegatingNode f4133i;

    public AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j2, PaddingValues paddingValues, DefaultConstructorMarker defaultConstructorMarker) {
        this.f4127a = density;
        Offset.f8806b.getClass();
        this.f4128b = Offset.d;
        EdgeEffectWrapper edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.i(j2));
        this.f4129c = edgeEffectWrapper;
        this.d = SnapshotStateKt.f(Unit.f71739a, SnapshotStateKt.h());
        this.f4130e = true;
        Size.f8820b.getClass();
        this.g = 0L;
        this.f4132h = -1L;
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1, reason: invalid class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1", f = "AndroidOverscroll.android.kt", l = {788, 792}, m = "invokeSuspend", v = 1)
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public int f4138c;
                public /* synthetic */ Object d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ AndroidEdgeEffectOverscrollEffect f4139e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Continuation continuation) {
                    super(2, continuation);
                    this.f4139e = androidEdgeEffectOverscrollEffect;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f4139e, continuation);
                    anonymousClass1.d = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code duplicated, block: B:25:0x007e  */
                /* JADX WARN: Code duplicated, block: B:28:0x0090 A[LOOP:1: B:24:0x007c->B:28:0x0090, LOOP_END] */
                /* JADX WARN: Code duplicated, block: B:43:0x0094 A[EDGE_INSN: B:43:0x0094->B:30:0x0094 BREAK  A[LOOP:1: B:24:0x007c->B:28:0x0090], SYNTHETIC] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004c -> B:17:0x004f). Please report as a decompilation issue!!! */
                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final java.lang.Object invokeSuspend(java.lang.Object r13) {
                    /*
                        r12 = this;
                        kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                        int r1 = r12.f4138c
                        r2 = 2
                        r3 = 0
                        androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r4 = r12.f4139e
                        r5 = 1
                        if (r1 == 0) goto L25
                        if (r1 == r5) goto L1d
                        if (r1 != r2) goto L17
                        java.lang.Object r1 = r12.d
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.ResultKt.b(r13)
                        goto L4f
                    L17:
                        java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.md.k(r12)
                        return r3
                    L1d:
                        java.lang.Object r1 = r12.d
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.ResultKt.b(r13)
                        goto L38
                    L25:
                        kotlin.ResultKt.b(r13)
                        java.lang.Object r13 = r12.d
                        r1 = r13
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        r12.d = r1
                        r12.f4138c = r5
                        java.lang.Object r13 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r1, r3, r12, r2)
                        if (r13 != r0) goto L38
                        goto L4e
                    L38:
                        androidx.compose.ui.input.pointer.PointerInputChange r13 = (androidx.compose.ui.input.pointer.PointerInputChange) r13
                        long r5 = r13.f9328a
                        r4.f4132h = r5
                        long r5 = r13.f9330c
                        r4.f4128b = r5
                    L42:
                        r12.d = r1
                        r12.f4138c = r2
                        androidx.compose.ui.input.pointer.PointerEventPass r13 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                        java.lang.Object r13 = r1.N0(r13, r12)
                        if (r13 != r0) goto L4f
                    L4e:
                        return r0
                    L4f:
                        androidx.compose.ui.input.pointer.PointerEvent r13 = (androidx.compose.ui.input.pointer.PointerEvent) r13
                        java.util.List r13 = r13.f9305a
                        java.util.ArrayList r5 = new java.util.ArrayList
                        int r6 = r13.size()
                        r5.<init>(r6)
                        r6 = r13
                        java.util.Collection r6 = (java.util.Collection) r6
                        int r6 = r6.size()
                        r7 = 0
                        r8 = r7
                    L65:
                        if (r8 >= r6) goto L78
                        java.lang.Object r9 = r13.get(r8)
                        r10 = r9
                        androidx.compose.ui.input.pointer.PointerInputChange r10 = (androidx.compose.ui.input.pointer.PointerInputChange) r10
                        boolean r10 = r10.d
                        if (r10 == 0) goto L75
                        r5.add(r9)
                    L75:
                        int r8 = r8 + 1
                        goto L65
                    L78:
                        int r13 = r5.size()
                    L7c:
                        if (r7 >= r13) goto L93
                        java.lang.Object r6 = r5.get(r7)
                        r8 = r6
                        androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
                        long r8 = r8.f9328a
                        long r10 = r4.f4132h
                        boolean r8 = androidx.compose.ui.input.pointer.PointerId.a(r8, r10)
                        if (r8 == 0) goto L90
                        goto L94
                    L90:
                        int r7 = r7 + 1
                        goto L7c
                    L93:
                        r6 = r3
                    L94:
                        androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                        if (r6 != 0) goto L9f
                        java.lang.Object r13 = kotlin.collections.CollectionsKt.firstOrNull(r5)
                        r6 = r13
                        androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
                    L9f:
                        if (r6 == 0) goto La9
                        long r7 = r6.f9328a
                        r4.f4132h = r7
                        long r6 = r6.f9330c
                        r4.f4128b = r6
                    La9:
                        boolean r13 = r5.isEmpty()
                        if (r13 == 0) goto L42
                        r12 = -1
                        r4.f4132h = r12
                        kotlin.Unit r12 = kotlin.Unit.f71739a
                        return r12
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(this.f4137a, null), continuation);
                return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.f9378a;
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = new SuspendingPointerInputModifierNodeImpl((Object) null, (Object) null, (Object[]) null, pointerInputEventHandler);
        this.f4133i = Build.VERSION.SDK_INT >= 31 ? new StretchOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper) : new GlowOverscrollNode(suspendingPointerInputModifierNodeImpl, this, edgeEffectWrapper, paddingValues);
    }

    public final void a() {
        boolean z;
        EdgeEffectWrapper edgeEffectWrapper = this.f4129c;
        EdgeEffect edgeEffect = edgeEffectWrapper.d;
        boolean z2 = true;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = !edgeEffect.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.f4203e;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z = !edgeEffect2.isFinished() || z;
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.f4204f;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z = !edgeEffect3.isFinished() || z;
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            if (edgeEffect4.isFinished() && !z) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            c();
        }
    }

    public final long b() {
        long jA = this.f4128b;
        if ((9223372034707292159L & jA) == 9205357640488583168L) {
            jA = SizeKt.a(this.g);
        }
        float fIntBitsToFloat = Float.intBitsToFloat((int) (jA >> 32)) / Float.intBitsToFloat((int) (this.g >> 32));
        long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (jA & BodyPartID.bodyIdMax)) / Float.intBitsToFloat((int) (this.g & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (Float.floatToRawIntBits(fIntBitsToFloat) << 32);
        Offset.Companion companion = Offset.f8806b;
        return jFloatToRawIntBits;
    }

    public final void c() {
        if (this.f4130e) {
            ((SnapshotMutableStateImpl) this.d).setValue(Unit.f71739a);
        }
    }

    public final float d(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (b() >> 32));
        int i2 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i2) / Float.intBitsToFloat((int) (this.g & BodyPartID.bodyIdMax));
        EdgeEffect edgeEffectB = this.f4129c.b();
        return EdgeEffectCompat.b(edgeEffectB) == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.intBitsToFloat((int) (this.g & BodyPartID.bodyIdMax)) * (-EdgeEffectCompat.d(edgeEffectB, -fIntBitsToFloat2, 1.0f - fIntBitsToFloat)) : Float.intBitsToFloat(i2);
    }

    public final float e(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (b() & BodyPartID.bodyIdMax));
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i2) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect edgeEffectC = this.f4129c.c();
        return EdgeEffectCompat.b(edgeEffectC) == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.intBitsToFloat((int) (this.g >> 32)) * EdgeEffectCompat.d(edgeEffectC, fIntBitsToFloat2, 1.0f - fIntBitsToFloat) : Float.intBitsToFloat(i2);
    }

    public final float f(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (b() & BodyPartID.bodyIdMax));
        int i2 = (int) (j2 >> 32);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i2) / Float.intBitsToFloat((int) (this.g >> 32));
        EdgeEffect edgeEffectD = this.f4129c.d();
        return EdgeEffectCompat.b(edgeEffectD) == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.intBitsToFloat((int) (this.g >> 32)) * (-EdgeEffectCompat.d(edgeEffectD, -fIntBitsToFloat2, fIntBitsToFloat)) : Float.intBitsToFloat(i2);
    }

    public final float g(long j2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (b() >> 32));
        int i2 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat2 = Float.intBitsToFloat(i2) / Float.intBitsToFloat((int) (this.g & BodyPartID.bodyIdMax));
        EdgeEffect edgeEffectE = this.f4129c.e();
        return EdgeEffectCompat.b(edgeEffectE) == Call.Parameters.DEFAULT_CAMERA_ZOOM ? Float.intBitsToFloat((int) (this.g & BodyPartID.bodyIdMax)) * EdgeEffectCompat.d(edgeEffectE, fIntBitsToFloat2, fIntBitsToFloat) : Float.intBitsToFloat(i2);
    }

    public final void h(long j2) {
        long j3 = this.g;
        Size.f8820b.getClass();
        boolean zA = Size.a(j3, 0L);
        boolean zA2 = Size.a(j2, this.g);
        this.g = j2;
        if (!zA2) {
            int iC = MathKt.c(Float.intBitsToFloat((int) (j2 >> 32)));
            long jC = (((long) MathKt.c(Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax) | (((long) iC) << 32);
            IntSize.Companion companion = IntSize.f11020b;
            EdgeEffectWrapper edgeEffectWrapper = this.f4129c;
            edgeEffectWrapper.f4202c = jC;
            EdgeEffect edgeEffect = edgeEffectWrapper.d;
            if (edgeEffect != null) {
                edgeEffect.setSize((int) (jC >> 32), (int) (jC & BodyPartID.bodyIdMax));
            }
            EdgeEffect edgeEffect2 = edgeEffectWrapper.f4203e;
            if (edgeEffect2 != null) {
                edgeEffect2.setSize((int) (jC >> 32), (int) (jC & BodyPartID.bodyIdMax));
            }
            EdgeEffect edgeEffect3 = edgeEffectWrapper.f4204f;
            if (edgeEffect3 != null) {
                edgeEffect3.setSize((int) (jC & BodyPartID.bodyIdMax), (int) (jC >> 32));
            }
            EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
            if (edgeEffect4 != null) {
                edgeEffect4.setSize((int) (jC & BodyPartID.bodyIdMax), (int) (jC >> 32));
            }
            EdgeEffect edgeEffect5 = edgeEffectWrapper.f4205h;
            if (edgeEffect5 != null) {
                edgeEffect5.setSize((int) (jC >> 32), (int) (jC & BodyPartID.bodyIdMax));
            }
            EdgeEffect edgeEffect6 = edgeEffectWrapper.f4206i;
            if (edgeEffect6 != null) {
                edgeEffect6.setSize((int) (jC >> 32), (int) (jC & BodyPartID.bodyIdMax));
            }
            EdgeEffect edgeEffect7 = edgeEffectWrapper.f4207j;
            if (edgeEffect7 != null) {
                edgeEffect7.setSize((int) (jC & BodyPartID.bodyIdMax), (int) (jC >> 32));
            }
            EdgeEffect edgeEffect8 = edgeEffectWrapper.f4208k;
            if (edgeEffect8 != null) {
                edgeEffect8.setSize((int) (BodyPartID.bodyIdMax & jC), (int) (jC >> 32));
            }
        }
        if (zA || zA2) {
            return;
        }
        a();
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public final DelegatableNode l() {
        return this.f4133i;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0059, code lost:
    
        if (r20.invoke(r0, r5) == r6) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x012c, code lost:
    
        if (r4 == r6) goto L51;
     */
    @Override // androidx.compose.foundation.OverscrollEffect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m(long r18, kotlin.jvm.functions.Function2 r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect.m(long, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public final boolean n() {
        EdgeEffectWrapper edgeEffectWrapper = this.f4129c;
        EdgeEffect edgeEffect = edgeEffectWrapper.d;
        if (edgeEffect != null && EdgeEffectCompat.b(edgeEffect) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return true;
        }
        EdgeEffect edgeEffect2 = edgeEffectWrapper.f4203e;
        if (edgeEffect2 != null && EdgeEffectCompat.b(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return true;
        }
        EdgeEffect edgeEffect3 = edgeEffectWrapper.f4204f;
        if (edgeEffect3 != null && EdgeEffectCompat.b(edgeEffect3) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return true;
        }
        EdgeEffect edgeEffect4 = edgeEffectWrapper.g;
        return (edgeEffect4 == null || EdgeEffectCompat.b(edgeEffect4) == Call.Parameters.DEFAULT_CAMERA_ZOOM) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x020b  */
    /* JADX WARN: Code duplicated, block: B:102:0x021b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0224  */
    /* JADX WARN: Code duplicated, block: B:106:0x022c  */
    /* JADX WARN: Code duplicated, block: B:107:0x0230  */
    /* JADX WARN: Code duplicated, block: B:110:0x0240  */
    /* JADX WARN: Code duplicated, block: B:112:0x0245  */
    /* JADX WARN: Code duplicated, block: B:114:0x024d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0251  */
    /* JADX WARN: Code duplicated, block: B:117:0x0254 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:120:0x025a  */
    /* JADX WARN: Code duplicated, block: B:124:0x0263  */
    /* JADX WARN: Code duplicated, block: B:126:0x026b  */
    /* JADX WARN: Code duplicated, block: B:129:0x0285  */
    /* JADX WARN: Code duplicated, block: B:132:0x028e  */
    /* JADX WARN: Code duplicated, block: B:136:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:140:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:143:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:147:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:151:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:154:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:158:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:162:0x0300  */
    /* JADX WARN: Code duplicated, block: B:164:0x0303 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:167:0x0309  */
    /* JADX WARN: Code duplicated, block: B:170:0x030f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0110  */
    /* JADX WARN: Code duplicated, block: B:55:0x0115  */
    /* JADX WARN: Code duplicated, block: B:65:0x014a A[PHI: r13 r20
      0x014a: PHI (r13v9 float) = (r13v8 float), (r13v12 float) binds: [B:74:0x017b, B:63:0x0143] A[DONT_GENERATE, DONT_INLINE]
      0x014a: PHI (r20v1 char) = (r20v0 char), (r20v2 char) binds: [B:74:0x017b, B:63:0x0143] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:66:0x014d  */
    /* JADX WARN: Code duplicated, block: B:68:0x0157  */
    /* JADX WARN: Code duplicated, block: B:78:0x019d  */
    /* JADX WARN: Code duplicated, block: B:81:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:84:0x01cd  */
    @Override // androidx.compose.foundation.OverscrollEffect
    public final long o(long j2, int i2, Function1 function1) {
        long j3;
        float fIntBitsToFloat;
        int i3;
        char c2;
        float f2;
        float fIntBitsToFloat2;
        long jFloatToRawIntBits;
        long jE;
        long jE2;
        int i4;
        boolean z;
        boolean zF;
        boolean z2;
        int i5;
        boolean z3;
        int i6;
        boolean z4;
        if (Size.e(this.g)) {
            return ((Offset) function1.invoke(new Offset(j2))).f8808a;
        }
        boolean z5 = this.f4131f;
        EdgeEffectWrapper edgeEffectWrapper = this.f4129c;
        if (!z5) {
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f4204f)) {
                Offset.f8806b.getClass();
                e(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                Offset.f8806b.getClass();
                f(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                Offset.f8806b.getClass();
                g(0L);
            }
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f4203e)) {
                Offset.f8806b.getClass();
                d(0L);
            }
            this.f4131f = true;
        }
        PaddingValuesImpl paddingValuesImpl = AndroidOverscroll_androidKt.f4144b;
        NestedScrollSource.f9260a.getClass();
        float f3 = i2 == NestedScrollSource.f9262c ? 4.0f : 1.0f;
        long jG = Offset.g(f3, j2);
        int i7 = (int) (j2 & BodyPartID.bodyIdMax);
        if (Float.intBitsToFloat(i7) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (!EdgeEffectWrapper.g(edgeEffectWrapper.d) || Float.intBitsToFloat(i7) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                j3 = 4294967295L;
                if (EdgeEffectWrapper.g(edgeEffectWrapper.f4203e) && Float.intBitsToFloat(i7) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    float fD = d(jG);
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.f4203e)) {
                        edgeEffectWrapper.b().finish();
                    }
                    fIntBitsToFloat = fD == Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax)) ? Float.intBitsToFloat(i7) : fD / f3;
                }
            } else {
                float fG = g(jG);
                if (!EdgeEffectWrapper.g(edgeEffectWrapper.d)) {
                    edgeEffectWrapper.e().finish();
                }
                j3 = 4294967295L;
                fIntBitsToFloat = fG == Float.intBitsToFloat((int) (jG & BodyPartID.bodyIdMax)) ? Float.intBitsToFloat(i7) : fG / f3;
            }
            i3 = (int) (j2 >> 32);
            if (Float.intBitsToFloat(i3) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                if (EdgeEffectWrapper.g(edgeEffectWrapper.f4204f) || Float.intBitsToFloat(i3) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    c2 = ' ';
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.g) && Float.intBitsToFloat(i3) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        f2 = f(jG);
                        if (!EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                            edgeEffectWrapper.d().finish();
                        }
                        if (f2 == Float.intBitsToFloat((int) (jG >> 32))) {
                            fIntBitsToFloat2 = Float.intBitsToFloat(i3);
                        } else {
                            fIntBitsToFloat2 = f2 / f3;
                        }
                    }
                } else {
                    f2 = e(jG);
                    c2 = ' ';
                    if (!EdgeEffectWrapper.g(edgeEffectWrapper.f4204f)) {
                        edgeEffectWrapper.c().finish();
                    }
                    if (f2 == Float.intBitsToFloat((int) (jG >> 32))) {
                        fIntBitsToFloat2 = Float.intBitsToFloat(i3);
                    } else {
                        fIntBitsToFloat2 = f2 / f3;
                    }
                }
                jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j3) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c2);
                Offset.f8806b.getClass();
                if (!Offset.c(jFloatToRawIntBits, 0L)) {
                    c();
                }
                jE = Offset.e(j2, jFloatToRawIntBits);
                long j4 = ((Offset) function1.invoke(new Offset(jE))).f8808a;
                jE2 = Offset.e(jE, j4);
                if ((Float.intBitsToFloat((int) (jE >> c2)) == Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (jE & j3)) != Call.Parameters.DEFAULT_CAMERA_ZOOM) && ((Float.intBitsToFloat((int) (j4 >> c2)) != Call.Parameters.DEFAULT_CAMERA_ZOOM || Float.intBitsToFloat((int) (j4 & j3)) != Call.Parameters.DEFAULT_CAMERA_ZOOM) && (EdgeEffectWrapper.g(edgeEffectWrapper.f4204f) || EdgeEffectWrapper.g(edgeEffectWrapper.d) || EdgeEffectWrapper.g(edgeEffectWrapper.g) || EdgeEffectWrapper.g(edgeEffectWrapper.f4203e)))) {
                    a();
                }
                if (i2 == NestedScrollSource.f9261b) {
                    i4 = i7;
                    i5 = (int) (jE2 >> c2);
                    if (Float.intBitsToFloat(i5) > 0.5f) {
                        if (Float.intBitsToFloat(i5) < -0.5f) {
                            f(jE2);
                        } else {
                            z3 = false;
                        }
                        i6 = (int) (jE2 & j3);
                        if (Float.intBitsToFloat(i6) > 1056964608) {
                            if (Float.intBitsToFloat(i6) < -1090519040) {
                                d(jE2);
                            } else {
                                z4 = false;
                            }
                            z = !z3 || z4;
                            if (!Offset.c(jE, 0L)) {
                                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f) || Float.intBitsToFloat(i3) >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    zF = false;
                                } else {
                                    EdgeEffectCompat.e(edgeEffectWrapper.c(), Float.intBitsToFloat(i3));
                                    zF = EdgeEffectWrapper.f(edgeEffectWrapper.f4204f);
                                }
                                if (EdgeEffectWrapper.f(edgeEffectWrapper.g) && Float.intBitsToFloat(i3) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                                    if (!zF || EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                        zF = true;
                                    } else {
                                        zF = false;
                                    }
                                }
                                if (EdgeEffectWrapper.f(edgeEffectWrapper.d) && Float.intBitsToFloat(i4) < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                                    if (!zF || EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                        zF = true;
                                    } else {
                                        zF = false;
                                    }
                                }
                                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e) && Float.intBitsToFloat(i4) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                                    if (!zF || EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                                        zF = true;
                                    } else {
                                        zF = false;
                                    }
                                }
                                if (!zF || z) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                z = z2;
                            }
                            if (z) {
                                c();
                            }
                            return Offset.f(jFloatToRawIntBits, j4);
                        }
                        g(jE2);
                        z4 = true;
                        if (z3) {
                        }
                        if (!Offset.c(jE, 0L)) {
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                                zF = false;
                            } else {
                                zF = false;
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (zF) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            z = z2;
                        }
                        if (z) {
                            c();
                        }
                        return Offset.f(jFloatToRawIntBits, j4);
                    }
                    e(jE2);
                    z3 = true;
                    i6 = (int) (jE2 & j3);
                    if (Float.intBitsToFloat(i6) > 1056964608) {
                        if (Float.intBitsToFloat(i6) < -1090519040) {
                            d(jE2);
                        } else {
                            z4 = false;
                        }
                        if (z3) {
                        }
                        if (!Offset.c(jE, 0L)) {
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                                zF = false;
                            } else {
                                zF = false;
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (zF) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            z = z2;
                        }
                        if (z) {
                            c();
                        }
                        return Offset.f(jFloatToRawIntBits, j4);
                    }
                    g(jE2);
                    z4 = true;
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j4);
                }
                i4 = i7;
                if (!Offset.c(jE, 0L)) {
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                        zF = false;
                    } else {
                        zF = false;
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (zF) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    z = z2;
                }
                if (z) {
                    c();
                }
                return Offset.f(jFloatToRawIntBits, j4);
            }
            c2 = ' ';
            fIntBitsToFloat2 = 0.0f;
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j3) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c2);
            Offset.f8806b.getClass();
            if (!Offset.c(jFloatToRawIntBits, 0L)) {
                c();
            }
            jE = Offset.e(j2, jFloatToRawIntBits);
            long j5 = ((Offset) function1.invoke(new Offset(jE))).f8808a;
            jE2 = Offset.e(jE, j5);
            if (Float.intBitsToFloat((int) (jE >> c2)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                a();
            } else {
                a();
            }
            if (i2 == NestedScrollSource.f9261b) {
                i4 = i7;
                i5 = (int) (jE2 >> c2);
                if (Float.intBitsToFloat(i5) > 0.5f) {
                    if (Float.intBitsToFloat(i5) < -0.5f) {
                        f(jE2);
                    } else {
                        z3 = false;
                    }
                    i6 = (int) (jE2 & j3);
                    if (Float.intBitsToFloat(i6) > 1056964608) {
                        if (Float.intBitsToFloat(i6) < -1090519040) {
                            d(jE2);
                        } else {
                            z4 = false;
                        }
                        if (z3) {
                        }
                        if (!Offset.c(jE, 0L)) {
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                                zF = false;
                            } else {
                                zF = false;
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (zF) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            z = z2;
                        }
                        if (z) {
                            c();
                        }
                        return Offset.f(jFloatToRawIntBits, j5);
                    }
                    g(jE2);
                    z4 = true;
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j5);
                }
                e(jE2);
                z3 = true;
                i6 = (int) (jE2 & j3);
                if (Float.intBitsToFloat(i6) > 1056964608) {
                    if (Float.intBitsToFloat(i6) < -1090519040) {
                        d(jE2);
                    } else {
                        z4 = false;
                    }
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j5);
                }
                g(jE2);
                z4 = true;
                if (z3) {
                }
                if (!Offset.c(jE, 0L)) {
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                        zF = false;
                    } else {
                        zF = false;
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (zF) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    z = z2;
                }
                if (z) {
                    c();
                }
                return Offset.f(jFloatToRawIntBits, j5);
            }
            i4 = i7;
            if (!Offset.c(jE, 0L)) {
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                    zF = false;
                } else {
                    zF = false;
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (zF) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                z = z2;
            }
            if (z) {
                c();
            }
            return Offset.f(jFloatToRawIntBits, j5);
        }
        j3 = 4294967295L;
        fIntBitsToFloat = 0.0f;
        i3 = (int) (j2 >> 32);
        if (Float.intBitsToFloat(i3) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            if (EdgeEffectWrapper.g(edgeEffectWrapper.f4204f)) {
                c2 = ' ';
                if (!EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                }
            } else {
                c2 = ' ';
                if (!EdgeEffectWrapper.g(edgeEffectWrapper.g)) {
                }
            }
            jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j3) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c2);
            Offset.f8806b.getClass();
            if (!Offset.c(jFloatToRawIntBits, 0L)) {
                c();
            }
            jE = Offset.e(j2, jFloatToRawIntBits);
            long j6 = ((Offset) function1.invoke(new Offset(jE))).f8808a;
            jE2 = Offset.e(jE, j6);
            if (Float.intBitsToFloat((int) (jE >> c2)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                a();
            } else {
                a();
            }
            if (i2 == NestedScrollSource.f9261b) {
                i4 = i7;
                i5 = (int) (jE2 >> c2);
                if (Float.intBitsToFloat(i5) > 0.5f) {
                    if (Float.intBitsToFloat(i5) < -0.5f) {
                        f(jE2);
                    } else {
                        z3 = false;
                    }
                    i6 = (int) (jE2 & j3);
                    if (Float.intBitsToFloat(i6) > 1056964608) {
                        if (Float.intBitsToFloat(i6) < -1090519040) {
                            d(jE2);
                        } else {
                            z4 = false;
                        }
                        if (z3) {
                        }
                        if (!Offset.c(jE, 0L)) {
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                                zF = false;
                            } else {
                                zF = false;
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                                EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                                if (zF) {
                                    zF = true;
                                } else {
                                    zF = true;
                                }
                            }
                            if (zF) {
                                z2 = true;
                            } else {
                                z2 = true;
                            }
                            z = z2;
                        }
                        if (z) {
                            c();
                        }
                        return Offset.f(jFloatToRawIntBits, j6);
                    }
                    g(jE2);
                    z4 = true;
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j6);
                }
                e(jE2);
                z3 = true;
                i6 = (int) (jE2 & j3);
                if (Float.intBitsToFloat(i6) > 1056964608) {
                    if (Float.intBitsToFloat(i6) < -1090519040) {
                        d(jE2);
                    } else {
                        z4 = false;
                    }
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j6);
                }
                g(jE2);
                z4 = true;
                if (z3) {
                }
                if (!Offset.c(jE, 0L)) {
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                        zF = false;
                    } else {
                        zF = false;
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (zF) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    z = z2;
                }
                if (z) {
                    c();
                }
                return Offset.f(jFloatToRawIntBits, j6);
            }
            i4 = i7;
            if (!Offset.c(jE, 0L)) {
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                    zF = false;
                } else {
                    zF = false;
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (zF) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                z = z2;
            }
            if (z) {
                c();
            }
            return Offset.f(jFloatToRawIntBits, j6);
        }
        c2 = ' ';
        fIntBitsToFloat2 = 0.0f;
        jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & j3) | (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << c2);
        Offset.f8806b.getClass();
        if (!Offset.c(jFloatToRawIntBits, 0L)) {
            c();
        }
        jE = Offset.e(j2, jFloatToRawIntBits);
        long j7 = ((Offset) function1.invoke(new Offset(jE))).f8808a;
        jE2 = Offset.e(jE, j7);
        if (Float.intBitsToFloat((int) (jE >> c2)) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            a();
        } else {
            a();
        }
        if (i2 == NestedScrollSource.f9261b) {
            i4 = i7;
            i5 = (int) (jE2 >> c2);
            if (Float.intBitsToFloat(i5) > 0.5f) {
                if (Float.intBitsToFloat(i5) < -0.5f) {
                    f(jE2);
                } else {
                    z3 = false;
                }
                i6 = (int) (jE2 & j3);
                if (Float.intBitsToFloat(i6) > 1056964608) {
                    if (Float.intBitsToFloat(i6) < -1090519040) {
                        d(jE2);
                    } else {
                        z4 = false;
                    }
                    if (z3) {
                    }
                    if (!Offset.c(jE, 0L)) {
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                            zF = false;
                        } else {
                            zF = false;
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                            EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                            if (zF) {
                                zF = true;
                            } else {
                                zF = true;
                            }
                        }
                        if (zF) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        z = z2;
                    }
                    if (z) {
                        c();
                    }
                    return Offset.f(jFloatToRawIntBits, j7);
                }
                g(jE2);
                z4 = true;
                if (z3) {
                }
                if (!Offset.c(jE, 0L)) {
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                        zF = false;
                    } else {
                        zF = false;
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (zF) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    z = z2;
                }
                if (z) {
                    c();
                }
                return Offset.f(jFloatToRawIntBits, j7);
            }
            e(jE2);
            z3 = true;
            i6 = (int) (jE2 & j3);
            if (Float.intBitsToFloat(i6) > 1056964608) {
                if (Float.intBitsToFloat(i6) < -1090519040) {
                    d(jE2);
                } else {
                    z4 = false;
                }
                if (z3) {
                }
                if (!Offset.c(jE, 0L)) {
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                        zF = false;
                    } else {
                        zF = false;
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                        EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                        if (zF) {
                            zF = true;
                        } else {
                            zF = true;
                        }
                    }
                    if (zF) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    z = z2;
                }
                if (z) {
                    c();
                }
                return Offset.f(jFloatToRawIntBits, j7);
            }
            g(jE2);
            z4 = true;
            if (z3) {
            }
            if (!Offset.c(jE, 0L)) {
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                    zF = false;
                } else {
                    zF = false;
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                    EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                    if (zF) {
                        zF = true;
                    } else {
                        zF = true;
                    }
                }
                if (zF) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                z = z2;
            }
            if (z) {
                c();
            }
            return Offset.f(jFloatToRawIntBits, j7);
        }
        i4 = i7;
        if (!Offset.c(jE, 0L)) {
            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4204f)) {
                zF = false;
            } else {
                zF = false;
            }
            if (EdgeEffectWrapper.f(edgeEffectWrapper.g)) {
                EdgeEffectCompat.e(edgeEffectWrapper.d(), Float.intBitsToFloat(i3));
                if (zF) {
                    zF = true;
                } else {
                    zF = true;
                }
            }
            if (EdgeEffectWrapper.f(edgeEffectWrapper.d)) {
                EdgeEffectCompat.e(edgeEffectWrapper.e(), Float.intBitsToFloat(i4));
                if (zF) {
                    zF = true;
                } else {
                    zF = true;
                }
            }
            if (EdgeEffectWrapper.f(edgeEffectWrapper.f4203e)) {
                EdgeEffectCompat.e(edgeEffectWrapper.b(), Float.intBitsToFloat(i4));
                if (zF) {
                    zF = true;
                } else {
                    zF = true;
                }
            }
            if (zF) {
                z2 = true;
            } else {
                z2 = true;
            }
            z = z2;
        }
        if (z) {
            c();
        }
        return Offset.f(jFloatToRawIntBits, j7);
    }
}
