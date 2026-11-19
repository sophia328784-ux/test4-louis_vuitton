package defpackage;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class q1 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78973b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f78974c;

    public /* synthetic */ q1(MutableIntState mutableIntState, int i2) {
        this.f78973b = i2;
        this.f78974c = mutableIntState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f78973b;
        MutableIntState mutableIntState = this.f78974c;
        switch (i2) {
            case 0:
                float f2 = AICompanionTooltipKt.f52836a;
                mutableIntState.i((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 1:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                mutableIntState.i((int) (layoutCoordinates.a() >> 32));
                return Unit.f71739a;
            case 2:
                mutableIntState.i((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 3:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                float f3 = BookingConfirmationScreenKt.f54386a;
                layoutCoordinates2.getClass();
                if (mutableIntState.f() == 0) {
                    mutableIntState.i((int) (layoutCoordinates2.a() & BodyPartID.bodyIdMax));
                }
                return Unit.f71739a;
            case 4:
                mutableIntState.i(((Integer) obj).intValue());
                return Unit.f71739a;
            case 5:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                boolean zD = textLayoutResult.d();
                MultiParagraph multiParagraph = textLayoutResult.f10553b;
                if (zD) {
                    int i3 = 0;
                    Iterable iterableJ = RangesKt.j(0, multiParagraph.f10465f);
                    if (!(iterableJ instanceof Collection) || !((Collection) iterableJ).isEmpty()) {
                        Iterator<Integer> it = iterableJ.iterator();
                        while (((IntProgressionIterator) it).d) {
                            if (multiParagraph.b(((IntIterator) it).nextInt()) <= ((int) (textLayoutResult.f10554c & BodyPartID.bodyIdMax)) && (i3 = i3 + 1) < 0) {
                                CollectionsKt.s0();
                                throw null;
                            }
                        }
                    }
                    if (i3 < 1) {
                        i3 = 1;
                    }
                    if (i3 < mutableIntState.f()) {
                        mutableIntState.i(i3);
                    }
                }
                return Unit.f71739a;
            case 6:
                mutableIntState.i((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 7:
                mutableIntState.i((int) (((IntSize) obj).f11021a >> 32));
                return Unit.f71739a;
            case 8:
                mutableIntState.i((int) (((IntSize) obj).f11021a >> 32));
                return Unit.f71739a;
            case 9:
                mutableIntState.i((int) (((IntSize) obj).f11021a >> 32));
                return Unit.f71739a;
            case 10:
                mutableIntState.i((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 11:
                int iF = mutableIntState.f();
                int i4 = (int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax);
                if (iF < i4) {
                    mutableIntState.i(i4);
                }
                return Unit.f71739a;
            case 12:
                mutableIntState.i((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 13:
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj;
                layoutCoordinates3.getClass();
                mutableIntState.i((int) (layoutCoordinates3.a() & BodyPartID.bodyIdMax));
                return Unit.f71739a;
            case 14:
                LayoutCoordinates layoutCoordinates4 = (LayoutCoordinates) obj;
                float f4 = ThankYouScreenKt.f65243a;
                layoutCoordinates4.getClass();
                if (mutableIntState.f() == 0) {
                    mutableIntState.i((int) (layoutCoordinates4.a() & BodyPartID.bodyIdMax));
                }
                return Unit.f71739a;
            case 15:
                mutableIntState.i((int) (((IntSize) obj).f11021a >> 32));
                return Unit.f71739a;
            case 16:
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) obj;
                textLayoutResult2.getClass();
                mutableIntState.i((int) (textLayoutResult2.f10554c >> 32));
                return Unit.f71739a;
            default:
                mutableIntState.i(((Integer) obj).intValue());
                return Unit.f71739a;
        }
    }
}
