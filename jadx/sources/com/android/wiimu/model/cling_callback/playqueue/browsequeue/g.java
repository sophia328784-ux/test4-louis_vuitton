package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import defpackage.n00;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f22380a = "ListRoot";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f22381b = "<ListRoot>";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f22382c = "</ListRoot>";

    public static h a(String str) {
        f fVarA;
        h hVar = new h();
        Matcher matcher = Pattern.compile("<TotalQueue>(.*)</TotalQueue>\r?\n?<CurrentPlayList>\r?\n?<Name>(.*)</Name>\r?\n?</CurrentPlayList>", 40).matcher(str);
        while (matcher.find()) {
            hVar.f22383a = matcher.group(1);
            hVar.f22384b = matcher.group(2);
        }
        Matcher matcher2 = Pattern.compile("^<PlayListInfo>(.*)</PlayListInfo>$", 40).matcher(str.replaceAll("<List[0-9]+>", f22381b).replaceAll("</List[0-9]+>", f22382c));
        while (matcher2.find()) {
            String[] strArrSplit = matcher2.group(1).split(f22382c);
            int length = strArrSplit.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArrSplit[i2].trim().length() > 0) {
                    String strR = n00.r(strArrSplit[i2], f22382c, new StringBuilder());
                    if (strR.contains("<Source>天天动听</Source>")) {
                        fVarA = new com.android.wiimu.model.cling_callback.playqueue.browsequeue.ttpod.b(strR).a();
                    } else if (strR.contains("<Name>Pandora</Name>") || strR.contains("<Source>Pandora</Source>")) {
                        fVarA = new com.android.wiimu.model.cling_callback.playqueue.browsequeue.pandora.a(strR).a();
                    } else {
                        fVarA = (strR.contains("<Name>Douban</Name>") || strR.contains("<Source>Douban</Source>")) ? new com.android.wiimu.model.cling_callback.playqueue.browsequeue.douban.a(strR).a() : null;
                    }
                    if (fVarA != null) {
                        hVar.f22385c.add(fVarA);
                    }
                }
            }
        }
        return hVar;
    }
}
