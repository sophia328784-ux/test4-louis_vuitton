package org.teleal.cling.binding.xml;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes5.dex */
public interface Descriptor$Device {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ELEMENT {
        private static final /* synthetic */ ELEMENT[] $VALUES;
        public static final ELEMENT SCPDURL;
        public static final ELEMENT UDN;
        public static final ELEMENT UPC;
        public static final ELEMENT URLBase;
        public static final ELEMENT X_DLNACAP;
        public static final ELEMENT X_DLNADOC;
        public static final ELEMENT controlURL;
        public static final ELEMENT depth;
        public static final ELEMENT device;
        public static final ELEMENT deviceList;
        public static final ELEMENT deviceType;
        public static final ELEMENT eventSubURL;
        public static final ELEMENT friendlyName;
        public static final ELEMENT height;
        public static final ELEMENT icon;
        public static final ELEMENT iconList;
        public static final ELEMENT major;
        public static final ELEMENT manufacturer;
        public static final ELEMENT manufacturerURL;
        public static final ELEMENT mimetype;
        public static final ELEMENT minor;
        public static final ELEMENT modelDescription;
        public static final ELEMENT modelName;
        public static final ELEMENT modelNumber;
        public static final ELEMENT modelURL;
        public static final ELEMENT presentationURL;
        public static final ELEMENT root;
        public static final ELEMENT serialNumber;
        public static final ELEMENT service;
        public static final ELEMENT serviceId;
        public static final ELEMENT serviceList;
        public static final ELEMENT serviceType;
        public static final ELEMENT specVersion;
        public static final ELEMENT ssidName;
        public static final ELEMENT url;
        public static final ELEMENT uuid;
        public static final ELEMENT width;

        static {
            ELEMENT element = new ELEMENT("root", 0);
            root = element;
            ELEMENT element2 = new ELEMENT("specVersion", 1);
            specVersion = element2;
            ELEMENT element3 = new ELEMENT("major", 2);
            major = element3;
            ELEMENT element4 = new ELEMENT("minor", 3);
            minor = element4;
            ELEMENT element5 = new ELEMENT("URLBase", 4);
            URLBase = element5;
            ELEMENT element6 = new ELEMENT("device", 5);
            device = element6;
            ELEMENT element7 = new ELEMENT("UDN", 6);
            UDN = element7;
            ELEMENT element8 = new ELEMENT("X_DLNADOC", 7);
            X_DLNADOC = element8;
            ELEMENT element9 = new ELEMENT("X_DLNACAP", 8);
            X_DLNACAP = element9;
            ELEMENT element10 = new ELEMENT("deviceType", 9);
            deviceType = element10;
            ELEMENT element11 = new ELEMENT("friendlyName", 10);
            friendlyName = element11;
            ELEMENT element12 = new ELEMENT("ssidName", 11);
            ssidName = element12;
            ELEMENT element13 = new ELEMENT("uuid", 12);
            uuid = element13;
            ELEMENT element14 = new ELEMENT("manufacturer", 13);
            manufacturer = element14;
            ELEMENT element15 = new ELEMENT("manufacturerURL", 14);
            manufacturerURL = element15;
            ELEMENT element16 = new ELEMENT("modelDescription", 15);
            modelDescription = element16;
            ELEMENT element17 = new ELEMENT("modelName", 16);
            modelName = element17;
            ELEMENT element18 = new ELEMENT("modelNumber", 17);
            modelNumber = element18;
            ELEMENT element19 = new ELEMENT("modelURL", 18);
            modelURL = element19;
            ELEMENT element20 = new ELEMENT("presentationURL", 19);
            presentationURL = element20;
            ELEMENT element21 = new ELEMENT("UPC", 20);
            UPC = element21;
            ELEMENT element22 = new ELEMENT("serialNumber", 21);
            serialNumber = element22;
            ELEMENT element23 = new ELEMENT("iconList", 22);
            iconList = element23;
            ELEMENT element24 = new ELEMENT("icon", 23);
            icon = element24;
            ELEMENT element25 = new ELEMENT("width", 24);
            width = element25;
            ELEMENT element26 = new ELEMENT("height", 25);
            height = element26;
            ELEMENT element27 = new ELEMENT("depth", 26);
            depth = element27;
            ELEMENT element28 = new ELEMENT(ConfigurationName.DOWNLOAD_PLUGIN_URL, 27);
            url = element28;
            ELEMENT element29 = new ELEMENT("mimetype", 28);
            mimetype = element29;
            ELEMENT element30 = new ELEMENT("serviceList", 29);
            serviceList = element30;
            ELEMENT element31 = new ELEMENT("service", 30);
            service = element31;
            ELEMENT element32 = new ELEMENT("serviceType", 31);
            serviceType = element32;
            ELEMENT element33 = new ELEMENT("serviceId", 32);
            serviceId = element33;
            ELEMENT element34 = new ELEMENT("SCPDURL", 33);
            SCPDURL = element34;
            ELEMENT element35 = new ELEMENT("controlURL", 34);
            controlURL = element35;
            ELEMENT element36 = new ELEMENT("eventSubURL", 35);
            eventSubURL = element36;
            ELEMENT element37 = new ELEMENT("deviceList", 36);
            deviceList = element37;
            $VALUES = new ELEMENT[]{element, element2, element3, element4, element5, element6, element7, element8, element9, element10, element11, element12, element13, element14, element15, element16, element17, element18, element19, element20, element21, element22, element23, element24, element25, element26, element27, element28, element29, element30, element31, element32, element33, element34, element35, element36, element37};
        }

        public static ELEMENT valueOf(String str) {
            return (ELEMENT) Enum.valueOf(ELEMENT.class, str);
        }

        public static ELEMENT[] values() {
            return (ELEMENT[]) $VALUES.clone();
        }

        public final boolean a(Node node) {
            return toString().equals(node.getLocalName());
        }
    }
}
