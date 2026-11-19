package com.linkplay.medialib;

import defpackage.n00;
import java.util.HashMap;
import java.util.Set;
import org.logger.LoggerUtils;
import org.teleal.cling.support.model.WriteStatus;
import org.teleal.cling.support.model.container.Container;

/* JADX INFO: loaded from: classes2.dex */
public class ContentTree {
    public static final String AUDIO_ID = "2";
    public static final String AUDIO_PREFIX = "audio-item-";
    public static final String IMAGE_ID = "3";
    public static final String IMAGE_PREFIX = "image-item-";
    public static final String ROOT_ID = "0";
    public static final String VIDEO_ID = "1";
    public static final String VIDEO_PREFIX = "video-item-";
    private static HashMap<String, ContentNode> contentMap = new HashMap<>();

    public static void addNode(String str, ContentNode contentNode) {
        contentMap.put(str, contentNode);
    }

    public static ContentNode createRootNode() {
        Container container = new Container();
        container.f78569a = ROOT_ID;
        container.f78570b = "-1";
        container.f78571c = "GNaP MediaServer root directory";
        container.d = "GNaP Media Server";
        container.f78572e = true;
        container.f78573f = WriteStatus.NOT_WRITABLE;
        container.f78601k = 0;
        ContentNode contentNode = new ContentNode(ROOT_ID, container);
        contentMap.put(ROOT_ID, contentNode);
        return contentNode;
    }

    public static ContentNode getNode(String str) {
        if (contentMap.containsKey(str)) {
            return contentMap.get(str);
        }
        return null;
    }

    public static ContentNode getRootNode() {
        return createRootNode();
    }

    public static boolean hasNode(String str) {
        return contentMap.containsKey(str);
    }

    public static void showNodeList() {
        Set<String> setKeySet = contentMap.keySet();
        for (String str : setKeySet) {
            StringBuilder sbU = n00.u(str, "==>");
            sbU.append(setKeySet.size());
            sbU.append("==>");
            sbU.append(contentMap.get(str));
            LoggerUtils.e("nodelist", sbU.toString());
        }
    }
}
