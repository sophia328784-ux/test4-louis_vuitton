package defpackage;

import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.internal.measurement.zzbk;
import com.google.android.gms.internal.measurement.zzh;
import com.google.android.gms.internal.vision.zzii;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.g;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import org.bouncycastle.pqc.crypto.lms.LMSigParameters;
import org.json.JSONException;
import org.json.JSONObject;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class z81 {
    public static int a(int i2, int i3, int i4) {
        return zzada.b(i2) + i3 + i4;
    }

    public static int b(int i2, int i3, int i4, int i5) {
        return zzada.b(i2) + i3 + i4 + i5;
    }

    public static long c(long j2, long j3, long j4, long j5) {
        return (j2 * j3) + j4 + j5;
    }

    public static zzaef d(zzaef zzaefVar) {
        int size = zzaefVar.size();
        return zzaefVar.d(size + size);
    }

    public static Object e(zzbk zzbkVar, int i2, ArrayList arrayList, int i3) {
        zzh.a(i2, arrayList, zzbkVar.name());
        return arrayList.get(i3);
    }

    public static String f(int i2, int i3, String str) {
        StringBuilder sb = new StringBuilder(i2);
        sb.append(str);
        sb.append(i3);
        return sb.toString();
    }

    public static String g(Element element, String str, JSONObject jSONObject, String str2, String str3) throws JSONException {
        jSONObject.put(str2, element.getAttribute(str));
        return element.getAttribute(str3);
    }

    public static String h(NodeList nodeList, int i2) {
        return nodeList.item(i2).getTextContent().trim();
    }

    public static void i(BeautyMode beautyMode, ImmutableList.Builder builder) {
        builder.f(beautyMode.getFeatureType().toString());
    }

    public static void j(String str, String str2, e eVar) {
        eVar.a(str + str2);
    }

    public static void k(StringBuilder sb, Throwable th) {
        sb.append(th.getMessage());
        g.p(sb.toString());
    }

    public static void l(LMSigParameters lMSigParameters, LMSigParameters.AnonymousClass1 anonymousClass1, LMSigParameters lMSigParameters2) {
        anonymousClass1.put(Integer.valueOf(lMSigParameters.type), lMSigParameters2);
    }

    public static int m(int i2, int i3, int i4) {
        return zzii.r(i2) + i3 + i4;
    }

    public static int n(int i2, int i3, int i4, int i5) {
        return zzii.r(i2) + i3 + i4 + i5;
    }

    public static int o(int i2, int i3, int i4) {
        return (zzii.k(i2) * i3) + i4;
    }
}
