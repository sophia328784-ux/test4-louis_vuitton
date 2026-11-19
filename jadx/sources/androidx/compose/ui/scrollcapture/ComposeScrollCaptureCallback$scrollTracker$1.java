package androidx.compose.ui.scrollcapture;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import defpackage.a;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0007\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "delta"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.scrollcapture.ComposeScrollCaptureCallback$scrollTracker$1", f = "ComposeScrollCaptureCallback.android.kt", l = {89}, m = "invokeSuspend", v = 1)
public final class ComposeScrollCaptureCallback$scrollTracker$1 extends SuspendLambda implements Function2<Float, Continuation<? super Float>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f10253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10254c;
    public /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ComposeScrollCaptureCallback f10255e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposeScrollCaptureCallback$scrollTracker$1(ComposeScrollCaptureCallback composeScrollCaptureCallback, Continuation continuation) {
        super(2, continuation);
        this.f10255e = composeScrollCaptureCallback;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ComposeScrollCaptureCallback$scrollTracker$1 composeScrollCaptureCallback$scrollTracker$1 = new ComposeScrollCaptureCallback$scrollTracker$1(this.f10255e, continuation);
        composeScrollCaptureCallback$scrollTracker$1.d = ((Number) obj).floatValue();
        return composeScrollCaptureCallback$scrollTracker$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ComposeScrollCaptureCallback$scrollTracker$1) create(Float.valueOf(((Number) obj).floatValue()), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f10254c;
        if (i2 == 0) {
            ResultKt.b(obj);
            float f2 = this.d;
            ComposeScrollCaptureCallback composeScrollCaptureCallback = this.f10255e;
            Function2 function2 = (Function2) SemanticsConfigurationKt.a(composeScrollCaptureCallback.f10236a.d, SemanticsActions.f10305e);
            if (function2 == null) {
                throw a.s("Required value was null.");
            }
            boolean z2 = ((ScrollAxisRange) composeScrollCaptureCallback.f10236a.d.f(SemanticsProperties.w)).f10300c;
            if (z2) {
                f2 = -f2;
            }
            Offset offset = new Offset((((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax));
            this.f10253b = z2;
            this.f10254c = 1;
            obj = function2.invoke(offset, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            z = z2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = this.f10253b;
            ResultKt.b(obj);
        }
        long j2 = ((Offset) obj).f8808a;
        return new Float(z ? -Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)) : Float.intBitsToFloat((int) (j2 & BodyPartID.bodyIdMax)));
    }
}
