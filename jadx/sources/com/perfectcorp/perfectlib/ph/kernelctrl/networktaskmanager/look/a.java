package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look;

import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.perfectlib.ymk.utility.Nulls;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends GsonBaseResponse {

    @SerializedName("messagedigest")
    private final String messageDigest = "";
    private final List<C0168a> lookList = Collections.EMPTY_LIST;

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a$a, reason: collision with other inner class name */
    public static final class C0168a {
        public final String guid = "";
        public final long lastModified = 0;
    }

    public final String a() {
        String str = this.messageDigest;
        int i2 = Nulls.f42040a;
        return Strings.b(str);
    }

    public final List b() {
        List<C0168a> list = this.lookList;
        return list != null ? Collections.unmodifiableList(list) : Collections.EMPTY_LIST;
    }
}
