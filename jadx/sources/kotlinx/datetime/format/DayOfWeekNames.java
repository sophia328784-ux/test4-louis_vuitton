package kotlinx.datetime.format;

import defpackage.b21;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\r\u0018\u00002\u00020\u0001:\u0001\u000fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006BA\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u000e¨\u0006\u0010"}, d2 = {"Lkotlinx/datetime/format/DayOfWeekNames;", "", "", "", "names", "<init>", "(Ljava/util/List;)V", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday", "sunday", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DayOfWeekNames {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f75287b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DayOfWeekNames f75288c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75289a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/DayOfWeekNames$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: kotlinx.datetime.format.DayOfWeekNames$toString$1, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<String, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f75290b = new AnonymousClass1(1, String.class, "toString", "toString()Ljava/lang/String;", 0);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            String str = (String) obj;
            str.getClass();
            return str.toString();
        }
    }

    static {
        new DayOfWeekNames(CollectionsKt.P("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"));
        f75288c = new DayOfWeekNames(CollectionsKt.P("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"));
    }

    public DayOfWeekNames(List<String> list) {
        list.getClass();
        this.f75289a = list;
        if (list.size() != 7) {
            md.n("Day of week names must contain exactly 7 elements");
            throw null;
        }
        Iterator<Integer> it = CollectionsKt.E(list).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (((CharSequence) this.f75289a.get(iNextInt)).length() <= 0) {
                md.n("A day-of-week name can not be empty");
                throw null;
            }
            for (int i2 = 0; i2 < iNextInt; i2++) {
                if (Intrinsics.c(this.f75289a.get(iNextInt), this.f75289a.get(i2))) {
                    b21.n(n00.r((String) this.f75289a.get(iNextInt), "' was repeated", new StringBuilder("Day-of-week names must be unique, but '")));
                    throw null;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DayOfWeekNames) {
            return Intrinsics.c(this.f75289a, ((DayOfWeekNames) obj).f75289a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75289a.hashCode();
    }

    public final String toString() {
        return CollectionsKt.K(this.f75289a, ", ", "DayOfWeekNames(", ")", AnonymousClass1.f75290b, 24);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DayOfWeekNames(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(CollectionsKt.P(str, str2, str3, str4, str5, str6, str7));
        pq0.z(str, str2, str3, str4, str5);
        str6.getClass();
        str7.getClass();
    }
}
