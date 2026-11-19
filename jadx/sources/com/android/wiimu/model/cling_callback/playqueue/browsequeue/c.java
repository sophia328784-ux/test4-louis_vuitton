package com.android.wiimu.model.cling_callback.playqueue.browsequeue;

import com.android.wiimu.model.cling_callback.playqueue.AlbumInfoXmlParse;
import defpackage.n00;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f22366a = "ListRoot";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f22367b = "<ListRoot>";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f22368c = "</ListRoot>";

    public static e a(String str) {
        e eVar = new e();
        Matcher matcher = Pattern.compile("<PlayList>\r?\n?<ListName>(.*)</ListName>\r?\n?<ListInfo>", 40).matcher(str);
        while (matcher.find()) {
            eVar.Name = matcher.group(1);
        }
        Matcher matcher2 = Pattern.compile("<LastPlayIndex>(.*)</LastPlayIndex>", 40).matcher(str);
        while (matcher2.find()) {
            eVar.LastPlayIndex = matcher2.group(1);
        }
        String strReplaceAll = str.replaceAll("<Track[0-9]+>", f22367b).replaceAll("</Track[0-9]+>", f22368c);
        Matcher matcher3 = Pattern.compile("^<Tracks>(.*)</Tracks>$", 40).matcher(strReplaceAll);
        boolean zContains = strReplaceAll.contains("<Source>qplay");
        while (matcher3.find()) {
            String[] strArrSplit = matcher3.group(1).split(f22368c);
            int length = strArrSplit.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArrSplit[i2].trim().length() > 0) {
                    String strR = n00.r(strArrSplit[i2], f22368c, new StringBuilder());
                    if (zContains) {
                        b.a aVarB = b(strR);
                        if (aVarB != null) {
                            eVar.f22379a.add(aVarB);
                        }
                    } else {
                        b.a aVarA = new b(strR).a();
                        if (aVarA != null && aVarA.g.length() > 0) {
                            eVar.f22379a.add(aVarA);
                        }
                    }
                }
            }
        }
        return eVar;
    }

    public static b.a b(String str) {
        try {
            Matcher matcher = Pattern.compile("<Metadata>\r?\n?(.*)\r?\n?</Metadata>\r?\n?", 41).matcher(str);
            String strGroup = matcher.find() ? matcher.group(1) : null;
            String strSubstring = str.substring(str.indexOf("<Source>") + 8, str.indexOf("</Source>"));
            if (strGroup != null) {
                b.a aVarB = AlbumInfoXmlParse.b(com.android.wiimu.model.cling_callback.playqueue.xml.c.a(strGroup));
                aVarB.f20673i = strSubstring;
                if (aVarB.g.length() > 0) {
                    return aVarB;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }
}
