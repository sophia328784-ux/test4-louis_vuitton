package com.perfectcorp.perfectlib.core;

import com.perfectcorp.common.utility.Log;
import defpackage.n00;
import defpackage.tr;
import defpackage.v7;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class VenusModel$Files {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40096a;

    public VenusModel$Files(String str) {
        this.f40096a = str;
    }

    public static String a(String str, VenusModel$Files venusModel$Files) {
        StringBuilder sbT = n00.t(str);
        String str2 = venusModel$Files.f40096a;
        sbT.append(str2);
        String string = sbT.toString();
        if (new File(string).exists()) {
            return string;
        }
        v7.h(tr.g("Cannot find model. fileName=", str2));
        return null;
    }

    public static String b(String str, VenusModel$Files venusModel$Files) {
        StringBuilder sbT = n00.t(str);
        sbT.append(venusModel$Files.f40096a);
        String string = sbT.toString();
        if (new File(string).exists()) {
            return string;
        }
        Log.g(3, "VenusModel", "Doesn't have model ".concat(string));
        return null;
    }
}
