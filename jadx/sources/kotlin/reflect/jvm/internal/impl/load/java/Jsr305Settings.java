package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class Jsr305Settings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReportLevel f72862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ReportLevel f72863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map f72864c;
    public final Lazy d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f72865e;

    public Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map<FqName, ? extends ReportLevel> map) {
        reportLevel.getClass();
        map.getClass();
        this.f72862a = reportLevel;
        this.f72863b = reportLevel2;
        this.f72864c = map;
        this.d = LazyKt.b(new Function0(this) { // from class: kotlin.reflect.jvm.internal.impl.load.java.Jsr305Settings$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Jsr305Settings f72866b;

            {
                this.f72866b = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ListBuilder listBuilderV = CollectionsKt.v();
                Jsr305Settings jsr305Settings = this.f72866b;
                listBuilderV.add(jsr305Settings.f72862a.a());
                ReportLevel reportLevel3 = jsr305Settings.f72863b;
                if (reportLevel3 != null) {
                    listBuilderV.add("under-migration:" + reportLevel3.a());
                }
                for (Map.Entry entry : jsr305Settings.f72864c.entrySet()) {
                    listBuilderV.add("@" + entry.getKey() + ':' + ((ReportLevel) entry.getValue()).a());
                }
                return (String[]) CollectionsKt.r(listBuilderV).toArray(new String[0]);
            }
        });
        ReportLevel reportLevel3 = ReportLevel.IGNORE;
        this.f72865e = reportLevel == reportLevel3 && reportLevel2 == reportLevel3 && map.isEmpty();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Jsr305Settings)) {
            return false;
        }
        Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
        return this.f72862a == jsr305Settings.f72862a && this.f72863b == jsr305Settings.f72863b && Intrinsics.c(this.f72864c, jsr305Settings.f72864c);
    }

    public final int hashCode() {
        int iHashCode = this.f72862a.hashCode() * 31;
        ReportLevel reportLevel = this.f72863b;
        return this.f72864c.hashCode() + ((iHashCode + (reportLevel == null ? 0 : reportLevel.hashCode())) * 31);
    }

    public final String toString() {
        return "Jsr305Settings(globalLevel=" + this.f72862a + ", migrationLevel=" + this.f72863b + ", userDefinedLevelForSpecificAnnotation=" + this.f72864c + ')';
    }

    public /* synthetic */ Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map map, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i2 & 2) != 0 ? null : reportLevel2, (i2 & 4) != 0 ? MapsKt.c() : map);
    }
}
