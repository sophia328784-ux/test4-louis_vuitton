package com.perfectcorp.perfectlib.ph.kernelctrl.sku;

import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import java.io.FileInputStream;
import java.util.HashMap;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f41555a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f41556a = "";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f41557b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f41558c = "";
        public final HashMap d = new HashMap();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public d(com.perfectcorp.perfectlib.ph.database.ymk.sku.h hVar, String str) {
        NodeList nodeList;
        a aVar = new a();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(IO.d(str).concat("room.xml"));
            try {
                Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(fileInputStream2);
                document.getDocumentElement().normalize();
                NodeList elementsByTagName = document.getElementsByTagName("skus");
                int length = elementsByTagName.getLength();
                for (int i2 = 0; i2 < length; i2++) {
                    NodeList childNodes = elementsByTagName.item(i2).getChildNodes();
                    int length2 = childNodes.getLength();
                    int i3 = 0;
                    while (i3 < length2) {
                        Node nodeItem = childNodes.item(i3);
                        if (nodeItem.getNodeType() == 1 && nodeItem.getNodeName().equals("sku")) {
                            Element element = (Element) nodeItem;
                            if (element.getAttribute("guid").equals(hVar.skuGUID)) {
                                NodeList childNodes2 = element.getChildNodes();
                                int length3 = childNodes2.getLength();
                                int i4 = 0;
                                while (i4 < length3) {
                                    Node nodeItem2 = childNodes2.item(i4);
                                    if (nodeItem2.getNodeName().equals("image")) {
                                        Element element2 = (Element) nodeItem2;
                                        String attribute = element2.getAttribute("name");
                                        String attribute2 = element2.getAttribute("path");
                                        StringBuilder sb = new StringBuilder();
                                        nodeList = elementsByTagName;
                                        sb.append(IO.d(str));
                                        sb.append(attribute2);
                                        String string = sb.toString();
                                        switch (attribute.hashCode()) {
                                            case 3347807:
                                                if (attribute.equals("menu")) {
                                                    aVar.f41556a = string;
                                                }
                                                break;
                                            case 475810496:
                                                if (attribute.equals("item_thumbnail")) {
                                                    aVar.d.put(element2.getAttribute("item_guid"), string);
                                                }
                                                break;
                                            case 885518011:
                                                if (attribute.equals("menu_popup_n")) {
                                                    aVar.f41557b = string;
                                                }
                                                break;
                                            case 1597048906:
                                                if (attribute.equals("sku_thumbnail")) {
                                                    aVar.f41558c = string;
                                                }
                                                break;
                                        }
                                    } else {
                                        nodeList = elementsByTagName;
                                    }
                                    i4++;
                                    elementsByTagName = nodeList;
                                }
                            }
                        }
                        i3++;
                        elementsByTagName = elementsByTagName;
                    }
                }
                IO.b(fileInputStream2);
                this.f41555a = aVar;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    Log.e("RoomXmlParer", "parseFeatureRoomXml failed", th);
                    throw th;
                } catch (Throwable th2) {
                    IO.b(fileInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final String a() {
        return this.f41555a.f41556a;
    }

    public final String b(String str) {
        a aVar = this.f41555a;
        return aVar.d.containsKey(str) ? (String) aVar.d.get(str) : "";
    }

    public final String c() {
        return this.f41555a.f41557b;
    }

    public final String d() {
        return this.f41555a.f41558c;
    }
}
