package com.dynamicyield.sdk.wrapper.core.models.event;

import defpackage.fc;
import defpackage.tr;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "StringVal", "NumberVal", "BooleanVal", "ListVal", "MapVal", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$BooleanVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$ListVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$MapVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$NumberVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$StringVal;", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class SupportedValue {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$BooleanVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "value", "<init>", "(Ljava/lang/Boolean;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class BooleanVal extends SupportedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Boolean f26371a;

        public BooleanVal(Boolean bool) {
            super(null);
            this.f26371a = bool;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BooleanVal) && Intrinsics.c(this.f26371a, ((BooleanVal) obj).f26371a);
        }

        public final int hashCode() {
            Boolean bool = this.f26371a;
            if (bool == null) {
                return 0;
            }
            return bool.hashCode();
        }

        public final String toString() {
            return "BooleanVal(value=" + this.f26371a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$ListVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "value", "<init>", "(Ljava/util/List;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class ListVal extends SupportedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f26372a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ListVal(List<? extends SupportedValue> list) {
            super(null);
            list.getClass();
            this.f26372a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ListVal) && Intrinsics.c(this.f26372a, ((ListVal) obj).f26372a);
        }

        public final int hashCode() {
            return this.f26372a.hashCode();
        }

        public final String toString() {
            return tr.m(new StringBuilder("ListVal(value="), this.f26372a, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$MapVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "", "value", "<init>", "(Ljava/util/Map;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class MapVal extends SupportedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map f26373a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public MapVal(Map<String, ? extends SupportedValue> map) {
            super(null);
            map.getClass();
            this.f26373a = map;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MapVal) && Intrinsics.c(this.f26373a, ((MapVal) obj).f26373a);
        }

        public final int hashCode() {
            return this.f26373a.hashCode();
        }

        public final String toString() {
            return "MapVal(value=" + this.f26373a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0004\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$NumberVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "value", "<init>", "(Ljava/lang/Number;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class NumberVal extends SupportedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Number f26374a;

        public NumberVal(Number number) {
            super(null);
            this.f26374a = number;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NumberVal) && Intrinsics.c(this.f26374a, ((NumberVal) obj).f26374a);
        }

        public final int hashCode() {
            Number number = this.f26374a;
            if (number == null) {
                return 0;
            }
            return number.hashCode();
        }

        public final String toString() {
            return "NumberVal(value=" + this.f26374a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue$StringVal;", "Lcom/dynamicyield/sdk/wrapper/core/models/event/SupportedValue;", "", "value", "<init>", "(Ljava/lang/String;)V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class StringVal extends SupportedValue {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26375a;

        public StringVal(String str) {
            super(null);
            this.f26375a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof StringVal) && Intrinsics.c(this.f26375a, ((StringVal) obj).f26375a);
        }

        public final int hashCode() {
            String str = this.f26375a;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("StringVal(value="), this.f26375a, ')');
        }
    }

    public SupportedValue(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
