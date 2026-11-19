package com.networkbench.agent.impl.plugin.d;

import com.linkplay.medialib.ContentTree;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;
import defpackage.d21;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public List<b> f38005a;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f38013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f38014b;
        boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f38016e = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<a> f38015c = new ArrayList();

        public String toString() {
            StringBuilder sb = new StringBuilder("TraceResult{ip='");
            sb.append(this.f38013a);
            sb.append("', hostName='");
            sb.append(this.f38014b);
            sb.append("', routers=");
            sb.append(this.f38015c);
            sb.append(", result=");
            return d21.q(sb, this.d, '}');
        }
    }

    public c() {
        this.f38005a = new ArrayList();
        this.f38005a = new ArrayList();
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f38006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f38007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f38008c;
        String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f38009e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f38010f;
        String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f38011h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        String f38012i;

        private double b() {
            String str = this.f38008c;
            if (str == null || str.equals("")) {
                this.f38008c = ContentTree.ROOT_ID;
            }
            return Math.round((Double.valueOf(this.f38008c).doubleValue() / 100.0d) * 1000.0d) / 1000.0d;
        }

        private int c(String str) {
            if (str == null || str.equals("")) {
                str = ContentTree.ROOT_ID;
            }
            return Integer.valueOf(str).intValue();
        }

        public JsonArray a() {
            JsonArray jsonArray = new JsonArray();
            jsonArray.add(new JsonPrimitive(a(this.f38007b)));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b())));
            jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(c(this.d))));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b(this.f38009e))));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b(this.f38010f))));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b(this.g))));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b(this.f38011h))));
            jsonArray.add(new JsonPrimitive((Number) Double.valueOf(b(this.f38012i))));
            return jsonArray;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Router{host='");
            sb.append(this.f38006a);
            sb.append("', ip='");
            sb.append(this.f38007b);
            sb.append("', loss='");
            sb.append(this.f38008c);
            sb.append("', snt='");
            sb.append(this.d);
            sb.append("', last='");
            sb.append(this.f38009e);
            sb.append("', avg='");
            sb.append(this.f38010f);
            sb.append("', best='");
            sb.append(this.g);
            sb.append("', worst='");
            sb.append(this.f38011h);
            sb.append("', stDev='");
            return n00.r(this.f38012i, "'}", sb);
        }

        private double b(String str) {
            if (str == null || str.equals("")) {
                str = ContentTree.ROOT_ID;
            }
            return Math.round(Double.valueOf(str).doubleValue() * 10.0d) / 10.0d;
        }

        private String a(String str) {
            return (str == null || str.equals("")) ? Browse.CAPS_WILDCARD : str;
        }
    }
}
