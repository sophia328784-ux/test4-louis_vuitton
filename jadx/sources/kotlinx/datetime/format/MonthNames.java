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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0012\u0018\u00002\u00020\u0001:\u0001\u0014B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006Bi\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0013¨\u0006\u0015"}, d2 = {"Lkotlinx/datetime/format/MonthNames;", "", "", "", "names", "<init>", "(Ljava/util/List;)V", "january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MonthNames {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f75329b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final MonthNames f75330c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f75331a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lkotlinx/datetime/format/MonthNames$Companion;", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: kotlinx.datetime.format.MonthNames$toString$1, reason: invalid class name */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<String, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final AnonymousClass1 f75332b = new AnonymousClass1(1, String.class, "toString", "toString()Ljava/lang/String;", 0);

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            String str = (String) obj;
            str.getClass();
            return str.toString();
        }
    }

    static {
        new MonthNames(CollectionsKt.P("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"));
        f75330c = new MonthNames(CollectionsKt.P("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"));
    }

    public MonthNames(List<String> list) {
        list.getClass();
        this.f75331a = list;
        if (list.size() != 12) {
            md.n("Month names must contain exactly 12 elements");
            throw null;
        }
        Iterator<Integer> it = CollectionsKt.E(list).iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            if (((CharSequence) this.f75331a.get(iNextInt)).length() <= 0) {
                md.n("A month name can not be empty");
                throw null;
            }
            for (int i2 = 0; i2 < iNextInt; i2++) {
                if (Intrinsics.c(this.f75331a.get(iNextInt), this.f75331a.get(i2))) {
                    b21.n(n00.r((String) this.f75331a.get(iNextInt), "' was repeated", new StringBuilder("Month names must be unique, but '")));
                    throw null;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MonthNames) {
            return Intrinsics.c(this.f75331a, ((MonthNames) obj).f75331a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75331a.hashCode();
    }

    public final String toString() {
        return CollectionsKt.K(this.f75331a, ", ", "MonthNames(", ")", AnonymousClass1.f75332b, 24);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MonthNames(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        this(CollectionsKt.P(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12));
        pq0.z(str, str2, str3, str4, str5);
        pq0.z(str6, str7, str8, str9, str10);
        str11.getClass();
        str12.getClass();
    }
}
