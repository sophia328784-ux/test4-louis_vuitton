package com.batch.android;

import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchModalContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22812c;
    private List<CTA> d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Action f22813e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f22814f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Long f22816i;

    public static class Action {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22817a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONObject f22818b;

        public Action(com.batch.android.f0.a aVar) {
            this.f22817a = aVar.f23284b;
            if (aVar.f23285c != null) {
                try {
                    this.f22818b = new JSONObject(aVar.f23285c);
                } catch (JSONException unused) {
                    this.f22818b = new JSONObject();
                }
            }
        }

        public String getAction() {
            return this.f22817a;
        }

        public JSONObject getArgs() {
            return this.f22818b;
        }
    }

    public static class CTA extends Action {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f22819c;

        public CTA(com.batch.android.f0.b bVar) {
            super(bVar);
            this.f22819c = bVar.d;
        }

        public String getLabel() {
            return this.f22819c;
        }
    }

    public BatchModalContent(com.batch.android.h0.f fVar) {
        this.f22810a = fVar.f23287c;
        this.f22811b = fVar.f23454i;
        this.f22812c = fVar.f23463f;
        this.f22814f = fVar.m;
        this.g = fVar.n;
        this.f22815h = fVar.p;
        com.batch.android.f0.a aVar = fVar.f23455j;
        if (aVar != null) {
            this.f22813e = new Action(aVar);
        }
        List<com.batch.android.f0.b> list = fVar.o;
        if (list != null) {
            Iterator<com.batch.android.f0.b> it = list.iterator();
            while (it.hasNext()) {
                this.d.add(new CTA(it.next()));
            }
        }
        int i2 = fVar.q;
        if (i2 > 0) {
            this.f22816i = Long.valueOf(i2);
        }
    }

    public Long getAutoCloseTimeMillis() {
        return this.f22816i;
    }

    public String getBody() {
        return this.f22812c;
    }

    public List<CTA> getCtas() {
        return new ArrayList(this.d);
    }

    public Action getGlobalTapAction() {
        return this.f22813e;
    }

    public String getMediaAccessibilityDescription() {
        return this.g;
    }

    public String getMediaURL() {
        return this.f22814f;
    }

    public String getTitle() {
        return this.f22811b;
    }

    public String getTrackingIdentifier() {
        return this.f22810a;
    }

    public boolean isShowCloseButton() {
        return this.f22815h;
    }
}
