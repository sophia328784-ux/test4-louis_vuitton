package com.android.wiimu.upnp.sucription;

import android.text.TextUtils;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import defpackage.fc;
import java.io.StringReader;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.xml.parsers.DocumentBuilderFactory;
import org.teleal.cling.model.gena.GENASubscription;
import org.teleal.cling.model.state.StateVariableValue;
import org.teleal.cling.transport.spi.UnsupportedDataException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f22586a;

    private a() {
    }

    private String b(GENASubscription gENASubscription) {
        LinkedHashMap linkedHashMap;
        int iIndexOf;
        String strSubstring;
        int iLastIndexOf;
        if (gENASubscription == null) {
            return null;
        }
        synchronized (gENASubscription) {
            linkedHashMap = gENASubscription.f78404f;
        }
        if (!linkedHashMap.containsKey("LastChange")) {
            return null;
        }
        String string = ((StateVariableValue) linkedHashMap.get("LastChange")).f78394b.toString();
        if (string.contains("<CurrentTrackMetaData") && (iIndexOf = string.indexOf("<CurrentTrackMetaData val=\"")) >= 0) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(string.substring(0, iIndexOf));
            int iIndexOf2 = string.indexOf("<", iIndexOf + 1);
            if (iIndexOf2 > 0 && (iLastIndexOf = (strSubstring = string.substring(iIndexOf, iIndexOf2)).lastIndexOf("\">")) >= 0) {
                stringBuffer.append(strSubstring.substring(0, iLastIndexOf));
                stringBuffer.append("\"/>");
                stringBuffer.append(string.substring(iIndexOf2));
                string = stringBuffer.toString();
            }
        }
        return string.replaceAll("/><", "/>\r\n<");
    }

    public Map<String, String> a(Element element) {
        NodeList childNodes = element.getChildNodes();
        HashMap map = new HashMap();
        for (int i2 = 0; i2 < childNodes.getLength(); i2++) {
            Node nodeItem = childNodes.item(i2);
            if (nodeItem.getNodeType() == 1) {
                NodeList childNodes2 = nodeItem.getChildNodes();
                for (int i3 = 0; i3 < childNodes2.getLength(); i3++) {
                    Node nodeItem2 = childNodes2.item(i3);
                    if (nodeItem2.getNodeType() == 1) {
                        String strA = a(nodeItem2);
                        Node namedItem = nodeItem2.getAttributes().getNamedItem("val");
                        map.put(strA, namedItem != null ? namedItem.getNodeValue() : "");
                    }
                }
            }
        }
        return map;
    }

    public Map<String, String> c(GENASubscription gENASubscription) {
        String strB;
        try {
            strB = b(gENASubscription);
        } catch (Exception unused) {
            strB = "";
        }
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        Matcher matcher = Pattern.compile("\\s*<(CurretPlayListName|LoopMpde|CurrentIndex)\\s+val=\"(.*)\"/>").matcher(strB);
        HashMap map = new HashMap();
        while (matcher.find()) {
            map.put(matcher.group(1), matcher.group(2));
        }
        map.putAll(a(strB));
        return map;
    }

    public Map<String, String> d(GENASubscription gENASubscription) {
        String strB;
        Map<String, String> map;
        String str;
        String str2;
        String str3;
        String str4;
        int i2;
        int iIndexOf;
        int iIndexOf2;
        int i3;
        String str5 = "PassThrough";
        String str6 = "BtPairDevAddr";
        String str7 = "BtPairState";
        try {
            strB = b(gENASubscription);
        } catch (Exception unused) {
            strB = "";
        }
        Map<String, String> map2 = null;
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        Matcher matcher = Pattern.compile("<(Mute|Channel|Equaluzer|Volume|PresetNameList|Slave|network|SlaveMask|TimeStamp|DeviceName|GroupName|NextInvalid|PassThrough|BtPairState|BtPairDevAddr)\\s+(channel=\"Master\"\\s+|action=\"(.*)\"\\s+|\\s)?val=\"(.*)\"/>").matcher(strB);
        HashMap map3 = new HashMap();
        while (matcher.find()) {
            try {
                String strGroup = matcher.group(1);
                String strGroup2 = matcher.group(4);
                if (strGroup.equals("NextInvalid")) {
                    map3.put(strGroup, strGroup2);
                }
                if (strGroup.equals("Mute")) {
                    map3.put(strGroup, strGroup2);
                } else if (strGroup.equals("Channel")) {
                    map3.put(strGroup, strGroup2);
                } else if (strGroup.equals("Volume")) {
                    map3.put(strGroup, strGroup2);
                } else if (strGroup.equals("Equaluzer")) {
                    map3.put(strGroup, strGroup2);
                } else if (strGroup.equals("PresetNameList")) {
                    map3.put(strGroup, strGroup2);
                } else {
                    if (strGroup.equals("Slave")) {
                        String strGroup3 = matcher.group(3);
                        try {
                            if (strGroup3.equals("rm")) {
                                map3.put("slave_rm", strGroup2);
                            } else {
                                if (strGroup3.equals("add")) {
                                    map3.put("slave_add", strGroup2);
                                } else {
                                    map = map2;
                                    if (strGroup3.equals("volumechange")) {
                                        strGroup2 = strGroup2.replace(" ", "");
                                        if (strGroup2.startsWith("\"")) {
                                            iIndexOf2 = strGroup2.indexOf("\"", 1);
                                            i3 = 1;
                                        } else {
                                            iIndexOf2 = strGroup2.indexOf("\"", 0);
                                            i3 = 0;
                                        }
                                        String strSubstring = strGroup2.substring(i3, iIndexOf2);
                                        int iIndexOf3 = strGroup2.indexOf("\"", strGroup2.indexOf("SlaveVolume")) + 1;
                                        str3 = str6;
                                        String strSubstring2 = strGroup2.substring(iIndexOf3, strGroup2.indexOf("\"", iIndexOf3));
                                        int iIndexOf4 = strGroup2.indexOf("\"", strGroup2.indexOf("TimeStamp")) + 1;
                                        int iIndexOf5 = strGroup2.indexOf("\"", iIndexOf4);
                                        str4 = str7;
                                        String strSubstring3 = iIndexOf5 == -1 ? strGroup2.substring(iIndexOf4) : strGroup2.substring(iIndexOf4, iIndexOf5);
                                        map3.put("slaveUUID", strSubstring);
                                        map3.put(strGroup3, strSubstring2);
                                        map3.put(strGroup3 + "TimeStamp", strSubstring3);
                                    } else {
                                        str5 = str5;
                                        str3 = str6;
                                        str4 = str7;
                                        if (strGroup3.equals("channelchange")) {
                                            strGroup2 = strGroup2.replace(" ", "");
                                            if (strGroup2.startsWith("\"")) {
                                                iIndexOf = strGroup2.indexOf("\"", 1);
                                                i2 = 1;
                                            } else {
                                                i2 = 0;
                                                iIndexOf = strGroup2.indexOf("\"", 0);
                                            }
                                            String strSubstring4 = strGroup2.substring(i2, iIndexOf);
                                            int iIndexOf6 = strGroup2.indexOf("\"", strGroup2.indexOf("SlaveChannel")) + 1;
                                            String strSubstring5 = strGroup2.substring(iIndexOf6, strGroup2.indexOf("\"", iIndexOf6));
                                            int iIndexOf7 = strGroup2.indexOf("\"", strGroup2.indexOf("TimeStamp")) + 1;
                                            int iIndexOf8 = strGroup2.indexOf("\"", iIndexOf7);
                                            String strSubstring6 = iIndexOf8 == -1 ? strGroup2.substring(iIndexOf7) : strGroup2.substring(iIndexOf7, iIndexOf8);
                                            map3.put("slaveUUID", strSubstring4);
                                            map3.put(strGroup3, strSubstring5);
                                            map3.put(strGroup3 + "TimeStamp", strSubstring6);
                                        }
                                    }
                                }
                                map3.put(strGroup, strGroup2);
                            }
                            map3.put(strGroup, strGroup2);
                        } catch (Exception e2) {
                            e = e2;
                            e.printStackTrace();
                            return map;
                        }
                        str5 = str5;
                        str3 = str6;
                        str4 = str7;
                        map = map2;
                    } else {
                        str5 = str5;
                        str3 = str6;
                        str4 = str7;
                        map = map2;
                        if (strGroup.equals("network")) {
                            String strGroup4 = matcher.group(3);
                            if (!strGroup4.equals("disconnect")) {
                                strGroup4.equals("connect");
                            }
                            map2 = map;
                            str5 = str5;
                            str6 = str3;
                            str7 = str4;
                        } else if (strGroup.equals("SlaveMask")) {
                            map3.put("SlaveMask", strGroup2);
                        } else if (strGroup.equals("DeviceName")) {
                            map3.put("DeviceName", strGroup2);
                        } else {
                            if (strGroup.equals("GroupName")) {
                                map3.put("GroupName", strGroup2);
                            } else {
                                str2 = str4;
                                if (strGroup.equals(str2)) {
                                    map3.put(str2, strGroup2);
                                    str = str5;
                                    str6 = str3;
                                } else {
                                    str6 = str3;
                                    if (strGroup.equals(str6)) {
                                        map3.put(str6, strGroup2);
                                        str = str5;
                                    } else {
                                        str = str5;
                                        if (strGroup.equals(str)) {
                                            map3.put(str, strGroup2);
                                        }
                                    }
                                }
                            }
                            String str8 = str;
                            str7 = str2;
                            str5 = str8;
                            map2 = map;
                        }
                    }
                    str = str5;
                    str6 = str3;
                    str2 = str4;
                    String str9 = str;
                    str7 = str2;
                    str5 = str9;
                    map2 = map;
                }
                String str10 = str7;
                str = str5;
                str2 = str10;
                map = map2;
                String str11 = str;
                str7 = str2;
                str5 = str11;
                map2 = map;
            } catch (Exception e3) {
                e = e3;
                map = map2;
            }
        }
        return map3;
    }

    public Map<String, String> a(GENASubscription gENASubscription) {
        String strB;
        try {
            strB = b(gENASubscription);
            try {
                return b(strB);
            } catch (Exception unused) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "getLastChanges:" + strB);
                return null;
            }
        } catch (Exception unused2) {
            strB = "";
        }
    }

    private Map<String, String> a(String str) {
        HashMap map = new HashMap();
        Matcher matcher = Pattern.compile("\\s*<(online|userinfo)\\s+val=\"(.*)\"/>").matcher(str);
        while (matcher.find()) {
            map.put(matcher.group(1), matcher.group(2));
        }
        return map;
    }

    public Element a(Document document) {
        return document.getDocumentElement();
    }

    public static a a() {
        if (f22586a == null) {
            synchronized (a.class) {
                try {
                    if (f22586a == null) {
                        f22586a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f22586a;
    }

    public String a(Node node) {
        if (node.getPrefix() != null) {
            return node.getNodeName().substring(node.getPrefix().length() + 1);
        }
        return node.getNodeName();
    }

    public Map<String, String> b(String str) throws UnsupportedDataException {
        try {
            DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
            documentBuilderFactoryNewInstance.setNamespaceAware(true);
            return a(a(documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new InputSource(new StringReader(str)))));
        } catch (Exception e2) {
            throw new UnsupportedDataException(fc.g(e2, new StringBuilder("Can't transform message payload: ")), e2);
        }
    }
}
