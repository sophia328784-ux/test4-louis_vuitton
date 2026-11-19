package com.perfectcorp.perfectlib;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.base.MoreObjects;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class LookInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f39669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.ph.database.ymk.makeup.b f39670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile YMKPrimitiveData.Look f39671c;
    public final String d;

    public LookInfo(Map map, com.perfectcorp.perfectlib.ph.database.ymk.makeup.b bVar, YMKPrimitiveData.Look look, Configuration.ImageSource imageSource) {
        Objects.requireNonNull(map, "downloadedLookDatas can't be null");
        this.f39669a = map;
        Objects.requireNonNull(bVar, "makeupItemMetadata can't be null");
        this.f39670b = bVar;
        this.f39671c = look;
        if (this.f39671c == null) {
            this.f39671c = (YMKPrimitiveData.Look) map.get(getGuid());
        }
        this.d = Strings.b(look != null ? DownloadImageHelper.b(imageSource, look.d) : bVar.g);
    }

    public final String getDescription() {
        return Strings.b(this.f39671c != null ? this.f39671c.f40783c.b() : this.f39670b.f41229f);
    }

    public final String getGuid() {
        String str = this.f39670b.d;
        if (PerfectLib.g.f39519h && !TextUtils.isEmpty(this.f39670b.q)) {
            str = this.f39670b.q;
        }
        return Strings.b(str);
    }

    public final String getName() {
        return Strings.b(this.f39671c != null ? this.f39671c.f40782b.b() : this.f39670b.f41228e);
    }

    public final String getThumbnailUrl() {
        return this.d;
    }

    public final boolean isDownloaded() {
        if (this.f39671c == null) {
            this.f39671c = (YMKPrimitiveData.Look) this.f39669a.get(getGuid());
        }
        return this.f39671c != null;
    }

    public final String toString() {
        MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper("LookInfo");
        toStringHelper.b("Guid", getGuid());
        toStringHelper.b("Name", getName());
        toStringHelper.b("isDownloaded", Boolean.valueOf(isDownloaded()));
        return toStringHelper.toString();
    }
}
