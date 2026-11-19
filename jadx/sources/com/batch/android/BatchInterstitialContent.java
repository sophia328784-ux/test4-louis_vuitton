package com.batch.android;

import android.text.TextUtils;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BatchInterstitialContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f22779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f22780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f22781c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<CTA> f22782e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f22783f;
    private String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22784h;

    public static class CTA {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f22786b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private JSONObject f22787c;

        public CTA(com.batch.android.f0.b bVar) {
            this.f22785a = bVar.d;
            this.f22786b = bVar.f23284b;
            if (bVar.f23285c != null) {
                try {
                    this.f22787c = new JSONObject(bVar.f23285c);
                } catch (JSONException unused) {
                    this.f22787c = new JSONObject();
                }
            }
        }

        public String getAction() {
            return this.f22786b;
        }

        public JSONObject getArgs() {
            return this.f22787c;
        }

        public String getLabel() {
            return this.f22785a;
        }
    }

    public BatchInterstitialContent(com.batch.android.h0.g gVar) {
        this.f22779a = gVar.f23287c;
        this.f22780b = gVar.f23465i;
        this.f22781c = gVar.f23466j;
        this.d = gVar.f23463f;
        this.g = gVar.o;
        if (TextUtils.isEmpty(gVar.n)) {
            this.f22783f = gVar.m;
        } else {
            this.f22783f = gVar.n;
        }
        List<com.batch.android.f0.b> list = gVar.l;
        if (list != null) {
            Iterator<com.batch.android.f0.b> it = list.iterator();
            while (it.hasNext()) {
                this.f22782e.add(new CTA(it.next()));
            }
        }
        Boolean bool = gVar.p;
        if (bool != null) {
            this.f22784h = bool.booleanValue();
        }
    }

    public String getBody() {
        return this.d;
    }

    public List<CTA> getCtas() {
        return new ArrayList(this.f22782e);
    }

    public String getHeader() {
        return this.f22780b;
    }

    public String getMediaAccessibilityDescription() {
        return this.g;
    }

    public String getMediaURL() {
        return this.f22783f;
    }

    public String getTitle() {
        return this.f22781c;
    }

    public String getTrackingIdentifier() {
        return this.f22779a;
    }

    public boolean shouldShowCloseButton() {
        return this.f22784h;
    }
}
