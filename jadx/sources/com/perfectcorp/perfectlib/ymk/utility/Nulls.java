package com.perfectcorp.perfectlib.ymk.utility;

import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.thirdparty.com.google.common.base.Strings;
import java.net.URI;
import java.util.Collections;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Nulls {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f42040a = 0;

    static {
        URI.create("");
    }

    public static String a(String str) {
        return Strings.b(str);
    }

    public static List b(List list) {
        Set set = MoreCollections.f39434a;
        return list == null ? Collections.EMPTY_LIST : list;
    }
}
