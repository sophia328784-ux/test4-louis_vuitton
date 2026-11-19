package com.dynatrace.agent.events;

import com.dynatrace.android.agent.util.Utility;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/dynatrace/agent/events/TracestateHeader;", "", "TracestateContext", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class TracestateHeader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile TracestateContext f26755a = new TracestateContext(null, null, null, null, 15, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static volatile boolean f26756b = true;

    public static String a(String str, String str2) {
        str2.getClass();
        TracestateContext tracestateContext = f26755a;
        if (tracestateContext.f26757a.length() == 0 || tracestateContext.f26758b.length() == 0 || tracestateContext.f26759c.length() == 0 || tracestateContext.d.length() == 0 || str2.length() == 0) {
            Utility.b("Tracestate header cannot be generated, not enough context is set");
            return null;
        }
        StringBuilder sb = new StringBuilder();
        cj.C(sb, tracestateContext.f26757a, "@dtr=1;", str2, ";0;");
        sb.append(CollectionsKt.K(CollectionsKt.q0(StringsKt__StringsKt.split$default(tracestateContext.d, new String[]{"-"}, false, 0, 6, null), 3), "", null, null, null, 62));
        sb.append(';');
        sb.append(tracestateContext.f26758b);
        sb.append(';');
        sb.append(tracestateContext.f26759c);
        String string = sb.toString();
        if (str != null) {
            string = string + ',' + str;
        }
        if (string.length() > 512) {
            ArrayList<String> arrayListZ0 = CollectionsKt.z0(StringsKt__StringsKt.split$default(string, new String[]{","}, false, 0, 6, null));
            ArrayList arrayList = new ArrayList(arrayListZ0);
            string = CollectionsKt.K(arrayList, ",", null, null, null, 62);
            for (String str3 : arrayListZ0) {
                if (string.length() <= 512) {
                    break;
                }
                if (str3.length() > 128) {
                    arrayList.remove(str3);
                    string = CollectionsKt.K(arrayList, ",", null, null, null, 62);
                }
            }
            while (string.length() > 512 && !arrayList.isEmpty()) {
                arrayList.remove(arrayList.size() - 1);
                string = CollectionsKt.K(arrayList, ",", null, null, null, 62);
            }
        }
        Utility.b("Tracestate header is generated ".concat(string));
        return string;
    }

    public static boolean b(String str) {
        TracestateContext tracestateContext = f26755a;
        if (str != null && tracestateContext.f26757a.length() != 0) {
            String strR = n00.r(tracestateContext.f26757a, "@dtr", new StringBuilder());
            List<String> listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{","}, false, 0, 6, null);
            if (!(listSplit$default instanceof Collection) || !listSplit$default.isEmpty()) {
                for (String str2 : listSplit$default) {
                    int iU = StringsKt.u(str2, '=', 0, 6);
                    if (iU < 0 ? false : Intrinsics.c(StringsKt.a0(str2.substring(0, iU)).toString(), strR)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean c() {
        TracestateContext tracestateContext = f26755a;
        return tracestateContext.f26757a.length() > 0 && tracestateContext.f26758b.length() > 0 && tracestateContext.f26759c.length() > 0 && tracestateContext.d.length() > 0;
    }

    public static void d(String str, String str2, String str3, String str4) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        f26755a = new TracestateContext(str, str2, str3, str4);
    }

    public static void e(String str, String str2) {
        str.getClass();
        str2.getClass();
        TracestateContext tracestateContext = f26755a;
        String str3 = tracestateContext.f26757a;
        String str4 = tracestateContext.d;
        str3.getClass();
        str4.getClass();
        f26755a = new TracestateContext(str3, str, str2, str4);
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0082\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/dynatrace/agent/events/TracestateHeader$TracestateContext;", "", "", "tracestateKeyPrefix", "instanceId", "userSessionId", "applicationId", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TracestateContext {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26757a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f26759c;
        public final String d;

        public /* synthetic */ TracestateContext(String str, String str2, String str3, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TracestateContext)) {
                return false;
            }
            TracestateContext tracestateContext = (TracestateContext) obj;
            return Intrinsics.c(this.f26757a, tracestateContext.f26757a) && Intrinsics.c(this.f26758b, tracestateContext.f26758b) && Intrinsics.c(this.f26759c, tracestateContext.f26759c) && Intrinsics.c(this.d, tracestateContext.d);
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(fc.b(this.f26757a.hashCode() * 31, 31, this.f26758b), 31, this.f26759c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("TracestateContext(tracestateKeyPrefix=");
            sb.append(this.f26757a);
            sb.append(", instanceId=");
            sb.append(this.f26758b);
            sb.append(", userSessionId=");
            sb.append(this.f26759c);
            sb.append(", applicationId=");
            return fc.l(sb, this.d, ')');
        }

        public TracestateContext(String str, String str2, String str3, String str4) {
            d21.y(str, str2, str3, str4);
            this.f26757a = str;
            this.f26758b = str2;
            this.f26759c = str3;
            this.d = str4;
        }

        public TracestateContext() {
            this(null, null, null, null, 15, null);
        }
    }
}
