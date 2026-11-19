package com.perfectcorp.perfectlib.ph.database.ymk.background;

import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.makeupcam.camera.BackgroundPayload;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public final String data;
    public final String expiredDate;
    public final String guid;
    public final boolean isDeleted;
    private final b parseData;
    private final com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a parsePayload;
    public final String payload;
    public final String rootFolder;
    private final String usageType;
    public final int version;
    private final List<e> foregroundFrameProviders = new ArrayList();
    private final List<e> backgroundFrameProviders = new ArrayList();

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.database.ymk.background.a$a, reason: collision with other inner class name */
    public static final class C0135a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41155a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41156b;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f41158e;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f41160h;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41157c = c.FREE.f41164b;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f41159f = "";
    }

    public static final class b {

        @SerializedName("background_sticker")
        public final List<BackgroundPayload.BackgroundSticker> backgroundStickers;

        @SerializedName("best_frame_index")
        public final int bestFrameIndex;

        @SerializedName("foreground_sticker")
        public final List<BackgroundPayload.BackgroundSticker> foregroundStickers;
        public final int version = 0;
        public final String guid = "";
        public final String thumbnail = "";

        public b() {
            List<BackgroundPayload.BackgroundSticker> list = Collections.EMPTY_LIST;
            this.foregroundStickers = list;
            this.backgroundStickers = list;
            this.bestFrameIndex = 0;
        }
    }

    public a(C0135a c0135a) {
        b bVar;
        com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a c0173a;
        String str = c0135a.f41155a;
        Objects.requireNonNull(str);
        this.guid = str;
        this.payload = c0135a.f41156b;
        this.usageType = c0135a.f41157c;
        this.version = c0135a.d;
        this.expiredDate = c0135a.f41158e;
        String str2 = c0135a.f41159f;
        Objects.requireNonNull(str2);
        this.rootFolder = str2;
        String str3 = c0135a.g;
        this.data = str3;
        this.isDeleted = c0135a.f41160h;
        if (TextUtils.isEmpty(str3)) {
            bVar = new b();
        } else {
            try {
                bVar = (b) GsonHelper.f39260a.i(c0135a.g, b.class);
                Objects.requireNonNull(bVar);
            } catch (Throwable th) {
                Log.e("BackgroundInfo", "[parseUiData] failed", th);
                bVar = new b();
            }
        }
        this.parseData = bVar;
        if (TextUtils.isEmpty(c0135a.f41156b)) {
            c0173a = null;
        } else {
            try {
                c0173a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a) GsonHelper.f39260a.i(c0135a.f41156b, com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a.class);
                Objects.requireNonNull(c0173a);
            } catch (Throwable th2) {
                Log.e("BackgroundInfo", "[parsePayload] failed", th2);
                c0173a = new com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a();
            }
        }
        this.parsePayload = c0173a;
        Iterator<BackgroundPayload.BackgroundSticker> it = this.parseData.foregroundStickers.iterator();
        while (it.hasNext()) {
            this.foregroundFrameProviders.add(new d(it.next(), this.rootFolder, this.parseData.bestFrameIndex));
        }
        Iterator<BackgroundPayload.BackgroundSticker> it2 = this.parseData.backgroundStickers.iterator();
        while (it2.hasNext()) {
            this.backgroundFrameProviders.add(new d(it2.next(), this.rootFolder, this.parseData.bestFrameIndex));
        }
    }

    public final com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a.C0173a a() {
        return this.parsePayload;
    }

    public final c b() {
        return c.a(this.usageType);
    }

    public final String c() {
        if (TextUtils.isEmpty(this.rootFolder)) {
            return "";
        }
        return IO.d(this.rootFolder) + this.parseData.thumbnail;
    }

    public final List d() {
        return this.parseData.foregroundStickers;
    }

    public final List e() {
        return this.parseData.backgroundStickers;
    }
}
