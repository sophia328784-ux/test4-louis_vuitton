package com.batch.android;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchBannerContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22740c;
    private List<CTA> d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Action f22741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f22742f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Long f22744i;

    public static class Action {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22745a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONObject f22746b;

        public Action(com.batch.android.f0.a aVar) {
            this.f22745a = aVar.f23284b;
            if (aVar.f23285c != null) {
                try {
                    this.f22746b = new JSONObject(aVar.f23285c);
                } catch (JSONException unused) {
                    this.f22746b = new JSONObject();
                }
            }
        }

        public String getAction() {
            return this.f22745a;
        }

        public JSONObject getArgs() {
            return this.f22746b;
        }
    }

    public static class CTA extends Action {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f22747c;

        public CTA(com.batch.android.f0.b bVar) {
            super(bVar);
            this.f22747c = bVar.d;
        }

        public String getLabel() {
            return this.f22747c;
        }
    }

    public BatchBannerContent(com.batch.android.h0.b bVar) {
        this.f22738a = bVar.f23287c;
        this.f22739b = bVar.f23454i;
        this.f22740c = bVar.f23463f;
        this.f22742f = bVar.m;
        this.g = bVar.n;
        this.f22743h = bVar.p;
        com.batch.android.f0.a aVar = bVar.f23455j;
        if (aVar != null) {
            this.f22741e = new Action(aVar);
        }
        List<com.batch.android.f0.b> list = bVar.o;
        if (list != null) {
            Iterator<com.batch.android.f0.b> it = list.iterator();
            while (it.hasNext()) {
                this.d.add(new CTA(it.next()));
            }
        }
        int i2 = bVar.q;
        if (i2 > 0) {
            this.f22744i = Long.valueOf(i2);
        }
    }

    public Long getAutoCloseTimeMillis() {
        return this.f22744i;
    }

    public String getBody() {
        return this.f22740c;
    }

    public List<CTA> getCtas() {
        return new ArrayList(this.d);
    }

    public Action getGlobalTapAction() {
        return this.f22741e;
    }

    public String getMediaAccessibilityDescription() {
        return this.g;
    }

    public String getMediaURL() {
        return this.f22742f;
    }

    public String getTitle() {
        return this.f22739b;
    }

    public String getTrackingIdentifier() {
        return this.f22738a;
    }

    public boolean isShowCloseButton() {
        return this.f22743h;
    }
}
