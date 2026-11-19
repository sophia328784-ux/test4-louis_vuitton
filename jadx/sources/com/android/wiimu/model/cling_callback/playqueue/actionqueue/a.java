package com.android.wiimu.model.cling_callback.playqueue.actionqueue;

import defpackage.n00;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f22335a = "ListRoot";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f22336b = "<ListRoot>";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f22337c = "</ListRoot>";

    public static b a(String str) {
        String[] strArrSplit;
        int length;
        b bVar = new b();
        Matcher matcher = Pattern.compile("<TotalQueue>(.*)</TotalQueue>\r?\n?<CurrentPlayList>\r?\n?<Name>(.*)</Name>\r?\n?</CurrentPlayList>", 40).matcher(str);
        while (matcher.find()) {
            bVar.f22338a = matcher.group(1);
        }
        Matcher matcher2 = Pattern.compile("^<PlayListInfo>(.*)</PlayListInfo>$", 40).matcher(str.replaceAll("<List[0-9]+>", f22336b).replaceAll("</List[0-9]+>", f22337c));
        while (matcher2.find() && (length = (strArrSplit = matcher2.group(1).split(f22337c)).length) >= 2) {
            for (int i2 = 0; i2 < length; i2++) {
                if (strArrSplit[i2].trim().length() > 0) {
                    String strR = n00.r(strArrSplit[i2], f22337c, new StringBuilder());
                    com.android.wiimu.model.cling_callback.playqueue.browsequeue.f fVarA = strR.contains("<Source>iHeartRadio</Source>") ? new c(strR).a() : strR.contains("<Source>SPOTIFY</Source>") ? new e(strR).a() : null;
                    if (fVarA != null) {
                        Matcher matcher3 = Pattern.compile("<Name>(.*)</Name>", 40).matcher(strR);
                        while (matcher.find()) {
                            try {
                                bVar.f22338a = matcher.group(1);
                            } catch (Exception unused) {
                            }
                        }
                        while (matcher3.find()) {
                            fVarA.Name = com.android.wiimu.model.cling_callback.playqueue.xml.c.a(matcher3.group(1));
                        }
                        bVar.f22340c.add(fVarA);
                    }
                }
            }
        }
        return bVar;
    }
}
