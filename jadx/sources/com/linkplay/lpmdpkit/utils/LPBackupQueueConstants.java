package com.linkplay.lpmdpkit.utils;

import android.text.TextUtils;
import com.linkplay.lpmdpkit.bean.LPAccount;
import com.linkplay.lpmdpkit.bean.LPPlayHeader;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPBackupQueueConstants {
    public static String getBackupQueueContextForRadio(LPPlayMusicList lPPlayMusicList) {
        Object obj = 0;
        String userName = "";
        if (lPPlayMusicList == null) {
            return "";
        }
        LPPlayHeader header = lPPlayMusicList.getHeader();
        lPPlayMusicList.getList();
        LPAccount account = lPPlayMusicList.getAccount();
        StringBuffer stringBuffer = new StringBuffer("<?xml version=\"1.0\" ?><PlayList>");
        stringBuffer.append("<ListName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadTitle())) + "</ListName>");
        stringBuffer.append("<ListInfo><Radio>0</Radio>");
        stringBuffer.append("<SourceName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getMediaSource())) + "</SourceName>");
        stringBuffer.append("<SrcParent>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadTitle())) + "</SrcParent>");
        stringBuffer.append("<StationID>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadId())) + "</StationID>");
        StringBuilder sb = new StringBuilder("<TrackNumber>");
        sb.append(TextUtils.isEmpty(header.getTotalTracks()) ? obj : header.getTotalTracks());
        sb.append("</TrackNumber>");
        stringBuffer.append(sb.toString());
        stringBuffer.append("<SearchUrl>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getSearchUrl())) + "</SearchUrl>");
        if (account != null && !TextUtils.isEmpty(account.getUserName())) {
            userName = account.getUserName();
        }
        stringBuffer.append("<Login_username>" + LPXmlUtil.Encode(userName) + "</Login_username>");
        StringBuilder sb2 = new StringBuilder("<Quality>");
        sb2.append(TextUtils.isEmpty(header.getQuality()) ? 0 : header.getQuality());
        sb2.append("</Quality>");
        stringBuffer.append(sb2.toString());
        stringBuffer.append("<CurrentPage>" + header.getCurrentPage() + "</CurrentPage>");
        stringBuffer.append("<TotalPages>" + header.getTotalPage() + "</TotalPages>");
        stringBuffer.append("</ListInfo><Tracks/></PlayList>");
        return stringBuffer.toString();
    }

    public static String getBackupQueueContextRhapsody(LPPlayMusicList lPPlayMusicList) {
        if (lPPlayMusicList == null) {
            return "";
        }
        LPPlayHeader header = lPPlayMusicList.getHeader();
        List<LPPlayItem> list = lPPlayMusicList.getList();
        LPAccount account = lPPlayMusicList.getAccount();
        StringBuffer stringBuffer = new StringBuffer("<?xml version=\"1.0\" ?><PlayList>");
        stringBuffer.append("<ListName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getHeadTitle())) + "</ListName>");
        stringBuffer.append("<ListInfo>");
        stringBuffer.append("<SourceName>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getMediaSource())) + "</SourceName>");
        stringBuffer.append("<SearchUrl>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getSearchUrl())) + "</SearchUrl>");
        StringBuilder sb = new StringBuilder("<Login_username>");
        sb.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(account.getUserName() == null ? "" : account.getUserName())));
        sb.append("</Login_username>");
        stringBuffer.append(sb.toString());
        stringBuffer.append("<TrackNumber>" + header.getTotalTracks() + "</TrackNumber>");
        stringBuffer.append("<Quality>" + header.getQuality() + "</Quality>");
        stringBuffer.append("<UpdateTime>0</UpdateTime><LastPlayIndex>1</LastPlayIndex><SwitchPageMode>0</SwitchPageMode>");
        stringBuffer.append("<CurrentPage>" + header.getCurrentPage() + "</CurrentPage>");
        stringBuffer.append("<TotalPages>" + header.getTotalPage() + "</TotalPages>");
        stringBuffer.append("</ListInfo>");
        if (list != null && list.size() > 0) {
            stringBuffer.append("<Tracks>");
            int i2 = 0;
            while (i2 < list.size()) {
                LPPlayItem lPPlayItem = list.get(i2);
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuilder sb2 = new StringBuilder("<Track");
                i2++;
                sb2.append(i2);
                sb2.append(">");
                stringBuffer2.append(sb2.toString());
                stringBuffer2.append("<URL>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(lPPlayItem.getTrackUrl())) + "</URL>");
                stringBuffer2.append("<Metadata>");
                try {
                    stringBuffer2.append(LPXmlUtil.getMetadata(header.getCreator(), lPPlayItem));
                } catch (Exception e2) {
                    e2.printStackTrace();
                    stringBuffer2.append("");
                }
                stringBuffer2.append("</Metadata>");
                stringBuffer2.append("<Id>" + lPPlayItem.getTrackId() + "</Id>");
                stringBuffer2.append("<Source>" + LPXmlUtil.Encode(LPXmlUtil.getCommonStr(header.getMediaSource())) + "</Source>");
                stringBuffer2.append("</Track" + i2 + ">");
                stringBuffer.append(stringBuffer2.toString());
            }
            stringBuffer.append("</Tracks>");
        }
        stringBuffer.append("</PlayList>");
        return stringBuffer.toString();
    }
}
