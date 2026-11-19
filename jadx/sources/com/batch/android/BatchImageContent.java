package com.batch.android;

import android.graphics.Point;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.messaging.Size2D;

/* JADX INFO: loaded from: classes.dex */
public class BatchImageContent implements BatchInAppMessage.Content {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Action f22755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f22756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f22757c;
    private String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f22758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Size2D f22759f;
    private int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f22760h;

    public static class Action {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f22761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONObject f22762b;

        public Action(com.batch.android.f0.a aVar) {
            this.f22761a = aVar.f23284b;
            if (aVar.f23285c != null) {
                try {
                    this.f22762b = new JSONObject(aVar.f23285c);
                } catch (JSONException unused) {
                    this.f22762b = new JSONObject();
                }
            }
        }

        public String getAction() {
            return this.f22761a;
        }

        public JSONObject getArgs() {
            return this.f22762b;
        }
    }

    public BatchImageContent(com.batch.android.h0.d dVar) {
        this.f22756b = dVar.f23461j;
        this.f22757c = dVar.f23462k;
        this.d = dVar.l;
        this.f22758e = dVar.m;
        this.f22759f = dVar.n;
        this.g = dVar.o;
        this.f22760h = dVar.p;
        com.batch.android.f0.a aVar = dVar.f23460i;
        if (aVar != null) {
            this.f22755a = new Action(aVar);
        }
    }

    public int getAutoCloseDelay() {
        return this.g;
    }

    public Action getGlobalTapAction() {
        return this.f22755a;
    }

    public long getGlobalTapDelay() {
        return this.f22756b;
    }

    public String getImageDescription() {
        return this.f22758e;
    }

    public Point getImageSize() {
        if (this.f22759f == null) {
            return null;
        }
        Size2D size2D = this.f22759f;
        return new Point(size2D.f23706b, size2D.f23707c);
    }

    public String getImageURL() {
        return this.d;
    }

    public boolean isAllowSwipeToDismiss() {
        return this.f22757c;
    }

    public boolean isFullscreen() {
        return this.f22760h;
    }
}
