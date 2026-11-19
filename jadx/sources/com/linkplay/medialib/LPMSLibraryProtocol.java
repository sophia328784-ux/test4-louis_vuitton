package com.linkplay.medialib;

import com.linkplay.lpmdpkit.LPPlaySourceType;
import com.linkplay.lpmdpkit.LPStreamServiceProtocol;
import com.linkplay.lpmdpkit.bean.LPPlayItem;
import com.linkplay.lpmdpkit.bean.LPPlayMediaData;
import com.linkplay.lpmdpkit.bean.LPPlayMusicList;
import com.linkplay.lpmdpkit.utils.LPXmlUtil;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPMSLibraryProtocol implements LPStreamServiceProtocol {
    private String createXml(List<LPPlayItem> list, String str) {
        String strEncode;
        StringBuilder sb = new StringBuilder("<?xml version=\"1.0\" ?><PlayList><ListName>");
        sb.append(LPXmlUtil.Encode(LPXmlUtil.getCommonStr(str)));
        sb.append("</ListName><ListInfo><Radio>0</Radio><Quality>0</Quality>");
        sb.append("<SourceName>" + LPPlaySourceType.LP_LOCALMUSIC + "</SourceName>");
        sb.append("<TrackNumber>" + list.size() + "</TrackNumber>");
        sb.append("<SearchUrl></SearchUrl></ListInfo><Tracks>");
        int i2 = 0;
        while (i2 < list.size()) {
            LPPlayItem lPPlayItem = list.get(i2);
            StringBuilder sb2 = new StringBuilder("<Track");
            i2++;
            sb2.append(i2);
            sb2.append("><URL>");
            sb2.append(lPPlayItem.getTrackUrl());
            sb2.append("</URL><Source>");
            sb2.append(LPPlaySourceType.LP_LOCALMUSIC);
            sb2.append("</Source>");
            try {
                strEncode = URLEncoder.encode(lPPlayItem.getTrackName(), "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                strEncode = "";
            }
            String strReplaceAll = ("http://so.ard.iyyin.com/s/song_with_out?q=" + strEncode + " &size=50&page=1").replaceAll(" ", "%20");
            sb2.append("<Key>");
            sb2.append(LPXmlUtil.Encode(strReplaceAll));
            sb2.append("</Key><Id>");
            sb2.append(lPPlayItem.getTrackId());
            sb2.append("</Id><Metadata>");
            try {
                sb2.append(LPXmlUtil.convert2Xml(lPPlayItem));
            } catch (Exception e2) {
                e2.printStackTrace();
                sb2.append("");
            }
            sb2.append("</Metadata>");
            sb2.append("</Track" + i2 + ">");
            sb.append((CharSequence) sb2);
        }
        sb.append("</Tracks></PlayList>");
        return sb.toString();
    }

    @Override // com.linkplay.lpmdpkit.LPStreamServiceProtocol
    public String getSource() {
        return LPPlaySourceType.LP_LOCALMUSIC;
    }

    @Override // com.linkplay.lpmdpkit.LPStreamServiceProtocol
    public LPPlayMediaData playXMLForMusicList(LPPlayMusicList lPPlayMusicList) {
        int size;
        if (lPPlayMusicList == null || lPPlayMusicList.getList() == null || lPPlayMusicList.getList().isEmpty() || lPPlayMusicList.getHeader() == null) {
            return null;
        }
        String headTitle = lPPlayMusicList.getHeader().getHeadTitle();
        List<LPPlayItem> list = lPPlayMusicList.getList();
        int index = lPPlayMusicList.getIndex();
        LPPlayMediaData lPPlayMediaData = new LPPlayMediaData();
        lPPlayMediaData.setMediaSource(LPPlaySourceType.LP_LOCALMUSIC);
        lPPlayMediaData.setPlayIndex(1);
        int size2 = (list.size() - index) - 2;
        int i2 = 0;
        if (size2 < 0) {
            size2 = 0;
        }
        if (size2 < 50) {
            size = list.size();
            int i3 = index - (100 - size2);
            if (i3 >= 0) {
                i2 = i3;
            }
        } else if (index < 50) {
            size = (100 - index) + index + 2;
            if (size > list.size()) {
                size = list.size();
            }
        } else {
            i2 = index - 50;
            size = index + 52;
        }
        String strCreateXml = index > 0 ? createXml(list.subList(i2, index), headTitle) : "";
        String strCreateXml2 = index < list.size() + (-2) ? createXml(list.subList(index + 2, size), headTitle) : "";
        int size3 = index + 2;
        if (size3 > list.size()) {
            size3 = list.size();
        }
        lPPlayMediaData.setPlayData(createXml(list.subList(index, size3), headTitle));
        lPPlayMediaData.setTailData(Collections.singletonList(strCreateXml2));
        lPPlayMediaData.setHeadData(Collections.singletonList(strCreateXml));
        lPPlayMediaData.setQueueName(LPXmlUtil.getCommonStr(headTitle));
        return lPPlayMediaData;
    }
}
