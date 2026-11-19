package com.linkplay.mediainfo.parser;

import com.linkplay.lpmdpkit.utils.LPXmlUtil;
import com.linkplay.mediainfo.LPMediaInfo;
import com.linkplay.mediainfo.LPMediaInfoParser;
import defpackage.n00;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class LPCurrentQueueController {
    static final String ListRoot = "ListRoot";
    static final String ListRootEnd = "</ListRoot>";
    static final String ListRootStart = "<ListRoot>";

    public static LPSourceCurrentQueueItem convert2CurrentQueueItem(String str) {
        LPSourceCurrentQueueItem lPSourceCurrentQueueItem = new LPSourceCurrentQueueItem();
        Matcher matcher = Pattern.compile("<PlayList>\r?\n?<ListName>(.*)</ListName>\r?\n?<ListInfo>", 40).matcher(str);
        while (matcher.find()) {
            lPSourceCurrentQueueItem.Name = matcher.group(1);
        }
        Matcher matcher2 = Pattern.compile("<LastPlayIndex>(.*)</LastPlayIndex>", 40).matcher(str);
        while (matcher2.find()) {
            lPSourceCurrentQueueItem.LastPlayIndex = matcher2.group(1);
        }
        String strReplaceAll = str.replaceAll("<Track[0-9]+>", ListRootStart).replaceAll("</Track[0-9]+>", ListRootEnd);
        Matcher matcher3 = Pattern.compile("^<Tracks>(.*)</Tracks>$", 40).matcher(strReplaceAll);
        boolean zContains = strReplaceAll.contains("<Source>qplay");
        while (matcher3.find()) {
            String[] strArrSplit = matcher3.group(1).split(ListRootEnd);
            int length = strArrSplit.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (strArrSplit[i2].trim().length() > 0) {
                    String strR = n00.r(strArrSplit[i2], ListRootEnd, new StringBuilder());
                    if (zContains) {
                        LPMediaInfo qplayMetaData = parseQplayMetaData(strR);
                        if (qplayMetaData != null) {
                            lPSourceCurrentQueueItem.tracksList.add(qplayMetaData);
                        }
                    } else {
                        LPMediaInfo lPMediaInfo = new LPAlbumHandler(strR).parse();
                        if (lPMediaInfo != null && lPMediaInfo.getPlayUri().length() > 0) {
                            lPSourceCurrentQueueItem.tracksList.add(lPMediaInfo);
                        }
                    }
                }
            }
        }
        return lPSourceCurrentQueueItem;
    }

    public static LPMediaInfo parseQplayMetaData(String str) {
        try {
            Matcher matcher = Pattern.compile("<Metadata>\r?\n?(.*)\r?\n?</Metadata>\r?\n?", 41).matcher(str);
            String strGroup = matcher.find() ? matcher.group(1) : null;
            String strSubstring = str.substring(str.indexOf("<Source>") + 8, str.indexOf("</Source>"));
            if (strGroup != null) {
                LPMediaInfo lPMediaInfoConvertQplayMeta2AlbumInfo = LPMediaInfoParser.convertQplayMeta2AlbumInfo(LPXmlUtil.Decode(strGroup));
                lPMediaInfoConvertQplayMeta2AlbumInfo.setTrackSource(strSubstring);
                if (lPMediaInfoConvertQplayMeta2AlbumInfo.getPlayUri().length() > 0) {
                    return lPMediaInfoConvertQplayMeta2AlbumInfo;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }
}
