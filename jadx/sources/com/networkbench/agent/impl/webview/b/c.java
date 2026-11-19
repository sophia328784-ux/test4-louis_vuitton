package com.networkbench.agent.impl.webview.b;

import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.com.google.gson.JsonArray;
import com.networkbench.com.google.gson.JsonPrimitive;

/* JADX INFO: loaded from: classes2.dex */
public class c extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f38442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f38443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f38444c;
    protected int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f38445e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected String f38446f;
    protected String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f38447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f38448i;

    public c(a aVar) {
        this.f38443b = aVar.f38450b;
        this.f38444c = aVar.f38451c;
        this.d = aVar.d;
        this.f38445e = aVar.f38452e;
        this.f38446f = aVar.f38453f;
        this.g = aVar.g;
        this.f38447h = aVar.f38454h;
        this.f38448i = aVar.f38455i;
        this.f38442a = aVar.f38449a;
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38442a)));
        jsonArray.add(new JsonPrimitive(this.f38443b));
        jsonArray.add(new JsonPrimitive(this.f38444c));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.d)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38445e)));
        jsonArray.add(new JsonPrimitive(this.f38446f));
        jsonArray.add(new JsonPrimitive(this.g));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38447h)));
        jsonArray.add(new JsonPrimitive((Number) Integer.valueOf(this.f38448i)));
        return jsonArray;
    }

    public String toString() {
        return "errorTypeName:" + this.f38443b + ", errorMessage:" + this.f38444c + ", lineOfError:" + this.d + ", columnOfError:" + this.f38445e + ", filenameOfError:" + this.f38446f + ", stack:" + this.g + ", jsErrorCount:" + this.f38447h + ", isFirstJsError:" + this.f38448i + ", offsetTimeStamp:" + this.f38442a;
    }

    public static class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f38450b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f38451c = "";
        private int d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f38452e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f38453f = "";
        private String g = "";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f38454h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f38455i = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f38449a = 0;

        public a a(String str) {
            if (str == null) {
                str = "";
            }
            this.f38450b = str;
            return this;
        }

        public a b(String str) {
            if (str == null) {
                str = "";
            }
            this.f38451c = str;
            return this;
        }

        public a c(String str) {
            if (str == null) {
                str = "";
            }
            this.f38453f = str;
            return this;
        }

        public a d(String str) {
            if (str == null) {
                str = "";
            }
            this.g = str;
            return this;
        }

        public a e(int i2) {
            this.f38455i = i2;
            return this;
        }

        public a a(int i2) {
            this.f38449a = i2;
            return this;
        }

        public a c(int i2) {
            this.f38452e = i2;
            return this;
        }

        public a b(int i2) {
            this.d = i2;
            return this;
        }

        public a d(int i2) {
            this.f38454h = i2;
            return this;
        }

        public c a() {
            return new c(this);
        }
    }
}
