package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaTypeEnhancementState {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Jsr305Settings f72857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function1 f72858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f72859c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static JavaTypeEnhancementState a(final KotlinVersion kotlinVersion) {
            JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = JavaNullabilityAnnotationSettingsKt.d;
            KotlinVersion kotlinVersion2 = javaNullabilityAnnotationsStatus.f72855b;
            ReportLevel reportLevel = (kotlinVersion2 == null || kotlinVersion2.f71703e - kotlinVersion.f71703e > 0) ? javaNullabilityAnnotationsStatus.f72854a : javaNullabilityAnnotationsStatus.f72856c;
            reportLevel.getClass();
            return new JavaTypeEnhancementState(new Jsr305Settings(reportLevel, reportLevel == ReportLevel.WARN ? null : reportLevel, null, 4, null), new Function1(kotlinVersion) { // from class: kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState$Companion$$Lambda$0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final KotlinVersion f72860b;

                {
                    this.f72860b = kotlinVersion;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    FqName fqName = (FqName) obj;
                    fqName.getClass();
                    FqName fqName2 = JavaNullabilityAnnotationSettingsKt.f72850a;
                    KotlinVersion kotlinVersion3 = this.f72860b;
                    kotlinVersion3.getClass();
                    NullabilityAnnotationStates.f72887a.getClass();
                    NullabilityAnnotationStatesImpl nullabilityAnnotationStatesImpl = NullabilityAnnotationStates.Companion.f72889b;
                    nullabilityAnnotationStatesImpl.getClass();
                    ReportLevel reportLevel2 = (ReportLevel) nullabilityAnnotationStatesImpl.f72891c.invoke(fqName);
                    if (reportLevel2 != null) {
                        return reportLevel2;
                    }
                    NullabilityAnnotationStatesImpl nullabilityAnnotationStatesImpl2 = JavaNullabilityAnnotationSettingsKt.f72852c;
                    nullabilityAnnotationStatesImpl2.getClass();
                    JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus2 = (JavaNullabilityAnnotationsStatus) nullabilityAnnotationStatesImpl2.f72891c.invoke(fqName);
                    if (javaNullabilityAnnotationsStatus2 == null) {
                        return ReportLevel.IGNORE;
                    }
                    KotlinVersion kotlinVersion4 = javaNullabilityAnnotationsStatus2.f72855b;
                    return (kotlinVersion4 == null || kotlinVersion4.f71703e - kotlinVersion3.f71703e > 0) ? javaNullabilityAnnotationsStatus2.f72854a : javaNullabilityAnnotationsStatus2.f72856c;
                }
            });
        }
    }

    public JavaTypeEnhancementState(Jsr305Settings jsr305Settings, Function1<? super FqName, ? extends ReportLevel> function1) {
        jsr305Settings.getClass();
        function1.getClass();
        this.f72857a = jsr305Settings;
        this.f72858b = function1;
        this.f72859c = jsr305Settings.f72865e || function1.invoke(JavaNullabilityAnnotationSettingsKt.f72850a) == ReportLevel.IGNORE;
    }

    public final String toString() {
        return "JavaTypeEnhancementState(jsr305=" + this.f72857a + ", getReportLevelForAnnotation=" + this.f72858b + ')';
    }
}
