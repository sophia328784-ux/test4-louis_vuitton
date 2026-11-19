package org.bouncycastle.oer;

import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Integer;

/* JADX INFO: loaded from: classes5.dex */
public class OERDefinition {
    static final BigInteger[] uIntMax = {new BigInteger("256"), new BigInteger("65536"), new BigInteger("4294967296"), new BigInteger("18446744073709551616")};
    static final BigInteger[][] sIntRange = {new BigInteger[]{new BigInteger("-128"), new BigInteger("127")}, new BigInteger[]{new BigInteger("-32768"), new BigInteger("32767")}, new BigInteger[]{new BigInteger("-2147483648"), new BigInteger("2147483647")}, new BigInteger[]{new BigInteger("-9223372036854775808"), new BigInteger("9223372036854775807")}};

    public enum BaseType {
        SEQ,
        SEQ_OF,
        CHOICE,
        ENUM,
        INT,
        OCTET_STRING,
        OPAQUE,
        UTF8_STRING,
        BIT_STRING,
        NULL,
        EXTENSION,
        ENUM_ITEM,
        BOOLEAN,
        IS0646String,
        PrintableString,
        NumericString,
        BMPString,
        UniversalString,
        IA5String,
        VisibleString,
        Switch,
        Supplier
    }

    public static class ExtensionList extends ArrayList<Object> {
        protected final int block;

        public ExtensionList(int i2, List<Object> list) {
            this.block = i2;
            addAll(list);
        }
    }

    public interface ItemProvider {
        Builder existingChild(int i2, Builder builder);
    }

    public static class OptionalList extends ArrayList<Object> {
        public OptionalList(List<Object> list) {
            addAll(list);
        }
    }

    public static Builder aSwitch(Switch r2) {
        return new Builder(BaseType.Switch).decodeSwitch(r2);
    }

    public static Builder bitString(long j2) {
        return new Builder(BaseType.BIT_STRING).fixedSize(j2);
    }

    public static Builder bool() {
        return new Builder(BaseType.BOOLEAN);
    }

    public static Builder choice(Object... objArr) {
        return new Builder(BaseType.CHOICE).items(objArr);
    }

    public static Builder deferred(ElementSupplier elementSupplier) {
        return new Builder(BaseType.Supplier).elementSupplier(elementSupplier);
    }

    public static Builder enumItem(String str, BigInteger bigInteger) {
        return new Builder(BaseType.ENUM_ITEM).enumValue(bigInteger).label(str);
    }

    public static Builder enumeration(Object... objArr) {
        return new Builder(BaseType.ENUM).items(objArr);
    }

    public static ExtensionList extension(Object... objArr) {
        return new ExtensionList(1, Arrays.asList(objArr));
    }

    public static Builder ia5String() {
        return new Builder(BaseType.IA5String);
    }

    public static Builder integer(long j2, long j3) {
        return new Builder(BaseType.INT).range(BigInteger.valueOf(j2), BigInteger.valueOf(j3));
    }

    public static Builder nullValue() {
        return new Builder(BaseType.NULL);
    }

    public static Builder octets(int i2, int i3) {
        return new Builder(BaseType.OCTET_STRING).range(BigInteger.valueOf(i2), BigInteger.valueOf(i3));
    }

    public static Builder opaque() {
        return new Builder(BaseType.OPAQUE);
    }

    public static List<Object> optional(Object... objArr) {
        return new OptionalList(Arrays.asList(objArr));
    }

    public static Builder placeholder() {
        return new Builder(null);
    }

    public static Builder seq(Object... objArr) {
        return new Builder(BaseType.SEQ).items(objArr);
    }

    public static Builder seqof(Object... objArr) {
        return new Builder(BaseType.SEQ_OF).items(objArr);
    }

    public static Builder utf8String(int i2, int i3) {
        return new Builder(BaseType.UTF8_STRING).range(BigInteger.valueOf(i2), BigInteger.valueOf(i3));
    }

    public static class MutableBuilder extends Builder {
        private boolean frozen;

        public MutableBuilder(BaseType baseType) {
            super(baseType);
            this.frozen = false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public MutableBuilder addItemsAndFreeze(Builder... builderArr) {
            if (this.frozen) {
                md.k("build cannot be modified and must be copied only");
                return null;
            }
            for (int i2 = 0; i2 != builderArr.length; i2++) {
                Object[] objArr = builderArr[i2];
                if (objArr.getClass().isArray()) {
                    for (Object obj : objArr) {
                        this.children.add(wrap(true, obj));
                    }
                } else {
                    this.children.add(wrap(true, objArr));
                }
            }
            this.frozen = true;
            return this;
        }

        @Override // org.bouncycastle.oer.OERDefinition.Builder
        public MutableBuilder label(String str) {
            this.label = str;
            return this;
        }
    }

    public static ExtensionList extension(int i2, Object... objArr) {
        return new ExtensionList(i2, Arrays.asList(objArr));
    }

    public static Builder seq() {
        return new Builder(BaseType.SEQ);
    }

    public static Builder enumItem(String str) {
        return new Builder(BaseType.ENUM_ITEM).label(str);
    }

    public static class Builder {
        protected Switch aSwitch;
        protected final BaseType baseType;
        protected int block;
        protected ASN1Encodable defaultValue;
        protected ElementSupplier elementSupplier;
        protected BigInteger enumValue;
        protected Boolean inScope;
        protected String label;
        protected BigInteger lowerBound;
        protected boolean mayRecurse;
        protected Builder placeholderValue;
        protected String typeName;
        protected BigInteger upperBound;
        protected ArrayList<Builder> children = new ArrayList<>();
        protected boolean explicit = true;
        protected ArrayList<ASN1Encodable> validSwitchValues = new ArrayList<>();
        protected Map<String, ElementSupplier> supplierMap = new HashMap();
        private final ItemProvider defaultItemProvider = new ItemProvider() { // from class: org.bouncycastle.oer.OERDefinition.Builder.1
            @Override // org.bouncycastle.oer.OERDefinition.ItemProvider
            public Builder existingChild(int i2, Builder builder) {
                return builder.copy(Builder.this.defaultItemProvider);
            }
        };

        public Builder(BaseType baseType) {
            this.baseType = baseType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Builder copy(ItemProvider itemProvider) {
            Builder builder = new Builder(this.baseType);
            Iterator<Builder> it = this.children.iterator();
            int i2 = 0;
            while (it.hasNext()) {
                builder.children.add(itemProvider.existingChild(i2, it.next()));
                i2++;
            }
            builder.explicit = this.explicit;
            builder.label = this.label;
            builder.upperBound = this.upperBound;
            builder.lowerBound = this.lowerBound;
            builder.defaultValue = this.defaultValue;
            builder.enumValue = this.enumValue;
            builder.inScope = this.inScope;
            builder.aSwitch = this.aSwitch;
            builder.validSwitchValues = new ArrayList<>(this.validSwitchValues);
            builder.elementSupplier = this.elementSupplier;
            builder.mayRecurse = this.mayRecurse;
            builder.typeName = this.typeName;
            builder.supplierMap = new HashMap(this.supplierMap);
            builder.block = this.block;
            return builder;
        }

        public void addExtensions(Builder builder, ExtensionList extensionList) {
            if (extensionList.isEmpty()) {
                Builder builder2 = new Builder(BaseType.EXTENSION);
                builder2.block = extensionList.block;
                builder.children.add(builder2);
                return;
            }
            for (Object obj : extensionList) {
                if (obj instanceof OptionalList) {
                    addOptionals(builder, extensionList.block, (OptionalList) obj);
                } else {
                    Builder builderWrap = wrap(true, obj);
                    builderWrap.block = extensionList.block;
                    builder.children.add(builderWrap);
                }
            }
        }

        public void addOptionals(Builder builder, int i2, OptionalList optionalList) {
            for (Object obj : optionalList) {
                if (obj instanceof ExtensionList) {
                    addExtensions(builder, (ExtensionList) obj);
                } else {
                    Builder builderWrap = wrap(false, obj);
                    builderWrap.block = i2;
                    builder.children.add(builderWrap);
                }
            }
        }

        public Builder block(int i2) {
            Builder builderCopy = copy();
            builderCopy.block = i2;
            return builderCopy;
        }

        public Element build() {
            ArrayList<ASN1Encodable> arrayList;
            Map<String, ElementSupplier> map;
            ArrayList arrayList2 = new ArrayList();
            boolean z = false;
            if (this.baseType == BaseType.ENUM) {
                HashSet hashSet = new HashSet();
                int i2 = 0;
                for (int i3 = 0; i3 < this.children.size(); i3++) {
                    Builder builder = this.children.get(i3);
                    if (builder.enumValue == null) {
                        builder.enumValue = BigInteger.valueOf(i2);
                        i2++;
                    }
                    if (hashSet.contains(builder.enumValue)) {
                        md.k(pq0.k(i3, "duplicate enum value at index "));
                        return null;
                    }
                    hashSet.add(builder.enumValue);
                }
            }
            boolean z2 = false;
            int i4 = 0;
            boolean z3 = false;
            for (Builder builder2 : this.children) {
                if (!z2 && builder2.block > 0) {
                    z2 = true;
                }
                if (!builder2.explicit) {
                    i4++;
                }
                if (!z3 && builder2.defaultValue != null) {
                    z3 = true;
                }
                arrayList2.add(builder2.build());
            }
            BaseType baseType = this.baseType;
            ASN1Encodable aSN1Encodable = this.defaultValue;
            if (aSN1Encodable == null && this.explicit) {
                z = true;
            }
            String str = this.label;
            boolean z4 = z;
            BigInteger bigInteger = this.lowerBound;
            BigInteger bigInteger2 = this.upperBound;
            BigInteger bigInteger3 = this.enumValue;
            Switch r10 = this.aSwitch;
            if (this.validSwitchValues.isEmpty()) {
                arrayList = null;
                map = null;
            } else {
                arrayList = this.validSwitchValues;
                map = null;
            }
            ElementSupplier elementSupplier = this.elementSupplier;
            ArrayList<ASN1Encodable> arrayList3 = arrayList;
            boolean z5 = this.mayRecurse;
            Map<String, ElementSupplier> map2 = map;
            String str2 = this.typeName;
            if (!this.supplierMap.isEmpty()) {
                map2 = this.supplierMap;
            }
            return new Element(baseType, arrayList2, z4, str, bigInteger, bigInteger2, z2, bigInteger3, aSN1Encodable, r10, arrayList3, elementSupplier, z5, str2, map2, this.block, i4, z3);
        }

        public Builder decodeSwitch(Switch r1) {
            Builder builderCopy = copy();
            builderCopy.aSwitch = r1;
            return builderCopy;
        }

        public Builder defaultValue(ASN1Encodable aSN1Encodable) {
            Builder builderCopy = copy();
            builderCopy.defaultValue = aSN1Encodable;
            return builderCopy;
        }

        public Builder elementSupplier(ElementSupplier elementSupplier) {
            Builder builderCopy = copy();
            builderCopy.elementSupplier = elementSupplier;
            return builderCopy;
        }

        public Builder enumValue(BigInteger bigInteger) {
            Builder builderCopy = copy();
            this.enumValue = bigInteger;
            return builderCopy;
        }

        public Builder explicit(boolean z) {
            Builder builderCopy = copy();
            builderCopy.explicit = z;
            return builderCopy;
        }

        public Builder fixedSize(long j2) {
            Builder builderCopy = copy();
            builderCopy.upperBound = BigInteger.valueOf(j2);
            builderCopy.lowerBound = BigInteger.valueOf(j2);
            return builderCopy;
        }

        public Builder inScope(boolean z) {
            Builder builderCopy = copy();
            builderCopy.inScope = Boolean.valueOf(z);
            return builderCopy;
        }

        public Builder items(Object... objArr) {
            Builder builderCopy = copy();
            for (int i2 = 0; i2 != objArr.length; i2++) {
                Object obj = objArr[i2];
                if (obj instanceof ExtensionList) {
                    addExtensions(builderCopy, (ExtensionList) obj);
                } else if (obj instanceof OptionalList) {
                    addOptionals(builderCopy, builderCopy.block, (OptionalList) obj);
                } else if (obj.getClass().isArray()) {
                    int i3 = 0;
                    while (true) {
                        Object[] objArr2 = (Object[]) obj;
                        if (i3 < objArr2.length) {
                            builderCopy.children.add(wrap(true, objArr2[i3]));
                            i3++;
                        }
                    }
                } else {
                    builderCopy.children.add(wrap(true, obj));
                }
            }
            return builderCopy;
        }

        public Builder label(String str) {
            Builder builderCopy = copy();
            builderCopy.label = str;
            return builderCopy;
        }

        public Builder labelPrefix(String str) {
            Builder builderCopy = copy();
            StringBuilder sbU = n00.u(str, " ");
            sbU.append(this.label);
            builderCopy.label = sbU.toString();
            return builderCopy;
        }

        public Builder limitScopeTo(String... strArr) {
            Builder builderCopy = copy();
            HashSet hashSet = new HashSet();
            hashSet.addAll(Arrays.asList(strArr));
            ArrayList<Builder> arrayList = new ArrayList<>();
            for (Builder builder : this.children) {
                arrayList.add(builder.copy().inScope(hashSet.contains(builder.label)));
            }
            builderCopy.children = arrayList;
            return builderCopy;
        }

        public Builder mayRecurse(boolean z) {
            Builder builderCopy = copy();
            builderCopy.mayRecurse = z;
            return builderCopy;
        }

        public Builder range(long j2, long j3, ASN1Encodable aSN1Encodable) {
            Builder builderCopy = copy();
            builderCopy.lowerBound = BigInteger.valueOf(j2);
            builderCopy.upperBound = BigInteger.valueOf(j3);
            builderCopy.defaultValue = aSN1Encodable;
            return builderCopy;
        }

        public Builder rangeToMAXFrom(long j2) {
            Builder builderCopy = copy();
            builderCopy.lowerBound = BigInteger.valueOf(j2);
            builderCopy.upperBound = null;
            return builderCopy;
        }

        public Builder rangeZeroTo(long j2) {
            Builder builderCopy = copy();
            builderCopy.upperBound = BigInteger.valueOf(j2);
            builderCopy.lowerBound = BigInteger.ZERO;
            return builderCopy;
        }

        public Builder replaceChild(final int i2, final Builder builder) {
            return copy(new ItemProvider() { // from class: org.bouncycastle.oer.OERDefinition.Builder.2
                @Override // org.bouncycastle.oer.OERDefinition.ItemProvider
                public Builder existingChild(int i3, Builder builder2) {
                    return i2 == i3 ? builder : builder2;
                }
            });
        }

        public Builder typeName(String str) {
            Builder builderCopy = copy();
            builderCopy.typeName = str;
            if (builderCopy.label == null) {
                builderCopy.label = str;
            }
            return builderCopy;
        }

        public Builder unbounded() {
            Builder builderCopy = copy();
            builderCopy.lowerBound = null;
            builderCopy.upperBound = null;
            return builderCopy;
        }

        public Builder validSwitchValue(ASN1Encodable... aSN1EncodableArr) {
            Builder builderCopy = copy();
            builderCopy.validSwitchValues.addAll(Arrays.asList(aSN1EncodableArr));
            return builderCopy;
        }

        public Builder wrap(boolean z, Object obj) {
            if (obj instanceof Builder) {
                return ((Builder) obj).explicit(z);
            }
            if (obj instanceof BaseType) {
                return new Builder((BaseType) obj).explicit(z);
            }
            if (obj instanceof String) {
                return OERDefinition.enumItem((String) obj);
            }
            md.k("Unable to wrap item in builder");
            return null;
        }

        public Builder range(BigInteger bigInteger, BigInteger bigInteger2) {
            Builder builderCopy = copy();
            builderCopy.lowerBound = bigInteger;
            builderCopy.upperBound = bigInteger2;
            return builderCopy;
        }

        public Builder copy() {
            return copy(this.defaultItemProvider);
        }
    }

    public static Builder integer(long j2) {
        return new Builder(BaseType.INT).defaultValue(new ASN1Integer(j2));
    }

    public static Builder integer() {
        return new Builder(BaseType.INT);
    }

    public static Builder integer(long j2, long j3, ASN1Encodable aSN1Encodable) {
        return new Builder(BaseType.INT).range(j2, j3, aSN1Encodable);
    }

    public static Builder octets(int i2) {
        return new Builder(BaseType.OCTET_STRING).fixedSize(i2);
    }

    public static Builder utf8String(int i2) {
        return new Builder(BaseType.UTF8_STRING).rangeToMAXFrom(i2);
    }

    public static Builder integer(BigInteger bigInteger, BigInteger bigInteger2) {
        return new Builder(BaseType.INT).range(bigInteger, bigInteger2);
    }

    public static Builder octets() {
        return new Builder(BaseType.OCTET_STRING).unbounded();
    }

    public static Builder utf8String() {
        return new Builder(BaseType.UTF8_STRING);
    }
}
