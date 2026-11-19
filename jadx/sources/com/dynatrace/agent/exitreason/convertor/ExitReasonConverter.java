package com.dynatrace.agent.exitreason.convertor;

import com.dynatrace.android.agent.util.Utility;
import defpackage.BacktraceFrame;
import defpackage.Signal;
import defpackage.Thread;
import defpackage.Tombstone;
import defpackage.fc;
import defpackage.iv;
import defpackage.pq0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.HexExtensionsKt;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;", "", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ExitReasonConverter {
    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("characteristics.has_error", true);
        jSONObject.put("error.is_fatal", true);
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006a  */
    public static JSONObject b(Tombstone tombstone, String str) {
        int i2;
        String str2;
        String strK;
        JSONObject jSONObjectA = a();
        jSONObjectA.put("characteristics.has_crash", true);
        String str3 = tombstone.p;
        List list = tombstone.v;
        Signal signal = tombstone.o;
        if (str3.length() > 0) {
            str = str3;
        } else if (!list.isEmpty()) {
            str = CollectionsKt.K(list, ". ", null, null, new iv(16), 30);
        } else if (signal != null && (str2 = signal.f57f) != null && str2.length() > 0) {
            str = str2;
        } else if (signal != null && (i2 = signal.f56e) != 0) {
            str = pq0.k(i2, "signal ");
        }
        c("exception.message", str, jSONObjectA);
        String string = null;
        if (signal != null) {
            int i3 = signal.f56e;
            strK = signal.f57f;
            if (strK.length() <= 0) {
                if (i3 != 0) {
                    strK = pq0.k(i3, "signal ");
                } else {
                    strK = null;
                }
            }
        } else {
            strK = null;
        }
        c("exception.crash_signal_name", strK, jSONObjectA);
        if (str3.length() <= 0 || !StringsKt.P(str3, "terminating with uncaught exception of type ", false)) {
            str3 = null;
        }
        c("exception.type", str3 != null ? StringsKt.U(str3.substring(44), ": ") : null, jSONObjectA);
        Map map = tombstone.w;
        List list2 = tombstone.t;
        int i4 = tombstone.f78k;
        if (!map.isEmpty()) {
            StringBuilder sb = new StringBuilder("*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n");
            sb.append("ABI: " + tombstone.f73e.name());
            sb.append("\n");
            sb.append("Process uptime: " + tombstone.n + 's');
            sb.append("\n");
            if (!list2.isEmpty()) {
                sb.append("Cmdline: " + list2);
                sb.append("\n");
            }
            StringBuilder sb2 = new StringBuilder("pid: ");
            fc.x(tombstone.f77j, i4, ", tid: ", ", name: ", sb2);
            Thread thread = (Thread) map.get(Integer.valueOf(i4));
            sb2.append(thread != null ? thread.f68f : null);
            sb.append(sb2.toString());
            sb.append("\n");
            if (signal != null) {
                sb.append("signal " + signal.f56e + " (" + signal.f57f + "), code " + signal.g + " (" + signal.f58h + "), fault addr " + HexExtensionsKt.a(signal.m));
                sb.append("\n");
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Thread thread2 = (Thread) linkedHashMap.get(Integer.valueOf(i4));
            if (thread2 != null) {
                linkedHashMap2.put(Integer.valueOf(i4), thread2);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                int iIntValue = ((Number) entry.getKey()).intValue();
                Thread thread3 = (Thread) entry.getValue();
                if (iIntValue != i4) {
                    linkedHashMap2.put(Integer.valueOf(iIntValue), thread3);
                }
            }
            Iterator it = linkedHashMap2.entrySet().iterator();
            while (it.hasNext()) {
                Thread thread4 = (Thread) ((Map.Entry) it.next()).getValue();
                sb.append(thread4.f68f + ':');
                sb.append("\n");
                int i5 = 0;
                for (Object obj : thread4.l) {
                    int i6 = i5 + 1;
                    if (i5 < 0) {
                        CollectionsKt.t0();
                        throw null;
                    }
                    BacktraceFrame backtraceFrame = (BacktraceFrame) obj;
                    sb.append("      #" + StringsKt.B(2, String.valueOf(i5)) + " pc " + HexExtensionsKt.a(backtraceFrame.f3e) + ' ' + backtraceFrame.f7j + " (" + backtraceFrame.f5h + '+' + backtraceFrame.f6i + ") (BuildId: " + backtraceFrame.l + ')');
                    sb.append("\n");
                    i5 = i6;
                }
                sb.append("\n");
            }
            string = sb.toString();
        }
        if (string == null) {
            Utility.b("native crash threads cannot be extracted");
            return jSONObjectA;
        }
        jSONObjectA.put("exception.stack_trace", string);
        return jSONObjectA;
    }

    public static void c(String str, String str2, JSONObject jSONObject) throws JSONException {
        String strH = fc.h("key ", str, " dropped because extracted value is 'null'");
        if (str2 == null) {
            Utility.b(strH);
        } else {
            jSONObject.put(str, str2);
        }
    }
}
