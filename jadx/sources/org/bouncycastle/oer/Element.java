package org.bouncycastle.oer;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.ASN1Encodable;

/* JADX INFO: loaded from: classes5.dex */
public class Element {
    private final Switch aSwitch;
    private final OERDefinition.BaseType baseType;
    private final int block;
    private final List<Element> children;
    private final ASN1Encodable defaultValue;
    private final boolean defaultValuesInChildren;
    private final ElementSupplier elementSupplier;
    private final BigInteger enumValue;
    private final boolean explicit;
    private final boolean extensionsInDefinition;
    private final String label;
    private final BigInteger lowerBound;
    private final boolean mayRecurse;
    private List<Element> optionalChildrenInOrder;
    private final int optionals;
    private Element parent;
    private final Map<String, ElementSupplier> supplierMap;
    private final String typeName;
    private final BigInteger upperBound;
    private List<ASN1Encodable> validSwitchValues;

    public Element(Element element, Element element2) {
        this.baseType = element.baseType;
        ArrayList arrayList = new ArrayList(element.children);
        this.children = arrayList;
        this.explicit = element.explicit;
        this.label = element.label;
        this.lowerBound = element.lowerBound;
        this.upperBound = element.upperBound;
        this.extensionsInDefinition = element.extensionsInDefinition;
        this.enumValue = element.enumValue;
        this.defaultValue = element.defaultValue;
        this.aSwitch = element.aSwitch;
        this.validSwitchValues = element.validSwitchValues;
        this.elementSupplier = element.elementSupplier;
        this.mayRecurse = element.mayRecurse;
        this.typeName = element.typeName;
        this.supplierMap = element.supplierMap;
        this.parent = element2;
        this.block = element.block;
        this.optionals = element.optionals;
        this.defaultValuesInChildren = element.defaultValuesInChildren;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Element) it.next()).parent = this;
        }
    }

    public static Element expandDeferredDefinition(Element element, Element element2) {
        ElementSupplier elementSupplier = element.elementSupplier;
        if (elementSupplier != null) {
            element = elementSupplier.build();
            if (element.getParent() != element2) {
                return new Element(element, element2);
            }
        }
        return element;
    }

    public String appendLabel(String str) {
        StringBuilder sb = new StringBuilder("[");
        sb.append(getLabel() == null ? "" : getLabel());
        return d21.p(sb, isExplicit() ? " (E)" : "", "] ", str);
    }

    public boolean canBeNegative() {
        return getLowerBound() != null && BigInteger.ZERO.compareTo(getLowerBound()) > 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Element element = (Element) obj;
            if (this.explicit != element.explicit || this.extensionsInDefinition != element.extensionsInDefinition || this.defaultValuesInChildren != element.defaultValuesInChildren || this.mayRecurse != element.mayRecurse || this.optionals != element.optionals || this.block != element.block || this.baseType != element.baseType) {
                return false;
            }
            List<Element> list = this.children;
            List<Element> list2 = element.children;
            if (list == null ? list2 != null : !list.equals(list2)) {
                return false;
            }
            String str = this.label;
            String str2 = element.label;
            if (str == null ? str2 != null : !str.equals(str2)) {
                return false;
            }
            BigInteger bigInteger = this.lowerBound;
            BigInteger bigInteger2 = element.lowerBound;
            if (bigInteger == null ? bigInteger2 != null : !bigInteger.equals(bigInteger2)) {
                return false;
            }
            BigInteger bigInteger3 = this.upperBound;
            BigInteger bigInteger4 = element.upperBound;
            if (bigInteger3 == null ? bigInteger4 != null : !bigInteger3.equals(bigInteger4)) {
                return false;
            }
            BigInteger bigInteger5 = this.enumValue;
            BigInteger bigInteger6 = element.enumValue;
            if (bigInteger5 == null ? bigInteger6 != null : !bigInteger5.equals(bigInteger6)) {
                return false;
            }
            ASN1Encodable aSN1Encodable = this.defaultValue;
            ASN1Encodable aSN1Encodable2 = element.defaultValue;
            if (aSN1Encodable == null ? aSN1Encodable2 != null : !aSN1Encodable.equals(aSN1Encodable2)) {
                return false;
            }
            Switch r2 = this.aSwitch;
            Switch r3 = element.aSwitch;
            if (r2 == null ? r3 != null : !r2.equals(r3)) {
                return false;
            }
            List<Element> list3 = this.optionalChildrenInOrder;
            List<Element> list4 = element.optionalChildrenInOrder;
            if (list3 == null ? list4 != null : !list3.equals(list4)) {
                return false;
            }
            List<ASN1Encodable> list5 = this.validSwitchValues;
            List<ASN1Encodable> list6 = element.validSwitchValues;
            if (list5 == null ? list6 != null : !list5.equals(list6)) {
                return false;
            }
            ElementSupplier elementSupplier = this.elementSupplier;
            ElementSupplier elementSupplier2 = element.elementSupplier;
            if (elementSupplier == null ? elementSupplier2 != null : !elementSupplier.equals(elementSupplier2)) {
                return false;
            }
            String str3 = this.typeName;
            String str4 = element.typeName;
            if (str3 == null ? str4 != null : !str3.equals(str4)) {
                return false;
            }
            Map<String, ElementSupplier> map = this.supplierMap;
            Map<String, ElementSupplier> map2 = element.supplierMap;
            if (map != null) {
                return !map.equals(map2);
            }
            if (map2 != null) {
                return true;
            }
        }
        return false;
    }

    public OERDefinition.BaseType getBaseType() {
        return this.baseType;
    }

    public int getBlock() {
        return this.block;
    }

    public List<Element> getChildren() {
        return this.children;
    }

    public ASN1Encodable getDefaultValue() {
        return this.defaultValue;
    }

    public String getDerivedTypeName() {
        String str = this.typeName;
        return str != null ? str : this.baseType.name();
    }

    public ElementSupplier getElementSupplier() {
        return this.elementSupplier;
    }

    public BigInteger getEnumValue() {
        return this.enumValue;
    }

    public Element getFirstChid() {
        return getChildren().get(0);
    }

    public String getLabel() {
        return this.label;
    }

    public BigInteger getLowerBound() {
        return this.lowerBound;
    }

    public List<Element> getOptionalChildrenInOrder() {
        return this.optionalChildrenInOrder;
    }

    public int getOptionals() {
        return this.optionals;
    }

    public Element getParent() {
        return this.parent;
    }

    public String getTypeName() {
        return this.typeName;
    }

    public BigInteger getUpperBound() {
        return this.upperBound;
    }

    public List<ASN1Encodable> getValidSwitchValues() {
        return this.validSwitchValues;
    }

    public Switch getaSwitch() {
        return this.aSwitch;
    }

    public boolean hasDefaultChildren() {
        return this.defaultValuesInChildren;
    }

    public boolean hasPopulatedExtension() {
        return this.extensionsInDefinition;
    }

    public int hashCode() {
        OERDefinition.BaseType baseType = this.baseType;
        int iHashCode = (baseType != null ? baseType.hashCode() : 0) * 31;
        List<Element> list = this.children;
        int iHashCode2 = (((iHashCode + (list != null ? list.hashCode() : 0)) * 31) + (this.explicit ? 1 : 0)) * 31;
        String str = this.label;
        int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        BigInteger bigInteger = this.lowerBound;
        int iHashCode4 = (iHashCode3 + (bigInteger != null ? bigInteger.hashCode() : 0)) * 31;
        BigInteger bigInteger2 = this.upperBound;
        int iHashCode5 = (((iHashCode4 + (bigInteger2 != null ? bigInteger2.hashCode() : 0)) * 31) + (this.extensionsInDefinition ? 1 : 0)) * 31;
        BigInteger bigInteger3 = this.enumValue;
        int iHashCode6 = (iHashCode5 + (bigInteger3 != null ? bigInteger3.hashCode() : 0)) * 31;
        ASN1Encodable aSN1Encodable = this.defaultValue;
        int iHashCode7 = (iHashCode6 + (aSN1Encodable != null ? aSN1Encodable.hashCode() : 0)) * 31;
        Switch r2 = this.aSwitch;
        int iHashCode8 = (((iHashCode7 + (r2 != null ? r2.hashCode() : 0)) * 31) + (this.defaultValuesInChildren ? 1 : 0)) * 31;
        List<Element> list2 = this.optionalChildrenInOrder;
        int iHashCode9 = (iHashCode8 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<ASN1Encodable> list3 = this.validSwitchValues;
        int iHashCode10 = (iHashCode9 + (list3 != null ? list3.hashCode() : 0)) * 31;
        ElementSupplier elementSupplier = this.elementSupplier;
        int iHashCode11 = (((iHashCode10 + (elementSupplier != null ? elementSupplier.hashCode() : 0)) * 31) + (this.mayRecurse ? 1 : 0)) * 31;
        String str2 = this.typeName;
        int iHashCode12 = (iHashCode11 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, ElementSupplier> map = this.supplierMap;
        return ((((iHashCode12 + (map != null ? map.hashCode() : 0)) * 31) + this.optionals) * 31) + this.block;
    }

    public int intBytesForRange() {
        if (getLowerBound() != null && getUpperBound() != null) {
            int i2 = 1;
            if (!BigInteger.ZERO.equals(getLowerBound())) {
                int i3 = 0;
                int i4 = 1;
                while (true) {
                    BigInteger[][] bigIntegerArr = OERDefinition.sIntRange;
                    if (i3 >= bigIntegerArr.length) {
                        break;
                    }
                    if (getLowerBound().compareTo(bigIntegerArr[i3][0]) >= 0 && getUpperBound().compareTo(bigIntegerArr[i3][1]) < 0) {
                        return -i4;
                    }
                    i3++;
                    i4 *= 2;
                }
            } else {
                int i5 = 0;
                while (true) {
                    BigInteger[] bigIntegerArr2 = OERDefinition.uIntMax;
                    if (i5 >= bigIntegerArr2.length) {
                        break;
                    }
                    if (getUpperBound().compareTo(bigIntegerArr2[i5]) < 0) {
                        return i2;
                    }
                    i5++;
                    i2 *= 2;
                }
            }
        }
        return 0;
    }

    public boolean isExplicit() {
        return this.explicit;
    }

    public boolean isExtensionsInDefinition() {
        return this.extensionsInDefinition;
    }

    public boolean isFixedLength() {
        return getLowerBound() != null && getLowerBound().equals(getUpperBound());
    }

    public boolean isLowerRangeZero() {
        return BigInteger.ZERO.equals(getLowerBound());
    }

    public boolean isMayRecurse() {
        return this.mayRecurse;
    }

    public boolean isUnbounded() {
        return getUpperBound() == null && getLowerBound() == null;
    }

    public boolean isUnsignedWithRange() {
        return isLowerRangeZero() && getUpperBound() != null && BigInteger.ZERO.compareTo(getUpperBound()) < 0;
    }

    public List<Element> optionalOrDefaultChildrenInOrder() {
        List<Element> optionalChildrenInOrder;
        synchronized (this) {
            try {
                if (getOptionalChildrenInOrder() == null) {
                    ArrayList arrayList = new ArrayList();
                    for (Element element : getChildren()) {
                        if (!element.isExplicit() || element.getDefaultValue() != null) {
                            arrayList.add(element);
                        }
                    }
                    this.optionalChildrenInOrder = Collections.unmodifiableList(arrayList);
                }
                optionalChildrenInOrder = getOptionalChildrenInOrder();
            } catch (Throwable th) {
                throw th;
            }
        }
        return optionalChildrenInOrder;
    }

    public String rangeExpression() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(getLowerBound() != null ? getLowerBound().toString() : "MIN");
        sb.append(" ... ");
        return n00.r(getUpperBound() != null ? getUpperBound().toString() : "MAX", ")", sb);
    }

    public ElementSupplier resolveSupplier(String str) {
        String strP = d21.p(new StringBuilder(), this.label, FileUtils.HIDDEN_PREFIX, str);
        if (this.supplierMap.containsKey(strP)) {
            return this.supplierMap.get(strP);
        }
        Element element = this.parent;
        if (element != null) {
            return element.resolveSupplier(strP);
        }
        md.k("unable to resolve: ".concat(strP));
        return null;
    }

    public String toString() {
        return "[" + this.typeName + " " + this.baseType.name() + " '" + getLabel() + "']";
    }

    public ElementSupplier resolveSupplier() {
        if (this.supplierMap.containsKey(this.label)) {
            return this.supplierMap.get(this.label);
        }
        Element element = this.parent;
        String str = this.label;
        if (element != null) {
            return element.resolveSupplier(str);
        }
        md.k(tr.g("unable to resolve: ", str));
        return null;
    }

    public Element(OERDefinition.BaseType baseType, List<Element> list, boolean z, String str, BigInteger bigInteger, BigInteger bigInteger2, boolean z2, BigInteger bigInteger3, ASN1Encodable aSN1Encodable, Switch r11, List<ASN1Encodable> list2, ElementSupplier elementSupplier, boolean z3, String str2, Map<String, ElementSupplier> map, int i2, int i3, boolean z4) {
        this.baseType = baseType;
        this.children = list;
        this.explicit = z;
        this.label = str;
        this.lowerBound = bigInteger;
        this.upperBound = bigInteger2;
        this.extensionsInDefinition = z2;
        this.enumValue = bigInteger3;
        this.defaultValue = aSN1Encodable;
        this.aSwitch = r11;
        this.validSwitchValues = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.elementSupplier = elementSupplier;
        this.mayRecurse = z3;
        this.typeName = str2;
        this.block = i2;
        this.optionals = i3;
        this.defaultValuesInChildren = z4;
        if (map == null) {
            this.supplierMap = Collections.EMPTY_MAP;
        } else {
            this.supplierMap = map;
        }
        Iterator<Element> it = list.iterator();
        while (it.hasNext()) {
            it.next().parent = this;
        }
    }
}
