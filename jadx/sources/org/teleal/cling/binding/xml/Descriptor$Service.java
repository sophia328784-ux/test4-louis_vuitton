package org.teleal.cling.binding.xml;

import org.w3c.dom.Node;

/* JADX INFO: loaded from: classes5.dex */
public interface Descriptor$Service {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ATTRIBUTE {
        private static final /* synthetic */ ATTRIBUTE[] $VALUES;
        public static final ATTRIBUTE sendEvents;

        static {
            ATTRIBUTE attribute = new ATTRIBUTE("sendEvents", 0);
            sendEvents = attribute;
            $VALUES = new ATTRIBUTE[]{attribute};
        }

        public static ATTRIBUTE valueOf(String str) {
            return (ATTRIBUTE) Enum.valueOf(ATTRIBUTE.class, str);
        }

        public static ATTRIBUTE[] values() {
            return (ATTRIBUTE[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ELEMENT {
        private static final /* synthetic */ ELEMENT[] $VALUES;
        public static final ELEMENT action;
        public static final ELEMENT actionList;
        public static final ELEMENT allowedValue;
        public static final ELEMENT allowedValueList;
        public static final ELEMENT allowedValueRange;
        public static final ELEMENT argument;
        public static final ELEMENT argumentList;
        public static final ELEMENT dataType;
        public static final ELEMENT defaultValue;
        public static final ELEMENT direction;
        public static final ELEMENT major;
        public static final ELEMENT maximum;
        public static final ELEMENT minimum;
        public static final ELEMENT minor;
        public static final ELEMENT name;
        public static final ELEMENT relatedStateVariable;
        public static final ELEMENT retval;
        public static final ELEMENT scpd;
        public static final ELEMENT serviceStateTable;
        public static final ELEMENT specVersion;
        public static final ELEMENT stateVariable;
        public static final ELEMENT step;

        static {
            ELEMENT element = new ELEMENT("scpd", 0);
            scpd = element;
            ELEMENT element2 = new ELEMENT("specVersion", 1);
            specVersion = element2;
            ELEMENT element3 = new ELEMENT("major", 2);
            major = element3;
            ELEMENT element4 = new ELEMENT("minor", 3);
            minor = element4;
            ELEMENT element5 = new ELEMENT("actionList", 4);
            actionList = element5;
            ELEMENT element6 = new ELEMENT("action", 5);
            action = element6;
            ELEMENT element7 = new ELEMENT("name", 6);
            name = element7;
            ELEMENT element8 = new ELEMENT("argumentList", 7);
            argumentList = element8;
            ELEMENT element9 = new ELEMENT("argument", 8);
            argument = element9;
            ELEMENT element10 = new ELEMENT("direction", 9);
            direction = element10;
            ELEMENT element11 = new ELEMENT("relatedStateVariable", 10);
            relatedStateVariable = element11;
            ELEMENT element12 = new ELEMENT("retval", 11);
            retval = element12;
            ELEMENT element13 = new ELEMENT("serviceStateTable", 12);
            serviceStateTable = element13;
            ELEMENT element14 = new ELEMENT("stateVariable", 13);
            stateVariable = element14;
            ELEMENT element15 = new ELEMENT("dataType", 14);
            dataType = element15;
            ELEMENT element16 = new ELEMENT("defaultValue", 15);
            defaultValue = element16;
            ELEMENT element17 = new ELEMENT("allowedValueList", 16);
            allowedValueList = element17;
            ELEMENT element18 = new ELEMENT("allowedValue", 17);
            allowedValue = element18;
            ELEMENT element19 = new ELEMENT("allowedValueRange", 18);
            allowedValueRange = element19;
            ELEMENT element20 = new ELEMENT("minimum", 19);
            minimum = element20;
            ELEMENT element21 = new ELEMENT("maximum", 20);
            maximum = element21;
            ELEMENT element22 = new ELEMENT("step", 21);
            step = element22;
            $VALUES = new ELEMENT[]{element, element2, element3, element4, element5, element6, element7, element8, element9, element10, element11, element12, element13, element14, element15, element16, element17, element18, element19, element20, element21, element22};
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
