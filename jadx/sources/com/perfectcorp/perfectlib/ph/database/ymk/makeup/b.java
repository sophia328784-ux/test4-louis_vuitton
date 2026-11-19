package com.perfectcorp.perfectlib.ph.database.ymk.makeup;

import com.linkplay.medialib.ContentTree;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata;
import com.perfectcorp.thirdparty.com.google.common.primitives.Longs;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements DownloadMetadata {
    public static final b r = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f41225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f41226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f41227c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41229f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f41230h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f41231i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f41232j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f41233k;
    public final ArrayList l;
    public final long m;
    public final c n;
    public final String o;
    public final String p;
    public final String q;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f41234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f41235b;

        public a(JSONObject jSONObject) {
            this.f41235b = jSONObject.optString("guid");
            this.f41234a = jSONObject.optLong("size");
        }
    }

    public b(JSONObject jSONObject) throws JSONException, ParseException {
        this.l = new ArrayList();
        this.f41225a = jSONObject;
        this.f41226b = jSONObject.optLong("mkId");
        this.f41227c = jSONObject.optString("type");
        this.d = jSONObject.optString("guid");
        this.f41228e = jSONObject.optString("name");
        jSONObject.optString("vendor");
        this.f41229f = jSONObject.optString("description");
        this.g = jSONObject.optString("thumbnailURL");
        jSONObject.optString("previewImgURL");
        this.f41230h = jSONObject.optString("downloadURL");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd", Locale.US);
        Calendar calendar = Calendar.getInstance();
        String strOptString = jSONObject.optString("publishDate", ContentTree.ROOT_ID);
        calendar.setTime(!ContentTree.ROOT_ID.equals(strOptString) ? simpleDateFormat.parse(strOptString) : new Date(0L));
        Calendar calendar2 = Calendar.getInstance();
        String strOptString2 = jSONObject.optString("expiredDate", ContentTree.ROOT_ID);
        calendar2.setTime(!ContentTree.ROOT_ID.equals(strOptString2) ? simpleDateFormat.parse(strOptString2) : new Date(0L));
        jSONObject.optBoolean("editMode");
        jSONObject.optBoolean("liveMode");
        this.f41231i = jSONObject.optInt("statusCode", -1);
        this.f41232j = jSONObject.optLong("downloadFileSize", 0L);
        this.f41233k = jSONObject.optString("inZipURL", "");
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("info");
        if (jSONObjectOptJSONObject != null) {
            JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("reference_elements");
            int length = jSONArrayOptJSONArray != null ? jSONArrayOptJSONArray.length() : 0;
            for (int i2 = 0; i2 < length; i2++) {
                this.l.add(new a((JSONObject) jSONArrayOptJSONArray.get(i2)));
            }
            this.o = jSONObjectOptJSONObject.optString("filterGUID", "");
            this.p = jSONObjectOptJSONObject.optString("backgroundGUID", "");
            this.q = jSONObjectOptJSONObject.optString("custom_id", "");
        } else {
            this.o = "";
            this.p = "";
            this.q = "";
        }
        Long lA = Longs.a(jSONObject.optString("lastModified", ""));
        this.m = lA != null ? lA.longValue() : 0L;
        c cVar = (c) d.f41239a.i(jSONObject.optString("zipInfo", ""), c.class);
        this.n = cVar == null ? c.f41236a : cVar;
    }

    @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
    public final String a() {
        return "makeup";
    }

    @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
    public final long b() {
        return this.f41226b;
    }

    @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
    public final String c() {
        return this.f41230h;
    }

    @Override // com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.download.DownloadMetadata
    public final String d() {
        return this.d;
    }

    public final com.perfectcorp.perfectlib.ph.database.ymk.look.d.b e() {
        String str = this.f41227c;
        if ("NailLook".equalsIgnoreCase(str)) {
            return com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.NAIL;
        }
        return "JewelryLook".equalsIgnoreCase(str) ? com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.JEWELRY : com.perfectcorp.perfectlib.ph.database.ymk.look.d.b.MAKEUP;
    }

    public b() {
        this.l = new ArrayList();
        this.f41225a = null;
        this.f41226b = 0L;
        this.f41227c = null;
        this.d = null;
        this.f41228e = null;
        this.f41229f = null;
        this.g = null;
        this.f41230h = null;
        this.f41231i = 0;
        this.f41232j = 0L;
        this.f41233k = null;
        this.m = 0L;
        this.n = c.f41236a;
        this.o = null;
        this.p = null;
        this.q = null;
    }
}
