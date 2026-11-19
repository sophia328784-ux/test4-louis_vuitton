package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.LPPlaySourceType;
import com.linkplay.lpmdpkit.bean.LPAccount;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import com.linkplay.medialib.ContentTree;
import defpackage.fc;
import defpackage.n00;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPQueueXmlCreator {
    private static final String TAG = "LPQueueXmlCreator";

    private static void appendContextQueue(StringBuffer stringBuffer, String str) {
        stringBuffer.append(str);
    }

    private static String convert2Xml(String str, LPPlayItem lPPlayItem) {
        return LPXmlUtil.getMetadata(str, lPPlayItem);
    }

    public static String createXml4SingleSourceQueue(LPPlayMusicList lPPlayMusicList) {
        if (lPPlayMusicList == null) {
            return "";
        }
        LPPlayHeader header = lPPlayMusicList.getHeader();
        List<LPPlayItem> list = lPPlayMusicList.getList();
        LPAccount account = lPPlayMusicList.getAccount();
        if (header == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        appendContextQueue(stringBuffer, "<?xml version=\"1.0\" ?>");
        appendContextQueue(stringBuffer, "<PlayList>");
        appendContextQueue(stringBuffer, "<ListName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadTitle())) + "</ListName>");
        appendContextQueue(stringBuffer, "<ListInfo>");
        appendContextQueue(stringBuffer, n00.m(header.getMediaType().equals("STATION-NETWORK") ? 1 : 0, "<Radio>", "</Radio>"));
        int size = list == null ? 0 : list.size();
        String searchUrl = header.getSearchUrl();
        appendContextQueue(stringBuffer, "<SourceName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getMediaSource())) + "</SourceName>");
        appendContextQueue(stringBuffer, "<SearchUrl>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(searchUrl)) + "</SearchUrl>");
        appendContextQueue(stringBuffer, n00.m(size, "<TrackNumber>", "</TrackNumber>"));
        String quality = header.getQuality();
        if (TextUtils.isEmpty(quality) || LPMSUtil.isNumber(quality)) {
            appendContextQueue(stringBuffer, n00.r(TextUtils.isEmpty(quality) ? ContentTree.ROOT_ID : header.getQuality(), "</Quality>", new StringBuilder("<Quality>")));
        } else {
            appendContextQueue(stringBuffer, fc.h("<requestQuality>", quality, "</requestQuality>"));
        }
        if (account != null && !LPPlaySourceType.LP_PRIME.equalsIgnoreCase(account.getSource())) {
            appendContextQueue(stringBuffer, "<Login_username>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(account.getUserName())) + "</Login_username>");
        }
        appendContextQueue(stringBuffer, "<UpdateTime>0</UpdateTime>");
        appendContextQueue(stringBuffer, "<LastPlayIndex>" + lPPlayMusicList.getIndex() + "</LastPlayIndex>");
        appendContextQueue(stringBuffer, "<SwitchPageMode>0</SwitchPageMode>");
        appendContextQueue(stringBuffer, "<CurrentPage>" + header.getCurrentPage() + "</CurrentPage>");
        appendContextQueue(stringBuffer, "<TotalPages>" + header.getTotalPage() + "</TotalPages>");
        appendContextQueue(stringBuffer, "</ListInfo>");
        if (list != null && list.size() > 0) {
            getTracks(stringBuffer, lPPlayMusicList);
        }
        appendContextQueue(stringBuffer, "</PlayList>");
        return stringBuffer.toString();
    }

    private static StringBuffer getTracks(StringBuffer stringBuffer, LPPlayMusicList lPPlayMusicList) {
        if (lPPlayMusicList != null) {
            List<LPPlayItem> list = lPPlayMusicList.getList();
            String creator = lPPlayMusicList.getHeader().getCreator();
            String mediaSource = lPPlayMusicList.getHeader().getMediaSource();
            if (list != null && list.size() > 0) {
                appendContextQueue(stringBuffer, "<Tracks>");
                int i2 = 0;
                while (i2 < list.size()) {
                    LPPlayItem lPPlayItem = list.get(i2);
                    StringBuffer stringBuffer2 = new StringBuffer();
                    StringBuilder sb = new StringBuilder("<Track");
                    i2++;
                    sb.append(i2);
                    sb.append(">");
                    appendContextQueue(stringBuffer, sb.toString());
                    stringBuffer2.append("<URL>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackUrl())) + "</URL>");
                    stringBuffer2.append("<Metadata>");
                    try {
                        stringBuffer2.append(convert2Xml(creator, lPPlayItem));
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        stringBuffer2.append("");
                    }
                    stringBuffer2.append("</Metadata>");
                    stringBuffer2.append("<Id>" + lPPlayItem.getTrackId() + "</Id>");
                    stringBuffer2.append("<Source>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(mediaSource)) + "</Source>");
                    stringBuffer2.append("</Track" + i2 + ">");
                    appendContextQueue(stringBuffer, stringBuffer2.toString());
                }
                appendContextQueue(stringBuffer, "</Tracks>");
            }
        }
        return stringBuffer;
    }
}
