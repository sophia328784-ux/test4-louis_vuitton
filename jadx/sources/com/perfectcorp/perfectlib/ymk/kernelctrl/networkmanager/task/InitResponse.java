package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.task;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.NetworkManager;
import defpackage.md;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final class InitResponse extends BaseResponse {
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f41996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f41997f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f41998h;

    public static final class a {
        public final List<String> collectData = Collections.EMPTY_LIST;
        public final String collectData_consoleReport = "";
        public final int countlyEventQueueSize = 0;
    }

    public static final class b {
        public final a makeup = null;
        public final a hairColor = null;
        public final a skincare = null;
        public final a skincareHD = null;
        public final a shadeFinder = null;
        public final a funSticker = null;
        public final a reshape = null;
        public final a eyewear = null;
        public final a eyewear3D = null;
        public final a aiFaceAnalyzer = null;
        public final a earring = null;
        public final a nail = null;
        public final a watch = null;
        public final a bracelet = null;
        public final a ring = null;
        public final a stacking = null;
        public final a background = null;
        public final a hairStyle = null;
        public final a tutorial = null;
        public final a necklace = null;

        public static final class a {
            public final long startDate = -1;
            public final long endDate = -1;
        }
    }

    public InitResponse(String str) throws JSONException, IOException {
        super(str);
        if (this.f41995c != NetworkManager.ResponseStatus.OK) {
            md.k("server status is not ok");
            throw null;
        }
        this.d = this.f41994b.getString("testbeddomain");
        this.f41996e = this.f41994b.getString("productiondomain");
        this.f41997f = this.f41994b.getString("heServerDomain");
        this.g = this.f41994b.getString("aiApiDomain");
        this.f41998h = this.f41994b.getString("aiTestApiDomain");
    }
}
