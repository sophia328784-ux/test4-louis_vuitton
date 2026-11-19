package defpackage;

import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SelectableDates;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import java.io.IOException;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.ranges.IntRange;
import okio.RealBufferedSource;
import okio.internal.ZipFilesKt;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xr implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81180b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f81181c;
    public final /* synthetic */ Serializable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81182e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81183f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f81184h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f81185i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f81186j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Object f81187k;

    public /* synthetic */ xr(Long l, long j2, Function1 function1, Function1 function2, CalendarModel calendarModel, IntRange intRange, DatePickerFormatter datePickerFormatter, SelectableDates selectableDates, DatePickerColors datePickerColors, int i2) {
        this.d = l;
        this.f81181c = j2;
        this.f81182e = function1;
        this.f81183f = function2;
        this.g = calendarModel;
        this.f81184h = intRange;
        this.f81185i = datePickerFormatter;
        this.f81186j = selectableDates;
        this.f81187k = datePickerColors;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) throws IOException {
        int i2 = this.f81180b;
        Object obj3 = this.f81187k;
        Object obj4 = this.f81186j;
        Object obj5 = this.f81185i;
        Object obj6 = this.f81184h;
        Object obj7 = this.g;
        Object obj8 = this.f81183f;
        Object obj9 = this.f81182e;
        Serializable serializable = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                DatePickerKt.c((Long) serializable, this.f81181c, (Function1) obj9, (Function1) obj8, (CalendarModel) obj7, (IntRange) obj6, (DatePickerFormatter) obj5, (SelectableDates) obj4, (DatePickerColors) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) serializable;
                Ref$LongRef ref$LongRef = (Ref$LongRef) obj9;
                RealBufferedSource realBufferedSource = (RealBufferedSource) obj8;
                Ref$LongRef ref$LongRef2 = (Ref$LongRef) obj7;
                Ref$LongRef ref$LongRef3 = (Ref$LongRef) obj6;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj5;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) obj4;
                Ref$ObjectRef ref$ObjectRef3 = (Ref$ObjectRef) obj3;
                int iIntValue = ((Integer) obj).intValue();
                long jLongValue = ((Long) obj2).longValue();
                if (iIntValue != 1) {
                    if (iIntValue == 10) {
                        if (jLongValue < 4) {
                            az.o("bad zip: NTFS extra too short");
                            return null;
                        }
                        realBufferedSource.skip(4L);
                        ZipFilesKt.e(realBufferedSource, (int) (jLongValue - 4), new q71(ref$ObjectRef, realBufferedSource, ref$ObjectRef2, ref$ObjectRef3));
                    }
                } else {
                    if (ref$BooleanRef.f71917b) {
                        az.o("bad zip: zip64 extra repeated");
                        return null;
                    }
                    ref$BooleanRef.f71917b = true;
                    if (jLongValue < this.f81181c) {
                        az.o("bad zip: zip64 extra too short");
                        return null;
                    }
                    long jA0 = ref$LongRef.f71920b;
                    if (jA0 == BodyPartID.bodyIdMax) {
                        jA0 = realBufferedSource.A0();
                    }
                    ref$LongRef.f71920b = jA0;
                    ref$LongRef2.f71920b = ref$LongRef2.f71920b == BodyPartID.bodyIdMax ? realBufferedSource.A0() : 0L;
                    ref$LongRef3.f71920b = ref$LongRef3.f71920b == BodyPartID.bodyIdMax ? realBufferedSource.A0() : 0L;
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ xr(Ref$BooleanRef ref$BooleanRef, long j2, Ref$LongRef ref$LongRef, RealBufferedSource realBufferedSource, Ref$LongRef ref$LongRef2, Ref$LongRef ref$LongRef3, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Ref$ObjectRef ref$ObjectRef3) {
        this.d = ref$BooleanRef;
        this.f81181c = j2;
        this.f81182e = ref$LongRef;
        this.f81183f = realBufferedSource;
        this.g = ref$LongRef2;
        this.f81184h = ref$LongRef3;
        this.f81185i = ref$ObjectRef;
        this.f81186j = ref$ObjectRef2;
        this.f81187k = ref$ObjectRef3;
    }
}
