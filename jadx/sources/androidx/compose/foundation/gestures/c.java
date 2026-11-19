package androidx.compose.foundation.gestures;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MouseWheelScrollingLogic f4837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f4838c;
    public final /* synthetic */ Ref$FloatRef d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ScrollingLogic f4839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f4840f;

    public /* synthetic */ c(MouseWheelScrollingLogic mouseWheelScrollingLogic, Ref$ObjectRef ref$ObjectRef, Ref$FloatRef ref$FloatRef, ScrollingLogic scrollingLogic, Ref$BooleanRef ref$BooleanRef) {
        this.f4837b = mouseWheelScrollingLogic;
        this.f4838c = ref$ObjectRef;
        this.d = ref$FloatRef;
        this.f4839e = scrollingLogic;
        this.f4840f = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.f4837b;
        MouseWheelScrollingLogic.MouseWheelScrollDelta mouseWheelScrollDeltaG = MouseWheelScrollingLogic.g(mouseWheelScrollingLogic.g);
        if (mouseWheelScrollDeltaG != null) {
            DifferentialVelocityTracker differentialVelocityTracker = mouseWheelScrollingLogic.f4637e;
            long j2 = mouseWheelScrollDeltaG.f4609b;
            long j3 = mouseWheelScrollDeltaG.f4608a;
            differentialVelocityTracker.f4471a.a(Float.intBitsToFloat((int) (j3 >> 32)), j2);
            differentialVelocityTracker.f4472b.a(Float.intBitsToFloat((int) (j3 & BodyPartID.bodyIdMax)), j2);
            Ref$ObjectRef ref$ObjectRef = this.f4838c;
            MouseWheelScrollingLogic.MouseWheelScrollDelta mouseWheelScrollDeltaA = ((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef.f71921b).a(mouseWheelScrollDeltaG);
            ref$ObjectRef.f71921b = mouseWheelScrollDeltaA;
            long j4 = mouseWheelScrollDeltaA.f4608a;
            ScrollingLogic scrollingLogic = this.f4839e;
            float fK = scrollingLogic.k(scrollingLogic.g(j4));
            this.d.f71918b = fK;
            this.f4840f.f71917b = !MouseWheelScrollingLogicKt.a(fK - fFloatValue);
        }
        return Boolean.valueOf(mouseWheelScrollDeltaG != null);
    }
}
