package com.vuitton.foundation.model.domain.model.common;

import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "ResId", "PluralResId", "ResName", "Text", "Empty", "ConcatStringResource", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$ConcatStringResource;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$Empty;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StringResource {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$ConcatStringResource;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "concatStringResourceList", "<init>", "(Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ConcatStringResource extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f67143a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ConcatStringResource(List<? extends StringResource> list) {
            super(null);
            list.getClass();
            this.f67143a = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof ConcatStringResource) && Intrinsics.c(this.f67143a, ((ConcatStringResource) obj).f67143a);
        }

        public final int hashCode() {
            return this.f67143a.hashCode();
        }

        public final String toString() {
            return d21.o("ConcatStringResource(concatStringResourceList=", ")", this.f67143a);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$Empty;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Empty extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Empty f67144a = new Empty(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Empty);
        }

        public final int hashCode() {
            return -1569828896;
        }

        public final String toString() {
            return "Empty";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "text", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Text extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67153a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Text(String str) {
            super(null);
            str.getClass();
            this.f67153a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Text) && Intrinsics.c(this.f67153a, ((Text) obj).f67153a);
        }

        public final int hashCode() {
            return this.f67153a.hashCode();
        }

        public final String toString() {
            return fc.h("Text(text=", this.f67153a, ")");
        }
    }

    public StringResource(DefaultConstructorMarker defaultConstructorMarker) {
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResId;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "resId", "", "", "formatArgs", "<init>", "(ILjava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResId extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f67148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67149b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResId(int i2, List<? extends Object> list) {
            super(null);
            list.getClass();
            this.f67148a = i2;
            this.f67149b = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResId)) {
                return false;
            }
            ResId resId = (ResId) obj;
            return this.f67148a == resId.f67148a && Intrinsics.c(this.f67149b, resId.f67149b);
        }

        public final int hashCode() {
            return this.f67149b.hashCode() + (Integer.hashCode(this.f67148a) * 31);
        }

        public final String toString() {
            return "ResId(resId=" + this.f67148a + ", formatArgs=" + this.f67149b + ")";
        }

        public ResId(int i2, List list, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, (i3 & 2) != 0 ? EmptyList.f71768b : list);
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$PluralResId;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "resId", "quantity", "", "", "formatArgs", "<init>", "(IILjava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class PluralResId extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f67145a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f67146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f67147c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PluralResId(int i2, int i3, List<? extends Object> list) {
            super(null);
            list.getClass();
            this.f67145a = i2;
            this.f67146b = i3;
            this.f67147c = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PluralResId)) {
                return false;
            }
            PluralResId pluralResId = (PluralResId) obj;
            return this.f67145a == pluralResId.f67145a && this.f67146b == pluralResId.f67146b && Intrinsics.c(this.f67147c, pluralResId.f67147c);
        }

        public final int hashCode() {
            return this.f67147c.hashCode() + tr.b(this.f67146b, Integer.hashCode(this.f67145a) * 31, 31);
        }

        public final String toString() {
            return a.o(fc.p(this.f67145a, this.f67146b, "PluralResId(resId=", ", quantity=", ", formatArgs="), this.f67147c, ")");
        }

        public PluralResId(int i2, int i3, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, i3, (i4 & 4) != 0 ? EmptyList.f71768b : list);
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0001¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/StringResource$ResName;", "Lcom/vuitton/foundation/model/domain/model/common/StringResource;", "", "resName", "", "", "formatArgs", "fallback", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/common/StringResource;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ResName extends StringResource {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f67151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final StringResource f67152c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResName(String str, List<? extends Object> list, StringResource stringResource) {
            super(null);
            str.getClass();
            list.getClass();
            stringResource.getClass();
            this.f67150a = str;
            this.f67151b = list;
            this.f67152c = stringResource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ResName)) {
                return false;
            }
            ResName resName = (ResName) obj;
            return Intrinsics.c(this.f67150a, resName.f67150a) && Intrinsics.c(this.f67151b, resName.f67151b) && Intrinsics.c(this.f67152c, resName.f67152c);
        }

        public final int hashCode() {
            return this.f67152c.hashCode() + n00.a(this.f67150a.hashCode() * 31, 31, this.f67151b);
        }

        public final String toString() {
            StringBuilder sbT = d21.t("ResName(resName=", this.f67150a, ", formatArgs=", this.f67151b, ", fallback=");
            sbT.append(this.f67152c);
            sbT.append(")");
            return sbT.toString();
        }

        public ResName(String str, List list, StringResource stringResource, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? Empty.f67144a : stringResource);
        }
    }
}
