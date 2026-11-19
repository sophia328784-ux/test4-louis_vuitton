package com.vuitton.android.presentation.screen.orders.models;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0001\rB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;", "", "", "title", "Landroidx/compose/ui/graphics/Color;", "color", "", "currentStep", "", "steps", "trackingIdStep", "<init>", "(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderStatusUiModel {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Companion f60323f = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f60325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f60326c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60327e;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f60328a;

            static {
                int[] iArr = new int[LVColorScheme.values().length];
                try {
                    iArr[LVColorScheme.INVERT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                f60328a = iArr;
            }
        }

        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static OrderStatusUiModel a(TimelineUiModel timelineUiModel, LVColorScheme lVColorScheme, Composer composer, int i2) {
            String strA;
            long j2;
            String strK;
            long j3;
            LVColorScheme lVColorScheme2 = (i2 & 2) != 0 ? LVColorScheme.DEFAULT : lVColorScheme;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            OrderStatusUiModel orderStatusUiModel = null;
            if (timelineUiModel == null) {
                composer.L(-494519240);
                composer.F();
            } else {
                ValidationUiModel validationUiModel = timelineUiModel.f60407b;
                List list = timelineUiModel.f60408c;
                composer.L(-494519239);
                long j4 = LVAppDesignKitTheme.c(composer).f48361b.v;
                Iterator it = list.iterator();
                int i3 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i3 = -1;
                        break;
                    }
                    if (((DeliveryStateUiModel) it.next()).g == StateUiModel.CURRENT) {
                        break;
                    }
                    i3++;
                }
                int i4 = i3;
                DeliveryStateUiModel deliveryStateUiModel = (DeliveryStateUiModel) CollectionsKt.G(i4, list);
                DeliveryStateTitle deliveryStateTitle = deliveryStateUiModel != null ? deliveryStateUiModel.f60241e : null;
                if (deliveryStateTitle == null) {
                    composer.L(607380852);
                    composer.F();
                    strA = null;
                } else {
                    composer.L(-1781522387);
                    strA = deliveryStateTitle.a(composer);
                    composer.F();
                }
                if (strA != null && validationUiModel == ValidationUiModel.VALIDATED) {
                    composer.L(607518803);
                    int i5 = WhenMappings.f60328a[lVColorScheme2.ordinal()];
                    if (i5 == 1) {
                        composer.L(-1781515063);
                        j3 = LVAppDesignKitTheme.c(composer).f48361b.A;
                        composer.F();
                    } else {
                        if (i5 != 2) {
                            throw o60.v(composer, -1781517937);
                        }
                        composer.L(-1781512189);
                        j3 = LVAppDesignKitTheme.c(composer).f48361b.w;
                        composer.F();
                    }
                    j4 = j3;
                    composer.F();
                } else if (strA == null || validationUiModel != ValidationUiModel.PENDING) {
                    composer.L(-1781501080);
                    composer.F();
                } else {
                    composer.L(607809583);
                    int i6 = WhenMappings.f60328a[lVColorScheme2.ordinal()];
                    if (i6 == 1) {
                        composer.L(-1781505685);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.z;
                        composer.F();
                    } else {
                        if (i6 != 2) {
                            throw o60.v(composer, -1781508557);
                        }
                        composer.L(-1781502747);
                        j2 = LVAppDesignKitTheme.c(composer).f48361b.v;
                        composer.F();
                    }
                    j4 = j2;
                    composer.F();
                }
                long j5 = j4;
                if (strA == null) {
                    strK = o60.k(composer, -1781497896, R.string.my_orders_irregular_status, composer);
                } else {
                    composer.L(-1781498330);
                    composer.F();
                    strK = strA;
                }
                composer.L(-1539935256);
                ArrayList arrayList = new ArrayList();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    String strA2 = ((DeliveryStateUiModel) it2.next()).f60241e.a(composer);
                    if (strA2 != null) {
                        arrayList.add(strA2);
                    }
                }
                composer.F();
                OrderStatusUiModel orderStatusUiModel2 = new OrderStatusUiModel(strK, j5, i4, strA != null ? arrayList : null, deliveryStateUiModel != null ? deliveryStateUiModel.f60239b : null, null);
                composer.F();
                orderStatusUiModel = orderStatusUiModel2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            return orderStatusUiModel;
        }
    }

    public OrderStatusUiModel(String str, long j2, int i2, List list, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f60324a = str;
        this.f60325b = j2;
        this.f60326c = i2;
        this.d = list;
        this.f60327e = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderStatusUiModel)) {
            return false;
        }
        OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj;
        return this.f60324a.equals(orderStatusUiModel.f60324a) && Color.c(this.f60325b, orderStatusUiModel.f60325b) && this.f60326c == orderStatusUiModel.f60326c && Intrinsics.c(this.d, orderStatusUiModel.d) && Intrinsics.c(this.f60327e, orderStatusUiModel.f60327e);
    }

    public final int hashCode() {
        int iHashCode = this.f60324a.hashCode() * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        int iB = tr.b(this.f60326c, fc.a(iHashCode, 31, this.f60325b), 31);
        List list = this.d;
        int iHashCode2 = (iB + (list == null ? 0 : list.hashCode())) * 31;
        String str = this.f60327e;
        return iHashCode2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("OrderStatusUiModel(title=", this.f60324a, ", color=", Color.i(this.f60325b), ", currentStep=");
        sbS.append(this.f60326c);
        sbS.append(", steps=");
        sbS.append(this.d);
        sbS.append(", trackingIdStep=");
        return n00.r(this.f60327e, ")", sbS);
    }
}
